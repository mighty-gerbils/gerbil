;;; -*- Gerbil -*-
;;; © vyzo
;;; Buffered IO inline operations
(import :std/sugar
        :std/interface
        ./types
        ./input
        ./output)
(export #t)

(defrule (&BufferedReader-read-u8-inline reader)
  (let (bio (&interface-instance-object reader))
    (let ((rlo (&input-buffer-rlo bio))
          (rhi (&input-buffer-rhi bio))
          (buf (&input-buffer-buf bio)))
      (if (fx< rlo rhi)
        (let ((u8 (u8vector-ref buf rlo))
              (rlo+1 (fx+ rlo 1)))
          (bio-input-advance! bio rlo+1 rhi)
          u8)
        ;; empty buffer, fall back to the method
        (bio-read-u8 bio)))))

(defrule (&BufferedReader-peek-u8-inline reader)
  (let (bio (&interface-instance-object reader))
    (let ((rlo (&input-buffer-rlo bio))
          (rhi (&input-buffer-rhi bio))
          (buf (&input-buffer-buf bio)))
      (if (fx< rlo rhi)
        (u8vector-ref buf rlo)
        ;; empty buffer, fall back to the method
        (bio-peek-u8 bio)))))

(defrule (&BufferedWriter-write-u8-inline writer u8)
  (let (bio (&interface-instance-object writer))
    (let* ((whi (&output-buffer-whi bio))
           (buf (&output-buffer-buf bio))
           (buflen (u8vector-length buf)))
      (if (fx< whi buflen)
        (let (whi+1 (fx+ whi 1))
          (u8vector-set! buf whi u8)
          (bio-output-advance! bio whi+1)
          1)
        ;; full buffer, fallback to the method
        (bio-write-u8 bio u8)))))
