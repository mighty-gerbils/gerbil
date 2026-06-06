;;; -*- Gerbil -*-
;;; © vyzo
;;; sockaddr to address conversion
(import :std/error
        :std/os/socket
        :std/os/sockaddr
        :std/net/address/types)
(export #t)

(def (address->socket-domain (addr : Address))
  (case addr.domain
    ((inet4 ip4) AF_INET)
    ((inet6 ip6) AF_INET6)
    ((unix)  AF_UNIX)
    (else
     (raise-bad-argument address->sockaddr "unexpected address domain" address: addr domain: addr.domain))))

(def (address->sockaddr (addr  : EndpointAddress))
  => sockaddr
  (let (sa (sockaddr))
    (case addr.domain
      ((inet4)
       (using (addr : InetAddress)
         (set! (sockaddr-family sa) AF_INET)
         (let (sa_in (sockaddr::sockaddr_in sa))
           (set! (sockaddr_in-port sa_in) addr.port)
           (set! (sockaddr_in-addr sa_in) addr.net.bytes))))
      ((inet6)
       (using (addr : InetAddress)
         (set! (sockaddr-family sa) AF_INET6)
         (let (sa_in6 (sockaddr::sockaddr_in6 sa))
           (set! (sockaddr_in6-port sa_in6) addr.port)
           (set! (sockaddr_in6-addr sa_in6) addr.net.bytes))))
      ((unix)
       (using (addr : UnixAddress)
         (set! (sockaddr-family sa) AF_UNIX)
         (let (sa_un (sockaddr::sockaddr_un sa))
           (set! (sockaddr_un-path sa_un)
             (string->utf8 addr.path)))))
      (else
       (raise-bad-argument address->sockaddr "unexpected address domain" address: addr domain: addr.domain)))
    sa))

(def (sockaddr->address (sa : sockaddr))
  => Address
  (let (family (sockaddr-family sa))
    (cond
     ((fx= family AF_INET)
      (let* ((sa_in (sockaddr::sockaddr_in sa))
             (port (sockaddr_in-port sa_in))
             (addr (make-u8vector 4)))
        (sockaddr_in-addr sa_in addr)
        (InetAddress
         (IP4Address addr)
         port)))
     ((fx= family AF_INET6)
      (let* ((sa_in6 (sockaddr::sockaddr_in6 sa))
             (port (sockaddr_in6-port sa_in6))
             (addr (make-u8vector 16)))
        (sockaddr_in6-addr sa_in6 addr)
        (InetAddress
         (IP6Address addr)
         port)))
     ((fx= family AF_UNIX)
      (let* ((sa_un (sockaddr::sockaddr_un sa))
             (path (make-u8vector 108)))
        (sockaddr_un-path sa_un path)
        (let loop ((i 0 :- :fixnum))
          (when (fx< i 108)
            (if (fx= (u8vector-ref path i) 0)
              (u8vector-shrink! path i)
              (loop (fx+ i 1)))))
        (UnixAddress
         (utf8->string path))))
     (else
       (raise-bad-argument sockaddr->address "unexpected address family" address: sa family: family)))))
