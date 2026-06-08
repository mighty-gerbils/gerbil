;;; -*- Gerbil -*-
;;; © vyzo
;;; delimited readers
(import :std/error
        :std/interface
        ./interface
        ./bio/types
        ./bio/delimited)
(export delimit-reader
        delimit-buffered-reader)
(declare (not safe))

(defstruct delimited-reader ((reader    :- Reader)
                             (remaining :- :integer))
  final: #t)

(def (delimit-reader (reader : Reader)
                     (limit :~ nonnegative-integer? :- :integer))
  => Reader
  (Reader (make-delimited-reader reader limit)))

(def (delimit-buffered-reader (reader : :t)
                              (limit :~ nonnegative-integer? :- :integer))
  => BufferedReader
  (BufferedReader (make-delimited-input-buffer reader limit limit #f)))

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
