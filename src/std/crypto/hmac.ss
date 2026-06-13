;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; libcrypto hmac

(import :std/ffi
        ./libcrypto
        ./error)
(export #t)
(def (hmac-digest (md     :~ EVP_MD? :- :foreign)
                  (key    : :u8vector)
                  (bytes  : :u8vector)
                  (start  :~ (in-range? 0 (fxmax (u8vector-length bytes) 1))
                          :- :fixnum :=  0)
                  (end    :~ (in-range-inclusive? start (u8vector-length bytes))
                          :- :fixnum := (u8vector-length bytes)))
  => :u8vector
  (let* ((size (EVP_MD_size md))
         (digest (make-u8vector size)))
    (HMAC md key bytes start end digest)
    digest))

(defrule (defhmac name digest)
  (def (name (key    : :u8vector)
             (bytes  : :u8vector)
             (start  :~ (in-range? 0 (fxmax (u8vector-length bytes) 1))
                     :- :fixnum :=  0)
             (end    :~ (in-range-inclusive? start (u8vector-length bytes))
                     :- :fixnum := (u8vector-length bytes)))
    => :u8vector
    (hmac-digest digest key bytes start end)))

(defhmac hmac-md5 (EVP_md5))
(defhmac hmac-sha1 (EVP_sha1))
(defhmac hmac-sha256 (EVP_sha256))
(defhmac hmac-sha384 (EVP_sha384))
(defhmac hmac-sha512 (EVP_sha512))
