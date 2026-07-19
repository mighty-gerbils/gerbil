;;; -*- Gerbil -*-
;;; © vyzo
;;; delimited readers
(import :std/error
        :std/interface
        ./interface
        ./bio/types
        ./bio/delimited
        ./bio/buffer
        ./bio/cache)
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

(defmethod {detach! delimited-reader}
  (lambda (self)
    ;; if we still have remaining bytes, we have to skip
    ;; them before detaching
    (when (> self.remaining 0)
      (let (buffer (buffer-cache.get (min self.remaining default-buffer-size)))
        (while (> self.remaining 0)
          (let (rd (self.reader.read buffer 0 (min self.remaining (u8vector-length buffer))))
            (when (fx= rd 0)
              (raise-premature-end-of-input delimited-reader-detach!))
            (set! self.remaining (- self.remaining rd))))
        (buffer-cache.put! buffer))))
  interface: DetachableBuffer)

(@implement Closer delimited-reader)
(@implement Reader delimited-reader)
(@implement DetachableBuffer delimited-reader)
