;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; hex encoding
package: std/text

(export hex-encode hexlify hex-decode unhexlify)
(import :gerbil/gambit/hvectors
        :gerbil/gambit/fixnum)

(def hexes "0123456789abcdef")
(def (hex-encode bytes (start 0) (end #f))
  (let* ((end (or end (u8vector-length bytes)))
         (len (fx- end start))
         (str (make-string (fx* 2 len))))
    (let lp ((n 0))
      (if (fx< n len)
        (let* ((ix (fx+ n start))
               (b (##u8vector-ref bytes ix))
               (off (fxarithmetic-shift n 1)))
          (##string-set! str off (##string-ref hexes (fxarithmetic-shift b -4)))
          (##string-set! str (fx1+ off) (##string-ref hexes (fxand b #x0f)))
          (lp (fx1+ n)))
        str))))

(def unhexes
  (let (ht (make-hash-table-eq))
    (for-each (cut hash-put! ht <> <>)
              (string->list "0123456789")
              (iota 10))
    (for-each (cut hash-put! ht <> <>)
              (string->list "abcdef")
              (iota 6 10))
    (for-each (cut hash-put! ht <> <>)
              (string->list "ABCDEF")
              (iota 6 10))
    ht))

(def (unhex char)
  (hash-ref unhexes char))
(def (hex-decode str)
  (let (len (string-length str))
    (unless (fxeven? len)
      (error "Expected string of even length" str))
    (let* ((blen (fxquotient len 2))
           (bytes (make-u8vector blen)))
      (let lp ((n 0))
        (if (fx< n blen)
          (let (off (fxarithmetic-shift n 1))
            (##u8vector-set! bytes n
               (fxior (fxarithmetic-shift (unhex (##string-ref str off)) 4)
                      (unhex (##string-ref str (fx1+ off)))))
            (lp (fx1+ n)))
          bytes)))))

(defalias hexlify hex-encode)
(defalias unhexlify hex-decode)
