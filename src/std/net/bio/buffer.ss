;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; extensible binary i/o buffers with port compatible interface
;;; Warning: Low level unsafe interface; let their be Dragons.
package: std/net/bio

(import :std/error
        :std/net/bio/input)
(export open-input-buffer
        )

;; fixed slice buffers
(def (open-input-buffer bytes (rlo 0) (rhi (u8vector-length bytes)))
  (make-input-buffer bytes rlo rhi fixed-buffer-fill! fixed-buffer-read))

(def (fixed-buffer-fill! buf need)
  0)

(def (fixed-buffer-read bytes start end buf)
  0)
