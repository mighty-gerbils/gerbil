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

(def maybe-intern-symbol
  (case-lambda ((x) (if (symbol? x) x (maybe-intern-symbol (as-string x))))
          (x (maybe-intern-symbol (as-string x)))))
(def maybe-intern-keyword
  (case-lambda ((x) (if (keyword? x) x (maybe-intern-keyword (as-string x))))
          (x (maybe-intern-keyword (as-string x)))))
