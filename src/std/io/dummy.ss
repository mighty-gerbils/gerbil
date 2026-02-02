;;; -*- Gerbil -*-
;;; © vyzo
;;; Dummy IO interfaces
(import :std/interface
        :std/error
        ./interface)
(export #t)

(defstruct dummy-io ())

(defmethod {close dummy-io}
  void
  interface: Closer)

(defmethod {read dummy-io}
  (lambda (self output output-start output-end input-need)
    (if (fx> input-need 0)
      (raise-premature-end-of-input dummy-read)
      0))
  interface: Reader)

(@implement Reader dummy-io)

(defmethod {write dummy-io}
  (lambda (self input input-start input-end)
    (fx- input-end input-start))
  interface: Writer)

(@implement Writer dummy-io)

(def dummy (make-dummy-io))
(def dummy-reader (Reader dummy))
(def dummy-writer (Writer dummy))
