;;; -*- Gerbil -*-
;;; © vyzo
;;; socket address utilities
(import :std/ffi
        :std/net/address/address
        ./error)
(export #t)

(def (address->sockaddr (addr : Address))
  => sockaddr
  XXX
  )

(def (sockaddr->address (sa : sockaddr))
  => Address
  XXX
  )

(def (sockaddr-discard! (sa : sockaddr))
  => :void
  XXX
  )


(C-ffi-macrology)
(C-include "<sys/types.h>"
           "<sys/socket.h>"
           "<netinet/in.h>"
           "<netinet/ip.h>"
           "<netinet/tcp.h>"
           "<arpa/inet.h>"
           "<sys/un.h>")

(def-C-union sockaddr
  (struct sockaddr_in
          ((family    sin_family     :u16)
           (port      sin_port       :u16)
           (addr      sin_addr       [:u8 4])))
  (struct sockaddr_in6
          ((family    sin6_family    :u16)
           (port      sin6_port      :u16)
           (flowinfo  sing6_flowinfo :u32)
           (addr      sin6_addr      [:u8 16])
           (scope-id  sin6_scope_id  :u32)))
  (struct sockaddr_un
          ((family    sun_family     :u16)
           (path      sun_path       [:u8 108])))
  (struct sockaddr
          ((family    sa_family     :u16))))
