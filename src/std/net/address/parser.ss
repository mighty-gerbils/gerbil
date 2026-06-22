;;; -*- Gerbil -*-
;;; © vyzo
;;; inet address utilities
(import :std/error
        :std/text/pregexp
        ./types)
(export #t)

(def ip4-address-rx
  (pregexp "^(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})$"))
(def dns-host-rx
  (pregexp "^[a-zA-Z0-9]([a-zA-Z0-9-]*[a-zA-Z0-9])?(\\.[a-zA-Z0-9]([a-zA-Z0-9-]*[a-zA-Z0-9])?)*$"))

(def (string->ip4-address (addr : :string))
  => IP4Address
  (IP4Address (parse-ip4-address addr)))

(def (parse-ip4-address (str : :string))
  => :u8vector
  (match (pregexp-match ip4-address-rx str)
    ([_ . octets]
     (let (octets (map string->number octets))
       (unless (andmap (cut fx< <> 256) octets)
         (raise-bad-argument string->ip4-address "not an 4 octet string" str))
       (apply u8vector octets)))
    (else
     (raise-bad-argument string->ip4-address "ip4 address string" str))))

(def (string->ip6-address (addr : :string))
  => IP6Address
  (IP6Address (parse-ip6-address addr)))

;; see RFC4291
(def (parse-ip6-address (str : :string))
  => :u8vector
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

(def (string->inet4-address (addr : :string))
  => InetAddress
  (cond
   ((string-rindex addr #\:)
    => (lambda (x)
         (let* ((host (substring addr 0 x))
                (port (substring addr (fx1+ x) (string-length addr)))
                (port (string->number port)))
           (cond
            ((not (inet-port? port))
             (raise-bad-argument string->inet-address "bad port" addr port))
            (else
             (let (host (string->ip4-address host))
               (InetAddress host port)))))))
   (else
    (raise-bad-argument string->inet-address "missing port designator" addr))))

(def (string->inet6-address (addr : :string))
  => InetAddress
  (cond
   ((string-rindex addr #\:)
    => (lambda (x)
         (let* ((host (substring addr 0 x))
                (port (substring addr (fx1+ x)(string-length addr)))
                (port (string->number port)))
           (cond
            ((not (inet-port? port))
             (raise-bad-argument string->inet-address "bad port" addr port))
            (else
             (let (host (string->ip6-address host))
               (InetAddress host port)))))))
   (else
    (raise-bad-argument string->inet-address "missing port designator" addr))))

(def (string->dns-address (addr : :string))
  => DNSAddress
  (cond
   ((string-rindex addr #\:)
    => (lambda (x)
         (let* ((host (substring addr 0 x))
                (port (substring addr (fx1+ x) (string-length addr)))
                (port (string->number port)))
           (cond
            ((not (inet-port? port))
             (raise-bad-argument string->inet-address "bad port" addr port))
            ((pregexp-match dns-host-rx host)
             (DNSAddress host port))
            (else
             (raise-bad-argument string->inet-address "bad host" addr host))))))
   (else
    (raise-bad-argument string->inet-address "missing port designator" addr))))

;; canonical address format:
;; domain:<address-string>
(def domain-table
  (hash
   ("ip4"   __string->ip4-address)
   ("ip6"   __string->ip6-address)
   ("inet4" __string->inet4-address)
   ("inet6" __string->inet6-address)
   ("dns"   __string->dns-address)
   ("unix"  make-UnixAddress)))

(def (string->address (addr : :string))
  => Address
  (: (cond
      ((string-index addr #\:)
       => (lambda (x)
            (let* ((domain (substring addr 0 x))
                   (body (substring addr (fx1+ x) (string-length addr))))
              (cond
               ((hash-get domain-table domain)
                => (cut <> body))
               (else
                (raise-bad-argument string->address "unknown domain" addr))))))
      (else
       (raise-bad-argument string->address "not a canonical address" addr)))
     Address))
