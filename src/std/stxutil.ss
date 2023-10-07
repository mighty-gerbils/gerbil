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

;; TODO: delete after v0.18 -- for temporary compatibility only
(defalias displayify display-as-string)
(defalias stringify as-string)
(defalias symbolify make-symbol)
(defalias identifierify stx-identifier)

;; Use maybe-make-symbol instead of make-symbol to avoid DoS attacks
;; that cause you to intern too many symbols and run out of memory.
;; : (Or Symbol String) <- StringDesignator ...
(def maybe-make-symbol
  (case-lambda ((x) (if (interned-symbol? x) x
                   (let (s (as-string x))
                     (or (##find-interned-symbol s) s))))
          (x (maybe-make-symbol (as-string x)))))

;; Use maybe-make-keyword instead of make-keyword to avoid DoS attacks
;; that cause you to intern too many keywords and run out of memory.
;; : (Or Keyword String) <- StringDesignator ...
(def maybe-make-keyword
  (case-lambda ((x) (if (interned-keyword? x) x
                   (let (s (as-string x))
                     (or (##find-interned-keyword s) s))))
          (x (maybe-make-keyword (as-string x)))))
