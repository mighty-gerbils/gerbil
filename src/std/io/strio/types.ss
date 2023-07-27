;;; -*- Gerbil -*-
;;; © vyzo
;;; string IO types
(export #t)

;; string-reader
;; - bio is a bio input-buffer
;; - codec is the character decoding function to us
(defstruct string-reader (bio codec closed?)
  final: #t unchecked: #t)

;; string-writer
;; - bio is a bio output-buffer
;; - codec is the character encoding function to use
(defstruct string-writer (bio codec closed?)
  final: #t unchecked: #t)

;; string-input-buffer
;; - reader is a StringReader
;; - buf is the string buffer (a string)
;; - rlo is the read cursor
;; - rhi is the write cursor
(defstruct string-input-buffer (reader buf rlo rhi closed?)
  final: #t unchecked: #t)

;; string-output-buffer
;; - writer is a StringWriter
;; - buf is the string buffer (a string)
;; - whi is the write cursor
(defstruct string-output-buffer (writer buf whi closed?)
  final: #t unchecked: #t)

;; chunked-string-output-buffer
;; - chunks is the list of current pending chunks.
;; - output is the final output if the buffer is closed.
(defstruct chunked-string-output-buffer (chunks output)
  final: #t unchecked: #t)
