;;; -*- Gerbil -*-
;;; © vyzo
;;; address string conversions
(import :std/interface
        :std/string/stringer
        :std/format/ascii
        ./types)
(export #t)

(def (ip4-address->string (addr : IP4Address))
  => :string
  (string-append
   (number->string
    (u8vector-ref addr.bytes 0))
   "."
   (number->string
    (u8vector-ref addr.bytes 1))
   "."
   (number->string
    (u8vector-ref addr.bytes 2))
   "."
   (number->string
    (u8vector-ref addr.bytes 3))))

;; see RFC4291
(def (ip6-address->string (addr : IP6Address))
  => :string
  (let (ip6 addr.bytes)
    (def (concat hexes)
      (let recur ((rest hexes) (have-zeros? #f) (have-prefix? #f))
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
         (concat (reverse! hexes)))))))

(def (hex (x : :fixnum))
  => :char
  (integer->char (u8vector-ref __alphabet-hex x)))

(def (inet-address->string (addr : InetAddress))
  => :string
  (string-append
   (to-string addr.net)
   ":"
   (number->string addr.port)))

(def (dns-address->string (addr : DNSAddress))
  => :string
  (string-append
   addr.host
   ":"
   (number->string addr.port)))

(implement Stringer
  (IP4Address
   (to-string __ip4-address->string))
  (IP6Address
   (to-string __ip6-address->string))
  (InetAddress
   (to-string
    (lambda (self)
      (string-append (to-string self.net)
                     ":" (number->string self.port)))))
  (UnixAddress
   (to-string &UnixAddress-path))
  (DNSAddress
   (to-string
    (lambda (self)
      (string-append self.host
                     ":" (number->string self.port))))))

(def (address->string (addr : Address))
  => :string
  (let (str (to-string addr))
    (string-append (symbol->string addr.domain) ":" str)))
