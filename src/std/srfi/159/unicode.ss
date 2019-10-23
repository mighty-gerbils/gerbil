;;; -*- Gerbil -*-
;;; © vyzo
;;; SRFI-159: unicode

(import ../151
        ./base)
(export as-unicode unicode-terminal-width)

(defalias bytevector u8vector)
(defalias bytevector-u8-ref u8vector-ref)
(include "unicode.scm")
