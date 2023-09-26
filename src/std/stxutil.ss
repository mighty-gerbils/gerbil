;;; -*- Gerbil -*-
;;; © vyzo
;;; syntax utilities; import for-syntax
(import :gerbil/expander
        :std/format)
(export #t)

;; format an identifier; see also stx-identifier
;; ctx := template identifier
;; fmt := format string
;; args := format arguments, may be syntax objects
(def (format-id ctx fmt . args)
  (datum->syntax ctx (string->symbol (apply format fmt (map stx-e args)))
                 (stx-source ctx)))

(def (displayify x port)
  (cond
   ((member x '(#f #t () #!void #!eof)) (void))
   ((or (string? x) (symbol? x) (number? x)) (display x port))
   ((keyword? x) (display (keyword->string x) port))
   ((pair? x) (displayify (car x) port) (displayify (cdr x) port))
   ((vector? x) (displayify (vector->list x) port))
   ((AST? x) (displayify (stx-e x) port))
   (else (void))))
(def (stringify . x) (call-with-output-string (lambda (port) (displayify x port))))
(def symbolify (case-lambda ((x) (if (symbol? x) x (string->symbol (stringify x))))
                       (x (string->symbol (stringify x)))))
(def keywordify (case-lambda ((x) (if (keyword? x) x (string->keyword (stringify x))))
                       (x (string->keyword (stringify x)))))
(def (identifierify stx . x) (datum->syntax stx (apply symbolify x)))

;; Use maybe-intern-symbol instead of string->symbol to avoid DoS attacks
;; that cause you to intern too many symbols and run out of memory.
;; : (Or Symbol String) <- String
(def (maybe-intern-symbol string)
  (or (##find-interned-symbol string) string))

;; Use maybe-intern-symbol instead of string->keyword to avoid DoS attacks
;; that cause you to intern too many keywords and run out of memory.
;; : (Or Keyword String) <- String
(def (maybe-intern-keyword string)
  (or (##find-interned-keyword string) string))

(def maybe-symbolify (case-lambda ((x) (if (symbol? x) x (maybe-intern-symbol (stringify x))))
                             (x (maybe-intern-symbol (stringify x)))))
(def maybe-keywordify (case-lambda ((x) (if (keyword? x) x (maybe-intern-keyword (stringify x))))
                              (x (maybe-intern-keyword (stringify x)))))
