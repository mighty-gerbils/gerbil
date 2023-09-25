;;; -*- Gerbil -*-
;;; © vyzo
;;; delimited readers
(import :std/error
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
    (let (remaining (&delimited-reader-remaining self))
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
               (read (&Reader-read (&delimited-reader-reader self)  output output-start output-end input-need)))
          (set! (&delimited-reader-remaining self)
            (fx- remaining read))
          read))))))

(defmethod {close delimited-reader}
  (lambda (self)
    (&Reader-close (&delimited-reader-reader self))))


(defmethod {read-string delimited-string-reader}
  (lambda (self output output-start output-end input-need)
    (let (remaining (&delimited-string-reader-remaining self))
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
               (read (&StringReader-read-string (&delimited-string-reader-reader self)  output output-start output-end input-need)))
          (set! (&delimited-reader-remaining self)
            (fx- remaining read))
          read))))))

(defmethod {close delimited-string-reader}
  (lambda (self)
    (&StringReader-close (&delimited-string-reader-reader self))))
