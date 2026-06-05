;;; -*- Gerbil -*-
;;; © vyzo
;;; network address types
(import :std/string/utf8)
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

;; network addresses
(defstruct (IPAddress Address)
  ((bytes  :- :u8vector))
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
  ((path :- :string))
  transparent: #t
  acyclic: #t
  constructor: :init!
  final: #t)

;; dns addresses
(defstruct (DNSAddress Address)
  ((host :- :string)
   (port :- :fixnum)
   (resolved :- :list))
  transparent: #t
  acyclic: #t
  constructor: :init!
  final: #t)

;;; constructors
(defrule (ip4-u8vector? o)
  (and (u8vector? o)
       (fx= (u8vector-length o) 4)))

(defrule (ip6-u8vector? o)
  (and (u8vector? o)
       (fx= (u8vector-length o) 16)))

(defrule (inet-port? o)
  (and (fixnum? o)
       (fx<= 0 o 65535)))

(defrule (unix-path? o)
  (and (string? o)
       (fx<= 0 (string-utf8-length o) 108)))

(defmethod {:init! IP4Address}
  (lambda (self (addr :~ ip4-u8vector? :- :u8vector))
    (set! self.domain 'ip4)
    (set! self.bytes addr)))

(defmethod {:init! IP6Address}
  (lambda (self (addr :~ ip6-u8vector? :- :u8vector))
    (set! self.domain 'ip6)
    (set! self.bytes addr)))

(defmethod {:init! InetAddress}
  (lambda (self (addr : IPAddress) (port :~ inet-port? :- :fixnum))
    (set! self.domain
      (if (IP4Address? addr)
        'inet4 'inet6))
    (set! self.net addr)
    (set! self.port port)))

(defmethod {:init! UnixAddress}
  (lambda (self (path :~ unix-path? :- :string))
    (set! self.domain 'unix)
    (set! self.path path)))

(defmethod {:init! DNSAddress}
  (lambda (self (host : :string) (port :~ inet-port? :- :fixnum))
    (set! self.domain 'dns)
    (set! self.host host)
    (set! self.port port)
    (set! self.resolved [])))

(def inaddr-any4
  (IP4Address #u8(0 0 0 0)))
(def inaddr-any6
  (IP6Address #u8(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)))
(def localhost4
  (IP4Address #u8(127 0 0 1)))
(def localhost6
  (IP6Address #u8(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1)))
