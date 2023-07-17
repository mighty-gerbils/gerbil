;;; -*- Gerbil -*-
;;; © vyzo
;;; buffered input
(import :std/error
        :std/sugar
        ../interface
        ./types
        ./util)
(export #t)
(declare (not safe))

(defrule (bio-input-advance! bio new-rlo rhi)
  (if (fx< new-rlo rhi)
    (set! (&input-buffer-rlo bio) new-rlo)
    (bio-input-consume! bio)))

(defrule (bio-input-consume! bio)
  (begin
    (set! (&input-buffer-rlo bio) 0)
    (set! (&input-buffer-rhi bio) 0)))

(defrule (bio-input-fill! bio buf need)
  (let (read (&Reader-read (&input-buffer-reader bio) buf 0 (u8vector-length buf) need))
    (set! (&input-buffer-rhi bio) read)
    read))

(def (bio-read-bytes bio output output-start output-end input-need)
  (let* ((input-want (fx- output-end output-start))
         (rlo (&input-buffer-rlo bio))
         (rhi (&input-buffer-rhi bio))
         (rlo+want (fx+ rlo input-want))
         (rlo+need (fx+ rlo input-need))
         (buf (&input-buffer-buf bio)))
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
     ((or (fx> input-need (u8vector-length buf)) fx> input-want (u8vector-length buf))
      ;; needed/wanted bytes exceed buffer size, read unbuffered
      (&Reader-read (&input-buffer-reader bio) output output-start output-end input-need))
     (else
      (let (read (bio-input-fill! bio buf input-need))
        (if (fx> read 0)
          (bio-read-bytes bio output output-start output-end input-need)
          0))))))

(def (bio-read-u8 bio)
  (let ((rlo (&input-buffer-rlo bio))
        (rhi (&input-buffer-rhi bio))
        (buf (&input-buffer-buf bio)))
    (if (fx< rlo rhi)
      (let ((u8 (u8vector-ref buf rlo))
            (rlo+1 (fx+ rlo 1)))
        (bio-input-advance! bio rlo+1 rhi)
        u8)
      ;; empty buffer
      (begin
        (bio-input-fill! bio buf 1)
        (bio-read-u8 bio)))))

(def (bio-peek-u8 bio)
  (let ((rlo (&input-buffer-rlo bio))
        (rhi (&input-buffer-rhi bio))
        (buf (&input-buffer-buf bio)))
    (if (fx< rlo rhi)
      (u8vector-ref buf rlo)
      ;; empty buffer
      (let (read (bio-input-fill! bio buf 0))
        (if (fx> read 0)
          (u8vector-ref buf 0)
          '#!eof)))))

(def (bio-skip-input bio count)
  (when (fx> count 0)
    (let* ((rlo (&input-buffer-rlo bio))
           (rhi (&input-buffer-rhi bio))
           (have (fx- rhi rlo)))
      (if (fx>= have count)
        (let (rlo+count (fx+ rlo count))
          (bio-input-advance! bio rlo+count rhi)
          (void))
        (begin
          (when (fx> have 0)
            (bio-input-consume! bio))
          (let* ((buf (&input-buffer-buf bio))
                 (buflen (u8vector-length buf)))
            (let lp ((skip (fx- count have)))
              (cond
               ((fx= skip 0) (void))
               ((fx<= skip buflen)
                (&Reader-read (&input-buffer-reader bio) buf 0 skip skip)
                (void))
               (else
                (&Reader-read (&input-buffer-reader bio) buf 0 buflen buflen)
                (lp (fx- skip buflen)))))))))))

(def (bio-delimit-input bio limit)
  (BufferedReader (make-delimited-input-buffer bio limit limit)))

(def (bio-reset-input! bio reader)
  (bio-input-consume! bio)
  (&Reader-close (&input-buffer-reader bio))
  (set! (&input-buffer-reader bio) reader)
  (void))

(def (bio-close-input bio)
  (&Reader-close (&input-buffer-reader bio)))
