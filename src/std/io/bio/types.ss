;;; -*- Gerbil -*-
;;; © vyzo
;;; buffer types
(import ../interface)
(export #t)

(defstruct basic-buffer
  ((buf     :- :u8vector)
   (closed? :- :boolean)
   (owned?  :- :boolean)))

;; basic-input-buffer
;; - buf is the buffer itself, as a u8vector
;; - rlo is the read cursor (where the user reads)
;; - rhi is the write cursor (where the reader pumps)
(defstruct (basic-input-buffer basic-buffer)
  ((rlo     :- :fixnum)
   (rhi     :- :fixnum)))

(defstruct (basic-output-buffer basic-buffer)
  ((whi     :- :fixnum)))

;; memory buffers
(defstruct (memory-input-buffer basic-input-buffer)()
  final: #t)

(defstruct (memory-output-buffer basic-output-buffer) ()
  final: #t)

;; sources and sinks
(defstruct (reader-input-buffer basic-input-buffer)
  ((reader  :- Reader)))

(defstruct (source-input-buffer reader-input-buffer) ()
  final: #t)

(defstruct (writer-output-buffer basic-output-buffer)
  ((writer  :- Writer)))

(defstruct (sink-output-buffer writer-output-buffer) ()
  final: #t)

;; messge buffers
(defstruct (message-input-buffer reader-input-buffer) ()
  final: #t)

(defstruct (message-output-buffer writer-output-buffer) ()
  final: #t)

;; delimited input buffered readers
;; - in is an input-buffer or another delimited-input-buffer
;; - reamining is the number of bytes that remain to be read
;; - limit is the input limit
(defstruct delimited-input-buffer
  ((input     :- :t)
   (remaining :- :integer)
   (limit     :- :integer))
  final: #t)
