;;; -*- Gerbil -*-
;;; © vyzo
;;; Buffered IO inline operations
(import :std/sugar
        :std/interface
        ../interface
        ./types
        ./input
        ./output)
(export #t)

(defrule (is-input-buffer? reader)
  (input-buffer? (&interface-instance-object reader)))
(defrule (is-output-buffer? writer)
  (output-buffer? (&interface-instance-object writer)))

(defrule (&BufferedReader-read-u8-inline reader)
  (if (is-input-buffer? reader)
    (let ()
      (declare (not interrupts-enabled))
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
    (&BufferedReader-read-u8 reader)))

(defrule (BufferedReader-read-u8-inline reader)
  (let (reader (BufferedReader reader))
    (&BufferedReader-read-u8-inline reader)))

(defrule (&BufferedReader-peek-u8-inline reader)
  (if (is-input-buffer? reader)
    (let ()
      (declare (not interrupts-enabled))
      (let (bio (&interface-instance-object reader))
        (let ((rlo (&input-buffer-rlo bio))
              (rhi (&input-buffer-rhi bio))
              (buf (&input-buffer-buf bio)))
          (if (fx< rlo rhi)
            (u8vector-ref buf rlo)
            ;; empty buffer, fall back to the method
            (bio-peek-u8 bio)))))
    (&BufferedReader-peek-u8 reader)))

(defrule (BufferedReader-peek-u8-inline reader)
  (let (reader (BufferedReader reader))
    (&BufferedReader-peek-u8-inline reader)))

(defrule (&BufferedWriter-write-u8-inline writer u8)
  (if (is-output-buffer? writer)
    (let ()
      (declare (not interrupts-enabled))
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
    (&BufferedWriter-write-u8 writer u8)))

(defrule (BufferedWriter-write-u8-inline writer char)
  (let (writer (BufferedWriter writer))
    (&BufferedWriter-write-u8-inline writer char)))
