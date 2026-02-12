;;; -*- Gerbil -*-
;;; © vyzo
;;; buffered output
(import ../interface
        ./types
        ./buffer
        ./cache
        ./macros)
(export #t)
(declare (not safe))

(defrule (__bio-output-advance! output whi)
  (using (bio output :- basic-output-buffer)
    (set! bio.whi whi)))

(defrule (__bio-output-consume! output)
  (using (bio output :- basic-output-buffer)
    (set! bio.whi 0)))

(defrules __bio-write ()
  ((_ output-buffer input input-start input-end
      __drain!
      __write
      __retry)
   (using (bio output-buffer :- basic-output-buffer)
     (let* ((output-want (fx- input-end input-start))
            (whi bio.whi)
            (whi+want (fx+ whi output-want))
            (buf bio.buf)
            (buflen (u8vector-length buf)))
       (cond
        ((fx<= whi+want buflen)
         ;; have space in buffer
         (subu8vector-move! input input-start input-end buf whi)
         (__bio-output-advance! bio whi+want)
         output-want)
        ;; not enough space
        ((fx> whi 0)
         ;; have some in the buffer, drain it and recurse
         (__drain! bio buf whi)
         (__retry bio input input-start input-end))
        ;; empty buffer
        ((fx>= output-want buflen)
         ;; large write, do it unbuffered
         (__write input input-start input-end))
        (else
         ;; fits in buffer, copy it
         (subu8vector-move! input input-start input-end buf 0)
         (__bio-output-advance! bio output-want)
         output-want)))))
  ((_ output-buffer input input-start input-end)
   (__bio-write output-buffer input input-start input-end
                __bio-output-buffer-drain!
                __bio-output-buffer-write
                __bio-output-buffer-write)))

(defrules __bio-write-u8 ()
  ((_ output-buffer u8 __drain! __retry)
   (using (bio output-buffer :- basic-output-buffer)
     (let* ((whi bio.whi)
            (buf bio.buf)
            (buflen (u8vector-length buf)))
       (if (fx< whi buflen)
         (let (whi+1 (fx+ whi 1))
           (u8vector-set! buf whi u8)
           (__bio-output-advance! bio whi+1)
           1)
         ;; full buffer
         (begin
           (__drain! bio buf whi)
           (__retry bio u8))))))
  ((_ output-buffer u8)
   (__bio-write-u8 __bio-output-buffer-drain! __bio-output-buffer-write-u8)))

(defrules __bio-flush-output ()
  ((_ output-buffer __drain!)
   (using (bio output-buffer :- basic-output-buffer)
     (let* ((whi bio.whi)
            (buf bio.buf))
       (when (fx> whi 0)
         (__drain! bio buf whi)
         (void)))))
  ((_ output-buffer)
   (__bio-flush-output output-buffer __bio-output-buffer-drain!)))

(defrules __bio-close-output ()
  ((_ output-buffer __close __drain!)
   (using (bio output-buffer :- basic-output-buffer)
     (let (exn #f)
       (unless bio.closed?
         (set! bio.closed? #t)
         (with-catch (lambda (e) (set! exn e)) (cut __drain! bio bio.buf bio.whi))
         (when bio.cached?
           (buffer-cache.put! bio.buf))
         (set! bio.buf #f)
         (__close bio)
         (when exn (raise exn))))))
  ((_ output-buffer)
   (__bio-close-output __bio-output-buffer-close __bio-output-buffer-drain!)))
