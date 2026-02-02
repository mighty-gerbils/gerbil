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

(defstruct (EndpointAddress Address) ()
  transparent: #t
  acyclic: #t)

(defstruct (NetAddress Address)
  ((bytes  :- :u8vector)
   (string :- :string))
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

(defstruct (InetAddress EndpointAddress)
  ((net  :- IPAddress)
   (port :- :fixnum))
  transparent: #t
  acyclic: #t
  constructor: :init!
  final: #t)

(defstruct (UnixAddress EndpointAddress)
  ((string :- :string))
  transparent: #t
  acyclic: #t
  constructor: :init!
  final: #t)

(defstruct (DNSAddress Address)
  ((dns :- :string)
   (net :  :list))
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
