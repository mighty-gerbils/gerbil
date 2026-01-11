;;; -*- Gerbil -*-
;;; © vyzo
;;; string output
(import :gerbil/runtime/hash
        :std/error)
(export to-string)

(def (to-string obj)
  (cond
   ((method-ref obj ':to-string)
    => (cut <> obj))
   (else
    (object->string obj))))

(defmethod {:to-string :object}
  (lambda (self)
    XXX
    ))

(defmethod {:to-string Error}
  (lambda (self)
    XXX
    ))

(defmethod {:to-string :continuation}
  (lambda (self)
    XXX
    ))

(defmethod {:to-string :thread}
  (lambda (self)
    XXX
    ))

;; XXX HashTables
