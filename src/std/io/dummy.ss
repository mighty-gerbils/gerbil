;;; -*- Gerbil -*-
;;; © vyzo
;;; Dummy IO interfaces
(import :std/error
        ./interface)
(export dummy-reader dummy-writer
        dummy-string-reader dummy-string-writer)

(defstruct dummy-io ())

(defmethod {read dummy-io}
  (lambda (self output output-start output-end input-need)
    (if (fx> input-need 0)
      (raise-premature-end-of-input 'dummy-read)
      0)))

(defmethod {write dummy-io}
  (lambda (self input input-start input-end)
    (fx- input-end input-start)))

(defmethod {read-string dummy-io}
  (lambda (self output output-start output-end input-need)
    (if (fx> input-need 0)
      (raise-premature-end-of-input 'dummy-read-string)
      0)))

(defmethod {write-string dummy-io}
  (lambda (self input input-start input-end)
    (fx- input-end input-start)))

(defmethod {close dummy-io}
  void)

(def dummy (make-dummy-io))
(def dummy-reader (Reader dummy))
(def dummy-writer (Writer dummy))
(def dummy-string-reader (StringReader dummy))
(def dummy-string-writer (StringWriter dummy))
