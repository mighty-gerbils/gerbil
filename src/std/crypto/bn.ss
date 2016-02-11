;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; libcrypto bignum utils
package: std/crypto

(import :gerbil/gambit/hvectors
        :std/crypto/libcrypto
        :std/crypto/etc)
(export #t)

(def (BN->bytes bn)
  (let* ((bytes (make-u8vector (BN_num_bytes bn)))
         (count (BN_bn2bin bn bytes)))
    (if (fx< count (u8vector-length bytes))
      (u8vector-shrink! bytes count)
      bytes)))

(def (bytes->BN bytes)
  (if (u8vector? bytes)
    (let (bytes (BN_bin2bn bytes))
      (or bytes
          (error "error decoding BN; BN_returned NULL" bytes)))
    (error "bad argument; expected bytes" bytes)))
