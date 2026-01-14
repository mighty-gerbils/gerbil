;;; -*- Gerbil -*-
;;; © vyzo
;;; stdio object writers and scanners
(import :std/io
        ./io)
(export #t)

;; standard object representation
(defmethod {write :object}
  (lambda (self writer env)
    XXX
    )
  interface: ObjectWriter)

(defmethod {scan! :object}
  (lambda (self env path)
    XXX
    )
  interface: ObjectScanner)
