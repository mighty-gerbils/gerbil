;;; -*- Gerbil -*-
;;; © vyzo
;;; datagram sockets
(import :std/error
        :std/os/socket
        :std/os/fd
        :std/net/address
        ./types
        ./basic)
(export #t)

(def (datagram-socket-recvfrom dsock peer output output-start output-end flags)
  (with-basic-socket-read-lock dsock
    (when (&basic-socket-closed? dsock)
      (raise-io-closed 'datagram-socket-recvfrom "socket is closed"))
    (let ((sock (&basic-socket-sock dsock))
          (sockaddr (make-socket-address (&basic-socket-domain dsock))))
      (let lp ()
        (let (read (socket-recvfrom sock output sockaddr output-start output-end flags))
          (cond
           (read
            (box-set! peer (socket-address->address sockaddr))
            read)
           ((basic-socket-wait-io! dsock (fd-io-in sock) (&basic-socket-timeo-in dsock))
            (when (&basic-socket-closed? dsock)
              (raise-io-closed 'datagram-socket-recvfrom "socket is closed"))
            (lp))
           (else
            (raise-timeout 'datagram-socket-recvfrom "receive timeout"))))))))

(def (datagram-socket-sendto dsock peer input input-start input-end flags)
  (let (sockaddr (socket-address peer))
    (with-basic-socket-read-lock dsock
      (when (&basic-socket-closed? dsock)
        (raise-io-error 'datagram-socket-sendto "socket is closed"))
      (socket-sendto (&basic-socket-sock dsock) input sockaddr input-start input-end flags))))

(def (datagram-socket-connect dsock peer)
  (let* ((address (resolve-address peer))
         (sockaddr (socket-address address)))
    (with-basic-socket-write-lock dsock
      (when (&basic-socket-closed? dsock)
        (raise-io-closed 'datagram-socket-connect "socket is closed"))
      (socket-connect (&basic-socket-sock dsock) sockaddr)
      (set! (&basic-socket-raddr dsock) address)
      (void))))

(def (datagram-socket-recv dsock output output-start output-end flags)
  (with-basic-socket-read-lock dsock
    (when (&basic-socket-closed? dsock)
      (raise-io-closed 'datagram-socket-recv "socket is closed"))
    (unless (&basic-socket-raddr dsock)
      (raise-io-error 'datagram-socket-recv "socket is not connected"))
    (let (sock (&basic-socket-sock dsock))
      (let lp ()
        (let (read (socket-recv sock output output-start output-end flags))
          (cond
           (read)
           ((basic-socket-wait-io! dsock (fd-io-in sock) (&basic-socket-timeo-in dsock))
            (when (&basic-socket-closed? dsock)
              (raise-io-error 'datagram-socket-recv "socket is closed"))
            (lp))
           (else
            (raise-timeout 'datagram-socket-recvfrom "receive timeout"))))))))

(def (datagram-socket-send dsock input input-start input-end flags)
  (with-basic-socket-read-lock dsock
    (when (&basic-socket-closed? dsock)
      (raise-io-closed 'datagram-socket-sendto "socket is closed"))
    (unless (&basic-socket-raddr dsock)
      (raise-io-error 'datagram-socket-recv "socket is not connected"))
    (socket-send (&basic-socket-sock dsock) input input-start input-end flags)))
