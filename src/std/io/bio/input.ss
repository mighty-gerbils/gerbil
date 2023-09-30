;;; -*- Gerbil -*-
;;; © vyzo
;;; buffered input
(import :std/error
        :std/sugar
        :std/contract
        ../interface
        ./types)
(export #t)
(declare (not safe))

(defrule (bio-input-advance! input new-rlo rhi)
  (using (bio input :- input-buffer)
    (let (rlo new-rlo)
      (if (fx< rlo rhi)
        (set! (&input-buffer-rlo bio) rlo)
        (bio-input-consume! bio)))))

(defrule (bio-input-consume! input)
  (using (bio input :- input-buffer)
    (set! bio.rlo 0)
    (set! bio.rhi 0)))

(defrule (bio-input-fill! input buf rhi need)
  (using (bio input :- input-buffer)
    (let (read (&Reader-read bio.reader buf rhi (u8vector-length buf) need))
      (set! bio.rhi (fx+ rhi read))
      read)))

(defrule (bio-input-normalize! input buf rlo rhi need)
  (using (bio input :- input-buffer)
    (let (buflen (u8vector-length buf))
      (if (fx<= (fx+ rhi need) buflen)
        rhi
        (let (new-rhi (fx- rhi rlo))
          (subu8vector-move! buf rlo rhi buf 0)
          (set! bio.rlo 0)
          (set! bio.rhi new-rhi)
          new-rhi)))))

(def (bio-read-bytes bio output output-start output-end input-need)
  (using (bio :- input-buffer)
    (let* ((input-want (fx- output-end output-start))
           (rlo bio.rlo)
           (rhi bio.rhi)
           (rlo+want (fx+ rlo input-want))
           (rlo+need (fx+ rlo input-need))
           (buf bio.buf))
      (cond
       ((fx<= rlo+want rhi)
        ;; have wanted
        (subu8vector-move! buf rlo rlo+want output output-start)
        (bio-input-advance! bio rlo+want rhi)
        input-want)
       ((and (fx> input-need 0) (fx<= rlo+need rhi))
        ;; have needed
        (subu8vector-move! buf rlo rlo+need output output-start)
        (bio-input-advance! bio rlo+need rhi)
        input-need)
       ((fx< rlo rhi)
        ;; have some, try to read at least needed
        (subu8vector-move! buf rlo rhi output output-start)
        (bio-input-consume! bio)
        (let* ((have (fx- rhi rlo))
               (output-start (fx+ output-start have))
               (input-need
                (if (fx> input-need 0)
                  (if (fx> input-need have)
                    (fx- input-need have)
                    0)
                  0))
               (read (bio-read-bytes bio output output-start output-end input-need)))
          (fx+ have read)))
       ;; empty buffer (rlo=rhi=0)
       ((or (fx>= input-need (u8vector-length buf)) fx>= input-want (u8vector-length buf))
        ;; needed/wanted bytes exceed buffer size, read unbuffered
        (&Reader-read bio.reader output output-start output-end input-need))
       (else
        (let (read (bio-input-fill! bio buf 0 input-need))
          (if (fx> read 0)
            (bio-read-bytes bio output output-start output-end input-need)
            0)))))))

(def (bio-read-u8 bio)
  (using (bio :- input-buffer)
    (let ((rlo bio.rlo)
          (rhi bio.rhi)
          (buf bio.buf))
      (if (fx< rlo rhi)
        (let ((u8 (u8vector-ref buf rlo))
              (rlo+1 (fx+ rlo 1)))
          (bio-input-advance! bio rlo+1 rhi)
          u8)
        ;; empty buffer
        (let (read (bio-input-fill! bio buf 0 0))
          (if (fx> read 0)
            (let (u8 (u8vector-ref buf 0))
              (bio-input-advance! bio 1 read)
              u8)
            '#!eof))))))

(def (bio-peek-u8 bio)
  (using (bio :- input-buffer)
    (let ((rlo bio.rlo)
          (rhi bio.rhi)
          (buf bio.buf))
      (if (fx< rlo rhi)
        (u8vector-ref buf rlo)
        ;; empty buffer
        (let (read (bio-input-fill! bio buf 0 0))
          (if (fx> read 0)
            (u8vector-ref buf 0)
            '#!eof))))))

(def (bio-put-back bio previous-input)
  (if (pair? previous-input)
    (bio-put-back-many bio previous-input)
    (bio-put-back-one bio previous-input)))

(def (bio-put-back-one bio u8)
  (using (bio :- input-buffer)
    (let ((rlo bio.rlo)
          (rhi bio.rhi)
          (buf bio.buf))
      (cond
       ((fx> rlo 0)
        ;; enough space
        (let (new-rlo (fx- rlo 1))
          (u8vector-set! buf new-rlo u8)
          (set! bio.rlo new-rlo)
          (void)))
       ;; rlo=0
       ((fx> rhi 0)
        ;; we need to move the buffer contents to the right
        (let ((rhi+1 (fx+ rhi 1))
              (buflen (u8vector-length buf)))
          (if (fx> rhi+1 buflen)
            ;; uh oh, we need to grow the buffer; do it by a page
            (let (new-buf (make-u8vector (fx+ buflen 4096)))
              (subu8vector-move! buf 0 rhi new-buf 1)
              (u8vector-set! new-buf 0 u8)
              (set! bio.buf new-buf)
              (set! bio.rhi rhi+1)
              (void))
            (begin
              (subu8vector-move! buf 0 rhi buf 1)
              (u8vector-set! buf 0 u8)
              (set! bio.rhi rhi+1)
              (void)))))
       (else
        ;; empty buffer
        (u8vector-set! buf 0 u8)
        (set! bio.rlo 0)
        (set! bio.rhi 1)
        (void))))))

(def (bio-put-back-many bio previous-input)
  (using (bio :- input-buffer)
    (def (put-back! buf rlo previous-input)
      (let lp ((rest previous-input) (i rlo))
        (match rest
          ([u8 . rest]
           (u8vector-set! buf i u8)
           (lp rest (fx+ i 1)))
          (else (void)))))

    (let ((rlo bio.rlo)
          (rhi bio.rhi)
          (buf bio.buf)
          (prevlen (length previous-input)))
      (cond
       ((fx>= rlo prevlen)
        (let (new-rlo (fx- rlo prevlen))
          (put-back! buf new-rlo previous-input)
          (set! bio.rlo new-rlo)
          (void)))
       ((fx> rlo 0)
        ;; we need to move the buffer contents to the right
        (let* ((shift (fx- prevlen rlo))
               (rhi+shift (fx+ rhi shift))
               (buflen (u8vector-length buf)))
          (if (fx> rhi+shift buflen)
            ;; uh oh we need to grow the buffer; do it by a page
            (let (new-buflen (fx+ buflen 4096))
              (while (fx< new-buflen rhi+shift)
                ;; ok not enough, add more pages (very unlikely, but still)
                (set! new-buflen (fx+ new-buflen 4096)))
              (let (new-buf (make-u8vector new-buflen))
                (subu8vector-move! buf rlo rhi new-buf prevlen)
                (put-back! new-buf 0 previous-input)
                (set! bio.buf new-buf)
                (set! bio.rhi rhi+shift)
                (void)))
            (begin
              (subu8vector-move! buf rlo rhi buf prevlen)
              (put-back! buf 0 previous-input)
              (set! bio.rlo 0)
              (set! bio.rhi rhi+shift)
              (void)))))
       ;; rlo=0
       ((fx> rhi 0)
        ;; we need to move the buffer contents to the right
        (let ((rhi+shift (fx+ rhi prevlen))
              (buflen (u8vector-length buf)))
          (if (fx> rhi+shift buflen)
            ;; uh oh we need to grow the buffer; do it by a page
            (let (new-buflen (fx+ buflen 4096))
              (while (fx< new-buflen rhi+shift)
                ;; ok not enough, add more pages (very unlikely, but still)
                (set! new-buflen (fx+ new-buflen 4096)))
              (let (new-buf (make-u8vector new-buflen))
                (subu8vector-move! buf 0 rhi new-buf prevlen)
                (put-back! new-buf 0 previous-input)
                (set! bio.buf new-buf)
                (set! bio.rhi rhi+shift)
                (void)))
            (begin
              (subu8vector-move! buf 0 rhi buf prevlen)
              (put-back! buf 0 previous-input)
              (set! bio.rhi rhi+shift)
              (void)))))
       ;; rlo=rhi=0
       (else
        (let (buflen (u8vector-length buf))
          (if (fx> prevlen buflen)
            ;; uh oh we need to grow the buffer; do it by a page
            (let (new-buflen (fx+ buflen 4096))
              (while (fx< new-buflen prevlen)
                ;; ok not enough, add more pages (very unlikely, but still)
                (set! new-buflen (fx+ new-buflen 4096)))
              (let (new-buf (make-u8vector new-buflen))
                (put-back! new-buf 0 previous-input)
                (set! bio.buf new-buf)
                (set! bio.rhi prevlen)
                (void)))
            (begin
              (put-back! buf 0 previous-input)
              (set! bio.rhi prevlen)
              (void)))))))))

(def (bio-skip-input bio count)
  (using (bio :- input-buffer)
    (when (fx> count 0)
      (let* ((rlo bio.rlo)
             (rhi bio.rhi)
             (have (fx- rhi rlo)))
        (if (fx>= have count)
          (let (rlo+count (fx+ rlo count))
            (bio-input-advance! bio rlo+count rhi)
            (void))
          (begin
            (when (fx> have 0)
              (bio-input-consume! bio))
            (let* ((buf bio.buf)
                   (buflen (u8vector-length buf)))
              (let lp ((skip (fx- count have)))
                (cond
                 ((fx= skip 0) (void))
                 ((fx<= skip buflen)
                  (&Reader-read bio.reader buf 0 skip skip)
                  (void))
                 (else
                  (&Reader-read bio.reader buf 0 buflen buflen)
                  (lp (fx- skip buflen))))))))))))

(def (bio-delimit-input bio limit)
  (BufferedReader (make-delimited-input-buffer bio limit limit)))

(def (bio-reset-input! bio reader)
  (using (bio :- input-buffer)
    (let (reader (Reader reader))
      (bio-close-input bio)
      (bio-input-consume! bio)
      (set! bio.reader reader)
      (set! bio.closed? #f)
      (void))))

(def (bio-close-input bio)
  (using (bio :- input-buffer)
    (unless bio.closed?
      (set! bio.closed? #t)
      (&Reader-close bio.reader))))
