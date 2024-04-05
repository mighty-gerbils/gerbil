;;; -*- Gerbil -*-
;;; © vyzo
;;; server sockets
(import :std/error
        :std/os/socket
        :std/os/fd
        :std/misc/rwlock
        ../interface
        ./socket
        ./types
        ./basic)
(export #t)

(def (server-socket-accept ssock)
  (using (ssock :- basic-server-socket)
    (with-basic-socket-read-lock ssock
      (when ssock.closed?
        (raise-io-closed server-socket-accept "socket has closed"))
      (let ((srv ssock.sock)
            (sockaddr (make-socket-address ssock.domain)))
        (let lp ()
          (let (cli (socket-accept srv sockaddr))
            (cond
             (cli
              (let (domain ssock.domain)
                (when (or (fx= domain AF_INET) (fx= domain AF_INET6))
                  (with-error-close cli
                    (socket-setsockopt cli IPPROTO_TCP TCP_NODELAY 1)))
                (StreamSocket
                 (make-stream-socket cli domain
                                     #f #f
                                     #f (socket-address->address sockaddr)
                                     (make-rwlock 'socket) #f 0))))
             ((basic-socket-wait-io! ssock (fd-io-in srv) ssock.timeo-in)
              (when ssock.closed?
                (raise-io-closed server-socket-accept "socket has been closed"))
              (lp))
             (else
              (raise-timeout server-socket-accept "accept timeout")))))))))
