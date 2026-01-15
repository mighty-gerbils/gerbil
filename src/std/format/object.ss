;;; -*- Gerbil -*-
;;; © vyzo
;;; format object writers and scanners
(import :std/io
        ./io
        ./ioutil)
(export #t)

;; standard object representation
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


(defmethod {format :string}
  (lambda (self writer env)
    (writer.format-string self env)))

(defmethod {format :symbol}
  (lambda (self writer env)
    (writer.format-symbol self env)))

(defmethod {format :keyword}
  (lambda (self writer env)
    (writer.format-keyword self env)))
