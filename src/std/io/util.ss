;;; -*- Gerbil -*-
;;; © vyzo
;;; stdio utilities
(import :std/error
        ./interface
        ./bio/cache)
(export io-copy!)

(def (io-copy! reader writer (buffer-or-size default-buffer-size))
  => :integer
  (let ((reader (Reader reader))
        (writer (Writer writer)))
    (cond
     ((u8vector? buffer-or-size)
      (do-copy reader writer buffer-or-size))
     ((nonnegative-fixnum? buffer-or-size)
      (let (buffer (buffer-cache.get buffer-or-size))
        (begin0 (do-copy reader writer buffer)
          (buffer-cache.put! buffer))))
     (else
      (raise-bad-argument io-copy! "u8vector or nonnegative fixnum" buffer-or-size)))))

(def (do-copy (reader : Reader) (writer : Writer) (buffer : :u8vector))
  => :integer
  (let loop ((copied 0))
    => :integer
    (let (r (reader.read buffer))
      (if (fx= r 0)
        (:- copied :integer)
        (let (w (writer.write buffer 0 r))
          (loop (+ copied w)))))))
