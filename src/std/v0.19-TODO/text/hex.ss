;;; -*- Gerbil -*-
;;; © vyzo
;;; hex encoding

(export hex-encode hexlify hex-decode hex-decode-byte hex-decode-nibble unhexlify hex unhex unhex*)
(import :gerbil/gambit
        :std/error)

(def hexes "0123456789abcdef")
(def (hex-encode bytes (start 0) (end #f))
  (let* ((end (or end (u8vector-length bytes)))
         (len (fx- end start))
         (str (make-string (##fx* 2 len))))
    (let lp ((n 0))
      (if (##fx< n len)
        (let* ((ix (##fx+ n start))
               (b (##u8vector-ref bytes ix))
               (off (##fxarithmetic-shift n 1)))
          (##string-set! str off (##string-ref hexes (##fxarithmetic-shift b -4)))
          (##string-set! str (##fx+ off 1) (##string-ref hexes (##fxand b #x0f)))
          (lp (##fx+ n 1)))
        str))))

(def (hex u4)
  (##string-ref hexes u4))

(def unhexes-len (char->integer #\g))
(def unhexes (make-u8vector unhexes-len 255))

(let loop ((i 0))
  (when (<= i 15)
    (let ((c (hex i)))
      (##u8vector-set! unhexes (char->integer c) i)
      (##u8vector-set! unhexes (char->integer (char-upcase c)) i))
    (loop (1+ i))))

(def (unhex* char)
  (def i (char->integer char))
  (and (##fx< -1 i unhexes-len)
       (let (d (##u8vector-ref unhexes i))
         (and (##fx< d 16) d))))

(def (unhex char)
  (or (unhex* char) (error "invalid hex char" char)))

(def (hex-decode-nibble string pos)
  (unhex (##string-ref string pos)))

(def (hex-decode-byte string pos)
  (##fx+ (##fxarithmetic-shift (hex-decode-nibble string pos) 4)
         (hex-decode-nibble string (##fx+ pos 1))))

(def (hex-decode str (start 0) (end #f))
  (def len (- (or end (string-length str)) start))
  (def blen (##fxquotient (##fx+ len 1) 2))
  (def bytes (make-u8vector blen))
  (def hexes-start (##fx- start (##fxand len 1)))
  (let lp ((n 0))
    (when (##fx< n blen)
      (let (off (##fx+ hexes-start (##fxarithmetic-shift n 1)))
        (##u8vector-set! bytes n
                         (if (##fx< off start) (hex-decode-nibble str (##fx+ off 1))
                             (hex-decode-byte str off)))
        (lp (##fx+ n 1)))))
  bytes)

(defalias hexlify hex-encode)
(defalias unhexlify hex-decode)
