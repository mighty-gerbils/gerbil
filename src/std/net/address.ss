;;; -*- Gerbil -*-
;;; (C) vyzo
;;; network addresses

(import :gerbil/gambit/os
        :std/error
        :std/pregexp
        :std/format
        :std/text/hex)
(export ip-address? ip-address
        ip4-address? ip4-address
        ip4-address-string? ip4-address->string string->ip4-address
        ip6-address? ip6-address
        ip6-address-string? ip6-address->string string->ip6-address
        inet-address? inet-address
        inet-address-string? inet-address->string string->inet-address
        resolve-address resolved-address?)

;; ip address; ip4 or ip6
(def (ip-address obj)
  (cond
   ((ip4-address? obj) obj)
   ((ip6-address? obj) obj)
   ((ip4-address-string? obj)
    (string->ip4-address obj))
   ((ip6-address-string? obj)
    (string->ip6-address obj))
   (else
    (raise-bad-argument 'ip-address "ip address" obj))))

(def (ip-address? obj)
  (or (ip4-address? obj)
      (ip6-address? obj)
      (ip4-address-string? obj)
      (ip6-address-string? obj)))

;; ipv4 address; 4-octet u8vector
(def (ip4-address obj)
  (cond
   ((ip4-address? obj) obj)
   ((ip4-address-string? obj)
    (string->ip4-address obj))
   (else
    (raise-bad-argument 'ip4-address  "ip4 address" obj))))

(def (ip4-address? obj)
  (and (##u8vector? obj)
       (##fx= (##u8vector-length obj) 4)))

(def (ip4-address-string? obj)
  (and (string? obj)
       (pregexp-match ip4-address-rx obj)
       #t))

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
    (raise-bad-argument 'ip4-address->string "ip4 address" ip4))))

;; ipv6 compat
(def (ip6-address obj)
  (cond
   ((ip6-address? obj) obj)
   ((ip6-address-string? obj)
    (string->ip6-address obj))
   (else
    (raise-bad-argument 'ip6-error "ip6 address" obj))))

(def (ip6-address? obj)
  (and (##u8vector? obj)
       (##fx= (##u8vector-length obj) 16)))

(def ip6-address-rx
  (pregexp "^[0-9a-fA-F:]+$"))

(def (ip6-address-string? obj)
  (and (string? obj)
       (pregexp-match ip6-address-rx obj)
       #t))

;; rfc4291-compliant ipv6 address strings
(def (string->ip6-address str)
  (def (hex-e str k)
    (let (char (string-ref str k))
      (cond
       ((unhex* char) => values)
       (else
        (raise-bad-argument 'string->ip6-address "ip6 address: not a hex digit" str char)))))

  (def (loop rest bytes have-zeros)
    (match rest
      ([hex . rest]
       (case (string-length hex)
         ((0)
          (if have-zeros
            (raise-bad-argument 'string->ip6-address "ip6 address: too many zeros" str)
            (let* ((count (length rest))
                   (count (##fx* (##fx- 8 count) 2))
                   (count (##fx- count (length bytes)))
                   (_ (when (##fxnegative? count)
                        (raise-bad-argument 'string->ip6-address "ip6 address: too many bits" str)))
                   (block (make-list count 0)))
              (loop rest
                    (foldl cons bytes block)
                    #t))))
         ((1)
          (loop rest
                (cons* (hex-e hex 0)
                       0 bytes)
                have-zeros))
         ((2)
          (loop rest
                (cons* (##fxior (##fxarithmetic-shift (hex-e hex 0) 4) (hex-e hex 1))
                       0 bytes)
                have-zeros))
         ((3)
          (loop rest
                (cons* (##fxior (##fxarithmetic-shift (hex-e hex 1) 4) (hex-e hex 2))
                       (hex-e hex 0)
                       bytes)
                have-zeros))
         ((4)
          (loop rest
                (cons* (##fxior (##fxarithmetic-shift (hex-e hex 2) 4) (hex-e hex 3))
                       (##fxior (##fxarithmetic-shift (hex-e hex 0) 4) (hex-e hex 1))
                       bytes)
                have-zeros))
         (else
          (raise-bad-argument 'string->ip6-address "ip6 address: block is too big" str hex))))
      (else
       (check (list->u8vector (reverse bytes))))))

  (def (check bytes)
    (cond
     ((##fx= (u8vector-length bytes) 16) bytes)
     ((##fx< (u8vector-length bytes) 16)
      (raise-bad-argument 'string->ip6-address "ip6 address: not enough bits" str bytes))
     (else
      (raise-bad-argument 'string->ip6-address  "ip6 address: too many bits" str bytes))))

  (let (hexes (string-split str #\:))
    (match hexes
      (["" "" . rest]
       (let* ((count (length rest))
              (count (##fx* (##fx- 8 count) 2))
              (_ (when (##fxnegative? count)
                   (raise-bad-argument 'string->ip6-address  "ip6 address: too many bits" str)))
              (bytes (make-list count 0)))
           (loop rest bytes #t)))
      (else
       (loop hexes [] #f)))))

(def (ip6-address->string ip6)
  (def (compress-zeros hexes)
    (compress-leading-trailing
     (compress hexes)))

  (def (compress-leading-trailing hexes)
    (cond
     ((equal? (car hexes) "")
      (cons "" hexes))
     ((equal? (last hexes) "")
      (set! (cdr (last-pair hexes)) '(""))
      hexes)
     (else hexes)))

  (def (compress hexes)
    (match hexes
      (["0" "0" . rest]
       (cons "" (compress* rest)))
      ([hd . rest]
       (cons hd (compress rest)))
      (else [])))

  (def (compress* hexes)
    (match hexes
      (["0" . rest]
       (compress* rest))
      (else hexes)))

  (let lp ((rest (u8vector->list ip6)) (hexes []))
    (match rest
      ([b0 b1 . rest]
       (let ((b0h (##fxand (##fxarithmetic-shift b0 -4) #xf))
             (b0l (##fxand b0 #xf))
             (b1h (##fxand (##fxarithmetic-shift b1 -4) #xf))
             (b1l (##fxand b1 #xf)))
         (match* (b0h b0l b1h b1l)
           ((0 0 0 0)
            (lp rest (cons "0" hexes)))
           ((0 0 0 b1l)
            (lp rest (cons (string (hex b1l)) hexes)))
           ((0 0 b1h b1l)
            (lp rest (cons (string (hex b1h) (hex b1l)) hexes)))
           ((0 b0l b1h b1l)
            (lp rest (cons (string (hex b0l) (hex b1h) (hex b1l)) hexes)))
           (else
            (lp rest (cons (string (hex b0h) (hex b0l) (hex b1h) (hex b1l)) hexes))))))
      (else
       (string-join (compress-zeros (reverse hexes)) #\:)))))

;; inet address: endpoint [host . port]
(def (inet-address obj)
  (cond
   ((inet-address? obj)
    (inet-address-normalize obj))
   ((inet-address-string? obj)
    (string->inet-address obj))
   (else
    (raise-bad-argument 'inet-address "inet address" obj))))

(def (inet-address-normalize addr)
  (with ([host . port] addr)
    (cond
     ((or (ip4-address? host) (ip6-address? host))
      addr)
     ((ip4-address-string? host)
      (cons (string->ip4-address host) port))
     ((ip6-address-string? host)
      (cons (string->ip6-address host) port))
     (else addr))))

(def (inet-address? obj)
  (match obj
    ([host . port]
     (and (inet-host-address? host)
          (fixnum? port)))
    (else #f)))

(def (inet-address-string? obj)
  (cond
   ((and (string? obj) (inet-address-split obj false))
    => (match <>
         ((values host port)
          (or (string-empty? host)
              (inet-host-address-string? host)))
         (else #f)))
   (else #f)))

(def (inet-address-split str (E error))
  (cond
   ((string-rindex str #\:)
    => (lambda (ix)
         (values (substring str 0 ix)
                 (substring str (##fx+ ix 1) (string-length str)))))
   (else
    (E "Malformed address; no port separator" str))))

(def (inet-host-address? obj)
  (or (ip4-address? obj)
      (ip6-address? obj)
      (inet-host-address-string? obj)))

(def (inet-host-address-string? obj)
  (or (ip4-address-string? obj)
      (ip6-address-string? obj)
      (inet-host-name? obj)))

(def (inet-host-name? obj)
  (and (string? obj)
       (pregexp-match inet-host-name-rx obj)))

(def inet-host-name-rx
  (pregexp "^[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?)*$"))

(def (string->inet-address str)
  (def (string->host host)
    (cond
     ((ip4-address-string? host)
      (string->ip4-address host))
     ((ip6-address-string? host)
      (string->ip6-address host))
     ((inet-host-name? host) host)
     ((string-empty? host)
      '#u8(0 0 0 0))
     (else
      (raise-bad-argument 'string->inet-address "inet address: bad host" str host))))

  (def (string->port port)
    (let (port (string->number port))
      (if (and (fixnum? port) (##fx<= 0 port 65535)) port
          (raise-bad-argument 'string->inet-address "inet address: bad port" str port))))

  (with ((values host port) (inet-address-split str))
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
    (raise-bad-argument 'inet-address->string "inet address"))))

(def (inet-host-address->string host)
  (cond
   ((string? host) host)
   ((ip4-address? host)
    (ip4-address->string host))
   ((ip6-address? host)
    (ip6-address->string host))
   (else
    (raise-bad-argument 'inet-address->string "inet address: bad host address" host))))

(def (resolve-address addr)
  (let (addr (inet-address addr))
    (with ([host . port] addr)
      (if (or (ip4-address? host)
              (ip6-address? host))
        addr
        (let (info (host-info host))
          (match (host-info-addresses info)
            ([ip . rest]
             (cons ip port))
            (else
             (error "Failed to resolve address" addr))))))))

(def (resolved-address? obj)
  (match obj
    ([host . port]
     (and (or (ip4-address? host)
              (ip6-address? host))
          (fixnum? port)))
    (else #f)))
