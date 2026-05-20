;;; -*- Gerbil -*-
;;; ̧© vyzo
;;; json - object conversions
(import :std/error
        :std/walist)

;;; primitive conversions
(defmethod {:json :continuation}
  (lambda (self)
    XXX
    ))

;;; error specific conversions
(defmethod {:json Error}
  (lambda (self)
    XXX
    ))

;; generic object conversion
(defmethod {:json :object}
  (lambda (self)
    XXX
    ))
