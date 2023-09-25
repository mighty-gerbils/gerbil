;;; -*- Gerbil -*-
;;; © vyzo
;;; delimited input buffers
(import :std/error
        ../interface
        ./types
        ./input)
(export #t)

(def (bio-delimited-read-bytes delim output output-start output-end input-need)
  (let (remaining (&delimited-input-buffer-remaining delim))
    (cond
     ((fx> input-need remaining)
      (raise-io-error BufferedReader-read-bytes "input limit exceeded" input-need remaining))
     ((fx= remaining 0) 0)
     (else
      (let ((want (fx- output-end output-start))
            (in (&delimited-input-buffer-in delim)))
        (if (fx<= want remaining)
          (let (read
                (if (input-buffer? in)
                  (bio-read-bytes in output output-start output-end input-need)
                  (bio-delimited-read-bytes in output output-start output-end input-need)))
            (set! (&delimited-input-buffer-remaining delim)
              (fx- remaining read))
            read)
          (let* ((output-end (fx+ output-start remaining))
                 (read
                  (if (input-buffer? in)
                    (bio-read-bytes in output output-start output-end input-need)
                    (bio-delimited-read-bytes in output output-start output-end input-need))))
            (set! (&delimited-input-buffer-remaining delim)
              (fx- remaining read))
            read)))))))

(def (bio-delimited-read-u8 delim)
  (let (remaining (&delimited-input-buffer-remaining delim))
    (if (fx> remaining 0)
      (let* ((in (&delimited-input-buffer-in delim))
             (u8
              (if (input-buffer? in)
                (bio-read-u8 in)
                (bio-delimited-read-u8 in))))
        (set! (&delimited-input-buffer-remaining delim)
          (fx- remaining 1))
        u8)
      '#!eof)))

(def (bio-delimited-peek-u8 delim)
  (let (remaining (&delimited-input-buffer-remaining delim))
    (if (fx> remaining 0)
      (let (in (&delimited-input-buffer-in delim))
        (if (input-buffer? in)
          (bio-peek-u8 in)
          (bio-delimited-peek-u8 in)))
      '#!eof)))

(def (bio-delimited-put-back delim previous-input)
  (let* ((remaining (&delimited-input-buffer-remaining delim))
         (new-remaining
          (fx+ (if (pair? previous-input) (length previous-input) 1)
               remaining))
         (in (&delimited-input-buffer-in delim)))
    (if (input-buffer? in)
      (bio-put-back in previous-input)
      (bio-delimited-put-back in previous-input))
    (set! (&delimited-input-buffer-remaining delim)
      new-remaining)))


(def (bio-delimited-skip-input delim count)
  (let (remaining (&delimited-input-buffer-remaining delim))
    (if (fx> count remaining)
      (raise-io-error BufferedReader-read-bytes "input limit exceeded" count remaining)
      (let (in (&delimited-input-buffer-in delim))
        (if (input-buffer? in)
          (bio-skip-input in count)
          (bio-delimited-skip-input in count))
        (set! (&delimited-input-buffer-remaining delim)
          (fx- remaining count))
        (void)))))

(def (bio-delimited-delimit-input delim limit)
  (BufferedReader (make-delimited-input-buffer delim limit limit)))

(def (bio-delimited-reset-input! delim reader)
  (let ((limit (&delimited-input-buffer-limit delim))
        (in (&delimited-input-buffer-in delim)))
    (set! (&delimited-input-buffer-remaining delim) limit)
    (if (input-buffer? in)
      (bio-reset-input! in reader)
      (bio-delimited-reset-input! in reader))))

(def (bio-delimited-close delim)
  (let (in (&delimited-input-buffer-in delim))
    (if (input-buffer? in)
      (bio-close-input in)
      (bio-delimited-close in))))
