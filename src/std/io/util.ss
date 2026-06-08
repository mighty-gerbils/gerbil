;;; -*- Gerbil -*-
;;; © vyzo
;;; stdio utilities
(import :std/error
        :std/iter
        ./interface
        ./bio/cache)
(export io-copy!
        read-all-from-reader
        append-u8vectors)

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

(def (read-all-from-reader (reader : Reader)
                           (buffer-size small-buffer-size : :fixnum))
  => :u8vector
  (let loop ((current (buffer-cache.get buffer-size) :- :u8vector)
             (start   0  :- :fixnum)
             (buffers [] :- :list))
    => :u8vector
    (if (fx< start (u8vector-length current))
      (let (rd (reader.read current start))
        (if (fx= rd 0)
          (let (buffers (reverse! buffers))
            (begin0
                (if (fx> start 0)
                  (begin
                    (u8vector-shrink! current start)
                    (if (null? buffers)
                      current
                      (append-u8vectors buffers [current])))
                  (begin
                    (buffer-cache.put! current)
                    (append-u8vectors buffers)))
              (for-each buffer-cache.put! buffers)))
          (loop current
                (fx+ start rd)
                buffers)))
      (loop (buffer-cache.get buffer-size)
            0
            (cons current buffers)))))

(def (append-u8vectors . lsts)
  (let* ((size
          (for/fold (r 0) (lst (in-list lsts))
            (for/fold (r r) (u8v lst)
              (fx+ r (u8vector-length u8v)))))
         (result (make-u8vector size)))
    (for/fold (start 0) (lst (in-list lsts))
      (for/fold (start start) (u8v lst)
        (subu8vector-move! u8v 0 (u8vector-length u8v)
                           result start)
        (fx+ start (u8vector-length u8v))))
    result))
