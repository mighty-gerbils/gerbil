;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; extensible binary i/o buffers with port compatible interface
;;; Warning: Low level unsafe interface; let their be Dragons.
package: std/net/bio

(import :std/error
        :std/net/bio/input
        :std/net/bio/output
        (only-in :std/srfi/1 reverse!))
(export #t)

;; fixed input buffers
(def (open-input-buffer bytes (rlo 0) (rhi (u8vector-length bytes)))
  (make-input-buffer bytes rlo rhi fixed-buffer-fill! fixed-buffer-read))

(def (fixed-buffer-fill! buf need)
  0)

(def (fixed-buffer-read bytes start end buf)
  0)

;; fixed output buffers
(def (open-fixed-output-buffer (size 1024))
  (make-fixed-output-buffer (make-u8vector size) 0 size))

(def (make-fixed-output-buffer bytes wlo whi)
  (make-output-buffer bytes wlo whi fixed-buffer-drain! fixed-buffer-write))

(def (fixed-buffer-drain! buf need)
  (raise-io-error 'fixed-buffer-drain! "insufficient buffer space" buf need))

(def (fixed-buffer-write bytes start end buf)
  (raise-io-error 'fixed-buffer-write "insufficient buffer space" buf))

;; chunked output buffers
(defstruct (chunked-output-buffer output-buffer) (chunks)
  unchecked: #t)

(def (open-output-buffer (chunksz 256))
  (make-chunked-output-buffer (make-u8vector chunksz) 0 chunksz
                              chunked-buffer-drain!
                              chunked-buffer-write))

(def (chunked-buffer-drain! buf need)
  (let ((wlo (&output-buffer-wlo buf))
        (whi (&output-buffer-whi buf))
        (chunk (&output-buffer-e buf))
        (chunks (&chunked-output-buffer-chunks buf)))
    (when (##fx< wlo whi)
      (##u8vector-shrink! chunk wlo))
    (set! (&chunked-output-buffer-chunks buf)
      (cons chunk chunks))
    (set! (&output-buffer-e buf)
      (make-u8vector whi))
    (set! (&output-buffer-wlo buf)
      0)))

(def (chunked-buffer-write bytes start end buf)
  (let (chunks (&chunked-output-buffer-chunks buf))
    (set! (&chunked-output-buffer-chunks buf)
      (cons (##subu8vector bytes start end) chunks))))

(def (chunked-output-u8vector buf)
  (let (chunks (chunked-output-chunks buf))
    (if (null? (##cdr chunks))
      (##car chunks)
      (##append-u8vectors chunks))))

(def (chunked-output-chunks buf)
  (let* ((wlo (&output-buffer-wlo buf))
         (chunk (&output-buffer-e buf))
         (chunks (&chunked-output-buffer-chunks buf)))
    (if  (##fx> wlo 0)
      (begin
        (##u8vector-shrink! chunk wlo)
        (if (null? chunks)
          [chunk]
          (reverse! (cons chunk chunks))))
      (reverse! chunks))))
