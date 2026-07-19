;;; -*- Gerbil -*-
;;; © vyzo
;;; SSL socket interface
(export #t)
(import :std/io
        :std/net/address
        :std/time/timeout
        :std/os/sockopt)

(interface TLS
  (peer-certificate))

(interface (SSLSocket StreamSocket TLS))
