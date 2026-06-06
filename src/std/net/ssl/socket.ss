;;; -*- Gerbil -*-
;;; © vyzo
;;; SSL socket implementation
(export #t)
(import :std/error
        :std/interface
        :std/iter
        :std/sync/rwlock
        :std/os/device
        :std/io/interface
        :std/io/socket/types
        :std/io/socket/basic
        ./libssl
        ./error
        ./interface)

(defstruct (ssl-socket stream-socket)
  ((ssl       :- :foreign)  ; SSL*
   (peer-cert :- :foreign)) ; Maybe X509*
  final: #t)

(defstruct ssl-socket-reader
  ((sock :- ssl-socket))
  final: #t )

(defstruct ssl-socket-writer
  ((sock :- ssl-socket))
  final: #t )

(defstruct (ssl-server-socket basic-server-socket)
  ((ctx :- :foreign))  ; SSL_CTX*
  final: #t)

(def (__copy-struct! in out)
  (let (fields (##structure-length in))
    (for (i (in-range 1 fields))
      (##unchecked-structure-set!
       out
       (##unchecked-structure-ref in i #f #f)
       i #f #f))))

(def (__ssl-socket-from-stream-socket (sock :  stream-socket)
                                      (ssl  :- :foreign))
  => ssl-socket
  (using (sslsock (new-instance ssl-socket::t) :- ssl-socket)
    (__copy-struct! sock sslsock)
    (set! sslsock.ssl ssl)
    sslsock))

(def (__ssl-socket-from-server-socket (sock :-  basic-server-socket)
                                      (ctx  :- :foreign))
  => ssl-server-socket
  (using (sslsock (new-instance ssl-server-socket::t) :- ssl-server-socket)
    (__copy-struct! sock sslsock)
    (set! sslsock.ctx ctx)
    sslsock))

(def (ssl-socket-shutdown (self : ssl-socket))
  (do-with-write-lock self.lock
    (unless (fx= self.dev.dir 0)
      (try
       (let loop ()
         (let (result (SSL_shutdown self.ssl))
           (cond
            ((and (fixnum? result) (fx> result 0)) (void))
            ((eqv? result SSL_ERROR_WANT_READ)
             (when (device-wait-input! self.dev self.timeo-in)
               (loop)))
            ((eqv? result SSL_ERROR_WANT_WRITE)
             (when (device-wait-output! self.dev self.timeo-out)
               (loop))))))
       (catch (e) (void)))
      (device-close self.dev DIRECTION-INOUT)
      (foreign-release! self.ssl)
      (set! self.ssl #f))))

(def (ssl-socket-close (self :- ssl-socket))
  (do-with-write-lock self.lock
    (unless (fx= self.dev.dir 0)
      (device-close self.dev DIRECTION-INOUT)
      (foreign-release! self.ssl)
      (set! self.ssl #f))))

(def (ssl-socket-recv (self         : ssl-socket)
                      (output       : :u8vector)
                      (output-start : :fixnum)
                      (output-end   : :fixnum)
                      (flags-ignore : :fixnum))
  => :fixnum
  (do-with-read-lock self.lock
    (let loop ()
      (do-check-device-input ssl-socket-recv self.dev
        (let (result (SSL_read self.ssl output output-start output-end))
          (cond
           ((and (fixnum? result) (fx>= result 0)) result)
           ((eq? result SSL_ERROR_WANT_READ)
            (if (__basic-socket-wait-input! self)
              (loop)
              (raise-timeout ssl-socket-recv "receive timeout")))
           ((eq? result SSL_ERROR_WANT_WRITE)
            (if (__basic-socket-wait-output! self)
              (loop)
              (raise-timeout ssl-socket-recv "send timeout")))
           (else
            (raise-ssl-error ssl-socket-recv result))))))))

(def (ssl-socket-send (self         : ssl-socket)
                      (input        : :u8vector)
                      (input-start  : :fixnum)
                      (input-end    : :fixnum)
                      (flags-ignore : :fixnum))
  => :fixnum
  (do-with-read-lock self.lock
    (let loop ()
      (do-check-device-output ssl-socket-send self.dev
        (let (result (SSL_write self.ssl input input-start input-end))
          (cond
           ((and (fixnum? result) (fx> result 0)) result)
           ((eq? result SSL_ERROR_WANT_READ)
            (if (__basic-socket-wait-input! self)
              (loop)
              (raise-timeout ssl-socket-send "receive timeout")))
           ((eq? result SSL_ERROR_WANT_WRITE)
            (if (__basic-socket-wait-output! self)
              (loop)
              (raise-timeout ssl-socket-send "send timeout")))
           (else
            (raise-ssl-error ssl-socket-send result))))))))

(implement
  (Closer
   (ssl-socket
    (close __ssl-socket-close)))
  (ClientSocket
   (ssl-socket
    (recv __ssl-socket-recv)
    (send __ssl-socket-send)))
  (StreamSocket
   (ssl-socket
    (shutdown
     (lambda (self dir)
       ;; there is no unidirectional shutdown in ssl sockets
       (__ssl-socket-shutdown self)))
    (reader
     (lambda (self)
       (Reader (make-ssl-socket-reader self))))
    (writer
     (lambda (self)
       (Writer (make-ssl-socket-writer self))))))
  (TLS
   (ssl-socket
    (peer-certificate
    (lambda (self)
      (or self.peer-cert
          (let (cert (SSL_get_peer_certificate self.ssl))
            (set! self.peer-cert cert)
            cert))))))
  (Closer
   (ssl-socket-reader
    (close
     (lambda (self)
       (__ssl-socket-shutdown self.sock))))
   (ssl-socket-writer
    (close
     (lambda (self)
       (__ssl-socket-shutdown self.sock)))))
  (Reader
   (ssl-socket-reader
    (read
     (lambda (self output output-start output-end input-need)
       (let (sock self.sock)
         (let loop ((output-start output-start :- :fixnum)
                    (input-need input-need :- :fixnum)
                    (result 0 :- :fixnum))
           => :fixnum
           (if (fx< output-start output-end)
             (let (read (ssl-socket-recv sock output output-start output-end 0))
               (cond
                ((fx= read 0)
                 (if (fx> input-need result)
                   (raise-premature-end-of-input ssl-socket-read input-need)
                   result))
                ((fx> read input-need)
                 (fx+ result read))
                (else
                 (loop (fx+ output-start read) (fx- input-need read) (fx+ result read)))))
             result)))))))
  (Writer
   (ssl-socket-writer
    (write
     (lambda (self input input-start input-end)
       (let (sock self.sock)
         (let loop ((input-start input-start :- :fixnum)
                    (result 0 :- :fixnum))
           => :fixnum
           (if (fx< input-start input-end)
             (let (wrote (ssl-socket-send sock input input-start input-end 0))
               (loop (fx+ input-start wrote) (fx+ result wrote)))
             result))))))))
