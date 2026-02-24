;;; -*- Gerbil -*-
;;; © vyzo
;;; scanner implementation
(import ./scan)
(export #t)

(defrule (defscanner klass (self env path) body ...)
  (defmethod {scan! klass}
    (lambda (self env path)
      body ...)
    interface: ObjectScanner))

(defscanner :object (self env path)
  XXX)
