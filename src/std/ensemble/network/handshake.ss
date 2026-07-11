;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble connections
(import :std/error
        :std/interface
        :std/io
        :std/io/bio/buffer
        :std/net/ssl
        :std/time/precise
        :std/time/timeout
        :std/serde/marshal
        :std/serde/unmarshal
        ../interface
        ../tls
        ../ucan/ext
        ./types
        ./connection)
(export new-outgoing-connection
        new-incoming-connection)

(def handshake-timeout 3)

(def (new-outgoing-connection (net  : network)
                              (sock : StreamSocket)
                              (peer : HostID))
  => Connection
  (let ((reader (open-buffered-reader (sock.reader)))
        (writer (open-buffered-writer (sock.writer))))
    (client-handshake! net sock reader writer peer)
    (new-connection net peer sock reader writer
                    DIRECTION-OUT)))

(def (new-incoming-connection (net  : network)
                              (sock : StreamSocket))
  => Connection
  (let* ((reader (open-buffered-reader (sock.reader)))
         (writer (open-buffered-writer (sock.writer)))
         (peer   (server-handshake! net sock reader writer)))
    (new-connection net peer sock reader writer
                    DIRECTION-IN)))

(def (client-handshake! (net  : network)
                        (sock   : StreamSocket)
                        (reader : BufferedReader)
                        (writer : BufferedWriter)
                        (peer   : HostID))
  => :void
  (try
   (when (is-TLS? sock)
    (let* ((cert (TLS-peer-certificate sock))
           (cert-peer (tls-certificate->host-id cert)))
      (unless (equal? peer cert-peer)
        (raise-io-error network-connect! "certificate does not match peer"))))
   (using (cap (net.security.capability-context) : CapabilityContext)
    (let* ((expire
            (+ (current-time-seconds) handshake-timeout))
           (deadline
            (timeout->deadline (seconds->time expire)))
           (auth
            (cap.provide! INVOKE
                          net.host.did
                          peer.did
                          method:/net/handshake ""
                          expire))
           (source
            (Handle net.host ""))
           (dest
            (Handle peer ""))
           (msg
            (Message source: source
                     dest:   dest
                     method: method:/net/handshake
                     body:   #u8()
                     expire: expire
                     auth:   auth))
           (_ (net.security.sign-message! msg))
           (blob (marshal msg)))
      (sock.set-output-timeout! deadline)
      (sock.set-input-timeout! deadline)
      (writer.write-varuint (u8vector-length blob))
      (writer.write blob)
      (writer.flush)
      (let (size (reader.read-varuint))
        (when (> size net.limits.network.message-size)
          (raise-io-error network-connect! "oversize handshake message"))
        (using ((delim (reader.delimit size) : BufferedReader)
                (msg (reader.deserialize (unmarshal-environment dag: #t))
                     : Message))
          (let (result (net.security.verify-message msg))
            (unless (!VerificationOK? result)
              (raise-io-error network-connect! "handshake message verification failed" (VerificationError-reason result)))
            (unless (and (equal? msg.source dest)
                         (equal? msg.dest source)
                         (equal? msg.method method:/net/handshake))
              (raise-io-error network-connect! "bogus handshake message")))
          (buffer-detach! delim)))))
  (sock.set-output-timeout! !NoTimeout)
  (sock.set-input-timeout! !NoTimeout)
  #!void
  (catch (e)
    (ignore-errors (sock.close))
    (raise e))))

(def (server-handshake! (net  : network)
                        (sock   : StreamSocket)
                        (reader : BufferedReader)
                        (writer : BufferedWriter))
  => HostID
  (try
   (let* ((expire
           (+ (current-time-seconds) handshake-timeout))
          (deadline
           (timeout->deadline (seconds->time expire))))
     (sock.set-output-timeout! deadline)
     (sock.set-input-timeout! deadline)
     (let (size (reader.read-varuint))
       (when (> size net.limits.network.message-size)
         (raise-io-error network-connect! "oversize handshake message"))
       (using (delim (reader.delimit size) : BufferedReader)
         (using (msg (reader.deserialize (unmarshal-environment dag: #t))
                     : Message)
           (let (result (net.security.verify-message msg))
             (unless (!VerificationOK? result)
               (raise-io-error network-connect! "handshake message verification failed" (VerificationError-reason result)))
             (when (is-TLS? sock)
               (let* ((cert (TLS-peer-certificate sock))
                      (cert-peer (tls-certificate->host-id cert)))
                 (unless (equal? msg.source.host cert-peer)
                   (raise-io-error network-connect! "certificate does not match peer"))))
             (unless (and (equal? msg.dest.host net.host)
                          (equal? msg.method method:/net/handshake))
               (raise-io-error network-connect! "bogus handshake message")))
           (buffer-detach! delim)
           (using ((cap (net.security.capability-context) : CapabilityContext)
                   (peer msg.source.host : HostID))
             (let* ((auth
                     (cap.provide! INVOKE
                                   net.host.did
                                   peer.did
                                   method:/net/handshake ""
                                   expire))
                    (source
                     (Handle net.host ""))
                    (dest
                     (Handle peer ""))
                    (msg
                     (Message source: source
                              dest:   dest
                              method: method:/net/handshake
                              body:   #u8()
                              expire: expire
                              auth:   auth))
                    (_ (net.security.sign-message! msg))
                    (blob (marshal msg)))
               (writer.write-varuint (u8vector-length blob))
               (writer.write blob)
               (writer.flush)
               (sock.set-output-timeout! !NoTimeout)
               (sock.set-input-timeout! !NoTimeout)
               peer))))))
   (catch (e)
    (ignore-errors (sock.close))
    (raise e))))
