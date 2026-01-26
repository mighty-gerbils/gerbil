;;; -*- Gerbil -*-
;;; © vyzo
;;; network address base types
(import XXX)
(export #t)

(defstruct NetAddress
  ((bytes  :- :u8vector)
   (string :- :string))
  transparent: #t
  acyclic: #t)

(defstruct (IPAddress NetAddress) ()
  transparent: #t
  acyclic: #t)

(defstruct (IP4Address IPAddress) ()
  transparent: #t
  final: #t
  acyclic: #t)
(defstruct (IP6Address IPAddress) ()
  final: #t
  transparent: #t
  acyclic: #t)

(defstruct (DNSAddress NetAddress) ()
  final: #t
  transparent: #t
  acyclic: #t)

(defstruct Address
  ((net  : NetAddress)
   (port : :fixnum))
  transparent: #t
  acyclic:: #t)
