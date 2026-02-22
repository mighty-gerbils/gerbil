;;; -*- Gerbil -*-
;;; © vyzo
;;; Buffered IO for builtin ports
(import :std/error
        :std/interface
        :std/iter
        ../interface
        ./types
        ./buffer
        ./cache
        ./macros
        ./input
        ./delimited
        ./output)
(export #t)
(declare (not safe))

(defrule (__check-port-open! where port-buffer)
  (using (pio port-buffer :- basic-port-buffer)
    (when pio.closed?
      (raise-io-closed where "buffer closed"))))

(def (port-read (pio    : port-input-buffer)
                (output : :u8vector)
                (start  :~ (in-range? 0 (u8vector-length output))
                        :- :fixnum)
                (end    :~ (in-range-inclusive? start (u8vector-length output))
                        :- :fixnum)
                (need   :~ nonnegative-fixnum?
                        :- :fixnum))
  => :fixnum
  (__check-port-open! port-read pio)
  (__port-read-bytes pio output start end need))

(def (__port-read-bytes (pio    :- port-input-buffer)
                        (output :- :u8vector)
                        (start  :- :fixnum)
                        (end    :- :fixnum)
                        (need   :- :fixnum))
  => :fixnum
  (if pio.putback
    ;; we have some putback
    (let ((have           (fx- pio.rhi pio.rlo))
          (want           (fx- end start)))
      (cond
       ((fx< have want)
        (subu8vector-move! pio.putback pio.rlo pio.rhi output start)
        (buffer-cache.put! pio.putback)
        (set! pio.putback #f)
        (let* ((start (fx+ start have))
               (need  (fx- need have))
               (rd    (__port-read-bytes pio output start end need)))
          (fx+ have rd)))
       ((fx= have want)
        (subu8vector-move! pio.putback pio.rlo pio.rhi output start)
        (buffer-cache.put! pio.putback)
        (set! pio.putback #f)
        have)
       (else
        (let (putback-end (fx+ pio.rlo want))
          (subu8vector-move! pio.putback pio.rlo putback-end output start)
          (set! pio.rlo putback-end)
          want))))
    (let* ((port-need (if (fx> need 0) need 1))
           ;; 1 to force a read, otherwise it will return 0 if the buffer
           ;; is empty
           (rd (read-subu8vector output start end pio.port port-need)))
      (if (fx< rd need)
        (raise-premature-end-of-input port-read)
        rd))))

(def (port-read-u8 (pio : port-input-buffer))
  (__check-port-open! read-u8 pio)
  (read-u8 pio.port))

(def (port-peek-u8 (pio : port-input-buffer))
  (__check-port-open! read-u8 pio)
  (peek-u8 pio.port))

(def (port-skip (pio : port-input-buffer)
                (count :~ nonnegative-fixnum? :- :fixnum))
  => :void
  (__check-buffer-open! port-skip pio)
  (__port-skip! pio count))

(def (port-put-back (pio : port-input-buffer) (previous-input :~ (previous-input? fixnum?)))
  => :void
  (if (fixnum? previous-input)
    (__port-put-back-one pio previous-input)
    (__port-put-back-many pio previous-input)))

(def (port-put-back-one (pio : port-input-buffer) (u8 : :fixnum) (min-size 16 : :fixnum))
  => :void
  (if pio.putback
    (let (putback-len (u8vector-length pio.putback))
      (cond
       ((fx< pio.rhi putback-len)
        (u8vector-set! pio.putback pio.rhi u8)
        (set! pio.rhi (fx+ pio.rhi 1)))
       ((fx> pio.rlo 0)
        (subu8vector-move! pio.putback pio.rlo pio.rhi pio.putback 0)
        (set! pio.rhi (fx- pio.rhi pio.rlo))
        (u8vector-set! pio.putback pio.rhi u8)
        (set! pio.rhi (fx+ pio.rhi 1))
        (set! pio.rlo 0))
       (else
        (let (new-buf
              (buffer-cache.get
               (fxmax (fx* 2 putback-len) (fx+ putback-len min-size))))
          (subu8vector-move! pio.putback 0 putback-len new-buf 0)
          (u8vector-set! new-buf pio.rhi u8)
          (set! pio.rhi (fx+ pio.rhi 1))
          (buffer-cache.put! pio.putback)
          (set! pio.putback new-buf)))))
    (let (buf (buffer-cache.get (fxmax 16 min-size)))
      (u8vector-set! buf 0 u8)
      (set! pio.rlo 0)
      (set! pio.rhi 1)
      (set! pio.putback buf))))

(def (port-put-back-many (pio : port-input-buffer) (previous-input : :list))
  => :void
  (let (min-size (length previous-input))
    (for (u8 (in-list previous-input) : :fixnum)
      (__port-put-back-one pio u8 min-size))))

(def (__port-skip! (pio :- port-input-buffer) (count :- :fixnum))
  => :void
  (if pio.putback
    (let (have (fx- pio.rhi pio.rlo))
      (cond
       ((fx< have count)
        (buffer-cache.put! pio.putback)
        (set! pio.putback #f)
        (__port-skip! pio (fx- count have)))
       ((fx= have count)
        (buffer-cache.put! pio.putback)
        (set! pio.putback #f))
       (else
        (set! pio.rlo (fx+ pio.rlo count)))))
    (let (buf (buffer-cache.get count))
      (read-subu8vector buf 0 count pio.port)
      (buffer-cache.put! buf))))

(def (port-available (pio : port-input-buffer))
  => :fixnum
  (using (port pio.port : :byte-port)
    (fx- port.rhi port.rlo)))

(def (port-delimit (pio : port-input-buffer)
                   (limit :~ nonnegative-integer? :- :integer))
  => BufferedReader
  (__check-port-open! port-delimit-input pio)
  (BufferedReader (make-delimited-input-buffer pio limit limit #f)))

(def (port-close-input (pio : port-input-buffer))
  => :void
  (unless pio.closed?
    (set! pio.closed? #t)
    (when pio.putback
      (buffer-cache.put! pio.putback)
      (set! pio.putback #f))
    (let (exn #f)
      (with-catch (lambda (e) (set! exn e)) (cut close-input-port pio.port))
      (set! pio.port #f)
      (when exn (raise exn)))))

(def (port-write (pio   : port-output-buffer)
                 (input : :u8vector)
                 (start :~ (in-range? 0 (u8vector-length input))
                        :- :fixnum)
                 (end   :~ (in-range-inclusive? start (u8vector-length input))
                        :- :fixnum))
  => :fixnum
  (__check-port-open! port-write pio)
  (write-subu8vector input start end pio.port))

(def (port-write-u8 (pio : port-output-buffer) (u8 :~ byte? :- :fixnum))
  => :fixnum
  (__check-port-open! port-write-u8 pio)
  (write-u8 u8 pio.port)
  1)

(def (port-flush (pio : port-output-buffer))
  => :void
  (__check-port-open! port-flush pio)
  (force-output pio.port))

(def (port-close-output (pio : port-output-buffer))
  => :void
  (unless pio.closed?
    (set! pio.closed? #t)
    (let ((flush-exn #f) (close-exn #f))
      (with-catch (lambda (e) (set! flush-exn e)) (cut force-output pio.port))
      (with-catch (lambda (e) (set! close-exn e)) (cut close-output-port pio.port))
      (set! pio.port #f)
      (cond
       ((or close-exn flush-exn) => raise)))))

(def (port-detach! (pio : port-output-buffer))
  => :void
  (unless pio.closed?
    (unwind-protect
      (__port-flush pio)
      (set! pio.closed? #t)
      (set! pio.port #f))))

(implement
  (Closer
   (port-input-buffer
    (close __port-close-input))
   (port-output-buffer
    (close __port-close-output)))
  (Reader
   (port-input-buffer
    (read __port-read)))
  (PeekableReader
   (port-input-buffer
    (read-u8 __port-read-u8)
    (peek-u8 __port-peek-u8)))
  (BufferedReader
   (port-input-buffer
    (available __port-available)
    (skip      __port-skip)
    (put-back  __port-put-back)
    (delimit   __port-delimit)))
  (Writer
   (port-output-buffer
    (write __port-write)))
  (BufferedWriter
   (port-output-buffer
    (write-u8 __port-write-u8)
    (flush    __port-flush)))
  (DetachableBuffer
   (port-output-buffer
    (detach!   __port-detach!))))
