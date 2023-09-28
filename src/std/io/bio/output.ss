;;; -*- Gerbil -*-
;;; © vyzo
;;; buffered output
(import :std/error
        :std/sugar
        :std/contract
        ../interface
        ./types)
(export #t)
(declare (not safe))

(defrule (bio-output-advance! output whi)
  (let (bio output)
    (using (bio :- output-buffer)
      (set! bio.whi whi))))

(defrule (bio-output-consume! output)
  (let (bio output)
    (using (bio :- output-buffer)
      (set! bio.whi 0))))

(defrule (bio-output-drain! output buf whi)
  (let (bio output)
    (using (bio :- output-buffer)
      (&Writer-write bio.writer buf 0 whi)
      (bio-output-consume! bio))))

(def (bio-write-bytes bio input input-start input-end)
  (using (bio :- output-buffer)
    (let* ((output-want (fx- input-end input-start))
           (whi bio.whi)
           (whi+want (fx+ whi output-want))
           (buf bio.buf)
           (buflen (u8vector-length buf)))
      (cond
       ((fx<= whi+want buflen)
        ;; have space in buffer
        (subu8vector-move! input input-start input-end buf whi)
        (bio-output-advance! bio whi+want)
        output-want)
       ;; not enough space
       ((fx> whi 0)
        ;; have some in the buffer, drain it and recurse
        (bio-output-drain! bio buf whi)
        (bio-write-bytes bio input input-start input-end))
       ;; empty buffer
       ((fx>= output-want buflen)
        ;; large write, do it unbuffered
        (&Writer-write bio.writer input input-start input-end))
       (else
        ;; fits in buffer, copy it
        (subu8vector-move! input input-start input-end buf 0)
        (bio-output-advance! bio output-want)
        output-want)))))

(def (bio-write-u8 bio u8)
  (using (bio :- output-buffer)
    (let* ((whi bio.whi)
           (buf bio.buf)
           (buflen (u8vector-length buf)))
      (if (fx< whi buflen)
        (let (whi+1 (fx+ whi 1))
          (u8vector-set! buf whi u8)
          (bio-output-advance! bio whi+1)
          1)
        ;; full buffer
        (begin
          (bio-output-drain! bio buf whi)
          (bio-write-u8 bio u8))))))

(def (bio-flush-output bio)
  (using (bio :- output-buffer)
    (let* ((whi bio.whi)
           (buf bio.buf))
      (when (fx> whi 0)
        (bio-output-drain! bio buf whi)
        (void)))))

(def (bio-reset-output! bio writer)
  (using (bio :- output-buffer)
    (let (writer (Writer writer))
      (bio-close-output bio)
      (bio-output-consume! bio)
      (set! bio.writer writer)
      (set! bio.closed? #f)
      (void))))

(def (bio-close-output bio)
  (using (bio :- output-buffer)
    (def exn #f)
    (unless bio.closed?
      (set! bio.closed? #t)
      (with-catch (lambda (e) (set! exn e)) (cut bio-flush-output bio))
      (&Writer-close bio.writer)
      (when exn (raise exn)))))
