;;; -*- Gerbil -*-
;;; © vyzo
;;; buffer types
(export #t)

;; input-buffer
;; - reader is an instance of Reader
;; - buf is the buffer itself, as a u8vector
;; - rlo is the read cursor (where the user reads)
;; - rhi is the write cursor (where the reader pumps)
(defstruct input-buffer (reader buf rlo rhi closed?)
  final: #t )

;; delimited-input-buffer
;; - in is an input-buffer or another delimited-input-buffer
;; - reamining is the number of bytes that remain to be read
;; - limit is the input limit
(defstruct delimited-input-buffer (in remaining limit)
  final: #t )

;; output-buffer
;; - writer is an instance of Writer
;; - buf is the buffer itself, as a u8vector
;; - whi is the write cursor
(defstruct output-buffer (writer buf whi closed?)
  final: #t )

;; chunked-output-buffer
;; - chunks is the list of current pending chunks.
;; - output is the final output if the buffer is closed.
(defstruct chunked-output-buffer (chunks output)
  final: #t )
