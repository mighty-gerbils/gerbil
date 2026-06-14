;;; -*- Gerbil -*-
;;; © vyzo
;;; multibase encoding
(import :std/error
        ./base58)
(export #t)

(def (multibase-encode (code  : :fixnum)
                       (bytes : :u8vector))
  => :string
  (TODO multibase-encode))

(def (multibase-decode (str : :string))
  => :values
  (TODO multibase-decode))
