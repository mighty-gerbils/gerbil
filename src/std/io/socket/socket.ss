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
        ./types)
(export #t)

(def (connect (addr  : EndpointAddress)
              (type  : :fixnum)
              (proto : :fixnum)
              (timeo : IOTimeout))
  => SocketDevice
  (let (domain
        (case addr.domain
          ((IP)   AF_INET)
          ((IP6)  AF_INET6)
          ((UNIX) AF_UNIX)
          (raise-bad-argument stream-listen "bad address domain" address: addr)))
    (let* ((sock (open-client-socket-device domain type proto))
           (sa   (address->sockaddr addr)))
      (begin0
          (with-error-close-device sock
            (let (errno (socket-device-connect sock sa))
              (if (fx< errno 0)
                (let (complete? (device-wait-output! sock timeo))
                  (if complete?
                    (let (errno (socket-device-getsockopt sock SOL_SOCKET SO_ERROR))
                      (if (fx= errno 0)
                        sock
                        (raise-os-error connect errno address: addr)))
                    (raise-timeout connect "connection timeout" address: addr)))
                (raise-os-error connect errno address: addr))))
        (sockaddr-discard! sa)))))

(def (listen (addr     : EndpointAddress)
             (type     : :fixnum)
             (proto    : :fixnum)
             (backlog  : :fixnum)
             (sockopts : :list))
  => SocketDevice
  (let (domain
        (case addr.domain
          ((IP)   AF_INET)
          ((IP6)  AF_INET6)
          ((UNIX) AF_UNIX)
          (raise-bad-argument stream-listen "bad address domain" address: addr)))
    (let* ((sock (open-server-socket-device domain type proto))
           (sa   (address->sockaddr addr)))
      (begin0
          (with-error-close-device sock
            (for-each (cut socket-device-setsockopt sock SOL_SOCKET <> 1)
                      sockopts)
            (socket-device-bind   sock addr)
            (socket-device-listen sock backlog)
            sock)
        (sockaddr-discard! sa)))))

;;; XXX
;;; TODO UDP

;; (def (udp-socket-device (domain : :fixnum)
;;                         (proto  : :proto))
;;   => SocketDevice
;;   (open-client-socket-device domain SOCK_DGRAM proto))

;; (def (udp-multicast-socket-device (domain : :fixnum)
;;                                   (proto  : :proto))
;;   => SocketDevice
;;   XXX)


;; (def (udp-new af)
;;   (socket af SOCK_DGRAM))

;; (def (udp-new-multicast domain group-ip-address local-address iface-index)
;;   (let* ((local-sockaddr (socket-address local-address))
;;          (sock (udp-new domain)))
;;     (with-error-close sock
;;       (socket-setsockopt sock SOL_SOCKET SO_REUSEADDR 1)
;;       (socket-bind sock local-sockaddr)
;;       (if (fx= domain AF_INET)
;;         (begin
;;           (socket-setsockopt sock IPPROTO_IP IP_ADD_MEMBERSHIP
;;                              (cons group-ip-address (car local-address)))
;;           (socket-setsockopt sock IPPROTO_IP IP_MULTICAST_LOOP 0))
;;         (begin
;;           (socket-setsockopt sock IPPROTO_IPV6 IPV6_ADD_MEMBERSHIP
;;                              (cons group-ip-address iface-index))
;;           (socket-setsockopt sock IPPROTO_IPV6 IPV6_MULTICAST_LOOP 0)))
;;       sock)))

;; (def (udp-bind sock address)
;;   (let* ((sockaddr (socket-address address))
;;          (family (socket-address-family sockaddr)))
;;     (with-error-close sock
;;       (socket-setsockopt sock SOL_SOCKET SO_REUSEADDR 1)
;;       (socket-bind sock sockaddr))))
