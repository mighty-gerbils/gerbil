;;; -*- Gerbil -*-
;;; © vyzo
;;; URI support; rfc3986

(import :std/error
        :std/iter)

(export uri-encode uri-decode form-url-encode form-url-decode
        make-uri-encoding-table
        uri-unreserved-chars uri-gendelim-chars uri-subdelim-chars)

;; rfc3986 unreserved chars: ALPHA / DIGIT / "-" / "." / "_" / "~"
(def uri-unreserved-chars
  "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~")
(def uri-gendelim-chars
  ":/?#[]@")
(def uri-subdelim-chars
  "!$&'()*+,;=")

(def (make-uri-encoding-table (self-chars : :string)
                              (sub-chars [] : :list)) ; AList char char
  => :vector
  (let ((vt (make-vector 256 #f))
        (len (string-length self-chars)))
    (let loop ((i 0 :- :fixnum))
      (when (fx< i len)
        (let (char (##string-ref self-chars i))
          (vector-set! vt (char->integer char) char)
          (loop (fx+ i 1)))))
    (for-each (match <>
                ([char . sub]
                 (vector-set! vt (char->integer char) sub)))
              sub-chars)
    vt))

(def uri-encoding
  (make-uri-encoding-table uri-unreserved-chars))

;; uri-encoding with space as #\+
(def uri-space-encoding
  (make-uri-encoding-table uri-unreserved-chars '((#\space . #\+))))

;; uri-encode a string
(def (uri-encode (str : :string) (vt uri-encoding : :vector))
  => :string
  (with-output-to-string []
    (lambda () (write-uri-encoded str vt))))

;; form-url-encode: [[string . string/#f] ...] => string
;; if +space? is #t, #\space is encoded as #\+ (otherwise %20)
(def (form-url-encode (fields : :list) (+space? #t))
  => :string
  (def encoding
    (if +space? uri-space-encoding uri-encoding))

  (def (encode-field field)
    (match field
      ([key . val]
       (write-uri-encoded key encoding)
       (when val
         (write-char #\=)
         (write-uri-encoded val encoding)))))

  (match fields
    ([first . rest]
     (with-output-to-string []
       (lambda ()
         (encode-field first)
         (for (field (in-list rest))
           (write-char #\&)
           (encode-field field)))))
    ([] "")))

(def (write-uri-encoded (str : :string) (encoding : :vector))
  (def (write-hex n)
    (write-char (##string-ref "0123456789ABCDEF" n)))

  (let* ((utf8 (string->utf8 str))
         (len  (u8vector-length utf8)))
    (let loop ((i 0 :- :fixnum))
      (when (fx< i len)
        (let (byte (##u8vector-ref utf8 i))
          (cond
           ((vector-ref encoding byte) => write-char)
           (else
            (write-char #\%)
            (write-hex (fxand (fxarithmetic-shift byte -4) #xf))
            (write-hex (fxand byte #xf))))
          (loop (fx+ i 1)))))))

;; uri-decoding
(def hex-bytes
  (let (ht (make-hash-table-eq))
    (for (i (in-range 0 16))
      (let (char (string-ref "0123456789ABCDEF" i))
        (hash-put! ht char i)
        (hash-put! ht (char-downcase char) i)))
    ht))

(def (uri-decode (str : :string) (encoding #f :? :vector))
  => :string
  (def (hex-byte byte)
    (let (char (integer->char byte))
      (cond
       ((hash-get hex-bytes char))
       (else
        (raise-bad-argument uri-decode "uri encoded string: unexpected character" str char)))))

  (let* ((utf8 (string->utf8 str))
         (len  (u8vector-length utf8))
         (pct  (char->integer #\%))
         (u8-buffer  (make-u8vector len)))
    (let loop ((i 0 :- :fixnum)
               (j 0 :- :fixnum))
      (if (fx< i len)
        (let (next (##u8vector-ref utf8 i))
          (cond
           ((and encoding (vector-ref encoding next))
            => (lambda (char)
                 (##u8vector-set! u8-buffer j (##char->integer char))
                 (loop (fx+ i 1) (fx+ j 1))))
           ((eq? next pct)
            (let (i (fx+ i 1))
              (if (fx< (fx+ i 1) len)
                (let ((hi (##u8vector-ref utf8 i))
                      (lo (##u8vector-ref utf8 (fx+ i 1))))
                  (##u8vector-set! u8-buffer j (fxior (fxarithmetic-shift (hex-byte hi) 4)
                                                      (hex-byte lo)))
                  (loop (fx+ i 2) (fx+ j 1)))
                (raise-bad-argument uri-decode "uri encoded string: malformed component" str i))))
           (else
            (##u8vector-set! u8-buffer j next)
            (loop (fx+ i 1) (fx+ j 1)))))

        (utf8->string u8-buffer 0 j)))))

(def uri-space-decoding
  (make-uri-encoding-table "" '((#\+ . #\space))))

;; form-url-decode: string => [[string . string/#f] ...]
(def (form-url-decode (str : :string))
  => :list
  (filter-map
   (lambda (part)
     (and (not (string-empty? part))
          (let (idx (string-index part #\=))
            (if idx
              ;; Split at '='. "key=" returns "" instead of #f to follow
              ;; web standards and prevent JSON/Struct type errors later.
              (let ((key (substring part 0 idx))
                    (val (substring part (fx+ idx 1) (string-length part))))
                (cons (uri-decode key uri-space-decoding)
                      (uri-decode val uri-space-decoding)))
              ;; No '=', it is a boolean flag (returns #f).
              (cons (uri-decode part uri-space-decoding) #f)))))
   (string-split str #\&)))
