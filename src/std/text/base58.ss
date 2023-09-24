;;; -*- Gerbil -*-
;;; © vyzo
;;; base58 encoding and decoding

(import :gerbil/gambit
        :std/error)
(export base58-encode base58-decode
        base58-btc-alphabet base58-flickr-alphabet)

(declare (not safe))

(defstruct alphabet (enc dec)
  final: #t unchecked: #t constructor: :init!)

(defmethod {:init! alphabet}
  (lambda (self str)
    (let* ((alpha (string->list str))
           (enc (list->vector alpha))
           (dec (make-vector 128 #f)))
      (for-each
        (lambda (i a)
          (vector-set! dec (char->integer a) i))
        (iota (string-length str))
        alpha)
      (struct-instance-init! self enc dec))))

(def (alphabet-encode ab i)
  (vector-ref (&alphabet-enc ab) i))

(def (alphabet-decode ab char)
  (let (i (char->integer char))
    (and (fx< i 128)
         (vector-ref (&alphabet-dec ab) i))))

(def base58-btc-alphabet
  (make-alphabet "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz"))

(def base58-flickr-alphabet
  (make-alphabet "123456789abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ"))

(def (base58-encode bytes (ab base58-btc-alphabet))
  (let* ((idx (fx1+ (fxquotient (fx* (u8vector-length bytes) 138) 100)))
         (str (make-string idx)))
    (let lp ((bn (bytes->integer bytes)) (idx idx))
      (if (zero? bn)
        (let (zero (alphabet-encode ab 0))
          (let pad ((i 0) (idx idx))
            (if (and (fx< i (u8vector-length bytes))
                     (fxzero? (u8vector-ref bytes i)))
              (let (idx (fx1- idx))
                (string-set! str idx zero)
                (pad (fx1+ i) idx))
              (substring str idx (string-length str)))))
        (let ((bn (quotient bn 58))
              (mo (modulo bn 58))
              (idx (fx1- idx)))
          (string-set! str idx (alphabet-encode ab mo))
          (lp bn idx))))))

(def (base58-decode str (ab base58-btc-alphabet))
  (def leading-zeros
    (let (zero (alphabet-encode ab 0))
      (let lp ((i 0))
        (if (and (fx< i (string-length str))
                 (eq? zero (string-ref str i)))
          (lp (fx1+ i))
          (make-u8vector i 0)))))
  (let lp ((i 0) (bn 0))
    (if (fx< i (string-length str))
      (let* ((char (string-ref str i)))
        (cond
         ((alphabet-decode ab char)
          => (lambda (c)
               (lp (fx1+ i) (+ (* bn 58) c))))
         (else
          (raise-io-error base58-decode "Invalid character" str char))))
      (u8vector-append leading-zeros (integer->bytes bn)))))

(def (bytes->integer bytes)
  (let lp ((i 0) (r 0))
    (if (fx< i (u8vector-length bytes))
      (let (b (u8vector-ref bytes i))
        (lp (fx1+ i) (bitwise-ior (arithmetic-shift r 8) b)))
      r)))

(def (integer->bytes x)
  (let lp ((x x) (r []))
    (if (positive? x)
      (lp (arithmetic-shift x -8)
          (cons (bitwise-and x #xff) r))
      (list->u8vector r))))
