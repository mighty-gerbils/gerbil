;;; -*- Gerbil -*-
;;; © vyzo
;;; SSL socket interface
(export #t)
(import :std/io)

(interface TLS
  (peer-certificate))

(interface (SSLSocket StreamSocket TLS))
