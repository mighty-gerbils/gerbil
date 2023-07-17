;;; -*- Gerbil -*-
;;; © vyzo
;;; buffer types
(export #t)

;; input-buffer
;; - reader is an instance of Reader
;; - buf is the buffer itself, as a u8vector
;; - rlo is the read cursor (external reads)
;; - rhi is the write cursor (internal reads)
(defstruct input-buffer (reader buf rlo rhi)
  final: #t unchecked: #t)

;; delimited-input-buffer
;; - in is an input-buffer or another delimited-input-buffer
;; - reamining is the number of bytes that remain to be read
;; - limit is the input limit
(defstruct delimited-input-buffer (in remaining limit)
  final: #t unchecked: #t)
