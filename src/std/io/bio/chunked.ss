;;; -*- Gerbil -*-
;;; © vyzo
;;; chunked buffers
(import :std/error
        :std/srfi/1
        ../interface
        ./types)
(export #t)
(declare (not safe))

(def (bio-chunked-write-bytes bio input input-start input-end)
  (let (chunk (subu8vector input input-start input-end))
    (set! (&chunked-output-buffer-chunks bio)
      (cons chunk (&chunked-output-buffer-chunks bio)))
    (void)))

(def (bio-chunked-close bio)
  (unless (&chunked-output-buffer-output bio) ; already closed
    (set! (&chunked-output-buffer-output bio)
      (reverse! (&chunked-output-buffer-chunks bio)))
    (set! (&chunked-output-buffer-chunks bio) [])
    (void)))
