;;; -*- Gerbil -*-
;;; © vyzo
;;; network address types
(export #t)

;; address base type
(defstruct Address ((domain :- :symbol))
  transparent: #t
  acyclic: #t)

;; the null address
(defstruct (NullAddress Address) ()
  transparent: #t
  acyclic: #t
  final: #t)

(def !NullAddress
  (NullAddress 'NULL))

;; addresses that represent connection endpoints
(defstruct (EndpointAddress Address) ()
  transparent: #t
  acyclic: #t)

;; network endpoints
(defstruct (NetAddress Address)
  ((bytes  :- :u8vector) ;; normal (binary) form
   (string :- :string))  ;; string form
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

;; internet endpoints
(defstruct (InetAddress EndpointAddress)
  ((net  :- IPAddress)
   (port :- :fixnum))
  transparent: #t
  acyclic: #t
  constructor: :init!
  final: #t)

;; localhost unix domain endpoints
(defstruct (UnixAddress EndpointAddress)
  ((string :- :string))
  transparent: #t
  acyclic: #t
  constructor: :init!
  final: #t)

;; dns addresses
(defstruct (DNSAddress Address)
  ((dns :- :string)
   (net :- :list))
  transparent: #t
  acyclic: #t
  constructor: :init!
  final: #t)

;; WWW addresses
(defstruct (WebAddress Address)
  ((net    :- Address)
   (proto  :- :string))
  transparent: #t
  acyclic: #t)

;;; WWW URLs
(defstruct (URL WebAddress)
  ((url    :- :string)
   (host   :? :string)
   (path   :? :string)
   (params :? :string))
  transparent: #t
  acyclic: #t
  constructor: :init!
  final: #t)
