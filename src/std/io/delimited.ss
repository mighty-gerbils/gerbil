;;; -*- Gerbil -*-
;;; © vyzo
;;; delimited readers
(import :std/error
        ./interface)
(export (rename: open-delimited-reader delimited-reader)
        (rename: open-delimited-string-reader delimited-string-reader))
(declare (not safe))

(defstruct delimited-reader ((reader    :- Reader)
                             (remaining :- :fixnum))
  final: #t )

(defstruct delimited-string-reader ((reader    :- StringReader)
                                    (remaining :- :fixnum))
  final: #t )

(def (open-delimited-reader (reader : Reader)
                            (limit :~ nonnegative-fixnum? :- :fixnum))
  => Reader
  (Reader (make-delimited-reader reader limit)))

(def (open-delimited-string-reader (reader : StringReader)
                                   (limit :~ nonnegative-fixnum? :- :fixnum))
  => StringReader
  (StringReader (make-delimited-string-reader reader limit)))

(defmethod {read delimited-reader}
  (lambda (self (output       :- :u8vector)
           (output-start :- :fixnum)
           (output-end   :- :fixnum)
           (input-need   :- :fixnum))
    (let (remaining self.remaining)
      (cond
       ((fx> input-need remaining)
        (raise-io-error read "input limit exceeded" input-need remaining))
       ((fx= remaining 0) 0)
       (else
        (let* ((want (fx- output-end output-start))
               (output-end
                (if (fx> want remaining)
                  (fx+ output-start remaining)
                  output-end))
               (read (self.reader.read output output-start output-end input-need)))
          (set! self.remaining (fx- remaining read))
          read))))))

(defmethod {close delimited-reader}
  (lambda (self)
    (self.reader.close)))

(defmethod {read-string delimited-string-reader}
  (lambda (self (output       :- :string)
           (output-start :- :fixnum)
           (output-end   :- :fixnum)
           (input-need   :- :fixnum))
    (let (remaining self.remaining)
      (cond
       ((fx> input-need remaining)
        (raise-io-error read-string "input limit exceeded" input-need remaining))
       ((fx= remaining 0) 0)
       (else
        (let* ((want (fx- output-end output-start))
               (output-end
                (if (fx> want remaining)
                  (fx+ output-start remaining)
                  output-end))
               (read (self.reader.read-string output output-start output-end input-need)))
          (set! self.remaining (fx- remaining read))
          read))))))

(defmethod {close delimited-string-reader}
  (lambda (self)
    (self.reader.close)))
