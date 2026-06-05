;;; -*- Gerbil -*-
;;; © vyzo
;;; server sockets
(import :std/error
        :std/os/error
        :std/os/device
        :std/os/socket
        :std/os/sockopt
        :std/sync/rwlock
        ../interface
        ./types
        ./basic)
(export #t)

(def (server-socket-accept (sock : basic-server-socket))
  => StreamSocket
  (do-with-read-lock sock.lock
    (let loop ()
      => StreamSocket
      (let (errno-or-cli (socket-device-accept sock.dev))
        (if (fixnum? errno-or-cli)
          (errno-case errno-or-cli
            ((EWOULDBLOCK EAGAIN)
             (if (__basic-socket-wait-input! sock)
               (loop)
               (raise-timeout server-socket-accept "accept timeout")))
            (else
             (raise-os-error server-socket-accept errno-or-cli)))
          (using (cli errno-or-cli : SocketDevice)
            (when (or (fx= cli.domain AF_INET)
                      (fx= cli.domain AF_INET6))
              (with-error-device-close cli
                (socket-device-setsockopt cli IPPROTO_TCP.TCP_NODELAY 1)))
            (StreamSocket
             (make-stream-socket cli))))))
    :- StreamSocket))
