;;; -*- Gerbil -*-
;;; © vyzo
;;; POSIX/BSD sockets
(import :std/error
        :std/os/error
        :std/os/device
        :std/os/socket
        :std/os/sockaddr
        :std/os/sockopt
        :std/net/address/types
        :std/time/timeout
        ./types
        ./sockaddr)
(export #t)

(def (socket-connect (addr  : EndpointAddress)
                     (type  : :fixnum)
                     (proto : :fixnum)
                     (timeo : IOTimeout))
  => SocketDevice
  (let (domain
        (case addr.domain
          ((inet4) AF_INET)
          ((inet6) AF_INET6)
          ((unix)  AF_UNIX)
          (else
           (raise-bad-argument connect "bad address domain" address: addr))))
    (let* ((sock (open-client-socket-device domain type proto))
           (sa   (address->sockaddr addr)))
      (with-error-device-close sock
        (let (errno (socket-device-connect sock sa))
          (if (fx< errno 0)
            (let (complete? (device-wait-output! sock timeo))
              (if complete?
                (let (errno (socket-device-getsockopt sock SOL_SOCKET.SO_ERROR))
                  (if (fx= errno 0)
                    sock
                    (raise-os-error connect errno address: addr)))
                (raise-timeout connect "connection timeout" address: addr)))
            sock))))))

(def (socket-listen (addr     : EndpointAddress)
                    (type     : :fixnum)
                    (proto    : :fixnum)
                    (backlog  : :fixnum)
                    (sockopts : :list))
  => SocketDevice
  (let (domain
        (case addr.domain
          ((inet4) AF_INET)
          ((inet6) AF_INET6)
          ((unix)  AF_UNIX)
          (else
           (raise-bad-argument stream-listen "bad address domain" address: addr))))
    (let* ((sock (open-server-socket-device domain type proto))
           (sa   (address->sockaddr addr)))
      (begin0
          (with-error-device-close sock
            (for-each
              (lambda (kv)
                (socket-device-setsockopt sock (car kv) (cdr kv)))
              sockopts)
            (socket-device-bind   sock sa)
            (socket-device-listen sock backlog)
            sock)))))
