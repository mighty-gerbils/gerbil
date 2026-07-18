;;; -*- Gerbil -*-
;;; © vyzo
;;; multibase encoding
(import :std/error
        ./base64)
(export #t)

;; only supports base64 for now
(def multibase-base64 #\m)
(def multibase-base64-pad #\M)
(def multibase-base64-url #\u)
(def multibase-base64-url-pad #\U)

(def (multibase-encode (encoding : :char)
                       (bytes    : :u8vector))
  => :string
  (cond
   ((eq? encoding multibase-base64-url)
    (string-append (string encoding)
                   (base64-encode bytes
                                  padding: #f
                                  urlsafe: #t)))
   ((eq? encoding multibase-base64)
    (string-append (string encoding)
                   (base64-encode bytes
                                  padding: #f
                                  urlsafe: #f)))
   ((eq? encoding multibase-base64-pad)
    (string-append (string encoding)
                   (base64-encode bytes
                                  padding: #t
                                  urlsafe: #f)))
   ((eq? encoding multibase-base64-url-pad)
    (string-append (string encoding)
                   (base64-encode bytes
                                  padding: #t
                                  urlsafe: #t)))
   (else
    (raise-bad-argument multibase-encode "unsupported encoding" encoding))))

(def (multibase-decode (str : :string))
  => :u8vector
  (let (encoding (string-ref str 0))
    (cond
   ((eq? encoding multibase-base64-url)
    (base64-substring->u8vector str 1 (string-length str)
                                no-padding: #t
                                urlsafe: #t))
   ((eq? encoding multibase-base64)
    (base64-substring->u8vector str 1 (string-length str)
                                no-padding: #t
                                urlsafe: #f))
   ((eq? encoding multibase-base64-pad)
    (base64-substring->u8vector str 1 (string-length str)
                                no-padding: #f
                                urlsafe: #f))
   ((eq? encoding multibase-base64-url-pad)
    (base64-substring->u8vector str 1 (string-length str)
                                no-padding: #f
                                urlsafe: #t))
   (else
    (raise-bad-argument multibase-decode "unsupported encoding" encoding)))))
