;;; -*- Gerbil -*-
;;; © vyzo
;;; HTTP client utilities
(export #t)
(import :std/error
        :std/string/stringer
        :std/encoding/base64)

(def (http-basic-auth-header (user : :string)
                             (password : :string))
  => :pair
  (let (credentials
        (base64-encode
         (string->utf8
          (string-append user ":" password))))
    (cons "Authorization" (string-append "Basic " credentials))))

(def (http-digest-auth-header . args)
  => :pair
  (TODO http-digest-auth-header))

(def (http-cookie-header (cookies : :list))
  => :pair
  (def (fold-cookie cookie str)
    (with ([key . value] cookie)
      (if (string-empty? str)
        (string-append key "=" (to-string value))
        (string-append key "=" (to-string value) "; " str))))
  (cons "Cookie" (foldr fold-cookie "" cookies)))

(def (http-form-data-header)
  => :pair
  '("Content-Type" . "application/x-www-form-urlencoded"))
