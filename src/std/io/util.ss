;;; -*- Gerbil -*-
;;; © vyzo
;;; stdio utilities
(import :std/error
        :std/interface
        :std/iter
        ./interface
        ./bio/api
        ./bio/buffer
        ./bio/cache
        ./bio/port)
(export io-copy!
        read-all-from-reader
        append-u8vectors
        call-with-buffered-reader
        with-buffered-reader
        call-with-buffered-writer
        with-buffered-writer)

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

(def (call-with-buffered-reader i f)
  (cond
   ((BufferedReader? i)
    (f i))
   ((is-BufferedReader? i)
    (f (BufferedReader i)))
   ((is-Reader? i)
    (let (reader (open-buffered-reader i))
      (unwind-protect (f reader) (BufferedReader-close reader))))
   ((input-port? i)
    ;; Both binary and textual ports are wrapped lazily.
    ;; Detach restores any unread buffered content to the port.
    (let (reader (open-input-port-buffered-reader i))
      (unwind-protect (f reader)
        (using (buf (interface-instance-object reader) : DetachableBuffer)
          (buf.detach!)))))
   ((string? i)
    (let (reader (open-buffered-reader i))
      (unwind-protect (f reader) (BufferedReader-close reader))))
   ((u8vector? i)
    (let (reader (open-buffered-reader i))
      (unwind-protect (f reader) (BufferedReader-close reader))))
   ((or (eq? i #t) (eq? i 'stdin))
    (call-with-buffered-reader (current-input-port) f))
   ((list? i)
    (call-with-input-file i (lambda (port) (call-with-buffered-reader port f))))
   (else
    (raise-bad-argument call-with-buffered-reader
                        "BufferedReader, Reader, input port, string, u8vector, 'stdin, #t, or file-open args" i))))

(defrules with-buffered-reader ()
  ((_ (rd x) body ...) (call-with-buffered-reader x (lambda ((rd :- BufferedReader)) body ...)))
  ((_ (rd) body ...)   (with-buffered-reader (rd rd) body ...)))

(def (call-with-buffered-writer o f)
  (cond
   ((BufferedWriter? o)
    (unwind-protect (f o) (BufferedWriter-flush o)))
   ((is-BufferedWriter? o)
    (let (writer (BufferedWriter o))
      (unwind-protect (f writer) (BufferedWriter-flush writer))))
   ((is-Writer? o)
    (let (writer (open-buffered-writer o))
      (unwind-protect (f writer) (BufferedWriter-flush writer))))
   ((output-port? o)
    ;; Both binary and textual ports: wraps lazily, flushes complete content on exit.
    (let (writer (open-output-port-buffered-writer o))
      (unwind-protect (f writer) (BufferedWriter-flush writer))))
   ((or (eq? o 'string) (not o))
    (let (writer (open-buffered-writer #f))
      (f writer)
      (get-memory-output-string-utf8 writer)))
   ((eq? o 'u8vector)
    (let (writer (open-buffered-writer #f))
      (f writer)
      (get-memory-output-u8vector writer)))
   ((or (eq? o 'stdout) (eq? o #t))
    (call-with-buffered-writer (current-output-port) f))
   ((or (string? o) (list? o))
    (call-with-output-file o
      (lambda (port) (call-with-buffered-writer port f))))
   (else
    (raise-bad-argument call-with-buffered-writer
                        "BufferedWriter, Writer, output port, 'string, 'u8vector, 'stdout, file path, #f, or #t" o))))

(defrules with-buffered-writer ()
  ((_ (wr x) body ...) (call-with-buffered-writer x (lambda ((wr :- BufferedWriter)) body ...)))
  ((_ (wr) body ...)   (with-buffered-writer (wr wr) body ...)))
