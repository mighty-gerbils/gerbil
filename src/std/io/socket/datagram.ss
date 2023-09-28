;;; -*- Gerbil -*-
;;; © vyzo
;;; datagram sockets
(import :std/error
        :std/contract
        :std/os/socket
        :std/os/fd
        :std/net/address
        ./types
        ./basic)
(export #t)

(def (datagram-socket-recvfrom dsock peer output output-start output-end flags)
  (using (dsock :- datagram-socket)
    (with-basic-socket-read-lock dsock
      (let ((sock dsock.sock)
            (sockaddr (make-socket-address dsock.domain)))
        (let lp ()
          (when dsock.closed?
            (raise-io-closed datagram-socket-recvfrom "socket is closed"))
          (let (read (socket-recvfrom sock output sockaddr output-start output-end flags))
            (cond
             (read
              (box-set! peer (socket-address->address sockaddr))
              read)
             ((basic-socket-wait-io! dsock (fd-io-in sock) dsock.timeo-in)
              (lp))
             (else
              (raise-timeout datagram-socket-recvfrom "receive timeout")))))))))

(def (datagram-socket-sendto dsock peer input input-start input-end flags)
  (using (dsock :- datagram-socket)
    (let (sockaddr (socket-address peer))
      (with-basic-socket-read-lock dsock
        (when dsock.closed?
          (raise-io-error datagram-socket-sendto "socket is closed"))
        (socket-sendto dsock.sock input sockaddr input-start input-end flags)))))

(def (datagram-socket-connect dsock peer)
  (using (dsock :- datagram-socket)
    (let* ((address (resolve-address peer))
           (sockaddr (socket-address address)))
      (with-basic-socket-write-lock dsock
        (when dsock.closed?
          (raise-io-closed datagram-socket-connect "socket is closed"))
        (socket-connect dsock.sock sockaddr)
        (set! dsock.raddr address)
        (void)))))

(def (datagram-socket-recv dsock output output-start output-end flags)
  (using (dsock :- datagram-socket)
    (with-basic-socket-read-lock dsock
      (unless dsock.raddr
        (raise-io-error datagram-socket-recv "socket is not connected"))
      (let (sock dsock.sock)
        (let lp ()
          (when dsock.closed?
            (raise-io-closed datagram-socket-recv "socket is closed"))
          (let (read (socket-recv sock output output-start output-end flags))
            (cond
             (read)
             ((basic-socket-wait-io! dsock (fd-io-in sock) dsock.timeo-in)

              (lp))
             (else
              (raise-timeout datagram-socket-recvfrom "receive timeout")))))))))

(def (datagram-socket-send dsock input input-start input-end flags)
  (using (dsock :- datagram-socket)
    (with-basic-socket-read-lock dsock
      (when dsock.closed?
        (raise-io-closed datagram-socket-sendto "socket is closed"))
      (unless dsock.raddr
        (raise-io-error datagram-socket-recv "socket is not connected"))
      (socket-send dsock.sock input input-start input-end flags))))
