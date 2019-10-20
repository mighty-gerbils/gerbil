;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;;     belmarca
;;; miscellaneous bytes utilities
package: std/misc

(import :gerbil/gambit/exact
        :gerbil/gambit/bits
        :gerbil/gambit/fixnum
        :std/text/hex)
(export u8vector-swap! bytevector-swap!
        u8vector-reverse bytevector-reverse
        u8vector-reverse! bytevector-reverse!
        u8vector->bytestring bytevector->bytestring
        bytestring->u8vector bytestring->bytevector
        u8vector->uint bytevector->uint
        uint->u8vector uint->bytevector)

(defalias bytevector-swap! u8vector-swap!)
(defalias bytevector-reverse! u8vector-reverse!)
(defalias bytevector-reverse u8vector-reverse)
(defalias bytevector->bytestring u8vector->bytestring)
(defalias bytestring->bytevector bytestring->u8vector)
(defalias bytevector->uint u8vector->uint)
(defalias uint->bytevector uint->u8vector)

(def (u8vector-swap! v j k)
  (unless (u8vector? v)
    (error "Expected u8vector" v))
  (let (len-1 (fx1- (##u8vector-length v)))
    (unless (fx<= 0 j len-1)
      (error "Index out of range" v j))
    (unless (fx<= 0 k len-1)
      (error "Index out of range" v k)))
  (&u8vector-swap! v j k))

(def (&u8vector-swap! v j k)
  (declare (not safe))
  (let ((j-val (u8vector-ref v j))
        (k-val (u8vector-ref v k)))
    (u8vector-set! v j k-val)
    (u8vector-set! v k j-val)))

(def (u8vector-reverse! v)
  (declare (fixnum) (not safe))
  (unless (u8vector? v)
    (error "Expected u8vector" v))
  (let* ((len (u8vector-length v))
         (len-1 (1- len)))
    (do ((left-index 0 (+ left-index 1))
         (right-index len-1 (- right-index 1)))
        ((<= right-index left-index))
      (&u8vector-swap! v left-index right-index))))

(def (u8vector-reverse v)
  (declare (fixnum) (not safe))
  (unless (u8vector? v)
    (error "Expected u8vector" v))
  (let* ((len (u8vector-length v))
         (len-1 (1- len))
         (u (make-u8vector len)))
    (do ((i len-1 (1- i)))
        ((= i -1))
      (u8vector-set! u (- len-1 i) (u8vector-ref v i)))
    u))

(def (u8vector->bytestring v (delim #\space))
  (declare (fixnum) (not safe))
  (unless (u8vector? v)
    (error "Expected u8vector" v))
  (unless (or (not delim) (char? delim))
    (error "Expected character or #f" delim))
  (let* ((len (u8vector-length v))
         (s (make-string (+ (* 2 len) (if delim (1- len) 0)))))
    (let lp ((i 0) (j 0))
      (when (< i len)
        (let (next (u8vector-ref v i))
          (string-set! s j (char-upcase (hex (fxarithmetic-shift next -4))))
          (string-set! s (+ j 1) (char-upcase (hex (fxand next #x0f))))
          (when delim
            (string-set! s (+ j 2) delim))
          (lp (1+ i) (+ j 2 (if delim 1 0))))))
    s))

;; TODO: this could be a lot more efficient if we were operating directly on the string
;;       instead of splitting it.
;;       optimize me!
(def (bytestring->u8vector bs (delim #\space))
  (declare (fixnum) (not safe))
  (let* ((lst (string-split bs delim))
         (v (make-u8vector (length lst))))
    (let lp ((rest lst) (i 0))
      (match rest
        ([x . rest]
         (unless (= (string-length x) 2)
           (error "Invalid bytestring component" x))
         (let ((hi (unhex (string-ref x 0)))
               (lo (unhex (string-ref x 1))))
           (u8vector-set! v i (fxior (fxarithmetic-shift hi 4) lo))
           (lp rest (1+ i))))
        (else v)))))

(def (u8vector->uint v (endianness 'big))
  (unless (u8vector? v)
    (error "Expected u8vector" v))
  (case endianness
    ((big) (&u8vector->uint/be v))
    ((little) (&u8vector->uint/le v))
    (else
     (error "Bad endianness" endianness))))

(def (&u8vector->uint/be v)
  (declare (not safe))
  (let (len (u8vector-length v))
    (let lp ((i 0) (r 0))
      (if (fx< i len)
        (lp (fx1+ i)
            (bitwise-ior (arithmetic-shift r 8)
                         (u8vector-ref v i)))
        r))))

(def (&u8vector->uint/le v)
  (declare (not safe))
  (let (len (u8vector-length v))
    (let lp ((i (fx1- len)) (r 0))
      (if (fx>= i 0)
        (lp (fx1- i)
            (bitwise-ior (arithmetic-shift r 8)
                         (u8vector-ref v i)))
        r))))

(def (uint->u8vector uint (endianness 'big))
  (unless (and (exact-integer? uint) (>= uint 0))
    (error "Non-negative exact integer expected" uint))
  (case endianness
    ((big) (&uint->u8vector/be uint))
    ((little) (&uint->u8vector/le uint))
    (else
     (error "Bad endianness" endianness))))

(def (&uint->u8vector/be uint)
  (declare (not safe))
  (let* ((bits (integer-length uint))
         (bytes (fx+ (fxquotient bits 8) (if (fx> (fxremainder bits 8) 0) 1 0)))
         (res (make-u8vector bytes)))
    (let lp ((uint uint) (i (fx- bytes 1)))
      (if (> uint 0)
        (begin
          (u8vector-set! res i (bitwise-and uint #xff))
          (lp (arithmetic-shift uint -8)
              (fx1- i)))
        res))))

(def (&uint->u8vector/le uint)
  (declare (not safe))
  (let* ((bits (integer-length uint))
         (bytes (fx+ (fxquotient bits 8) (if (fx> (fxremainder bits 8) 0) 1 0)))
         (res (make-u8vector bytes)))
    (let lp ((uint uint) (i 0))
      (if (> uint 0)
        (begin
          (u8vector-set! res i (bitwise-and uint #xff))
          (lp (arithmetic-shift uint -8)
              (fx1+ i)))
        res))))
