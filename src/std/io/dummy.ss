;;; -*- Gerbil -*-
;;; © vyzo
;;; Dummy IO interfaces
(import :gerbil/runtime/interface
        :std/error
        ./interface)
(export #t)

(defstruct dummy-io ())
(defstruct io-length ((count :- :fixnum)))

(defmethod {read dummy-io}
  (lambda (self output output-start output-end input-need)
    (if (fx> input-need 0)
      (raise-premature-end-of-input dummy-read)
      0))
  interface: Reader)

(defmethod {write dummy-io}
  (lambda (self input input-start input-end)
    (fx- input-end input-start))
  interface: Writer)

(defmethod {close dummy-io}
  void
  interface: Closer)

(def dummy (make-dummy-io))
(def dummy-reader (Reader dummy))
(def dummy-writer (Writer dummy))

(defmethod {write io-length}
  (lambda (self input input-start input-end)
    (let (count (fx- input-end input-start))
      (set! self.count (fx+ self.count count))
      count))
  interface: Writer)

(defmethod {close io-length}
  void
  interface: Closer)

(defmethod {write-u8 io-length}
  (lambda (self u8)
    (set! self.count (fx+ self.count 1))
    1)
  interface: BufferedWriter)

(defmethod {flush io-length}
  void
  interface: BufferedWriter)

(defmethod {reset! io-length}
  (lambda (self wr close?)
    (set! self.count 0))
  interface: BufferedWriter)

(def (open-io-length-writer) => Writer
  (Writer (io-length 0)))

(def (open-io-length-buffered-writer) => BufferedWriter
  (BufferedWriter (io-length 0)))

(def (get-io-length (inst : interface-instance)) => :fixnum
  (using (iobj inst.object : io-length)
    iobj.count))
