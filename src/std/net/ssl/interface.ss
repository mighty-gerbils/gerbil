;;; -*- Gerbil -*-
;;; © vyzo
;;; SSL socket interface
(export #t)
(import :std/interface
        :std/io)

(interface TLS
  (peer-certificate))

(interface (SSLSocket StreamSocket TLS))
