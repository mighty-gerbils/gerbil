;;; -*- Gerbil -*-
;;; © vyzo
;;; Buffered IO api
(import :gerbil/runtime/interface
        :std/interface
        :std/error
        ../interface
        ../port
        ./types
        ./buffer
        ./cache
        ./macros
        ./input
        ./delimited
        ./reader
        ./output
        ./writer
        ./delimited
        ./memory
        ./srcsnk
        ./message
        )
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
