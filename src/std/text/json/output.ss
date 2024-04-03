;;; -*- Gerbil -*-
;;; ̧© vyzo
;;; json writer
(import :gerbil/gambit
        :std/error
        :std/sugar
        :std/io
        :std/misc/walist
        :std/sort
        :std/text/hex
        ./env)
(export write-json-object/port write-json-object/writer write-json-object/buffer
        json-key-string json-sort-alist)
(declare (not safe))

(def (json-key-string key)
  (cond
   ((string? key) key)
   ((symbol? key)
    (symbol->string key))
   ((keyword? key)
    (keyword->string key))
   (else
    (error "Illegal hash key; must be symbol, keyword or string" key))))

(def (json-sort-alist alist)
  (sort alist (lambda (kv1 kv2)
                (string<? (json-key-string (car kv1))
                          (json-key-string (car kv2))))))

(defsyntax (defjson-writer stx)
  (syntax-case stx ()
    ((macro name write-char write-string)
     (with-syntax ((write-json-object     (stx-identifier #'macro "write-json-object/" #'name))
                   (write-json-inexact    (stx-identifier #'macro "write-json-inexact/" #'name))
                   (write-json-list       (stx-identifier #'macro "write-json-list/" #'name))
                   (write-json-vector     (stx-identifier #'macro "write-json-vector/" #'name))
                   (write-json-alist      (stx-identifier #'macro "write-json-alist/" #'name))
                   (write-json-alist/sort (stx-identifier #'macro "write-json-alist/sort/" #'name))
                   (write-json-hash       (stx-identifier #'macro "write-json-hash/" #'name))
                   (write-json-string     (stx-identifier #'macro "write-json-string/" #'name)))
       #'(begin
           (def (write-json-object obj output env)
             (cond
              ((number? obj)
               (cond
                ((exact-integer? obj)
                 (write-string (number->string obj) output))
                ((inexact? obj)
                 (write-json-inexact obj output env))
                ((rational? obj)
                 (write-json-inexact (exact->inexact obj) output env))
                (else
                 (error "Bad JSON object" obj))))
              ((string? obj)
               (write-json-string obj output env))
              ((symbol? obj)
               (write-json-string (symbol->string obj) output env))
              ((keyword? obj)
               (write-json-string (keyword->string obj) output env))
              ((list? obj)
               (write-json-list obj output env))
              ((vector? obj)
               (write-json-vector obj output env))
              ((hash-table? obj)
               (write-json-hash obj output env))
              ((walist? obj)
               (write-json-alist (walist->alist obj) output env))
              ((eq? #t obj)
               (write-string "true" output))
              ((eq? #f obj)
               (write-string "false" output))
              ((void? obj)
               (write-string "null" output))
              ((method-ref obj ':write-json)
               => (cut <> obj output))
              (else
               (write-json-object {:json obj} output env))))

           (def (write-json-inexact obj output env)
             (let* ((mag (abs obj))
                    (str (number->string mag)))
               (when (flnegative? obj)
                 (write-char #\- output))
               (when (eq? (string-ref str 0) #\.)
                 (write-char #\0 output))
               (write-string str output)
               (when (eq? (string-ref str (##fx- (string-length str) 1)) #\.)
                 (write-char #\0 output))))

           (def (write-json-list obj output env)
             (write-char #\[ output)
             (let lp ((rest obj))
               (match rest
                 ([val]                 ; last one
                  (write-json-object val output env)
                  (write-char #\] output))
                 ([val . rest]
                  (write-json-object val output env)
                  (write-char #\, output)
                  (lp rest))
                 ([]                    ; empty
                  (write-char #\] output)))))

           (def (write-json-vector obj output env)
             (let (len (vector-length obj))
               (if (##fxpositive? len)
                 (let (last (##fx- len 1))
                   (begin
                     (write-char #\[ output)
                     (let lp ((n 0))
                       (if (##fx= n last)
                         (begin
                           (write-json-object (##vector-ref obj n) output env)
                           (write-char #\] output))
                         (begin
                           (write-json-object (##vector-ref obj n) output env)
                           (write-char #\, output)
                           (lp (##fx+ n 1)))))))
                 (write-string "[]" output))))

           (def (write-json-alist alist output env)
             (write-char #\{ output)
             (let lp ((rest alist))
               (match rest
                 ([[key . val] . rest]
                  (let (key (json-key-string key))
                    (write-char #\" output)
                    (write-string key output)
                    (write-char #\" output)
                    (write-char #\: output)
                    (write-json-object val output env)
                    (unless (null? rest) (write-char #\, output))
                    (lp rest)))
               ([]                      ; empty
                (write-char #\} output)))))

           (def (write-json-alist/sort alist output env)
             (write-json-alist (json-sort-alist alist) output env))

           (def (write-json-hash obj output env)
             (def lst (hash->list obj))
             (if (&env-sort-keys env)
               (write-json-alist/sort lst output env)
               (write-json-alist lst output env)))

           (def (write-json-string obj output env)
             (def escape
               '((#\" . #\")
                 (#\\ . #\\)
                 (#\backspace . #\b)
                 (#\newline . #\n)
                 (#\page . #\f)
                 (#\return . #\r)
                 (#\tab . #\t)))

             (def (printable-char? char)
               (let (n (char->integer char))
                 (cond
                  ((##fx< n 32) #f)     ; unprintable ascii
                  ((##fx= n 127) #f)    ; ascii DEL
                  (else #t))))

             (def (write-uchar char output)
               (let (int (char->integer char))
                 (write-string "\\u" output)
                 (let lp ((n 0) (mask #xf000) (shift -12))
                   (when (fx< n 4)
                     (let (char (hex (arithmetic-shift (bitwise-and int mask) shift)))
                       (write-char char output)
                       (lp (fx+ n 1) (arithmetic-shift mask -4) (fx+ shift 4)))))))

             (def (write-str obj output)
               (let (len (string-length obj))
                 (let lp ((n 0))
                   (when (##fx< n len)
                     (let (char (string-ref obj n))
                       (cond
                        ((assq char escape)
                         => (lambda (esc)
                              (write-char #\\ output)
                              (write-char (cdr esc) output)))
                        ((printable-char? char)
                         (write-char char output))
                        (else
                         (write-uchar char output)))
                       (lp (##fx+ n 1)))))))

             (write-char #\" output)
             (write-str obj output)
             (write-char #\" output)))))))

(defrule (writer-write-char char buf)
  (&BufferedStringWriter-write-char-inline buf char))
(defrule (writer-write-string str buf)
  (&BufferedStringWriter-write-string buf str))

(defrule (buffer-write-char char buf)
  (&BufferedWriter-write-char-inline buf char))
(defrule (buffer-write-string str buf)
  (&BufferedWriter-write-string buf str))

(defjson-writer port write-char write-string)
(defjson-writer writer writer-write-char writer-write-string)
(defjson-writer buffer buffer-write-char buffer-write-string)
