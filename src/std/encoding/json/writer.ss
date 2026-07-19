;;; -*- Gerbil -*-
;;; © vyzo
;;; json writer
(import :std/error
        :std/io
        :std/serde/serialize
        :std/format
        :std/format/ioutil
        :std/list/walist
        :std/io/bio/api
        ./env)
(export write-json-object
        write-json-string
        write-json-number
        write-json-float
        write-json-list
        write-json-vector
        write-json-alist
        json-simple?
        json-key-string
        json-sort-alist)
(declare (not safe))

;;;
;;; Key helpers
;;;

(def (json-key-string key)
  => :string
  (cond
   ((string? key)  key)
   ((symbol? key)  (symbol->string key))
   ((keyword? key) (keyword->string key))
   (else (raise-bad-argument json-key-string "string, symbol, or keyword" key))))

(def (json-sort-alist (lst : :list))
  (list-sort (lambda (a b) (string<? (json-key-string (car a)) (json-key-string (car b)))) lst))

;;;
;;; String escaping
;;;

;;; escape callback for write-string/escape:
;;; given an ASCII codepoint *between 0 and 127*, writes the escape and returns :fixnum,
;;; or returns #f (normal character, no escape needed)
(def (json-string-escape (writer :- BufferedWriter) (u8 :- :fixnum))
  (defrules escape ()
    ((_ last) last)
    ((_ (byte escape-byte) more ...)
     (if (fx= u8 byte)
       (do-write (wr 0)
         (writer.write-backslash)
         (writer.write-u8 escape-byte)
         wr)
       (escape more ...)))
    ((_ byte more ...) (escape (byte byte) more ...)))
  (if (fx<= #x20 u8 #x7e) ;; graphical ASCII characters
    (escape
     #x22 ; "
     #x5c ; \
     #f)
    (escape ;; non-graphical ASCII characters, ordering escape cases by expected frequency
     (#x0a #x6e) ; line feed \n
     (#x0d #x72) ; carriage return \r
     (#x09 #x74) ; tab \t
     (#x0c #x66) ; form feed \f
     (#x08 #x62) ; backspace \b
     (let ((hi (arithmetic-shift u8 -4))
           (lo (bitwise-and u8 #xf)))
       (def (hex (n :- :fixnum))
         (fx+ n (if (fx< n 10) #x30 #x37)))
       (do-write (wr 0)
         (writer.write-backslash)
         (writer.write-u8 117) ; u
         (writer.write-u8 48) ; 0
         (writer.write-u8 48) ; 0
         (writer.write-u8 (hex hi))
         (writer.write-u8 (hex lo)))))))

;;;
;;; String writer
;;;

(def (write-json-string (writer : BufferedWriter) (str : :string)) => :fixnum
  (do-write (wr 0)
    (writer.write-squote)
    (writer.write-string/escape str json-string-escape)
    (writer.write-squote)
    wr))

;;;
;;; Number writer
;;;

(def (write-json-number (writer : BufferedWriter) obj) => :fixnum
  (cond
   ((fixnum? obj)
    (writer.write-fixnum-decimal obj))
   ((and (flonum? obj) (##flfinite? obj))
    (write-json-float writer (inexact obj)))
   ((and (exact? obj) (integer? obj))  ; bignum
    (writer.write-string-utf8 (number->string obj)))
   ((rational? obj)
    (write-json-number writer (inexact obj)))
   (else
    (raise-bad-argument write-json-number "writable JSON number" obj))))

(def (write-json-float (writer : BufferedWriter)
                       (obj :~ (? (and flonum? finite?)) :- :flonum)) => :fixnum
  (let ((s (number->string obj)))
    (cond
     ((string-prefix? "-." s)
      (do-write (wr 0)
        (writer.write-string-utf8 "-0")
        (writer.write-string-utf8 (substring s 1 (string-length s)))
        wr))
     ((string-prefix? "." s)
      (do-write (wr 0)
        (writer.write-string-utf8 "0")
        (writer.write-string-utf8 s)
        wr))
     ((string-suffix? "." s)
      (do-write (wr 0)
        (writer.write-string-utf8 s)
        (writer.write-string-utf8 "0")
        wr))
     ((or (string-index s #\e) (string-index s #\.))
      (writer.write-string-utf8 s))
     (else
      (do-write (wr 0)
        (writer.write-string-utf8 s)
        (writer.write-string-utf8 ".0")
        wr)))))

;;;
;;; Compact container writers
;;;

(def (write-json-list (writer : BufferedWriter) lst (ctx : JSONWriteContext)) => :fixnum
  (do-write (wr 0)
    (writer.write-lbracket)
    (let lp ((rest lst) (wr wr))
      (match rest
        ([obj . rest]
         (do-write (wr wr)
           (write-json-object writer obj ctx)
           (if (null? rest) 0 (writer.write-coma))
           (lp rest wr)))
        (else wr)))
    (writer.write-rbracket)
    wr))

(def (write-json-vector (writer : BufferedWriter) v (ctx : JSONWriteContext)) => :fixnum
  (let (len (vector-length v))
    (do-write (wr 0)
      (writer.write-lbracket)
      (let lp ((i 0) (wr wr))
        (if (fx< i len)
          (do-write (wr wr)
            (write-json-object writer (vector-ref v i) ctx)
            (if (fx< (fx+ i 1) len) (writer.write-coma) 0)
            (lp (fx+ i 1) wr))
          wr))
      (writer.write-rbracket)
      wr)))

(def (write-json-alist (writer : BufferedWriter) lst (ctx : JSONWriteContext)) => :fixnum
  (let (lst (if ctx.opt.sort-keys (json-sort-alist lst) lst))
    (do-write (wr 0)
      (writer.write-lbrace)
      (let lp ((rest lst) (wr wr))
        (match rest
          ([[key . val] . rest]
           (do-write (wr wr)
             (write-json-string writer (json-key-string key))
             (writer.write-colon)
             (write-json-object writer val ctx)
             (if (null? rest) 0 (writer.write-coma))
             (lp rest wr)))
          (else wr)))
      (writer.write-rbrace)
      wr)))

;;;
;;; Main dispatch
;;;

(def (write-json-object (writer : BufferedWriter) obj (ctx : JSONWriteContext)) => :fixnum
  (cond
   ((number? obj)
    (write-json-number writer obj))
   ((string? obj)
    (write-json-string writer obj))
   ((symbol? obj)
    (write-json-string writer (symbol->string obj)))
   ((keyword? obj)
    (write-json-string writer (keyword->string obj)))
   ((pair? obj)
    (if ctx.opt.pretty
      (write-json-list/pretty writer obj ctx)
      (write-json-list writer obj ctx)))
   ((null? obj)
    (do-write (wr 0)
      (writer.write-lbracket)
      (writer.write-rbracket)
      wr))
   ((vector? obj)
    (if (and ctx.opt.pretty (fx> (vector-length obj) 0))
      (write-json-vector/pretty writer obj ctx)
      (write-json-vector writer obj ctx)))
   ((hash-table? obj)
    (let (lst (hash->list obj))
      (if (and ctx.opt.pretty (not (null? lst)))
        (write-json-alist/pretty writer lst ctx)
        (write-json-alist writer lst ctx))))
   ((AList? obj)
    (let (lst (walist->list obj))
      (if (and ctx.opt.pretty (not (null? lst)))
        (write-json-alist/pretty writer lst ctx)
        (write-json-alist writer lst ctx))))
   ((eq? #t obj)
    (writer.write-string-utf8 "true"))
   ((eq? #f obj)
    (writer.write-string-utf8 "false"))
   ((void? obj)
    (writer.write-string-utf8 "null"))
   ((method-ref obj ':write-json)
    => (cut <> obj writer ctx))
   ((method-ref obj ':json)
    => (lambda (m) (write-json-object writer (m obj) ctx)))
   (else
    (raise-bad-argument write-json-object "JSONable" obj))))

;;;
;;; Pretty-print helpers
;;;

;;; write a newline followed by n spaces
(def (write-nl-indent (writer : BufferedWriter) (n :- :fixnum)) => :fixnum
  (do-write (wr 0)
    (writer.write-newline)
    (writer.write-spaces n)
    wr))

;;; is this value "simple" (written inline without newlines)?
(def (json-simple? obj)
  (not (or (pair? obj)
           (and (vector? obj) (fx> (vector-length obj) 0))
           (and (hash-table? obj) (not (zero? (hash-length obj))))
           (and (AList? obj) (not (null? (walist->list obj)))))))

;;;
;;; Pretty-print container writers
;;;

;;; write `[elem1, ..., elemN]` with indentation
(def (write-json-list/pretty (writer : BufferedWriter) lst (ctx : JSONWriteContext)) => :fixnum
  (let* ((old-ind ctx.ind)
         (new-ind (fx+ old-ind ctx.opt.indent))
         (standard? (eq? ctx.opt.pretty 'standard)))
    (set! ctx.ind new-ind)
    (do-write (wr 0)
      (writer.write-lbracket)
      (if standard? (write-nl-indent writer new-ind) 0)
      (let lp ((rest lst) (wr wr))
        (match rest
          ([obj . rest]
           (do-write (wr wr)
             (write-json-object writer obj ctx)
             (if (null? rest)
               (begin
                 (set! ctx.ind old-ind)
                 (if standard? (write-nl-indent writer old-ind) 0))
               (do-write (wr 0)
                 (writer.write-coma)
                 (write-nl-indent writer new-ind)
                 wr))
             (lp rest wr)))
          (else wr)))
      (writer.write-rbracket)
      wr)))

;;; write `[elem1, ..., elemN]` (vector) with indentation
(def (write-json-vector/pretty (writer : BufferedWriter) v (ctx : JSONWriteContext)) => :fixnum
  (let* ((len (vector-length v))
         (old-ind ctx.ind)
         (new-ind (fx+ old-ind ctx.opt.indent))
         (standard? (eq? ctx.opt.pretty 'standard)))
    (set! ctx.ind new-ind)
    (do-write (wr 0)
      (writer.write-lbracket)
      (if standard? (write-nl-indent writer new-ind) 0)
      (let lp ((i 0) (wr wr))
        (if (fx< i len)
          (do-write (wr wr)
            (write-json-object writer (vector-ref v i) ctx)
            (if (fx= (fx+ i 1) len)
              (begin
                (set! ctx.ind old-ind)
                (if standard? (write-nl-indent writer old-ind) 0))
              (do-write (wr 0)
                (writer.write-coma)
                (write-nl-indent writer new-ind)
                wr))
            (lp (fx+ i 1) wr))
          wr))
      (writer.write-rbracket)
      wr)))

;;; write `{"key": val, ...}` with indentation
(def (write-json-alist/pretty (writer : BufferedWriter) lst (ctx : JSONWriteContext)) => :fixnum
  (let* ((lst (if ctx.opt.sort-keys (json-sort-alist lst) lst))
         (old-ind ctx.ind)
         (new-ind (fx+ old-ind ctx.opt.indent))
         (standard? (eq? ctx.opt.pretty 'standard)))
    (set! ctx.ind new-ind)
    (do-write (wr 0)
      (writer.write-lbrace)
      (if standard? (write-nl-indent writer new-ind) 0)
      (let lp ((rest lst) (wr wr))
        (match rest
          ([[key . val] . rest]
           (do-write (wr wr)
             ;; write key
             (write-json-string writer (json-key-string key))
             (writer.write-colon)
             ;; in standard mode: always space; in lisp mode: space for simple, newline for complex
             (if (or standard? (json-simple? val))
               (writer.write-space)
               (write-nl-indent writer (fx+ new-ind 1)))
             ;; write value (ctx.ind is new-ind)
             (write-json-object writer val ctx)
             ;; separator or closing
             (if (null? rest)
               (begin
                 (set! ctx.ind old-ind)
                 (if standard? (write-nl-indent writer old-ind) 0))
               (do-write (wr 0)
                 (writer.write-coma)
                 (write-nl-indent writer new-ind)
                 wr))
             (lp rest wr)))
          (else wr)))
      (writer.write-rbrace)
      wr)))

