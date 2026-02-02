;;; -*- Gerbil -*-
;;; © vyzo
;;; delimited input buffers
(import :std/error
        :std/interface
        ../interface
        ./types
        ./macros
        ./input)
(export #t)
(declare (not safe) (mostly-fixnum))

(def (bio-delimited-read (delim        : delimited-input-buffer)
                         (output       : :u8vector)
                         (output-start :~ (in-range? 0 (u8vector-length u8v))
                                       :- :fixnum)
                         (output-end   :~ (in-range-inclusive? start (u8vector-length u8v))
                                       :- :fixnum)
                         (input-need   :~ nonnegative-fixnum?
                                       :- :fixnum))
  => :fixnum
  (let (remaining delim.remaining)
    (cond
     ((zero? remaining) 0)
     ((<= input-need remaining)
      (let* ((want (fx- output-end output-start))
             (output-end
              (if (<= want remaining)
                output-end
                (fx+ output-start remaining)))
             (read (__bio-input-buffer-read delim.in output output-start output-end input-need)))
        (set! delim.remaining (- remaining read))
        read))
     (else
      (raise-io-error bio-delimited-read "input limit exceeded" input-need remaining)))))

(def (bio-delimited-read-u8 (delim : delimited-input-buffer))
  (let (remaining delim.remaining)
    (if (> remaining 0)
      (let (u8 (__bio-input-buffer-read-u8 delim.in))
        (set! delim.remaining (- remaining 1))
        u8)
      '#!eof)))

(def (bio-delimited-peek-u8 (delim : delimited-input-buffer))
  (let (remaining delim.remaining)
    (if (> remaining 0)
      (__bio-input-buffer-peek-u8 delim.in)
      '#!eof)))

(def (bio-delimited-put-back (delim : delimited-input-buffer) previous-input)
  => :void
  (let* ((remaining delim.remaining)
         (new-remaining
          (+ (if (pair? previous-input) (length previous-input) 1)
             remaining))
         (in delim.in))
    (__bio-input-buffer-put-back delim.in previous-input)
    (set! delim.remaining new-remaining)))

(def (bio-delimited-skip-input (delim : delimited-input-buffer)
                               (count :~ nonnegative-fixnum? :- :fixnum))
  => :void
  (let (remaining delim.remaining)
    (if (<= count remaining)
      (begin
        (__bio-input-buffer-skip delim.in count)
        (set! delim.remaining (fx- remaining count))
        (void))
      (raise-io-error BufferedReader-read-bytes "input limit exceeded" count remaining))))

(def (bio-delimited-delimit-input (delim : delimited-input-buffer) (limit : integer))
  => BufferedReader
  (BufferedReader (make-delimited-input-buffer delim limit limit)))

(def (bio-delimited-reset-input! (delim : delimited-input-buffer) (reader : Reader) close?)
  => :void
  (set! delim.remaining delim.limit)
  (__bio-input-buffer-reset! delim.in reader close?))

(def (bio-delimited-available (delim : delimited-input-buffer)) => :fixnum
  (min delim.remaining
       (__bio-input-buffer-available delim.in)))

(def (bio-delimited-close (delim : delimited-input-buffer))
  => :void
  (set! delim.remaining 0)
  (__bio-buffer-close delim.in))
