;;; -*- Gerbil -*-
;;; © vyzo
;;; delimited readers
(import :std/error
        :std/contract
        ./interface)
(export (rename: open-delimited-reader delimited-reader)
        (rename: open-delimited-string-reader delimited-string-reader))
(declare (not safe))

(defstruct delimited-reader (reader remaining)
  final: #t unchecked: #t)

(defstruct delimited-string-reader (reader remaining)
  final: #t unchecked: #t)

(def (open-delimited-reader reader limit)
  (unless (Reader? reader)
    (raise-bad-argument open-delimited-reader "Reader" reader))
  (Reader (make-delimited-reader reader limit)))

(def (open-delimited-string-reader reader limit)
  (unless (StringReader? reader)
    (raise-bad-argument open-delimited-string-readeer "StringReader" reader))
  (StringReader (make-delimited-string-reader reader limit)))

(defmethod {read delimited-reader}
  (lambda (self output output-start output-end input-need)
    (using (self :- delimited-reader)
      (let (remaining self.remaining)
        (cond
         ((fx> input-need remaining)
          (raise-io-error Reader-read "input limit exceeded" input-need remaining))
         ((fx= remaining 0) 0)
         (else
          (let* ((want (fx- output-end output-start))
                 (output-end
                  (if (fx> want remaining)
                    (fx+ output-start remaining)
                    output-end))
                 (read (&Reader-read self.reader  output output-start output-end input-need)))
            (set! self.remaining (fx- remaining read))
            read)))))))

(defmethod {available-u8 delimited-reader}
  (lambda (self)
    (using (self :- delimited-reader)
      (min self.remaining (BufferedReader-available-u8 self.reader)))))

(defmethod {close delimited-reader}
  (lambda (self)
    (using (self :- delimited-reader)
      (&Reader-close self.reader))))

(defmethod {read-string delimited-string-reader}
  (lambda (self output output-start output-end input-need)
    (using (self :- delimited-reader)
      (let (remaining self.remaining)
        (cond
         ((fx> input-need remaining)
          (raise-io-error StringReader-read-string "input limit exceeded" input-need remaining))
         ((fx= remaining 0) 0)
         (else
          (let* ((want (fx- output-end output-start))
                 (output-end
                  (if (fx> want remaining)
                    (fx+ output-start remaining)
                    output-end))
                 (read (&StringReader-read-string self.reader  output output-start output-end input-need)))
            (set! self.remaining (fx- remaining read))
            read)))))))

(defmethod {available-chars delimited-string-reader}
  (lambda (self)
    (using (self :- delimited-string-reader)
      (min self.remaining (BufferedStringReader-available-chars self.reader)))))

(defmethod {close delimited-string-reader}
  (lambda (self)
    (using (self :- delimited-reader)
      (&StringReader-close self.reader))))
