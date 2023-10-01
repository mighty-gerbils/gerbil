;;; -*- Gerbil -*-
;;; © vyzo
;;; buffered string reader implementation
(import :std/error
        :std/contract
        :std/sugar
        (only-in :std/srfi/1 reverse!)
        ../interface
        ./types)
(export #t)
(declare (not safe))

(defrule (strbuf-input-fill! input buf need)
  (using (strbuf input :- string-input-buffer)
    (let (read (&StringReader-read-string strbuf.reader buf 0 (string-length buf) need))
      (set! strbuf.rlo 0)
      (set! strbuf.rhi read)
      read)))

(defrule (strbuf-input-advance! input new-rlo rhi)
  (using (strbuf input :- string-input-buffer)
    (set! strbuf.rlo new-rlo)))

(defrule (strbuf-input-consume! input)
  (using (strbuf input :- string-input-buffer)
    (set! strbuf.rlo 0)
    (set! strbuf.rhi 0)))

(def (strbuf-peek-char strbuf)
  (using (strbuf :- string-input-buffer)
    (let ((rlo strbuf.rlo)
          (rhi strbuf.rhi)
          (buf strbuf.buf))
      (if (fx< rlo rhi)
        (string-ref buf rlo)
        ;; empty buffer
        (let (read (strbuf-input-fill! strbuf buf 0))
          (if (fx> read 0)
            (string-ref buf 0)
            '#!eof))))))

(def (strbuf-read-char strbuf)
  (using (strbuf :- string-input-buffer)
    (let ((rlo strbuf.rlo)
          (rhi strbuf.rhi)
          (buf strbuf.buf))
      (if (fx< rlo rhi)
        (let ((char (string-ref buf rlo))
              (rlo+1 (fx+ rlo 1)))
          (strbuf-input-advance! strbuf rlo+1 rhi)
          char)
        ;; empty buffer
        (let (read (strbuf-input-fill! strbuf buf 0))
          (if (fx> read 0)
            (let (char (string-ref buf 0))
              (strbuf-input-advance! strbuf 1 read)
              char)
            '#!eof))))))

(def (strbuf-read-string strbuf output output-start output-end input-need)
  (using (strbuf :- string-input-buffer)
    (let* ((input-want (fx- output-end output-start))
           (rlo strbuf.rlo)
           (rhi strbuf.rhi)
           (rlo+want (fx+ rlo input-want))
           (rlo+need (fx+ rlo input-need))
           (buf strbuf.buf))
      (cond
       ((fx<= rlo+want rhi)
        ;; have wanted
        (substring-move! buf rlo rlo+want output output-start)
        (strbuf-input-advance! strbuf rlo+want rhi)
        input-want)
       ((and (fx> input-need 0) (fx<= rlo+need rhi))
        ;; have needed
        (substring-move! buf rlo rlo+need output output-start)
        (strbuf-input-advance! strbuf rlo+need rhi)
        input-need)
       ((fx< rlo rhi)
        ;; have some, try to read at least needed
        (substring-move! buf rlo rhi output output-start)
        (strbuf-input-consume! strbuf)
        (let* ((have (fx- rhi rlo))
               (output-start (fx+ output-start have))
               (input-need
                (if (fx> input-need 0)
                  (if (fx> input-need have)
                    (fx- input-need have)
                    0)
                  0))
               (read (strbuf-read-string strbuf output output-start output-end input-need)))
          (fx+ have read)))
       ;; empty buffer (rlo=rhi=0)
       ((or (fx>= input-need (string-length buf)) fx>= input-want (string-length buf))
        ;; needed/wanted bytes exceed buffer size, read unbuffered
        (&StringReader-read-string strbuf.reader output output-start output-end input-need))
       (else
        (let (read (strbuf-input-fill! strbuf buf input-need))
          (if (fx> read 0)
            (strbuf-read-string strbuf output output-start output-end input-need)
            0)))))))

(def (strbuf-put-back strbuf previous-input)
  (if (pair? previous-input)
    (strbuf-put-back-many strbuf previous-input)
    (strbuf-put-back-one strbuf previous-input)))

(def (strbuf-put-back-one strbuf char)
  (using (strbuf :- string-input-buffer)
    (let ((rlo strbuf.rlo)
          (rhi strbuf.rhi)
          (buf strbuf.buf))
      (cond
       ((fx> rlo 0)
        ;; enough space
        (let (new-rlo (fx- rlo 1))
          (string-set! buf new-rlo char)
          (set! strbuf.rlo new-rlo)
          (void)))
       ;; rlo=0
       ((fx> rhi 0)
        ;; we need to move the buffer contents to the right
        (let ((rhi+1 (fx+ rhi 1))
              (buflen (string-length buf)))
          (if (fx> rhi+1 buflen)
            ;; uh oh, we need to grow the buffer; do it by a page
            (let (new-buf (make-string (fx+ buflen 1024)))
              (substring-move! buf 0 rhi new-buf 1)
              (string-set! new-buf 0 char)
              (set! strbuf.buf new-buf)
              (set! strbuf.rhi rhi+1)
              (void))
            (begin
              (substring-move! buf 0 rhi buf 1)
              (string-set! buf 0 char)
              (set! strbuf.rhi rhi+1)
              (void)))))
       (else
        ;; empty buffer
        (string-set! buf 0 char)
        (set! strbuf.rlo 0)
        (set! strbuf.rhi 1)
        (void))))))

(def (strbuf-put-back-many strbuf previous-input)
  (using (strbuf :- string-input-buffer)
    (def (put-back! buf rlo previous-input)
      (let lp ((rest previous-input) (i rlo))
        (match rest
          ([char . rest]
           (string-set! buf i char)
           (lp rest (fx+ i 1)))
          (else (void)))))

    (let ((rlo strbuf.rlo)
          (rhi strbuf.rhi)
          (buf strbuf.buf)
          (prevlen (length previous-input)))
      (cond
       ((fx>= rlo prevlen)
        (let (new-rlo (fx- rlo prevlen))
          (put-back! buf new-rlo previous-input)
          (set! strbuf.rlo new-rlo)
          (void)))
       ((fx> rlo 0)
        ;; we need to move the buffer contents to the right
        (let* ((shift (fx- prevlen rlo))
               (rhi+shift (fx+ rhi shift))
               (buflen (string-length buf)))
          (if (fx> rhi+shift buflen)
            ;; uh oh we need to grow the buffer; do it by a page
            (let (new-buflen (fx+ buflen 4096))
              (while (fx< new-buflen rhi+shift)
                ;; ok not enough, add more pages (very unlikely, but still)
                (set! new-buflen (fx+ new-buflen 1024)))
              (let (new-buf (make-string new-buflen))
                (substring-move! buf rlo rhi new-buf prevlen)
                (put-back! new-buf 0 previous-input)
                (set! strbuf.buf new-buf)
                (set! strbuf.rhi rhi+shift)
                (void)))
            (begin
              (substring-move! buf rlo rhi buf prevlen)
              (put-back! buf 0 previous-input)
              (set! strbuf.rlo 0)
              (set! strbuf.rhi rhi+shift)
              (void)))))
       ;; rlo=0
       ((fx> rhi 0)
        ;; we need to move the buffer contents to the right
        (let ((rhi+shift (fx+ rhi prevlen))
              (buflen (string-length buf)))
          (if (fx> rhi+shift buflen)
            ;; uh oh we need to grow the buffer; do it by a page
            (let (new-buflen (fx+ buflen 1024))
              (while (fx< new-buflen rhi+shift)
                ;; ok not enough, add more pages (very unlikely, but still)
                (set! new-buflen (fx+ new-buflen 1024)))
              (let (new-buf (make-string new-buflen))
                (substring-move! buf 0 rhi new-buf prevlen)
                (put-back! new-buf 0 previous-input)
                (set! strbuf.buf new-buf)
                (set! strbuf.rhi rhi+shift)
                (void)))
            (begin
              (substring-move! buf 0 rhi buf prevlen)
              (put-back! buf 0 previous-input)
              (set! strbuf.rhi rhi+shift)
              (void)))))
       ;; rlo=rhi=0
       (else
        (let (buflen (string-length buf))
          (if (fx> prevlen buflen)
            ;; uh oh we need to grow the buffer; do it by a page
            (let (new-buflen (fx+ buflen 1024))
              (while (fx< new-buflen prevlen)
                ;; ok not enough, add more pages (very unlikely, but still)
                (set! new-buflen (fx+ new-buflen 4096)))
              (let (new-buf (make-string new-buflen))
                (put-back! new-buf 0 previous-input)
                (set! strbuf.buf new-buf)
                (set! strbuf.rhi prevlen)
                (void)))
            (begin
              (put-back! buf 0 previous-input)
              (set! strbuf.rhi prevlen)
              (void)))))))))

(def (strbuf-skip-input strbuf count)
  (using (strbuf :- string-input-buffer)
    (when (fx> count 0)
      (let* ((rlo strbuf.rlo)
             (rhi strbuf.rhi)
             (have (fx- rhi rlo)))
        (if (fx>= have count)
          (let (rlo+count (fx+ rlo count))
            (strbuf-input-advance! strbuf rlo+count rhi)
            (void))
          (begin
            (when (fx> have 0)
              (strbuf-input-consume! strbuf))
            (let* ((buf strbuf.buf)
                   (buflen (string-length buf)))
              (let lp ((skip (fx- count have)))
                (cond
                 ((fx= skip 0) (void))
                 ((fx<= skip buflen)
                  (&StringReader-read-string strbuf.reader buf 0 skip skip)
                  (void))
                 (else
                  (&StringReader-read-string strbuf.reader buf 0 buflen buflen)
                  (lp (fx- skip buflen))))))))))))

(def (strbuf-delimit-input strbuf limit)
  (BufferedStringReader (make-delimited-string-input-buffer strbuf limit limit)))

(def (strbuf-reset-input! strbuf reader)
  (using (strbuf :- string-input-buffer)
    (let (reader (StringReader reader))
      (strbuf-close-input strbuf)
      (strbuf-input-consume! strbuf)
      (set! strbuf.reader reader)
      (set! strbuf.closed? #f)
      (void))))

(def (strbuf-close-input strbuf)
  (using (strbuf :- string-input-buffer)
    (unless strbuf.closed?
      (set! strbuf.closed? #t)
      (&StringReader-close strbuf.reader))))
