;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; extensible binary i/o buffers with port compatible interface
;;; Warning: Low level unsafe interface; let their be Dragons.

(import :std/deprecation
        :std/net/bio/input
        :std/net/bio/output
        :std/net/bio/buffer
        :std/net/bio/file)
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
  bio-read-s32
  bio-read-u16
  bio-read-s16
  bio-read-char
  bio-read-substring
  bio-read-string
  bio-read-line
  bio-input-utf8-decode
  bio-input-skip
  bio-input-count
  ;; output
  output-buffer?
  bio-write-u8
  bio-write-subu8vector
  bio-write-subu8vector-unbuffered
  bio-write-bytes
  bio-write-bytes-unbuffered
  bio-write-u32
  bio-write-s32
  bio-write-u16
  bio-write-s16
  bio-write-char
  bio-write-substring
  bio-write-string
  bio-force-output
  ;; buffers
  open-input-buffer
  open-delimited-input-buffer
  delimited-input-buffer?
  open-fixed-output-buffer
  make-fixed-output-buffer
  open-chunked-output-buffer
  open-serializer-output-buffer
  chunked-output-buffer?
  chunked-output-chunks
  chunked-output-u8vector
  chunked-output-length
  ;; file buffers
  open-file-input-buffer
  open-fd-input-buffer
  file-input-buffer?
  close-file-input-buffer
  open-file-output-buffer
  open-fd-output-buffer
  file-output-buffer?
  close-file-output-buffer)

(package-deprecation-warning!)
