;;; -*- Gerbil -*-
;;; © vyzo
;;; POSIX/BSD sockets
(import :std/sugar
        :std/error
        :std/os/error
        :std/os/socket
        :std/os/fd
        :std/event
        ./types)
(export #t)

(defrule (with-error-close sock body ...)
  (try body ...
       (catch (e)
         (socket-close sock)
         (raise e))))

(def (connect address timeo)
  (let* ((sockaddr (socket-address address))
         (family (socket-address-family sockaddr)))
    (let* ((sock (socket family SOCK_STREAM))
           (connected? (with-error-close sock (socket-connect sock sockaddr))))
      (if connected?
        sock
        (begin
          (unless (&wait-io! (fd-io-out sock) timeo)
            (socket-close sock)
            (raise-timeout connect "connection timeout" address))
          (let (errno (socket-getsockopt sock SOL_SOCKET SO_ERROR))
            (if (fx= errno 0)
              sock
              (begin
                (socket-close sock)
                (raise-os-error connect errno address timeo)))))))))

(def (listen address backlog sockopts)
  (let* ((sockaddr (socket-address address))
         (sock (server-socket (socket-address-family sockaddr) SOCK_STREAM)))
    (with-error-close sock
      (for-each (cut socket-setsockopt sock SOL_SOCKET <> 1)
                sockopts)
      (socket-bind sock sockaddr)
      (socket-listen sock backlog)
      sock)))

(def (udp-new af)
  (socket af SOCK_DGRAM))

(def (udp-new-multicast domain group-ip-address local-address iface-index)
  (let* ((local-sockaddr (socket-address local-address))
         (sock (udp-new domain)))
    (with-error-close sock
      (socket-setsockopt sock SOL_SOCKET SO_REUSEADDR 1)
      (socket-bind sock local-sockaddr)
      (if (fx= domain AF_INET)
        (begin
          (socket-setsockopt sock IPPROTO_IP IP_ADD_MEMBERSHIP
                             (cons group-ip-address (car local-address)))
          (socket-setsockopt sock IPPROTO_IP IP_MULTICAST_LOOP 0))
        (begin
          (socket-setsockopt sock IPPROTO_IPV6 IPV6_ADD_MEMBERSHIP
                             (cons group-ip-address iface-index))
          (socket-setsockopt sock IPPROTO_IPV6 IPV6_MULTICAST_LOOP 0)))
      sock)))

(def (udp-bind sock address)
  (let* ((sockaddr (socket-address address))
         (family (socket-address-family sockaddr)))
    (with-error-close sock
      (socket-setsockopt sock SOL_SOCKET SO_REUSEADDR 1)
      (socket-bind sock sockaddr))))
