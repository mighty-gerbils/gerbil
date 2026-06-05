;;; -*- Gerbil -*-
;;; © vyzo
;;; delimited readers
(import :std/error
        :std/interface
        ./interface)
(export (rename: open-delimited-reader delimited-reader))
(declare (not safe))

(defstruct delimited-reader ((reader    :- Reader)
                             (remaining :- :integer))
  final: #t )

(def (open-delimited-reader (reader : Reader)
                            (limit :~ nonnegative-integer? :- :integer))
  => Reader
  (Reader (make-delimited-reader reader limit)))

(defmethod {read delimited-reader}
  (lambda (self output start end need)
    (let (remaining self.remaining)
      (cond
       ((> need remaining)
        (raise-io-error read "input limit exceeded" need: need remaining: remaining))
       ((= remaining 0) 0)
       (else
        (let* ((want (fx- end start))
               (end
                (if (> want remaining)
                  (fx+ start remaining)
                  end))
               (read (self.reader.read output start end need)))
          (set! self.remaining (- remaining read))
          read)))))
  interface: Reader)

(defmethod {close delimited-reader}
  (lambda (self)
    (self.reader.close))
  interface: Closer)

(@implement Closer delimited-reader)
(@implement Reader delimited-reader)
