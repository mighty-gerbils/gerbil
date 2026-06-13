;;; -*- Gerbil -*-
;;; © vyzo
;;; delimited input buffers
(import :std/error
        :std/interface
        ../interface
        ./types
        ./macros
        ./buffer
        ./input)
(export #t)
(declare (not safe) (mostly-fixnum))

(defrule (__check-delimited-open! where delimited-buffer)
  (using (delim delimited-buffer :- delimited-input-buffer)
    (when delim.closed?
      (raise-io-closed where "buffer closed"))))

(def (bio-delimited-read (delim  : delimited-input-buffer)
                         (output : :u8vector)
                         (start  :~ (in-range? 0 (u8vector-length output))
                                 :- :fixnum)
                         (end    :~ (in-range-inclusive? start (u8vector-length output))
                                 :- :fixnum)
                         (need   :~ nonnegative-fixnum?
                                 :- :fixnum))
  => :fixnum
  (__check-delimited-open! delimited-read delim)
  (let (remaining delim.remaining)
    (cond
     ((zero? remaining) 0)
     ((<= need remaining)
      (let* ((want (fx- end start))
             (end
              (if (<= want remaining)
                end
                (fx+ start remaining)))
             (read (__bio-input-buffer-read delim.input output start end need)))
        (set! delim.remaining (- remaining read))
        read))
     (else
      (raise-io-error bio-delimited-read "input limit exceeded" need remaining)))))

(def (bio-delimited-read-u8 (delim : delimited-input-buffer))
  (__check-delimited-open! delimited-read-u8 delim)
  (let (remaining delim.remaining)
    (if (> remaining 0)
      (let (u8 (__bio-input-buffer-read-u8 delim.input))
        (set! delim.remaining (- remaining 1))
        u8)
      '#!eof)))

(def (bio-delimited-peek-u8 (delim : delimited-input-buffer))
  (__check-delimited-open! delimited-peek-u8 delim)
  (let (remaining delim.remaining)
    (if (> remaining 0)
      (__bio-input-buffer-peek-u8 delim.input)
      '#!eof)))

(def (bio-delimited-put-back (delim : delimited-input-buffer) previous-input)
  => :void
  (__check-delimited-open! delimited-peek-u8 delim)
  (let* ((remaining delim.remaining)
         (new-remaining
          (+ (if (pair? previous-input) (length previous-input) 1)
             remaining)))
    (__bio-input-buffer-put-back delim.input previous-input)
    (set! delim.remaining new-remaining)))

(def (bio-delimited-skip (delim : delimited-input-buffer)
                         (count :~ nonnegative-fixnum? :- :fixnum))
  => :void
  (__check-delimited-open! delimited-peek-u8 delim)
  (let (remaining delim.remaining)
    (if (<= count remaining)
      (begin
        (__bio-input-buffer-skip delim.input count)
        (set! delim.remaining (fx- remaining count))
        (void))
      (raise-io-error BufferedReader-read-bytes "input limit exceeded" count remaining))))

(def (bio-delimited-delimit-input (delim : delimited-input-buffer) (limit : :integer))
  => BufferedReader
  (__check-delimited-open! delimited-peek-u8 delim)
  (let (limit (min limit delim.limit))
    (BufferedReader (make-delimited-input-buffer delim limit limit #f))))

(def (bio-delimited-available (delim : delimited-input-buffer)) => :fixnum
  (__check-delimited-open! delimited-peek-u8 delim)
  (min delim.remaining
       (__bio-input-buffer-available delim.input)))

(def (bio-delimited-close (delim : delimited-input-buffer))
  => :void
  (unless delim.closed?
    (set! delim.closed? #t)
    (set! delim.remaining 0)
    (__bio-input-buffer-close delim.input)))

(def (bio-delimited-detach! (delim : delimited-input-buffer))
  (unless delim.closed?
    (when (> delim.remaining 0)
      (bio-delimited-skip delim delim.remaining))
    (set! delim.closed? #t)
    (set! delim.remaining 0)
    (set! delim.input #f)))

(implement
  (Closer
   (delimited-input-buffer
    (close __bio-delimited-close)))
  (Reader
   (delimited-input-buffer
    (read __bio-delimited-read)))
  (PeekableReader
   (delimited-input-buffer
    (read-u8 __bio-delimited-read-u8)
    (peek-u8 __bio-delimited-peek-u8)))
  (BufferedReader
   (delimited-input-buffer
    (available __bio-delimited-available)
    (skip      __bio-delimited-skip)
    (put-back  __bio-delimited-put-back)
    (delimit   __bio-delimited-delimit-input)))
  (DetachableBuffer
   (delimited-input-buffer
    (detach! __bio-delimited-detach!))))

(def (bio-delimit-input (bio : basic-input-buffer)
                        (limit :~ nonnegative-integer? :- :integer))
  => BufferedReader
  (__check-buffer-open! bio-delimit-input bio)
  (BufferedReader (make-delimited-input-buffer bio limit limit #f)))

(defmethod {delimit basic-input-buffer}
  __bio-delimit-input
  interface: BufferedReader)
