;;; -*- Gerbil -*-
;;; © vyzo
;;; Buffered IO api
(import :gerbil/runtime/interface
        :std/interface
        :std/error
        ../interface
        ../port
        ./types
        ./input
        ./output
        ./macros
        ./cache
        ./reader
        ./writer
        ./srcsnk
        ./memory
        ./message
        ./delimited)
(export open-buffered-reader
        open-buffered-writer
        open-source-buffered-reader
        open-sink-buffered-writer
        open-memory-buffered-reader
        open-memory-buffered-writer
        open-message-buffered-reader
        open-message-buffered-writer
        get-memory-output-u8vector
        get-memory-output-string-utf8
        defreader-ext
        defwriter-ext
        very-small-buffer-size
        small-buffer-size
        default-buffer-size
        (import: ./reader
                 ./writer))

;;; Interface
;; basic-input-buffer common methods
(defmethod {put-back basic-input-buffer}
  __bio-put-back
  interface: BufferedReader)
(defmethod {delimit basic-input-buffer}
  __bio-delimit-input
  interface: BufferedReader)
(defmethod {available basic-input-buffer}
  __bio-input-available
  interface: BufferedReader)

;; source-input-buffer
(defmethod {close source-input-buffer}
  __source-close
  interface: Closer)
(defmethod {read source-input-buffer}
  __source-read
  interface: Reader)
(defmethod {read-u8 source-input-buffer}
  __source-read-u8
  interface: PeekableReader)
(defmethod {peek-u8 source-input-buffer}
  __source-peek-u8
  interface: PeekableReader)
(defmethod {skip source-input-buffer}
  __source-skip
  interface: BufferedReader)

(@implement BufferedReader source-input-buffer)
(@implement InputBuffer source-input-buffer)

;; sink-output-buffer
(defmethod {close sink-output-buffer}
  __sink-close
  interface: Closer)
(defmethod {write sink-output-buffer}
  __sink-write-bytes
  interface: Writer)
(defmethod {write-u8 sink-output-buffer}
  __sink-write-u8
  interface: BufferedWriter)
(defmethod {flush sink-output-buffer}
  __sink-flush
  interface: BufferedWriter)

(@implement BufferedWriter sink-output-buffer)
(@implement OutputBuffer sink-output-buffer)

;; memory-input-buffer
(defmethod {close memory-input-buffer}
  __mem-close-input
  interface: Closer)
(defmethod {read memory-input-buffer}
  __mem-read
  interface: Reader)
(defmethod {read-u8 memory-input-buffer}
  __mem-read-u8
  interface: PeekableReader)
(defmethod {peek-u8 memory-input-buffer}
  __mem-peek-u8
  interface: PeekableReader)
(defmethod {skip memory-input-buffer}
  __mem-skip
  interface: BufferedReader)

(@implement BufferedReader memory-input-buffer)
(@implement InputBuffer memory-input-buffer)

;; memory-output-buffer
(defmethod {close memory-output-buffer}
  __mem-close-output
  interface: Closer)
(defmethod {write memory-output-buffer}
  __mem-write-bytes
  interface: Writer)
(defmethod {write-u8 memory-output-buffer}
  __mem-write-u8
  interface: BufferedWriter)
(defmethod {flush memory-output-buffer}
  __mem-flush
  interface: BufferedWriter)

(@implement BufferedWriter memory-output-buffer)
(@implement OutputBuffer memory-output-buffer)

;; delimited-input-buffer BufferedReader implementation
(defmethod {close delimited-input-buffer}
  __bio-delimited-close
  interface: Closer)
(defmethod {read delimited-input-buffer}
  __bio-delimited-read-bytes
  interface: Reader)
(defmethod {read-u8 delimited-input-buffer}
  __bio-delimited-read-u8
  interface: PeekableReader)
(defmethod {peek-u8 delimited-input-buffer}
  __bio-delimited-peek-u8
  interface: PeekableReader)
(defmethod {put-back delimited-input-buffer}
  __bio-delimited-put-back
  interface: BufferedReader)
(defmethod {skip delimited-input-buffer}
  __bio-delimited-skip-input
  interface: BufferedReader)
(defmethod {delimit delimited-input-buffer}
  __bio-delimited-delimit-input
  interface: BufferedReader)
(defmethod {available delimited-input-buffer}
  __bio-delimited-available
  interface: BufferedReader)

(@implement BufferedReader delimited-input-buffer)

;; constructors
(def (open-source-buffered-reader (reader : Reader) (buffer : u8vector) (owned? : :boolean))
  => BufferedReader
  (BufferReader
   (make-source-input-buffer buffer #f owned? 0 0 reader)))

(def (open-sink-buffered-writer (writer : Writer) (buffer : u8vector) (owned? : :boolean))
  => BufferedWriter
  (BufferWriter
   (make-sink-output-buffer buffer #f owned? 0 writer)))

(def (open-memory-buffered-reader (buffer : :u8vector) (owned? : :boolean))
  => BufferedReader
  (BufferedReader
   (make-memory-input-buffer buffer #f owned? 0 (u8vector-length buffer))))

(def (open-memory-buffered-writer (buffer : :u8vector) (owned? : :boolean))
  => BufferedWriter
  (BufferedWriter
   (make-memory-output-buffer buffer #f owned? 0)))

(def (open-buffered-reader pre-reader (buffer-or-size default-buffer-size))
  => BufferedReader
  (cond
   ((BufferedReader? pre-reader)
    (:- pre-reader BufferedReader))
   ((is-BufferedReader? pre-reader)
    (BufferedReader pre-reader))
   ((u8vector? pre-reader)
    (BufferedReader
     (open-memory-buffered-reader pre-reader #f)))
   ((is-Reader? pre-reader)
    (let ((buffer (get-u8vector-buffer buffer-or-size))
          (reader (Reader pre-reader)))
      (open-source-buffered-reader reader buffer (not (u8vector? buffer-or-size)))))
   ((and (input-port? pre-reader)
         (binary-port? pre-reader))
    (BufferedReader
     (make-cooked-binary-input-port pre-reader)))
   (else
    (raise-bad-argument open-buffered-reader "readable instance or u8vector" pre-reader))))

(def (open-buffered-writer pre-writer (buffer-or-size default-buffer-size))
  => BufferedWriter
  (cond
   ((BufferedWriter? pre-writer)
    (:- pre-writer BufferedWriter))
   ((is-BufferedWriter? pre-writer)
    (BufferedWriter pre-writer))
   ((is-Writer? pre-writer)
    (let ((writer (Writer pre-writer))
          (buffer (get-u8vector-buffer buffer-or-size)))
      (open-sink-buffered-writer pre-writer buffer (not (u8vector? buffer-or-size)))))
   ((not pre-writer)
    (let (buffer (get-u8vector-buffer buffer-or-size))
      (open-memory-buffered-writer buffer #t)))
   ((and (output-port? pre-writer)
         (binary-port? pre-write))
    (BufferedWriter
     (make-raw-binary-output-port pre-writer)))
   (else
    (raise-bad-argument open-buffered-writer "Writer instance or #f" pre-writer))))

(def (get-memory-output-u8vector (inst : interface-instance) (done? : #t))
  => :u8vector
  XXX)

(def (get-memory-output-string-utf8 (inst : interface-instance) (done? : #t))
  => :u8vector
  XXX)
