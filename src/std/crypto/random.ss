;;; -*- Gerbil -*-
;;; © vyzo
;;; libcrypto randomness
(import ./libcrypto
        ./error)
(export #t)

(def (random-bytes (len : :fixnum) (strength 0 : :fixnum))
  => :u8vector
  (let (bytes (make-u8vector len))
    (random-bytes! bytes strength)
    bytes))

(def (random-bytes! (bytes : :u8vector) (strength 0 : :fixnum))
  => :void
    (if (fx> strength 0)
      (with-libcrypto-error random-bytes!
        (RAND_bytes bytes))
      (with-libcrypto-error random-bytes!
        (RAND_priv_bytes bytes strength))))
