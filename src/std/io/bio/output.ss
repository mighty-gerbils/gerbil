;;; -*- Gerbil -*-
;;; © vyzo
;;; buffered output
(import :std/error
        :std/sugar
        ../interface
        ./types)
(export #t)
(declare (not safe))

(defrule (bio-output-advance! bio whi)
  (set! (&output-buffer-whi bio) whi))

(defrule (bio-output-consume! bio)
  (set! (&output-buffer-whi bio) 0))

(defrule (bio-output-drain! bio buf whi)
  (begin
    (&Writer-write (&output-buffer-writer bio) buf 0 whi)
    (bio-output-consume! bio)))

(def (bio-write-bytes bio input input-start input-end)
  (let* ((output-want (fx- input-end input-start))
         (whi (&output-buffer-whi bio))
         (whi+want (fx+ whi output-want))
         (buf (&output-buffer-buf bio))
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
      (&Writer-write (&output-buffer-writer bio) input input-start input-end))
     (else
      ;; fits in buffer, copy it
      (subu8vector-move! input input-start input-end buf 0)
      (bio-output-advance! bio output-want)
      output-want))))

(def (bio-write-u8 bio u8)
  (let* ((whi (&output-buffer-whi bio))
         (buf (&output-buffer-buf bio))
         (buflen (u8vector-length buf)))
    (if (fx< whi buflen)
      (let (whi+1 (fx+ whi 1))
        (u8vector-set! buf whi u8)
        (bio-output-advance! bio whi+1)
        1)
      ;; full buffer
      (begin
        (bio-output-drain! bio buf whi)
        (bio-write-u8 bio u8)))))

(def (bio-flush-output bio)
  (let* ((whi (&output-buffer-whi bio))
         (buf (&output-buffer-buf bio)))
    (when (fx> whi 0)
      (bio-output-drain! bio buf whi)
      (void))))

(def (bio-reset-output! bio writer)
  (let (writer (Writer writer))
    (bio-close-output bio)
    (bio-output-consume! bio)
    (set! (&output-buffer-writer bio) writer)
    (set! (&output-buffer-closed? bio) #f)
    (void)))

(def (bio-close-output bio)
  (def exn #f)
  (unless (&output-buffer-closed? bio)
    (set! (&output-buffer-closed? bio) #t)
    (with-catch (lambda (e) (set! exn e)) (cut bio-flush-output bio))
    (&Writer-close (&output-buffer-writer bio))
    (when exn (raise exn))))
