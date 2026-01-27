;;; -*- Gerbil -*-
;;; © vyzo
;;; network address types
(export #t)

(defstruct Address ((domain :- :symbol))
  transparent: #t
  acyclic: #t)

(defstruct (NullAddress Address) ()
  transparent: #t
  acyclic: #t
  constructor: :init!
  final: #t)

(defstruct (NetAddress Address)
  ((bytes  :- :u8vector)
   (string :? :string))
  transparent: #t
  acyclic: #t)

(defstruct (IPAddress NetAddress) ()
  transparent: #t
  acyclic: #t)

(defstruct (IP4Address IPAddress) ()
  transparent: #t
  acyclic: #t
  constructor: :init!
  final: #t)
(defstruct (IP6Address IPAddress) ()
  transparent: #t
  acyclic: #t
  constructor: :init!
  final: #t)

(defstruct (InetAddress Address)
  ((net  :- NetAddress)
   (port :- :fixnum))
  transparent: #t
  acyclic: #t
  constructor: :init!
  final: #t)

(defstruct (DNSAddress Address)
  ((dns :- :string)
   (net :? InetAddress))
  transparent: #t
  acyclic: #t
  constructor: :init!
  final: #t)

(defstruct (UnixAddress Address)
  ((string :- :string))
  transparent: #t
  acyclic: #t
  constructor: :init!
  final: #t)

(defstruct (WebAddress Address)
  ((net    :- Address)
   (proto  :- :string))
  transparent: #t
  acyclic: #t)

(defstruct (URL WebAddress)
  ((url    :- :string)
   (host   :? :string)
   (path   :? :string)
   (params :? :string))
  transparent: #t
  acyclic: #t
  constructor: :init!
  final: #t)
