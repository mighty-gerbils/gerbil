;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble network addresses
(import :std/error
        :std/interface
        :std/net/address
        :std/net/address/resolver
        :std/net/address/parser
        :std/string/stringer
        :std/serde/interface
        :std/serde/deserialize
        :std/os/hostname
        ./message)
(export (struct-out HostAddress
                    LocalAddress
                    RelayAddress)
        ensemble-address?)

(defrule (ensemble-address? o)
  (? (or InetAddress?
         LocalAddress?
         RelayAddress?)))

(defstruct (HostAddress Address)
  ((host    : HostID)
   (address :~ ensemble-address?
            :- Address))
  constructor: :init!
  final: #t)

(defstruct (LocalAddress Address)
  ((hostid  : :string)
   (address : UnixAddress))
  constructor: :init!
  final: #t)

(defstruct (RelayAddress Address)
  ((through : HostAddress))
  constructor: :init!
  final: #t)

(defobject-untaint
  HostAddress
  LocalAddress
  RelayAddress)

(defmethod {:init! HostAddress}
  (lambda (self (host : HostID)
           (addr :~ ensemble-address?
                 :- Address))
    (set! self.domain 'host)
    (set! self.host host)
    (set! self.address addr)))

(defmethod {:init! LocalAddress}
  (lambda (self (addr   : UnixAddress)
           (id     :? :string := #f))
    (set! self.domain 'local)
    (set! self.hostid
      (or id (hostid)))
    (set! self.address addr)))

(defmethod {:init! RelayAddress}
  (lambda (self (through : HostAddress))
    (set! self.domain 'relay)
    (set! self.through through)))

(implement EndpointAddressResolver
  (LocalAddress
   (resolve &LocalAddress-address))
  (RelayAddress
   (resolve
    (lambda (self)
      (resolve->endpoint self.through))))
  (HostAddress
   (resolve
    (lambda (self)
      (resolve->endpoint self.address)))))

(implement Stringer
  (HostID
   (to-string
    (lambda (self)
      (string-append self.name "!"
                     self.did ))))
  (LocalAddress
   (to-string
    (lambda (self)
      (string-append self.hostid "!" self.address.path))))
  (RelayAddress
   (to-string
    (lambda (self)
      (address->string self.through))))
  (HostAddress
   (to-string
    (lambda (self)
      (string-append self.host.name "!"
                     self.host.did "!"
                     (address->string self.address))))))

(def (string->host-id (str : :string))
  => HostID
  (cond
   ((string-index str #\!)
    => (lambda (i)
         (let ((name (substring str 0 i))
               (did (substring str (fx1+ i) (string-length str))))
           (if (string-prefix? "did:" did)
             (HostID name did)
             (raise-bad-argument string->host-id "malformed host id"
                                 str)))))
   (else
    (raise-bad-argument string->host-id "malformed host id"
                        str))))

(def (string->local-address (str : :string))
  => LocalAddress
  (cond
   ((string-index str #\!)
    => (lambda (i)
         (let ((id (substring str 0 i))
               (path (substring str (fx1+ i) (string-length str))))
           (LocalAddress
            (UnixAddress path)
            (if (string-empty? id) (hostid) id)))))
   (else
    (raise-bad-argument string->local-address "malformed local address"
                        str))))

(def (string->relay-address (str : :string))
  => RelayAddress
  (RelayAddress (string->address str)))

(def (string->host-address (str : :string))
  => HostAddress
  (cond
   ((string-index str #\!)
    => (lambda (i)
         (let (name (substring str 0 i))
           (cond
            ((string-index str #\! (fx+ i 1))
             => (lambda (j)
                  (let ((did (substring str (fx+ i 1) j))
                        (addr (substring str (fx+ j 1) (string-length str))))
                    (if (string-prefix? "did:" did)
                      (HostAddress (HostID name did)
                                   (string->address addr))
                      (raise-bad-argument string->host-address "malformed host id"
                                          str)))))
            (else
             (raise-bad-argument string->host-address "malformed host address"
                                 str))))))
   (else
    (raise-bad-argument string->host-address "malformed host address"
                        str))))

(hash-put! domain-table "local" __string->local-address)
(hash-put! domain-table "relay" __string->relay-address)
(hash-put! domain-table "host"  __string->host-address)
