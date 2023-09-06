;;; -*- Gerbil -*-
;;; © vyzo
;;; chunked string writer
(import :std/error
        :std/srfi/1
        ../interface
        ./types)
(export #t)
(declare (not safe))

(def (strio-chunked-write-string strio input input-start input-end)
  (let (chunk (substring input input-start input-end))
    (set! (&chunked-string-output-buffer-chunks strio)
      (cons chunk (&chunked-string-output-buffer-chunks strio)))
    (void)))

(def (strio-chunked-close strio)
  (unless (&chunked-string-output-buffer-output strio) ; already closed
    (set! (&chunked-string-output-buffer-output strio)
      (reverse! (&chunked-string-output-buffer-chunks strio)))
    (set! (&chunked-string-output-buffer-chunks strio) [])
    (void)))
