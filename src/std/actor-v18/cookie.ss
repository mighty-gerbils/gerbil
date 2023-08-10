;;; -*- Gerbil -*-
;;; © vyzo
;;; actor server cookies
(import :std/crypto)
(export #t)

(def (default-cookie-path)
  (path-expand "ensemble/cookie" (getenv "GERBIL_PATH" "~/.gerbil")))

(def (get-actor-server-cookie (path (default-cookie-path)))
  (let (path (path-expand path))
    (if (file-exists? path)
      (call-with-input-file path read)
      (error "cookie file doesn't exist" path))))

(def (generate-actor-server-cookie! (path (default-cookie-path))
                                    force: (force? #f))
  (let (path (path-expand path))
    (if (file-exists? path)
      (if force?
        (delete-file path)
        (error "cookie file already exists" path))
      (create-directory* (path-directory path)))
    (let (cookie (make-random-cookie))
      (call-with-output-file [path: path permissions: #o600] (cut write cookie <>)))))

(def (make-random-cookie)
  (random-bytes 32))
