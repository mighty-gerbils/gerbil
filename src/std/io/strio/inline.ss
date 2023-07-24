;;; -*- Gerbil -*-
;;; © vyzo
;;; inline operations
;;; gsc inlines peek-char, read-char, and write-char; we can do the same
(import :std/interface
        :std/sugar
        ./types
        ./input
        ./output)
(export #t)

(defrule (&BufferedStringReader-peek-char-inline reader)
  (let (strbuf (&interface-instance-object reader))
    (let ((rlo (&string-input-buffer-rlo strbuf))
          (rhi (&string-input-buffer-rhi strbuf))
          (buf (&string-input-buffer-buf strbuf)))
      (if (fx< rlo rhi)
        (string-ref buf rlo)
        ;; empty buffer
        (let (read (strbuf-input-fill! strbuf buf 0))
          (if (fx> read 0)
            (string-ref buf 0)
            '#!eof))))))

(defrule (&BufferedStringReader-read-char-inline reader)
  (let (strbuf (&interface-instance-object reader))
    (let ((rlo (&string-input-buffer-rlo strbuf))
          (rhi (&string-input-buffer-rhi strbuf))
          (buf (&string-input-buffer-buf strbuf)))
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

(defrule (&BufferedStringWriter-write-char-inline writer char)
  (let (strbuf (&interface-instance-object writer))
    (let* ((whi (&string-output-buffer-whi strbuf))
           (buf (&string-output-buffer-buf strbuf))
           (buflen (string-length buf)))
      (if (fx< whi buflen)
        (let (whi+1 (fx+ whi 1))
          (string-set! buf whi char)
          (strbuf-output-advance! strbuf whi+1)
          1)
        ;; full buffer
        (begin
          (strbuf-output-drain! strbuf buf whi)
          (strbuf-write-char strbuf char))))))