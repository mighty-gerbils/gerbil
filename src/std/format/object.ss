;;; -*- Gerbil -*-
;;; © vyzo
;;; format object writers and scanners
(import :std/io
        ./io
        ./ioutil)
(export #t)

;; standard objects
(defmethod {format :object}
  (lambda (self writer env)
    XXX
    )
  interface: ObjectFormatter)

(defmethod {scan! :object}
  (lambda (self env path)
    XXX
    )
  interface: ObjectScanner)
