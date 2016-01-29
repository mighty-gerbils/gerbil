;;; -*- Gerbil -*-
;;; (C) vyzo
;;; network addresses
package: std/net

(export ip4-address? ip4-address 
        ip4-address-string? ip4-address->string string->ip4-address
        ip6-address?
        inet-address? inet-address
        inet-address-string? inet-address->string string->inet-address
        inet-host-name?
        ip4-address-rx inet-host-name-rx)
(import :std/pregexp
        :std/format)

;; ipv4 address; 4-octet u8vector
(def (ip4-address obj)
  (cond
   ((ip4-address? obj) obj)
   ((ip4-address-string? obj)
    (string->ip4-address obj))
   (else
    (error "Malformed ip4 address" obj))))

(def (ip4-address? obj)
  (and (##u8vector? obj)
       (fx= (##u8vector-length obj) 4)))

(def (ip4-address-string? obj)
  (and (string? obj)
       (pregexp-match ip4-address-rx obj)))

(def ip4-address-rx
  (pregexp "^(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})$"))

(def (string->ip4-address str)
  (with ([_ . octets] (pregexp-match ip4-address-rx str))
    (apply ##u8vector (map string->number octets))))

(def (ip4-address->string ip4)
  (cond
   ((ip4-address? ip4)
    (apply format "~a.~a.~a.~a" (##u8vector->list ip4)))
   ((ip4-address-string? ip4) ip4)
   (else
    (error "Malformed ip4 address" ip4))))

;; ipv6 compat
(def (ip6-address? obj)
  (and (##u8vector? obj)
       (fx= (##u8vector-length obj) 16)))

;; inet address: endpoint [host . port]
(def (inet-address obj)
  (cond
   ((inet-address? obj) 
    (inet-address-normalize obj))
   ((inet-address-string? obj)
    (string->inet-address obj))
   (else
    (error "Malformed inet address" obj))))

(def (inet-address-normalize inaddr)
  (with ([host . port] inaddr)
    (cond
     ((ip4-address-string? host)
      (cons (string->ip4-address host) port))
     (else inaddr))))

(def (inet-address? obj)
  (match obj
    ([host . port]
     (and (inet-host-address? host)
          (fixnum? port)
          (fx<= 0 port 65535)))
    (else #f)))

(def (inet-address-string? obj)
  (cond
   ((and (string? obj) (pregexp-match inet-address-rx obj))
    => (match <>
         ([_ host port] (inet-host-address-string? host))
         (else #f)))
   (else #f)))

(def (inet-host-address? obj)
  (or (ip4-address? obj)
      (ip6-address? obj)
      (inet-host-address-string? obj)))

(def (inet-host-address-string? obj)
  (or (ip4-address-string? obj)
      (inet-host-name? obj)))

(def (inet-host-name? obj)
  (and (string? obj)
       (pregexp-match inet-host-name-rx obj)))

(def inet-host-name-rx
  (pregexp "^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?(?:\\.[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?)*$"))

(def inet-address-rx 
  (pregexp "^([^:]+):(\\d+)$"))

(def (string->inet-address obj)
  (def (string->host host)
    (cond
     ((ip4-address-string? host)
      (string->ip4-address host))
     ((inet-host-name? host) host)
     (else
      (error "Malformed address: bad host" obj host))))
  
  (def (string->port port)
    (let (port (string->number port))
      (if (and (fixnum? port) (fx<= 0 port 65535)) port
          (error "Malformed address: bad port" obj port))))
  
  (with ([_ host port] (pregexp-match inet-address-rx obj))
    (cons
     (string->host host)
     (string->port port))))

(def (inet-address->string obj)
  (cond
   ((inet-address? obj)
    (with ([host . port] obj)
      (format "~a:~a" (inet-host-address->string host) port)))
   ((inet-address-string? obj) obj)
   (else
    (error "Malformed inet address"))))

(def (inet-host-address->string host)
  (cond
   ((string? host) host)
   ((ip4-address? host)
    (ip4-address->string host))
   (else
    (error "Malformed inet host address" host))))
