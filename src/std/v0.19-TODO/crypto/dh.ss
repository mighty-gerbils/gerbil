;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; libcrypto DH key exchage

(import :std/error
        ./libcrypto
        ./etc)
(export
  (except-out #t with-null-check)
  (rename: DH_pub_key DH-pub-key))

(def (with-null-check makef)
  (or (makef)
      (error "error allocating key; NULL POINTER")))

(def (DH-get-1024-160)
  (with-null-check DH_get_1024_160))
(def (DH-get-2048-224)
  (with-null-check DH_get_2048_224))
(def (DH-get-2048-256)
  (with-null-check DH_get_2048_256))

(def (DH-generate-key dh)
  (with-libcrypto-error
   (DH_generate_key dh)))

(def (DH-compute-key dh bn)
  (let* ((len (DH_size dh))
         (secret (make-u8vector len))
         (count (DH_compute_key secret bn dh)))
    (when (##fx< count len)
      (u8vector-shrink! secret count))
    secret))
