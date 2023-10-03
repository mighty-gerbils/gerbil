;;; -*- Gerbil -*-
;;; (C) vyzo
;;; network addresses

(import :gerbil/gambit
        :std/error
        :std/pregexp
        :std/format
        :std/text/hex
        :std/sugar)
(export ip-address? ip-address
        ip4-address? ip4-address
        ip4-address-string? ip4-address->string string->ip4-address
        ip6-address? ip6-address
        ip6-address-string? ip6-address->string string->ip6-address
        inet-address? inet-address
        inet-address-string? inet-address->string string->inet-address
        resolve-address resolved-address?
        inaddr-any4 inaddr-any6
        localhost4 localhost6)

(def inaddr-any4
  #u8(0 0 0 0))
(def inaddr-any6
  #u8(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0))
(def localhost4
  #u8(127 0 0 1))
(def localhost6
  #u8(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1))

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
    (raise-bad-argument ip-address "ip address" obj))))

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
    (raise-bad-argument ip4-address  "ip4 address" obj))))

(def (ip4-address? obj)
  (and (u8vector? obj)
       (fx= (u8vector-length obj) 4)))

(def (ip4-address-string? obj)
  (and (string? obj)
       (pregexp-match ip4-address-rx obj)
       #t))

(def ip4-address-rx
  (pregexp "^(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})$"))

(def (string->ip4-address str)
  (match (pregexp-match ip4-address-rx str)
    ([_ . octets]
     (let (octets (map string->number octets))
       (unless (andmap (cut fx< <> 256) octets)
         (raise-bad-argument string->ip4-address "ip4 address string: not an octet" str))
       (apply u8vector octets)))
    (else
     (raise-bad-argument string->ip4-address "ip4 address string" str))))

(def (ip4-address->string ip4)
  (cond
   ((ip4-address? ip4)
    (apply format "~a.~a.~a.~a" (u8vector->list ip4)))
   ((ip4-address-string? ip4) ip4)
   (else
    (raise-bad-argument ip4-address->string "ip4 address" ip4))))

;; ipv6 compat
(def (ip6-address obj)
  (cond
   ((ip6-address? obj) obj)
   ((ip6-address-string? obj)
    (string->ip6-address obj))
   (else
    (raise-bad-argument ip6-error "ip6 address" obj))))

(def (ip6-address? obj)
  (and (u8vector? obj)
       (fx= (u8vector-length obj) 16)))

(def ip6-address-rx
  (pregexp "^[0-9a-fA-F:]+$"))

(def (ip6-address-string? obj)
  (and (string? obj)
       (pregexp-match ip6-address-rx obj)
       #t))

;; rfc4291-compliant ipv6 address strings
(def (string->ip6-address str)
  (def result (make-u8vector 16 0))

  (defrule (fail! ctx what irritant ...)
    (raise-bad-argument ctx (string-append "ip6 address string: " what) string irritant ...))

  (def (parse-trailing rest leading)
    (let loop ((rest rest) (byte 0) (octets 0) (bytes []) (have-colon? #t))
      (def (consume rest octet-expr)
        (let (octet octet-expr)
          (case octets
            ((0 2)
             (loop rest octet (fx+ octets 1) bytes #f))
            ((1 3)
             (loop rest 0 (fx+ octets 1)
                   (cons (fxior octet (fxarithmetic-shift-left byte 4))
                         bytes)
                   #f))
            (else
             (fail! string->ip6-address "too many bits in octet")))))

      (def (finish!)
        (let (bytes (if (fx= (fxand octets 1) 1) (cons byte bytes) bytes))
          (let fini ((rest bytes) (i 15))
            (match rest
              ([byte . rest]
               (u8vector-set! result i byte)
               (fini rest (fx- i 1)))
              (else result)))))

      (let (len (length bytes))
        (if (fx< len (fx- 16 leading))
          (match rest
            ([hd . rest]
             (case hd
               ((#\:)
                (if have-colon?
                  (fail! string->ip6-address "too many colons")
                  (case octets
                    ((1 2)
                     (loop rest 0 0 (cons* byte 0 bytes) #t))
                    ((3)
                     (let* ((byte+1 (car bytes))
                            (byte+0 (fxarithmetic-shift-right byte+1 4))
                            (byte+1 (fxior (fxarithmetic-shift-left (fxand byte+1 #x0f) 4)
                                           byte)))
                       (loop rest 0 0 (cons* byte+1 byte+0 (cdr bytes)) #t)))
                    ((4)
                     (loop rest 0 0 bytes #t))
                    (else
                     (BUG string->ip6-address "unexpected number of octets" octets)))))
               ((#\0 #\1 #\2 #\3 #\4 #\5 #\6 #\7 #\8 #\9)
                (consume rest (fx- (char->integer hd) 48)))
               ((#\A #\B #\C #\D #\E #\F)
                (consume rest (fx+ 10 (fx- (char->integer hd) 65))))
               ((#\a #\b #\c #\d #\e #\f)
                (consume rest (fx+ 10 (fx- (char->integer hd) 97))))
               (else
                (fail! string->ip6-address "bad character" hd))))
            (else
             (finish!)))
          (match rest
            ([] (finish!))
            (else
             (fail! string->ip6-address "too many octets")))))))

  (def (parse-leading rest)
    (let loop ((rest rest) (i 0) (byte 0) (octets 0) (have-colon? #f))
      (def (consume rest octet-expr)
        (let (octet octet-expr)
          (case octets
            ((0 2)
             (loop rest i octet (fx+ octets 1) #f))
            ((1)
             (let (byte (fxior octet (fxarithmetic-shift-left byte 4)))
               (u8vector-set! result (fx+ i 1) byte)
               (loop rest i 0 (fx+ octets 1) #f)))
            ((3)
             (let (byte (fxior octet (fxarithmetic-shift-left byte 4)))
               (u8vector-set! result i (u8vector-ref result (fx+ i 1)))
               (u8vector-set! result (fx+ i 1) byte)
               (loop rest (fx+ i 2) 0 (fx+ octets 1) #f)))
            (else
             (fail! string->ip6-address "too many bits in octet")))))

      (def (finish!)
        (case octets
          ((0 2 4)
           (void))
          ((1)
           (u8vector-set! result (fx+ i 1) byte))
          ((3)
           (u8vector-set! result i (u8vector-ref result (fx+ i 1)))
           (u8vector-set! result (fx+ i 1) byte))
          (else
           (BUG string->ip6-address "too many octets" octets str))))

      (if (fx< i 16)
        (match rest
          ([hd . rest]
           (case hd
             ((#\:)
              (cond
               (have-colon?
                (parse-trailing rest i))
               ((fx= 0 i octets)
                (match rest
                  (['#\: . rest]
                   (parse-trailing rest 0))
                  (else
                   (fail! string->ip6-address "bad starting colon"))))
               (else
                (case octets
                  ((1)
                   (u8vector-set! result (fx+ i 1) byte)
                   (loop rest (fx+ i 2) 0 0 #t))
                  ((2)
                   (loop rest (fx+ i 2) 0 0 #t))
                  ((3)
                   (let* ((byte+1 (u8vector-ref result (fx+ i 1)))
                          (byte+0 (fxarithmetic-shift-right byte+1 4))
                          (byte+1 (fxior (fxarithmetic-shift-left (fxand byte+1 #x0f) 4)
                                         byte)))
                     (u8vector-set! result i byte+0)
                     (u8vector-set! result (fx+ i 1) byte+1)
                     (loop rest (fx+ i 2) 0 0 #t)))
                  ((4)
                   (loop rest i 0 0 #t))
                  (else
                   (BUG ip6->string "unexpected number of octets" octets str hd))))))
             ((#\0 #\1 #\2 #\3 #\4 #\5 #\6 #\7 #\8 #\9)
              (consume rest (fx- (char->integer hd) 48)))
             ((#\A #\B #\C #\D #\E #\F)
              (consume rest (fx+ 10 (fx- (char->integer hd) 65))))
             ((#\a #\b #\c #\d #\e #\f)
              (consume rest (fx+ 10 (fx- (char->integer hd) 97))))
             (else
              (fail! string->ip6-address "bad character" hd))))
          (else
           (finish!)
           result))
        (match rest
          ([]
           (finish!)
           result)
          (else
           (fail! string->ip6-address "too many octets"))))))

  (parse-leading (string->list str)))

(def (ip6-address->string ip6)
  (def (concat hexes)
    (let recur ((rest hexes)(have-zeros? #f) (have-prefix? #f))
      (match rest
        (["0" . rest]
         (recur rest #t have-prefix?))
        (else
         (if have-zeros?
           (string-append (if have-prefix? ":" "::") (concat2 rest))
           (match rest
             ([hd . rest]
              (string-append hd ":" (recur rest #f #t)))
             (else "")))))))

  (def (concat2 hexes)
    (string-join hexes #\:))

  (let lp ((rest (u8vector->list ip6)) (hexes []))
    (match rest
      ([b0 b1 . rest]
       (let ((b0h (fxarithmetic-shift-right b0 4))
             (b0l (fxand b0 #xf))
             (b1h (fxarithmetic-shift-right b1 4))
             (b1l (fxand b1 #xf)))
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
       (concat (reverse hexes))))))

;; inet address: endpoint [host . port]
(def (inet-address obj)
  (cond
   ((inet-address? obj)
    (inet-address-normalize obj))
   ((inet-address-string? obj)
    (string->inet-address obj))
   (else
    (raise-bad-argument inet-address "inet address" obj))))

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
                 (substring str (fx+ ix 1) (string-length str)))))
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
      (raise-bad-argument string->inet-address "inet address: bad host" str host))))

  (def (string->port port)
    (let (port (string->number port))
      (if (and (fixnum? port) (fx<= 0 port 65535)) port
          (raise-bad-argument string->inet-address "inet address: bad port" str port))))

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
    (raise-bad-argument inet-address->string "inet address"))))

(def (inet-host-address->string host)
  (cond
   ((string? host) host)
   ((ip4-address? host)
    (ip4-address->string host))
   ((ip6-address? host)
    (ip6-address->string host))
   (else
    (raise-bad-argument inet-address->string "inet address: bad host address" host))))

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
