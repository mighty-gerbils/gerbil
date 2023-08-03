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
  (with-basic-socket-read-lock ssock
    (when (basic-socket-closed? ssock)
      (raise-io-error 'server-socket-accept "socket input has been shutdown"))
    (let ((srv (&basic-socket-sock ssock))
          (sockaddr (make-socket-address (&basic-socket-domain ssock))))
      (let lp ()
        (let (cli (socket-accept srv sockaddr))
          (cond
           (cli
            (let (domain (&basic-socket-domain ssock))
              (when (or (fx= domain AF_INET) (fx= domain AF_INET6))
                (with-error-close cli
                  (socket-setsockopt cli IPPROTO_TCP TCP_NODELAY 1)))
              (StreamSocket
               (make-stream-socket cli domain
                                   #f #f
                                   #f (socket-address->address sockaddr)
                                   (make-rwlock 'socket) #f 0))))
           ((basic-socket-wait-io! ssock (fd-io-in srv) (&basic-socket-timeo-in ssock))
            (when (basic-socket-closed? ssock)
              (raise-io-error 'server-socket-accept "socket input has been shutdown"))
            (lp))
           (else
            (raise-timeout 'server-socket-accept "accept timeout"))))))))
