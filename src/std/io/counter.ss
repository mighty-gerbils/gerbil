;;; -*- Gerbil -*-
;;; © vyzo
;;; Counting IO interfaces
(import :gerbil/runtime/interface
        :std/interface
        :std/error
        ./interface
        ./dummy)
(export #t)

(defstruct io-count ((count :- :integer)))
(defstruct (input-count io-count) ((reader : Reader))
  final: #t)
(defstruct (output-count io-count) ((writer : Writer))
  final: #t)
(defstruct (dummy-output-count io-count) ()
  final: #t)

(defsyntax-case __update-count! ()
  ((_ self expr)
   (with-identifier (self.count #'self #'self ".count")
     #'(let (count expr)
         (declare (mostly-fixnum))
         (set! self.count
           (+ self.count count))
         count))))

(defmethod {read input-count}
  (lambda (self buf start end need)
    (__update-count! self (self.reader.read buf start end need)))
  interface: Reader)

(defmethod {close input-count}
  (lambda (self)
    (self.reader.close))
  interface: Closer)

(@implement Reader input-count)

(defmethod {write output-count}
  (lambda (self buf start end)
    (__update-count! self (self.writer.write buf start end)))
  interface: Writer)

(defmethod {close output-count}
  (lambda (self)
    (self.writer.close))
  interface: Closer)

(@implement Writer output-count)

(defmethod {close dummy-output-count}
  void
  interface: Closer)

(defmethod {write dummy-output-count}
  (lambda (self input input-start input-end)
    (let (count (fx- input-end input-start))
      (set! self.count (fx+ self.count count))
      count))
  interface: Writer)

(@implement Writer dummy-output-count)

(def (open-input-count-reader (rd : Reader))
  => Reader
  (Reader (input-count 0 rd)))

(def (open-output-count-writer (wr : Writer))
  => Writer
  (Writer (output-count 0 wr)))

(def (open-output-length-writer) => Writer
  (Writer (dummy-output-count 0)))

(def (get-io-count (inst : interface-instance)) => :integer
  (using (iobj inst.object : io-count)
    iobj.count))
