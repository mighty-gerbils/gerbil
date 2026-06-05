;;; -*- Gerbil -*-
;;; © vyzo
;;; socket address utilities
(import :std/ffi
        ./error)
(export #t)

(C-ffi-macrology)
(C-include "<sys/types.h>"
           "<sys/socket.h>"
           "<netinet/in.h>"
           "<netinet/ip.h>"
           "<netinet/tcp.h>"
           "<arpa/inet.h>"
           "<sys/un.h>")

(def-C-struct sockaddr_in)
(def-C-struct sockaddr_in6)
(def-C-struct sockaddr_un)

(def-C-union sockaddr
  sockaddr_in
  sockaddr_in6
  sockaddr_un)

(def-C (sockaddr-family (sa : sockaddr))
  => :fixnum
  "___arg1->sa_family")

(def-C (sockaddr-family-set! (sa     : sockaddr)
                             (family : :fixnum))
  => :void
  "___arg1->sa_family = ___arg2")

(def-C (sockaddr_in-port (sa : sockaddr_in))
  => :fixnum
  "ntohs(___arg1->sin_port)")

(def-C (sockaddr_in-port-set! (sa : sockaddr_in)
                              (port : :fixnum))
  => :void
  "___arg1->sin_port = htons(___arg2)")

(def-C (sockaddr_in-addr (sa : sockaddr_in)
                         (addr : :u8vector))
  => :void
  "memcpy(___arg2, &___arg1->sin_addr, 4)")

(def-C (sockaddr_in-addr-set! (sa : sockaddr_in)
                              (addr : :u8vector))
  => :void
  "memcpy(&___arg1->sin_addr, ___arg2, 4)")

(def-C (sockaddr_in6-port (sa : sockaddr_in6))
  => :fixnum
  "ntohs(___arg1->sin6_port)")

(def-C (sockaddr_in6-port-set! (sa : sockaddr_in6)
                               (port : :fixnum))
  => :void
  "___arg1->sin6_port = htons(___arg2)")

(def-C (sockaddr_in6-addr (sa : sockaddr_in6)
                          (addr : :u8vector))
  => :void
  "memcpy(___arg2, &___arg1->sin6_addr, 16)")

(def-C (sockaddr_in6-addr-set! (sa : sockaddr_in6)
                               (addr : :u8vector))
  => :void
  "memcpy(&___arg1->sin6_addr, ___arg2, 16)")

(def-C (sockaddr_un-path (sa : sockaddr_un)
                         (addr : :u8vector))
  => :void
  "memcpy(___arg2, &___arg1->sun_path, ___U8VECTORSIZE(___ARG2))")

(def-C (sockaddr_un-path-set! (sa : sockaddr_un)
                              (addr : :u8vector))
  => :void
  "memcpy(&___arg1->sun_path, ___arg2, ___U8VECTORSIZE(___ARG2))")
