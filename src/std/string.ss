;;; -*- Gerbil -*-
;;; © vyzo
;;; string conversions
(import :gerbil/runtime/hash
        :std/error)
(export to-string)

(def (to-string obj)
  (cond
   ((method-ref obj ':to-string)
    => (cut <> obj))
   (else
    (object->string obj))))

(defmethod {:to-string Error}
  (lambda (self)
    XXX
    ))

(defmethod {:to-string :continuation}
  (lambda (self)
    XXX
    ))

;; XXX HashTables
