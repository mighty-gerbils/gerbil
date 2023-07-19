;;; -*- Gerbil -*-
;;; © vyzo
;;; delimited readers
(import :std/error
        ./interface)
(export (rename: open-delimited-reader delimited-reader))
(declare (not safe))

(defstruct delimited-reader (reader remaining)
  final: #t unchecked: #t)

(def (open-delimited-reader reader limit)
  (unless (Reader? reader)
    (error "expected Reader" reader))
  (Reader (make-delimited-reader reader limit)))

(defmethod {read delimited-reader}
  (lambda (self output output-start output-end input-need)
    (let (remaining (&delimited-reader-remaining self))
      (cond
       ((fx> input-need remaining)
        (raise-io-error 'Reader-read "input limit exceeded" input-need remaining))
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
