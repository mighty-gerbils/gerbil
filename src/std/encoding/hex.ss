;;; -*- Gerbil -*-
;;; © vyzo
;;; hex encoding

(export hex-encode hexlify
        hex-decode unhexlify)

(def hexes "0123456789abcdef")

(def (hex-encode (bytes  : :u8vector)
                 (start  :~ (in-range? 0 (fxmax (u8vector-length bytes) 1))
                         :- :fixnum :=  0)
                 (end    :~ (in-range-inclusive? start (u8vector-length bytes))
                         :- :fixnum := (u8vector-length bytes)))
  => :string
  (let* ((len (fx- end start))
         (str (make-string (fx* 2 len))))
    (let loop ((i 0 :- :fixnum))
      => :string
      (if (fx< i len)
        (let* ((ix (fx+ i start))
               (b (##u8vector-ref bytes ix))
               (off (fx* i 2)))
          (##string-set! str off (##string-ref hexes (fxarithmetic-shift b -4)))
          (##string-set! str (fx+ off 1) (##string-ref hexes (fxand b #x0f)))
          (loop (fx+ i 1)))
        str))))

(def (hex u4)
  (##string-ref hexes u4))

(def unhexes
  (let (unhexes (make-u8vector 256 255))
    (let loop ((i 0))
      (if (fx<= i 15)
        (let ((c (hex i)))
          (##u8vector-set! unhexes (char->integer c) i)
          (##u8vector-set! unhexes (char->integer (char-upcase c)) i)
          (loop (fx1+ i)))
        unhexes))))

(def (unhex* char)
  (let (i (char->integer char))
    (and (fx< i (u8vector-length unhexes))
       (let (d (##u8vector-ref unhexes i))
         (and (##fx< d 16) d)))))

(def (unhex char)
  (or (unhex* char) (error "invalid hex char" char)))

(def (hex-decode-nibble string pos)
  (unhex (##string-ref string pos)))

(def (hex-decode-byte string pos)
  (##fx+ (##fxarithmetic-shift (hex-decode-nibble string pos) 4)
         (hex-decode-nibble string (##fx+ pos 1))))

(def (hex-decode (str    : :string)
                 (start  :~ (in-range? 0 (fxmax (string-length str) 1))
                         :- :fixnum :=  0)
                 (end    :~ (in-range-inclusive? start (string-length str))
                         :- :fixnum := (string-length str)))
  => :u8vector
  (let* ((len (fx- end start))
         (blen (fxquotient (fx+ len 1) 2))
         (bytes (make-u8vector blen))
         (hexes-start (fx- start (fxand len 1))))
    (let loop ((i 0 :- :fixnum))
      => :u8vector
      (if (fx< i blen)
        (let (off (fx+ hexes-start (fxarithmetic-shift i 1)))
          (##u8vector-set! bytes i
                           (if (fx< off start)
                             (hex-decode-nibble str (fx+ off 1))
                             (hex-decode-byte str off)))
          (loop (fx+ i 1)))
        bytes))))

(defalias hexlify hex-encode)
(defalias unhexlify hex-decode)
