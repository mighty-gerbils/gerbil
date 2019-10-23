;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; libcrypto bignum utils

(import :std/crypto/libcrypto
        :std/crypto/etc)
(export #t)

(def (BN->bytes bn)
  (let* ((bytes (make-u8vector (BN_num_bytes bn)))
         (count (BN_bn2bin bn bytes)))
    (if (##fx< count (u8vector-length bytes))
      (u8vector-shrink! bytes count)
      bytes)))

(def (bytes->BN bytes (start 0) (end #f))
  (if (u8vector? bytes)
    (let (end (or end (u8vector-length bytes)))
      (or (BN_bin2bn bytes start end)
          (error "error decoding BN; NULL pointer" bytes)))
    (error "bad argument; expected bytes" bytes)))
