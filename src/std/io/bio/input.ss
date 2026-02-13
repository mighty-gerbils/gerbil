;;; -*- Gerbil -*-
;;; © vyzo
;;; buffered input
(import :std/error
        ../interface
        ./types
        ./buffer
        ./cache
        ./macros)
(export #t)

(defrule (__bio-input-advance! input-buffer new-rlo rhi)
  (using (bio input-buffer :- basic-input-buffer)
    (let (rlo new-rlo)
      (if (fx< rlo rhi)
        (set! bio.rlo rlo)
        (__bio-input-consume! bio)))))

(defrule (__bio-input-consume! input-buffer)
  (using (bio input-buffer :- basic-input-buffer)
    (set! bio.rlo 0)
    (set! bio.rhi 0)))

(defrule (__bio-input-normalize! input-buffer buf rlo rhi need)
  (using (bio input-buffer :- basic-input-buffer)
    (let (buflen (u8vector-length buf))
      (if (fx<= (fx+ rhi need) buflen)
        rhi
        (let (new-rhi (fx- rhi rlo))
          (subu8vector-move! buf rlo rhi buf 0)
          (set! bio.rlo 0)
          (set! bio.rhi new-rhi)
          new-rhi)))))

(defrules __bio-read ()
  ((_ input-buffer output output-start output-end input-need
      __fill!
      __read
      __retry)
   (using (bio input-buffer :- basic-input-buffer)
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
         (__bio-input-advance! bio rlo+want rhi)
         input-want)
        ((and (fx> input-need 0) (fx<= rlo+need rhi))
         ;; have needed
         (subu8vector-move! buf rlo rlo+need output output-start)
         (__bio-input-advance! bio rlo+need rhi)
         input-need)
        ((fx< rlo rhi)
         ;; have some, try to read at least needed
         (subu8vector-move! buf rlo rhi output output-start)
         (__bio-input-consume! bio)
         (let* ((have (fx- rhi rlo))
                (output-start (fx+ output-start have))
                (input-need
                 (if (fx> input-need 0)
                   (if (fx> input-need have)
                     (fx- input-need have)
                     0)
                   0))
                (read (__read bio output output-start output-end input-need)))
           (fx+ have read)))
        ;; empty buffer (rlo=rhi=0)
        ((or (fx>= input-need (u8vector-length buf)) fx>= input-want (u8vector-length buf))
         ;; needed/wanted bytes exceed buffer size, read unbuffered
         (__read bio output output-start output-end input-need))
        (else
         (let (read (__fill! bio buf 0 input-need))
           (if (fx> read 0)
             (__retry bio output output-start output-end input-need)
             0)))))))
  ((_ input-buffer output output-start output-end input-need)
   (__bio-read-bytes input-buffer output output-start output-end input-need
                     __bio-input-buffer-fill1
                     __bio-input-buffer-read
                     __bio-input-buffer-read)))

(defrules __bio-read-u8 ()
  ((_ input-buffer __fill!)
  (using (bio input-buffer :- basic-input-buffer)
    (let ((rlo bio.rlo)
          (rhi bio.rhi)
          (buf bio.buf))
      (if (fx< rlo rhi)
        (let ((u8 (u8vector-ref buf rlo))
              (rlo+1 (fx+ rlo 1)))
          (__bio-input-advance! bio rlo+1 rhi)
          u8)
        ;; empty buffer
        (let (read (__fill! bio buf 0 0))
          (if (fx> read 0)
            (let (u8 (u8vector-ref buf 0))
              (__bio-input-advance! bio 1 read)
              u8)
            '#!eof))))))
  ((_ input-buffer)
   (__bio-read-u8 input-buffer __bio-input-buffer-fill!)))

(defrules __bio-peek-u8 ()
  ((_ input-buffer __fill!)
   (using (bio input-buffer : basic-input-buffer)
     (let ((rlo bio.rlo)
           (rhi bio.rhi)
           (buf bio.buf))
       (if (fx< rlo rhi)
         (u8vector-ref buf rlo)
         ;; empty buffer
         (let (read (__fill! bio buf 0 0))
           (if (fx> read 0)
             (u8vector-ref buf 0)
             '#!eof))))))
  ((_ input-buffer)
   (__bio-peek-u8 input-buffer __bio-input-buffer-fill!)))

(def (bio-put-back (bio : basic-input-buffer) previous-input)
  => :void
  (__check-buffer-open! bio-put-back bio)
  (if (fixnum? previous-input)
    (__bio-put-back-one bio previous-input)
    (__bio-put-back-many bio previous-input)))

(def (bio-put-back-one (bio : basic-input-buffer) (u8 : :fixnum))
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
      (void)))))

(def (bio-put-back-many (bio : basic-input-buffer) previous-input)
  => :void
  (def (put-back! buf rlo previous-input)
    (let loop ((rest previous-input) (i rlo))
      (match rest
        ([u8 . rest]
         (u8vector-set! buf i u8)
         (loop rest (fx+ i 1)))
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
            (void))))))))

(defrules __bio-skip-input ()
  ((_ input-buffer count __read)
   (using (bio input-buffer :- basic-input-buffer)
     (when (fx> count 0)
       (let* ((rlo bio.rlo)
              (rhi bio.rhi)
              (have (fx- rhi rlo)))
         (if (fx>= have count)
           (let (rlo+count (fx+ rlo count))
             (__bio-input-advance! bio rlo+count rhi)
             (void))
           (begin
             (when (fx> have 0)
               (__bio-input-consume! bio))
             (let* ((buf bio.buf)
                    (buflen (u8vector-length buf)))
               (let loop ((skip (fx- count have)))
                 (cond
                  ((fx= skip 0) (void))
                  ((fx<= skip buflen)
                   (__read bio buf 0 skip skip)
                   (void))
                  (else
                   (__read bio buf 0 buflen buflen)
                   (loop (fx- skip buflen))))))))))))
  ((_ input-buffer count)
   (__bio-skip-input input-buffer count __bio-input-buffer-read)))

(defrules __bio-close-input ()
  ((_ input-buffer __close)
   (using (bio input-buffer :- basic-input-buffer)
     (unless bio.closed?
       (set! bio.closed? #t)
       (when bio.cached?
         (buffer-cache.put! bio.buf))
       (set! bio.buf #f)
       (__close bio))))
  ((_ input-buffer)
   (__bio-close-input input-buffer __bio-input-buffer-close)))

(def (bio-input-available (bio : basic-input-buffer))
  => :fixnum
  (__check-buffer-open! bio-input-available bio)
  (fx- bio.rhi bio.rlo))

(defmethod {put-back basic-input-buffer}
  __bio-put-back
  interface: BufferedReader)

(defmethod {available basic-input-buffer}
  __bio-input-available
  interface: BufferedReader)
