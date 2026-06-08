;;; -*- Gerbil -*-
;;; © vyzo
;;; string conversions
(import :std/interface
        :std/format/api)
(export #t)

(interface Stringer
  (to-string) => :string)

(defcall-interface-method Stringer to-string
  (to-string obj)
  :- :string)

(implement Stringer
  (:t
   (to-string
    (lambda (self)
      (format "%a" self))))
  (:string
   (to-string identity))
  (:symbol
   (to-string symbol->string))
  (:keyword
   (to-string keyword->string))
  (:number
   (to-string number->string)))
