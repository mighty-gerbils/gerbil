;;; -*- Gerbil -*-
;;; © vyzo
;;; delimited string input buffers
(import :std/error
        :std/contract
        ../interface
        ./types
        ./input)
(export #t)

(def (strbuf-delimited-read-string delim output output-start output-end input-need)
  (using (delim :- delimited-string-input-buffer)
    (let (remaining delim.remaining)
      (cond
       ((fx> input-need remaining)
        (raise-io-error BufferedReader-read-string "input limit exceeded" input-need remaining))
       ((fx= remaining 0) 0)
       (else
        (let ((want (fx- output-end output-start))
              (in delim.in))
          (if (fx<= want remaining)
            (let (read
                  (if (string-input-buffer? in)
                    (strbuf-read-string in output output-start output-end input-need)
                    (strbuf-delimited-read-string in output output-start output-end input-need)))
              (set! delim.remaining (fx- remaining read))
              read)
            (let* ((output-end (fx+ output-start remaining))
                   (read
                    (if (string-input-buffer? in)
                      (strbuf-read-string in output output-start output-end input-need)
                      (strbuf-delimited-read-string in output output-start output-end input-need))))
              (set! delim.remaining (fx- remaining read))
              read))))))))

(def (strbuf-delimited-read-char delim)
  (using (delim :- delimited-string-input-buffer)
    (let (remaining delim.remaining)
      (if (fx> remaining 0)
        (let* ((in (&delimited-string-input-buffer-in delim))
               (char (if (string-input-buffer? in)
                       (strbuf-read-char in)
                       (strbuf-delimited-read-char in))))
          (set! delim.remaining (fx- remaining 1))
          char)
        '#!eof))))

(def (strbuf-delimited-peek-char delim)
  (using (delim :- delimited-string-input-buffer)
    (let (remaining delim.remaining)
      (if (fx> remaining 0)
        (let (in delim.in)
          (if (string-input-buffer? in)
            (strbuf-peek-char in)
            (strbuf-delimited-peek-char in)))
        '#!eof))))

(def (strbuf-delimited-put-back delim previous-input)
  (using (delim :- delimited-string-input-buffer)
    (let* ((remaining delim.remaining)
           (new-remaining
            (fx+ (if (pair? previous-input) (length previous-input) 1)
                 remaining))
           (in delim.in))
      (if (string-input-buffer? in)
        (strbuf-put-back in previous-input)
        (strbuf-delimited-put-back in previous-input))
      (set! delim.remaining new-remaining))))

(def (strbuf-delimited-skip-input delim count)
  (using (delim :- delimited-string-input-buffer)
    (let (remaining delim.remaining)
      (if (fx> count remaining)
        (raise-io-error BufferedReader-read-string "input limit exceeded" count remaining)
        (let (in delim.in)
          (if (string-input-buffer? in)
            (strbuf-skip-input in count)
            (strbuf-delimited-skip-input in count))
          (set! delim.remaining (fx- remaining count))
          (void))))))

(def (strbuf-delimited-delimit-input delim limit)
  (BufferedReader (make-delimited-string-input-buffer delim limit limit)))

(def (strbuf-delimited-reset-input! delim reader close?)
  (using (delim :- delimited-string-input-buffer)
    (let (in delim.in)
      (if (string-input-buffer? in)
        (strbuf-reset-input! in reader close?)
        (strbuf-delimited-reset-input! in reader close?)))
    (set! delim.remaining delim.limit)))

(def (strbuf-delimited-available delim)
  (using (delim :- delimited-string-input-buffer)
    (let (in delim.in)
      (min delim.remaining
           (if (string-input-buffer? in)
             (strbuf-available in)
             (strbuf-delimited-available in))))))

(def (strbuf-delimited-close delim)
  (using (delim :- delimited-string-input-buffer)
    (let (in delim.in)
      (if (string-input-buffer? in)
        (strbuf-close-input in)
        (strbuf-delimited-close in)))))
