;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; json library
package: std/text

;;; JSON - scheme correspondence:
;;; JSON encoding: the following objects can be converted to json:
;;;  - booleans
;;;  - void (corresponding to js's null)
;;;  - real numbers
;;;  - strings
;;;  - proper lists
;;;  - vectors (encoded as lists)
;;;  - hashes with symbolic or string keys mapping to json encodable objects
;;;  - any object that defines a :json method producing a json encodable objects
;;; JSON decoding produces JSON-encodable objects with the following.
;;; Note that JSON null is decoded as #!void and JSON lists are decoded as
;;;  Scheme lists
(import :gerbil/gambit/ports
        :gerbil/gambit/bits
        :std/error
        (only-in :std/srfi/1 reverse!))
(export read-json write-json
        string->json-object json-object->string
        json-symbolic-keys)

(def (read-json (port (current-input-port)))
  (read-json-object port))

(def (string->json-object str)
  (read-json-object (open-input-string str)))

(def (write-json obj (port (current-output-port)))
  (write-json-object obj port))

(def (json-object->string obj)
  (let (port (open-output-string))
    (write-json-object obj port)
    (get-output-string port)))

;; should decoded hashes have symbols as keys?
(def json-symbolic-keys
  (make-parameter #t))

;;; implementation
(def (raise-invalid-token port char)
  (if (eof-object? char)
    (raise-io-error 'read-json "Incomplete JSON object; EOF reached" port)
    (raise-io-error 'read-json "Invalid JSON token" port char)))

(def (read-json-object port)
  (skip-whitespace port)
  (let (char (peek-char port))
    (case char
      ((#\{) (read-json-hash port))
      ((#\[) (read-json-list port))
      ((#\") (read-json-string port))
      ((#\t) (read-json-true port))
      ((#\f) (read-json-false port))
      ((#\n) (read-json-null port))
      ((#\- #\0 #\1 #\2 #\3 #\4 #\5 #\6 #\7 #\8 #\9)
       (read-json-number port))
      (else
       (raise-invalid-token port char)))))

(def (skip-whitespace port)
  (let (char (peek-char port))
    (unless (eof-object? char)
      (when (char-whitespace? char)
        (read-char port)
        (skip-whitespace port)))))

(def (skip-chars chars port)
  (let lp ((rest chars))
    (match rest
      ([char . rest]
       (let (next (read-char port))
         (if (eq? next char)
           (lp rest)
           (raise-invalid-token port next))))
      (else (void)))))

(def (read-json-hash port)
  (read-char port)
  (let (obj (if (json-symbolic-keys)
              (make-hash-table-eq)
              (make-hash-table)))
    (let lp ()
      (let (key (read-json-hash-key port))
        (if key
          (let (val (read-json-object port))
            (hash-put! obj key val)
            (skip-whitespace port)
            (let (char (peek-char port))
              (case char
                ((#\,)
                 (read-char port)
                 (lp))
                ((#\})
                 (read-char port)
                 obj)
                (else
                 (raise-invalid-token port char)))))
          obj)))))                   ; empty or trailing #\, [liberal]

(def (read-json-hash-key port)
  (skip-whitespace port)
  (let (char (peek-char port))
    (case char
      ((#\")
       (let (key (read-json-string port))
         (skip-whitespace port)
         (let (char (peek-char port))
           (case char
             ((#\:)
              (read-char port)
              (if (json-symbolic-keys)
                (string->symbol key)
                key))
             (else
              (raise-invalid-token port char))))))
      ((#\})
       (read-char port)
       #f)
      (else
       (raise-invalid-token port char)))))

(def (read-json-list port)
  (read-char port)
  (let lp ((els []))
    (let (next (read-json-list-next port))
      (if next
        (lp (cons next els))
        (reverse! els)))))

(def (read-json-list-next port)
  (skip-whitespace port)
  (let (char (peek-char port))
    (case char
      ((#\])
       (read-char port)
       #f)
      (else
       (let (obj (read-json-object port))
         (skip-whitespace port)
         (let (char (peek-char port))
           (case char
             ((#\,)
              (read-char port)
              obj)
             ((#\])
              obj)
             (else
              (raise-invalid-token port char)))))))))

(def hexes "0123456789abcdef")
(def HEXES "0123456789ABCDEF")

(def (read-json-string port)
  (def (read-escape-char port)
    (let (char (read-char port))
      (case char
        ((#\" #\\ #\/) char)
        ((#\b) #\backspace)
        ((#\n) #\newline)
        ((#\f) #\page)
        ((#\r) #\return)
        ((#\t) #\tab)
        ((#\u) (read-escape-unicode port))
        (else
         (raise-invalid-token port char)))))

  (def (read-escape-unicode port)
    (let lp ((n 0) (chars []))
      (if (fx< n 4)
        (lp (fx1+ n) (cons (read-char port) chars))
        (let lp ((rest chars) (val 0) (shift 0))
          (match rest
            ([char . rest]
             (let (n (fxarithmetic-shift (hex-value char) shift))
               (lp rest (bitwise-ior n val) (fx+ shift 4))))
            (else
             (integer->char val)))))))

  (def (hex-value char)
    (let lp ((n 0))
      (if (fx< n 16)
        (if (or (eq? char (string-ref hexes n))
                (eq? char (string-ref HEXES n)))
          n
          (lp (fx1+ n)))
        (raise-invalid-token port char))))

  (read-char port)
  (let lp ((chars []))
    (let (char (read-char port))
      (case char
        ((#\")
         (list->string (reverse! chars)))
        ((#\\)
         (lp (cons (read-escape-char port) chars)))
        (else
         (if (eof-object? char)
           (raise-invalid-token port char)
           (lp (cons char chars))))))))

(def (read-json-number port)
  ;; descend parsing terminals: #\] #\} #\, whitespace
  ;; read until a terminal is encountered and let string->number
  ;; parse it liberally
  (def (parse chars)
    (let (str (list->string (reverse! chars)))
      (or (string->number str)
          (raise-invalid-token port str))))

  (let lp ((chars [(read-char port)]))
    (let (char (peek-char port))
      (if (or (eof-object? char)
              (memq char '(#\] #\} #\,))
              (char-whitespace? char))
        (parse chars)
        (lp (cons (read-char port) chars))))))

(def (read-json-true port)
  (skip-chars '(#\t #\r #\u #\e) port)
  #t)

(def (read-json-false port)
  (skip-chars '(#\f #\a #\l #\s #\e) port)
  #f)

(def (read-json-null port)
  (skip-chars '(#\n #\u #\l #\l) port)
  #!void)

(def (write-json-object obj port)
  (cond
   ((number? obj)
    (cond
     ((integer? obj)
      (display obj port))
     ((inexact? obj)
      (when (and (fl> obj 0.0) (fl< obj 1.0))
        (display #\0 port))               ; JSON requires leading 0
      (display obj port))
     ((rational? obj)
      (write-json-object (exact->inexact obj) port))
     (else
      (error "Bad JSON object" obj))))
   ((string? obj)
    (write-json-string obj port))
   ((list? obj)
    (write-json-list obj port))
   ((vector? obj)
    (write-json-vector obj port))
   ((hash-table? obj)
    (write-json-hash obj port))
   ((eq? #t obj)
    (display 'true port))
   ((eq? #f obj)
    (display 'false port))
   ((void? obj)
    (display 'null port))
   (else
    (write-json-object (call-method ':json obj) port))))

(def (write-json-list obj port)
  (display #\[ port)
  (let lp ((rest obj))
    (match rest
      ([val]                            ; last one
       (write-json-object val port)
       (display #\] port))
      ([val . rest]
       (write-json-object val port)
       (display "," port)
       (lp rest))
      ([]                               ; empty
       (display #\] port)))))

(def (write-json-vector obj port)
  (let (len (vector-length obj))
    (if (fxpositive? len)
      (let (last (fx1- len))
        (begin
          (display #\[ port)
          (let lp ((n 0))
            (if (fx= n last)
              (begin
                (write-json-object (##vector-ref obj n) port)
                (display #\] port))
              (begin
                (write-json-object (##vector-ref obj n) port)
                (display "," port)
                (lp (fx1+ n)))))))
      (display "[]" port))))

(def (write-json-hash obj port)
  (def (string-e key)
    (cond
     ((symbol? key)
      (symbol->string key))
     ((string? key) key)
     (else
      (error "Illegal hash key; must be symbol or string" obj key))))

  (display #\{ port)
  (let (lst (hash->list obj))
    (let lp ((rest lst))
      (match rest
        ([[key . val]]                  ; last one
         (write (string-e key) port)
         (display ":" port)
         (write-json-object val port)
         (display #\} port))
        ([[key . val] . rest]
         (write (string-e key) port)
         (display ":" port)
         (write-json-object val port)
         (display "," port)
         (lp rest))
        ([]                             ; empty
         (display #\} port))))))

(def (write-json-string obj port)
  (def escape
    '((#\" . #\")
      (#\\ . #\\)
      (#\/ . #\/)
      (#\backspace . #\b)
      (#\newline . #\n)
      (#\page . #\f)
      (#\return . #\r)
      (#\tab . #\t)))

  (def (safe-char? char)
    (let (n (char->integer char))
      (and (fx>= n 32) (fx< n 127))))

  (def (write-uchar char port)
    (let (int (char->integer char))
      (display "\\u" port)
      (let lp ((n 0) (mask #xf000) (shift -12))
        (when (fx< n 4)
          (let (char (string-ref hexes (arithmetic-shift (bitwise-and int mask) shift)))
            (display char port)
            (lp (fx1+ n) (arithmetic-shift mask -4) (fx+ shift 4)))))))

  (def (write-str obj port)
    (let (len (string-length obj))
      (let lp ((n 0))
        (when (fx< n len)
          (let (char (string-ref obj n))
            (cond
             ((assq char escape)
              => (lambda (esc)
                   (display #\\ port)
                   (display (cdr esc) port)))
             ((safe-char? char)
              (display char port))
             (else
              (write-uchar char port)))
            (lp (fx1+ n)))))))

  (display #\" port)
  (write-str obj port)
  (display #\" port))
