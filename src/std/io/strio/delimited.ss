;;; -*- Gerbil -*-
;;; © vyzo
;;; delimited string input buffers
(import :std/error
        ../interface
        ./types
        ./input)
(export #t)

(def (strbuf-delimited-read-string delim output output-start output-end input-need)
  (let (remaining (&delimited-string-input-buffer-remaining delim))
    (cond
     ((fx> input-need remaining)
      (raise-io-error 'BufferedReader-read-string "input limit exceeded" input-need remaining))
     ((fx= remaining 0) 0)
     (else
      (let ((want (fx- output-end output-start))
            (in (&delimited-string-input-buffer-in delim)))
        (if (fx<= want remaining)
          (let (read
                (if (string-input-buffer? in)
                  (strbuf-read-string in output output-start output-end input-need)
                  (strbuf-delimited-read-string in output output-start output-end input-need)))
            (set! (&delimited-string-input-buffer-remaining delim)
              (fx- remaining read))
            read)
          (let* ((output-end (fx+ output-start remaining))
                 (read
                  (if (string-input-buffer? in)
                    (strbuf-read-string in output output-start output-end input-need)
                    (strbuf-delimited-read-string in output output-start output-end input-need))))
            (set! (&delimited-string-input-buffer-remaining delim)
              (fx- remaining read))
            read)))))))

(def (strbuf-delimited-read-char delim)
  (let (remaining (&delimited-string-input-buffer-remaining delim))
    (if (fx> remaining 0)
      (let* ((in (&delimited-string-input-buffer-in delim))
             (u8
              (if (string-input-buffer? in)
                (strbuf-read-char in)
                (strbuf-delimited-read-char in))))
        (set! (&delimited-string-input-buffer-remaining delim)
          (fx- remaining 1))
        u8)
      '#!eof)))

(def (strbuf-delimited-peek-char delim)
  (let (remaining (&delimited-string-input-buffer-remaining delim))
    (if (fx> remaining 0)
      (let (in (&delimited-string-input-buffer-in delim))
        (if (string-input-buffer? in)
          (strbuf-peek-char in)
          (strbuf-delimited-peek-char in)))
      '#!eof)))

(def (strbuf-delimited-put-back delim previous-input)
  (let* ((remaining (&delimited-string-input-buffer-remaining delim))
         (new-remaining
          (fx+ (if (pair? previous-input) (length previous-input) 1)
               remaining))
         (in (&delimited-string-input-buffer-in delim)))
    (if (string-input-buffer? in)
      (strbuf-put-back in previous-input)
      (strbuf-delimited-put-back in previous-input))
    (set! (&delimited-string-input-buffer-remaining delim)
      new-remaining)))


(def (strbuf-delimited-skip-input delim count)
  (let (remaining (&delimited-string-input-buffer-remaining delim))
    (if (fx> count remaining)
      (raise-io-error 'BufferedReader-read-string "input limit exceeded" count remaining)
      (let (in (&delimited-string-input-buffer-in delim))
        (if (string-input-buffer? in)
          (strbuf-skip-input in count)
          (strbuf-delimited-skip-input in count))
        (set! (&delimited-string-input-buffer-remaining delim)
          (fx- remaining count))
        (void)))))

(def (strbuf-delimited-delimit-input delim limit)
  (BufferedReader (make-delimited-string-input-buffer delim limit limit)))

(def (strbuf-delimited-reset-input! delim reader)
  (let ((limit (&delimited-string-input-buffer-limit delim))
        (in (&delimited-string-input-buffer-in delim)))
    (set! (&delimited-string-input-buffer-remaining delim) limit)
    (if (string-input-buffer? in)
      (strbuf-reset-input! in reader)
      (strbuf-delimited-reset-input! in reader))))

(def (strbuf-delimited-close delim)
  (let (in (&delimited-string-input-buffer-in delim))
    (if (string-input-buffer? in)
      (strbuf-close-input in)
      (strbuf-delimited-close in))))
