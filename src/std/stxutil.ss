;;; -*- Gerbil -*-
;;; © vyzo
;;; syntax utilities; import for-syntax
package: std

(import <expander-runtime>
        :std/format)
(export #t)

;; format an identifier; see also stx-identifier
;; ctx := template identifier
;; fmt := format string
;; args := format arguments, may be syntax objects
(def (format-id ctx fmt . args)
  (datum->syntax ctx (string->symbol (apply format fmt (map stx-e args)))
                 (stx-source ctx)))
