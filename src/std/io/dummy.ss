;;; -*- Gerbil -*-
;;; © vyzo
;;; Dummy IO interfaces
(import :std/error
        ./interface)
(export dummy-reader dummy-writer)

(defstruct dummy-io ())

(defmethod {read dummy-io}
  (lambda (self output output-start output-end input-need)
    (if (fx> input-need 0)
      (raise-io-error 'dummy-read "Premature end of input")
      0)))

(defmethod {write dummy-io}
  (lambda (self input input-start input-end)
    (fx- input-end input-start)))

(defmethod {close dummy-io}
  void)

(def dummy-reader (Reader (make-dummy-io)))
(def dummy-writer (Writer (make-dummy-io)))
