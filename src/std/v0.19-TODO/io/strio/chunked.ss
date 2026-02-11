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
  (using (strio :- chunked-string-output-buffer)
    (let (chunk (substring input input-start input-end))
      (set! strio.chunks (cons chunk strio.chunks))
      (void))))

(def (strio-chunked-close strio)
  (using (strio :- chunked-string-output-buffer)
    (unless strio.output ; already closed
      (set! strio.output (reverse! strio.chunks))
      (set! strio.chunks [])
      (void))))
