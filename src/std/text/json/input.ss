;;; -*- Gerbil -*-
;;; ̧© vyzo
;;; json reader
(import :gerbil/runtime/hash
        :gerbil/runtime/table
        :std/error
        :std/sugar
        :std/io
        :std/misc/list
        :std/misc/walist
        :std/text/hex
        ./env)
(export read-json-object/port read-json-object/reader read-json-object/buffer)
(declare (not safe))

(defsyntax (defjson-reader stx)
  (syntax-case stx ()
    ((macro name peek-char read-char)
     (with-syntax ((read-json-object    (stx-identifier #'macro "read-json-object/" #'name))
                   (read-json-hash      (stx-identifier #'macro "read-json-hash/" #'name))
                   (read-json-hash/symbol  (stx-identifier #'macro "read-json-hash/symbol/" #'name))
                   (read-json-hash/walistq  (stx-identifier #'macro "read-json-hash/walistq" #'name))
                   (read-json-hash/string  (stx-identifier #'macro "read-json-hash/string/" #'name))
                   (read-json-hash/walist  (stx-identifier #'macro "read-json-hash/walist/" #'name))
                   (read-json-hash-key/symbol  (stx-identifier #'macro "read-json-hash-key/symbol/" #'name))
                   (read-json-hash-key/string  (stx-identifier #'macro "read-json-hash-key/string/" #'name))
                   (read-json-list      (stx-identifier #'macro "read-json-list/" #'name))
                   (read-json-list-next (stx-identifier #'macro "read-json-list-next/" #'name))
                   (read-json-string    (stx-identifier #'macro "read-json-string/" #'name))
                   (read-json-number    (stx-identifier #'macro "read-json-number/" #'name))
                   (read-json-true      (stx-identifier #'macro "read-json-true/" #'name))
                   (read-json-false     (stx-identifier #'macro "read-json-false/" #'name))
                   (read-json-null      (stx-identifier #'macro "read-json-null/" #'name))
                   (skip-whitespace     (stx-identifier #'macro "skip-whitespace/" #'name))
                   (skip-chars          (stx-identifier #'macro "skip-chars/" #'name)))
       #'(begin
           (def (read-json-object input env)
             (skip-whitespace input)
             (let (char (read-char input))
               (if (eof-object? char)
                 #!eof
                 (case char
                   ((#\{) (read-json-hash input env))
                   ((#\[) (read-json-list input env))
                   ((#\") (read-json-string input env))
                   ((#\t) (read-json-true input env))
                   ((#\f) (read-json-false input env))
                   ((#\n) (read-json-null input env))
                   ((#\- #\0 #\1 #\2 #\3 #\4 #\5 #\6 #\7 #\8 #\9)
                    (read-json-number char input env))
                   (else
                    (raise-invalid-token read-json-object input char))))))

           (def (read-json-hash input env)
             (if (&env-read-json-key-as-symbol? env)
               (if (&env-read-json-object-as-walist? env)
                 (read-json-hash/walistq input env)
                 (read-json-hash/symbol input env))
               (if (&env-read-json-object-as-walist? env)
                 (read-json-hash/walist input env)
                 (read-json-hash/string input env))))

           (def (read-json-hash/walistq input env)
             (let* ((obj (make-gc-table 7 gc-hash-table::t))
                    (put! (lambda (k v) (gc-table-set! obj k v)))
                    (key? (lambda (k) (not (eq? (gc-table-ref obj k absent-value) absent-value))))
                    (lst []))
               (let lp ()
                 (let (key (read-json-hash-key/symbol input env))
                   (when key
                     ;; If you see a duplicate key, it's as likely an attack as a bug. #LangSec
                     (if (key? key)
                       (error "Duplicate hash key in JSON input" key)
                       (let (val (read-json-object input env))
                         (put! key val)
                         (push! (cons key val) lst)
                         (skip-whitespace input)
                         (let (char (read-char input))
                           (case char
                             ((#\,) (lp))
                             ((#\}) (void))
                             (else
                              (raise-invalid-token read-json-hash input char)))))))))
               (walistq (reverse! lst))))

           (def (read-json-hash/walist input env)
             (let* ((obj (make-hash-table size: 8))
                    (put! (lambda (k v) (hash-put! obj k v)))
                    (key? (lambda (k) (hash-key? obj k)))
                    (lst []))
               (let lp ()
                 (let (key (read-json-hash-key/string input env))
                   (when key
                     ;; If you see a duplicate key, it's as likely an attack as a bug. #LangSec
                     (if (key? key)
                       (error "Duplicate hash key in JSON input" key)
                       (let (val (read-json-object input env))
                         (put! key val)
                         (push! (cons key val) lst)
                         (skip-whitespace input)
                         (let (char (read-char input))
                           (case char
                             ((#\,) (lp))
                             ((#\}) (void))
                             (else
                              (raise-invalid-token read-json-hash input char)))))))))
               (walist (reverse! lst))))

           (def (read-json-hash/symbol input env)
             (let* ((obj (make-gc-table 7 gc-hash-table::t))
                    (put! (lambda (k v) (gc-table-set! obj k v)))
                    (return (lambda () (HashTable obj))))
               (let lp ()
                 (let (key (read-json-hash-key/symbol input env))
                   (if key
                     (let (val (read-json-object input env))
                       (put! key val)
                       (skip-whitespace input)
                       (let (char (read-char input))
                         (case char
                           ((#\,) (lp))
                           ((#\}) (return))
                           (else
                            (raise-invalid-token read-json-hash input char)))))
                     (return))))))

           (def (read-json-hash/string input env)
             (let* ((obj (make-hash-table size: 8))
                    (put! (lambda (k v) (hash-put! obj k v)))
                    (return (lambda () obj)))
               (let lp ()
                 (let (key (read-json-hash-key/string input env))
                   (if key
                     (let (val (read-json-object input env))
                       (put! key val)
                       (skip-whitespace input)
                       (let (char (read-char input))
                         (case char
                           ((#\,) (lp))
                           ((#\}) (return))
                           (else
                            (raise-invalid-token read-json-hash input char)))))
                     (return))))))

           (def (read-json-hash-key/string input env)
             (skip-whitespace input)
             (let (char (read-char input))
               (case char
                 ((#\")
                  (let (key (read-json-string input env))
                    (skip-whitespace input)
                    (let (char (read-char input))
                      (case char
                        ((#\:) key)
                        (else
                         (raise-invalid-token read-json-hash-key input char))))))
                 ((#\}) #f)
                 (else
                  (raise-invalid-token read-json-hash-key input char)))))

           (def (read-json-hash-key/symbol input env)
             (alet (key (read-json-hash-key/string input env))
               (string->symbol key)))

           (def (read-json-list input env)
             (let (root [#f])
               (let lp ((tl root))
                 (let (next (read-json-list-next input env))
                   (if (eof-object? next)
                     (let (l (cdr root))
                       (if (&env-read-json-array-as-vector? env)
                         (list->vector l)
                         l))
                     (let (tl* [next])
                       (set! (cdr tl) tl*)
                       (lp tl*)))))))

           (def (read-json-list-next input env)
             (skip-whitespace input)
             (let (char (peek-char input))
               (case char
                 ((#\])
                  (read-char input)
                  #!eof)
                 (else
                  (let (obj (read-json-object input env))
                    (skip-whitespace input)
                    (let (char (peek-char input))
                      (case char
                        ((#\,)
                         (read-char input)
                         obj)
                        ((#\])
                         obj)
                        (else
                         (raise-invalid-token read-json-list-next input char)))))))))

           (def (read-json-string input env)
             (def (read-escape-char input)
               (let (char (read-char input))
                 (case char
                   ((#\" #\\ #\/) char)
                   ((#\b) #\backspace)
                   ((#\n) #\newline)
                   ((#\f) #\page)
                   ((#\r) #\return)
                   ((#\t) #\tab)
                   ((#\u) (read-escape-unicode input))
                   (else
                    (raise-invalid-token read-escape-char input char)))))

             (def (read-escape-unicode input)
               (let lp ((n 0) (chars []))
                 (if (fx< n 4)
                   (lp (fx+ n 1) (cons (read-char input) chars))
                   (let lp ((rest chars) (val 0) (shift 0))
                     (match rest
                       ([char . rest]
                        (let (n (fxarithmetic-shift (hex-value char) shift))
                          (lp rest (bitwise-ior n val) (fx+ shift 4))))
                       (else
                        (if (and (fx< val max-char-code)
                                 (or (fx< val #xd800)
                                     (fx< #xdfff val)))
                          (integer->char val)
                          ;; invalid unicode point; use utf8 replacement instead of bombing
                          #\xfffd)))))))

             (def (hex-value char)
               (cond
                ((unhex* char))
                (else
                 (raise-invalid-token hex-value input char))))

             (let (root [#f])
               (let lp ((tl root))
                 (let (char (read-char input))
                   (case char
                     ((#\")
                      (list->string (cdr root)))
                     ((#\\)
                      (let* ((char (read-escape-char input))
                             (tl* [char]))
                        (set! (cdr tl) tl*)
                        (lp tl*)))
                     (else
                      (if (eof-object? char)
                        (raise-invalid-token read-json-string input char)
                        (let (tl* [char])
                          (set! (cdr tl) tl*)
                          (lp tl*)))))))))

           (def (read-json-number first-char input env)
             ;; descend parsing terminals: #\] #\} #\, whitespace
             ;; read until a terminal is encountered and let string->number
             ;; parse it liberally
             (def (parse chars)
               (let (str (list->string chars))
                 (or (string->number str)
                     (raise-invalid-token read-json-number input str))))

             (let (chars [first-char])
               (let lp ((tl chars))
                 (let (char (peek-char input))
                   (if (or (eof-object? char)
                           (memq char '(#\] #\} #\,))
                           (char-whitespace? char))
                     (parse chars)
                     (let (tl* [(read-char input)])
                       (set! (cdr tl) tl*)
                       (lp tl*)))))))

           (def (read-json-true input env)
             (skip-chars '(#\r #\u #\e) input)
             #t)
           (def (read-json-false input env)
             (skip-chars '(#\a #\l #\s #\e) input)
             #f)
           (def (read-json-null input env)
             (skip-chars '(#\u #\l #\l) input)
             #!void)

           (def (skip-whitespace input)
             (let (char (peek-char input))
               (unless (eof-object? char)
                 (when (char-whitespace? char)
                   (read-char input)
                   (skip-whitespace input)))))

           (def (skip-chars chars input)
             (let lp ((rest chars))
               (match rest
                 ([char . rest]
                  (let (next (read-char input))
                    (if (eq? next char)
                      (lp rest)
                      (raise-invalid-token skip-chars input next))))
                 (else (void))))))))))


(defjson-reader port peek-char read-char)
(defjson-reader reader &BufferedStringReader-peek-char-inline &BufferedStringReader-read-char-inline)
(defjson-reader buffer &BufferedReader-peek-char-inline &BufferedReader-read-char-inline)
