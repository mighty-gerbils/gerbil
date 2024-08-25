;;; -*- Gerbil -*-
;;; © vyzo
;;; actor server cookies
(import :std/error
        :std/crypto
        :std/misc/ports
        ./path)
(export #t)

(def (ensemble-cookie-path (base (ensemble-base-path)))
  (path-expand "cookie" base))

(def (get-actor-server-cookie (path (ensemble-cookie-path)))
  (let (path (path-expand path))
    (if (file-exists? path)
      (read-file-u8vector path)
      (error "cookie file doesn't exist" path))))

(def (generate-ensemble-cookie! (path (ensemble-cookie-path))
                                force: (force? #f))
  (let (path (path-expand path))
    (if (file-exists? path)
      (if force?
        (delete-file path)
        (error "cookie file already exists" path))
      (create-directory* (path-directory path)))
    (let (cookie (make-random-cookie))
      (call-with-output-file [path: path permissions: #o600]
        (cut write-subu8vector cookie 0 (u8vector-length cookie) <>)))))

(def (make-random-cookie)
  (random-bytes 32))
