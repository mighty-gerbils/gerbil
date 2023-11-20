;;; -*- Gerbil -*-
;;; © vyzo
;;; delimited input buffers
(import :std/error
        :std/contract
        ../interface
        ./types
        ./input)
(export #t)

(def (bio-delimited-read-bytes delim output output-start output-end input-need)
  (using (delim :- delimited-input-buffer)
    (let (remaining delim.remaining)
      (cond
       ((fx> input-need remaining)
        (raise-io-error BufferedReader-read-bytes "input limit exceeded" input-need remaining))
       ((fx= remaining 0) 0)
       (else
        (let ((want (fx- output-end output-start))
              (in delim.in))
          (if (fx<= want remaining)
            (let (read
                  (if (input-buffer? in)
                    (bio-read-bytes in output output-start output-end input-need)
                    (bio-delimited-read-bytes in output output-start output-end input-need)))
              (set! delim.remaining (fx- remaining read))
              read)
            (let* ((output-end (fx+ output-start remaining))
                   (read
                    (if (input-buffer? in)
                      (bio-read-bytes in output output-start output-end input-need)
                      (bio-delimited-read-bytes in output output-start output-end input-need))))
              (set! delim.remaining (fx- remaining read))
              read))))))))

(def (bio-delimited-read-u8 delim)
  (using (delim :- delimited-input-buffer)
    (let (remaining delim.remaining)
      (if (fx> remaining 0)
        (let* ((in delim.in)
               (u8 (if (input-buffer? in)
                     (bio-read-u8 in)
                     (bio-delimited-read-u8 in))))
          (set! delim.remaining (fx- remaining 1))
          u8)
        '#!eof))))

(def (bio-delimited-peek-u8 delim)
  (using (delim :- delimited-input-buffer)
    (let (remaining delim.remaining)
      (if (fx> remaining 0)
        (let (in delim.in)
          (if (input-buffer? in)
            (bio-peek-u8 in)
            (bio-delimited-peek-u8 in)))
        '#!eof))))

(def (bio-delimited-put-back delim previous-input)
  (using (delim :- delimited-input-buffer)
    (let* ((remaining delim.remaining)
           (new-remaining
            (fx+ (if (pair? previous-input) (length previous-input) 1)
                 remaining))
           (in delim.in))
      (if (input-buffer? in)
        (bio-put-back in previous-input)
        (bio-delimited-put-back in previous-input))
      (set! delim.remaining new-remaining))))

(def (bio-delimited-skip-input delim count)
  (using (delim :- delimited-input-buffer)
    (let (remaining delim.remaining)
      (if (fx> count remaining)
        (raise-io-error BufferedReader-read-bytes "input limit exceeded" count remaining)
        (let (in delim.in)
          (if (input-buffer? in)
            (bio-skip-input in count)
            (bio-delimited-skip-input in count))
          (set! delim.remaining (fx- remaining count))
          (void))))))

(def (bio-delimited-delimit-input delim limit)
  (BufferedReader (make-delimited-input-buffer delim limit limit)))

(def (bio-delimited-reset-input! delim reader close?)
  (using (delim :- delimited-input-buffer)
    (let ((limit delim.limit)
          (in delim.in))
      (set! delim.remaining limit)
      (if (input-buffer? in)
        (bio-reset-input! in reader close?)
        (bio-delimited-reset-input! in reader close?)))))

(def (bio-delimited-available-u8 delim)
  (using (delim :- delimited-input-buffer)
    (let (in delim.in)
      (min delim.remaining
           ((if (input-buffer? in)
              bio-available-u8
              bio-delimited-available-u8)
            in)))))

(def (bio-delimited-close delim)
  (using (delim :- delimited-input-buffer)
    (let (in delim.in)
      (if (input-buffer? in)
        (bio-close-input in)
        (bio-delimited-close in)))))
