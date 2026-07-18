;;; -*- Gerbil -*-
;;; © vyzo
;;; json reader
(import :std/error
        :std/io
        :std/io/bio/api
        :std/list/walist
        :std/encoding/hex
        :std/text/parser/char-set
        (only-in :std/text/parser/ll1 ll1-skip-space*)
        ./env)
(export parse-json
        raise-invalid-json-token
        read-json-hash
        read-json-walist/string
        read-json-walist/symbol
        read-json-hash/symbol
        read-json-hash/string
        read-json-list
        read-json-string
        read-json-number)
(declare (not safe))

;;; error helper
(defrule (raise-invalid-json-token where reader char)
  (if (eof-object? char)
    (raise-premature-end-of-input where "Incomplete JSON; EOF reached" reader)
    (raise-io-error where "Invalid JSON token" reader char)))

;;; whitespace

(defalias skip-whitespace ll1-skip-space*)

;;; main dispatch (exported)

(def (parse-json (reader : BufferedReader) (opt : JSONReadOptions))
  (skip-whitespace reader)
  (let (char (reader.read-char-utf8))
    (if (eof-object? char)
      #!eof
      (case char
        ((#\{) (read-json-hash reader opt))
        ((#\[) (read-json-list reader opt))
        ((#\") (read-json-string reader))
        ((#\t) (read-json-true reader))
        ((#\f) (read-json-false reader))
        ((#\n) (read-json-null reader))
        ((#\- #\0 #\1 #\2 #\3 #\4 #\5 #\6 #\7 #\8 #\9)
         (read-json-number char reader))
        (else
         (raise-invalid-json-token parse-json reader char))))))

;;; hash/object reading

(def (read-json-hash (reader : BufferedReader) (opt : JSONReadOptions))
  (if opt.key-as-symbol
    (if opt.object-as-hash
      (read-json-hash/symbol reader opt)
      (read-json-walist/symbol reader opt))
    (if opt.object-as-hash
      (read-json-hash/string reader opt)
      (read-json-walist/string reader opt))))

;; string keys, walist result
(def (read-json-walist/string (reader : BufferedReader) (opt : JSONReadOptions))
  (let* ((seen (make-hash-table size: 8))
         (key? (lambda (k) (hash-key? seen k)))
         (put! (lambda (k v) (hash-put! seen k v)))
         (lst []))
    (let lp ()
      (let (key (read-json-hash-key/string reader))
        (when key
          ;; If you see a duplicate key, it's as likely an attack as a bug. #LangSec
          (if (key? key)
            (error "Duplicate hash key in JSON input" key)
            (let (val (parse-json reader opt))
              (put! key val)
              (set! lst (cons (cons key val) lst))
              (skip-whitespace reader)
              (let (char (reader.read-char-utf8))
                (case char
                  ((#\,) (lp))
                  ((#\}) (void))
                  (else
                   (raise-invalid-json-token read-json-walist/string reader char)))))))))
    (walist (reverse! lst))))

;; symbol keys, walist result
(def (read-json-walist/symbol (reader : BufferedReader) (opt : JSONReadOptions))
  (let* ((seen (make-hash-table test: eq?))
         (key? (lambda (k) (hash-key? seen k)))
         (put! (lambda (k v) (hash-put! seen k #t)))
         (lst []))
    (let lp ()
      (let (key (read-json-hash-key/symbol reader))
        (when key
          ;; If you see a duplicate key, it's as likely an attack as a bug. #LangSec
          (if (key? key)
            (error "Duplicate hash key in JSON input" key)
            (let (val (parse-json reader opt))
              (put! key val)
              (set! lst (cons (cons key val) lst))
              (skip-whitespace reader)
              (let (char (reader.read-char-utf8))
                (case char
                  ((#\,) (lp))
                  ((#\}) (void))
                  (else
                   (raise-invalid-json-token read-json-walist/symbol reader char)))))))))
    (walistq (reverse! lst))))

;; symbol keys, hash-table result
(def (read-json-hash/symbol (reader : BufferedReader) (opt : JSONReadOptions))
  (let* ((obj (make-hash-table test: eq?))
         (key? (lambda (k) (hash-key? obj k)))
         (put! (lambda (k v) (hash-put! obj k v))))
    (let lp ()
      (let (key (read-json-hash-key/symbol reader))
        (if key
          ;; If you see a duplicate key, it's as likely an attack as a bug. #LangSec
          (if (key? key)
            (error "Duplicate hash key in JSON input" key)
            (let (val (parse-json reader opt))
              (put! key val)
              (skip-whitespace reader)
              (let (char (reader.read-char-utf8))
                (case char
                  ((#\,) (lp))
                  ((#\}) (void))
                  (else
                   (raise-invalid-json-token read-json-hash/symbol reader char))))))
          (void))))
    obj))

;; string keys, hash-table result
(def (read-json-hash/string (reader : BufferedReader) (opt : JSONReadOptions))
  (let* ((obj (make-hash-table size: 8))
         (key? (lambda (k) (hash-key? obj k)))
         (put! (lambda (k v) (hash-put! obj k v))))
    (let lp ()
      (let (key (read-json-hash-key/string reader))
        (if key
          ;; If you see a duplicate key, it's as likely an attack as a bug. #LangSec
          (if (key? key)
            (error "Duplicate hash key in JSON input" key)
            (let (val (parse-json reader opt))
              (put! key val)
              (skip-whitespace reader)
              (let (char (reader.read-char-utf8))
                (case char
                  ((#\,) (lp))
                  ((#\}) (void))
                  (else
                   (raise-invalid-json-token read-json-hash/string reader char))))))
          (void))))
    obj))

;;; hash key reading helpers

(def (read-json-hash-key/string (reader : BufferedReader))
  ;; returns #f for empty object (}), string key otherwise
  (skip-whitespace reader)
  (let (char (reader.read-char-utf8))
    (case char
      ((#\")
       (let (key (read-json-string reader))
         (skip-whitespace reader)
         (let (colon (reader.read-char-utf8))
           (unless (eqv? colon #\:)
             (raise-invalid-json-token read-json-hash-key/string reader colon))
           key)))
      ((#\}) #f)
      (else (raise-invalid-json-token read-json-hash-key/string reader char)))))

(def (read-json-hash-key/symbol (reader : BufferedReader))
  (alet (key (read-json-hash-key/string reader))
    (string->symbol key)))

;;; list/array reading

(def (read-json-list (reader : BufferedReader) (opt : JSONReadOptions))
  (let (root [#f])
    (let lp ((tl root))
      (let (next (read-json-list-next reader opt))
        (if (eof-object? next)
          (let (l (cdr root))
            (if opt.array-as-vector
              (list->vector l)
              l))
          (let (tl* [next])
            (set! (cdr tl) tl*)
            (lp tl*)))))))

(def (read-json-list-next (reader : BufferedReader) (opt : JSONReadOptions))
  (skip-whitespace reader)
  (let (char (reader.peek-char-utf8))
    (case char
      ((#\])
       (reader.read-char-utf8)
       #!eof)
      (else
       (let (obj (parse-json reader opt))
         (skip-whitespace reader)
         (let (char (reader.peek-char-utf8))
           (case char
             ((#\,) (reader.read-char-utf8) obj)
             ((#\]) obj)
             (else (raise-invalid-json-token read-json-list-next reader char)))))))))

;;; string reading

;;; NB: JSON RFC 8259 and I-JSON RFC 7493 say strings MUST be UTF-8
;;; (though RFC 8259 allows an exception for JSON used as "part of a closed ecosystem"),
;;; but also say \uXXXX codes are UTF-16 — WTAF?
;;; (RFC 7493 also explicitly forbids surrogate code points outside
;;; a valid high- then low- surrogate pair.)
;;; We throw an error on invalid \u escape sequences, including invalid UTF-16 surrogate sequences.

(def (read-json-string (reader : BufferedReader))
  (def (read-escape-char)
    (let (char (reader.read-char-utf8))
      (case char
        ((#\" #\\ #\/) char)
        ((#\n) #\newline)
        ((#\r) #\return)
        ((#\t) #\tab)
        ((#\b) #\backspace)
        ((#\f) #\page)
        ((#\u) (read-escape-unicode))
        (else
         (raise-invalid-json-token read-escape-char reader char)))))

  (def (read-escape-unicode)
    (let ((codepoint (read-escape-hex)))
      (cond
       ((not (codepoint-surrogate? codepoint))
        (integer->char codepoint))
       ((fx>= codepoint #xdc00) ;; low surrogate forbidden in first position
        (raise-invalid-json-token read-escape-unicode reader codepoint))
       ((fx< codepoint #xdc00) ;; high surrogate, must be followed by low surrogate
        (defrule (expect x)
          (let (char (reader.read-char-utf8))
            (unless (eqv? char x)
              (raise-invalid-json-token read-escape-unicode reader char))))
        (expect #\\)
        (expect #\u)
        (let ((hi codepoint) (lo (read-escape-hex)))
          (unless (fx<= #xdc00 lo #xdfff)
            (raise-invalid-json-token read-escape-unicode reader lo))
          (surrogates->char hi lo))))))

  ;; read 16-bit big-endian hex integer
  (def (read-escape-hex)
    ;; read 4 hex digits, accumulate MSB-first
    (let* ((h1 (read-hex)) (h2 (read-hex)) (h3 (read-hex)) (h4 (read-hex)))
      (fx+ (fxarithmetic-shift-left h1 12)
           (fxarithmetic-shift-left h2 8)
           (fxarithmetic-shift-left h3 4)
           h4)))

  (def (read-hex)
    (let ((char (reader.read-char-utf8)))
      (cond
       ((unhex* char))
       (else
        (raise-invalid-json-token hex-value reader char)))))

  (let (root [#f])
    (let lp ((tl root))
      (let (char (reader.read-char-utf8))
        (case char
          ((#\")
           (list->string (cdr root)))
          ((#\\)
           (let* ((char (read-escape-char))
                  (tl* [char]))
             (set! (cdr tl) tl*)
             (lp tl*)))
          (else
           (if (eof-object? char)
             (raise-invalid-json-token read-json-string reader char)
             (let (tl* [char])
               (set! (cdr tl) tl*)
               (lp tl*)))))))))

;;; number reading

(def (read-json-number first-char (reader : BufferedReader))
  ;; descend parsing terminals: #\] #\} #\, whitespace
  ;; read until a terminal is encountered and let string->number
  ;; parse it liberally
  (def (parse chars)
    (let (str (list->string chars))
      (or (string->number str)
          (raise-io-error read-json-number "Invalid JSON number" reader str))))
  (let (chars [first-char])
    (let lp ((tl chars))
      (let (char (reader.peek-char-utf8))
        (if (or (eof-object? char)
                (memv char '(#\] #\} #\,))
                (char-strict-whitespace? char))
          (parse chars)
          (let (tl* [(reader.read-char-utf8)])
            (set! (cdr tl) tl*)
            (lp tl*)))))))

;;; true / false / null

(def (read-json-true (reader : BufferedReader))
  (skip-chars '(#\r #\u #\e) reader)
  #t)

(def (read-json-false (reader : BufferedReader))
  (skip-chars '(#\a #\l #\s #\e) reader)
  #f)

(def (read-json-null (reader : BufferedReader))
  (skip-chars '(#\u #\l #\l) reader)
  #!void)

(def (skip-chars chars (reader : BufferedReader))
  (let lp ((rest chars))
    (match rest
      ([char . rest]
       (let (next (reader.read-char-utf8))
         (unless (eqv? next char)
           (raise-invalid-json-token skip-chars reader next)))
       (lp rest))
      (else (void)))))
