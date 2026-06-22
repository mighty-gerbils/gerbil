;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble network addresses
(import :std/error
        :std/interface
        :std/net/address/types
        :std/net/address/resolver
        :std/net/address/parser
        :std/string/stringer
        :std/serde/interface
        :std/os/hostname)
(export (struct-out LocalAddress
                    RelayAddress))

(defstruct (LocalAddress Address)
  ((hostid  : :string)
   (address : UnixAddress))
  constructor: :init!
  acyclic: #t
  final: #t)

(defstruct (RelayAddress Address)
  ((host    : :string)
   (address : Address))
  constructor: :init!
  final: #t)

(defobject-untaint LocalAddress)
(defobject-untaint RelayAddress)

(defmethod {:init! LocalAddress}
  (lambda (self (addr   : UnixAddress)
           (id     :? :string := #f))
    (set! self.domain 'local)
    (set! self.hostid
      (or id (hostid)))
    (set! self.address addr)))

(defmethod {:init! RelayAddress}
  (lambda (self (addr : RelayAddress)
           (host : :string))
    (set! self.domain 'relay)
    (set! self.host host)
    (set! self.address addr)))

(implement EndpointAddressResolver
  (LocalAddress
   (resolve &LocalAddress-address))
  (RelayAddress
   (resolve
    (lambda (self)
      (resolve->endpoint self.address)))))

(implement Stringer
  (LocalAddress
   (to-string
    (lambda (self)
      (string-append self.hostid "!" self.address.path))))
  (RelayAddress
   (to-string
    (lambda (self)
      (string-append self.host "!" (to-string self.address))))))

(def (string->local-address (str : :string))
  => LocalAddress
  (cond
   ((string-index str #\!)
    => (lambda (i)
         (let ((id (substring str 0 i))
               (path (substring str (fx1+ i) (string-length str))))
         (LocalAddress
          (UnixAddress path)
          (if (string-empty? id) (hostid) id))))
   (else
    (raise-bad-argument string->local-address "malformed relay address"
                        str))))

(def (string->relay-address (str : :string))
  (cond
   ((string-index str #\!)
    => (lambda (i)
         (RelayAddress
          (string->address (substring str (fx1+ i) (string-length str)))
          (substring str 0 i))))
   (else
    (raise-bad-argument string->relay-address "malformed relay address"
                        str))))

(hash-put! domain-table "local" __string->local-address)
(hash-put! domain-table "relay" __string->relay-address)
