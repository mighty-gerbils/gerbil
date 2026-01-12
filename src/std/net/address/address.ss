;;; -*- Gerbil -*-
;;; © vyzo
;;; network address base types
(import XXX)
(export #t)

(defstruct Address
  ((bytes  :- :u8vector)
   (string :- :string))
  transparent: #t)

(defstruct (IPAddress Address) ()
  transparent: #t)

(defstruct (IP4Address IPAddress) ()
  transparent: #t final: #t)
(defstruct (IP6Address IPAddress) ()
  transparent: #t final: #t)
