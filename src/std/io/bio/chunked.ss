;;; -*- Gerbil -*-
;;; © vyzo
;;; chunked buffers
(import :std/error
        :std/contract
        :std/srfi/1
        ../interface
        ./types)
(export #t)
(declare (not safe))

(def (bio-chunked-write-bytes bio input input-start input-end)
  (using (bio :- chunked-output-buffer)
    (let (chunk (subu8vector input input-start input-end))
      (set! bio.chunks
        (cons chunk bio.chunks))
      (void))))

(def (bio-chunked-close bio)
  (using (bio :- chunked-output-buffer)
    (unless bio.output                  ; already closed
      (set! bio.output
        (reverse! bio.chunks))
      (set! bio.chunks [])
      (void))))
