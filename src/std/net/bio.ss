;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; extensible binary i/o buffers with port compatible interface
;;; Warning: Low level unsafe interface; let their be Dragons.
package: std/net

(import :std/net/bio/input
        :std/net/bio/output
        :std/net/bio/buffer)
(export
  ;; input
  input-buffer?
  bio-read-u8
  bio-peek-u8
  bio-read-subu8vector
  bio-read-subu8vector*
  bio-read-subu8vector-unbuffered
  bio-read-bytes
  bio-read-bytes-unbuffered
  bio-read-u32
  ;; output
  output-buffer?
  bio-write-u8
  bio-write-subu8vector
  bio-write-subu8vector-unbuffered
  bio-write-u32
  ;; buffers
  open-input-buffer
  open-fixed-output-buffer
  make-fixed-output-buffer
  open-output-buffer
  chunked-output-buffer?
  chunked-output-chunks
  chunked-output-u8vector)
