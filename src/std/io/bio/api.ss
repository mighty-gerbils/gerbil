;;; -*- Gerbil -*-
;;; © vyzo
;;; Buffered IO api
(import :std/error
        :std/interface
        ../interface
        ./types
        ./buffer
        ./cache
        ./macros
        ./input
        ./delimited
        ./reader
        ./output
        ./writer
        ./memory
        ./srcsnk
        ;;./message
        )
(export open-buffered-reader
        open-buffered-writer
        open-source-buffered-reader
        open-sink-buffered-writer
        open-memory-buffered-reader
        open-memory-buffered-writer
        get-memory-output-u8vector
        get-memory-output-string-utf8
        ;;open-message-buffered-reader
        ;;open-message-buffered-writer
        defreader-ext
        defwriter-ext
        very-small-buffer-size
        small-buffer-size
        default-buffer-size
        (import: ./reader
                 ./writer))

;; constructors
(def (open-source-buffered-reader (reader : Reader) (buffer : :u8vector) (cached? : :boolean))
  => BufferedReader
  (BufferedReader
   (make-source-input-buffer buffer #f cached? 0 0 reader)))

(def (open-sink-buffered-writer (writer : Writer) (buffer : :u8vector) (cached? : :boolean))
  => BufferedWriter
  (BufferedWriter
   (make-sink-output-buffer buffer #f cached? 0 writer)))

(def (open-memory-buffered-reader (buffer : :u8vector) (cached? : :boolean))
  => BufferedReader
  (BufferedReader
   (make-memory-input-buffer buffer #f cached? 0 (u8vector-length buffer))))

(def (open-memory-buffered-writer (buffer : :u8vector) (cached? : :boolean))
  => BufferedWriter
  (BufferedWriter
   (make-memory-output-buffer buffer #f cached? 0)))

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
   ;; ((and (input-port? pre-reader)
   ;;       (binary-port? pre-reader))
   ;;  (BufferedReader
   ;;   (make-cooked-binary-input-port pre-reader)))
   (else
    (raise-bad-argument open-buffered-reader "readable object or u8vector" pre-reader))))

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
   ((u8vector? pre-writer)
    (BufferedWriter
     (open-memory-buffered-writer pre-writer #f)))
   ((not pre-writer)
    (let (buffer (get-u8vector-buffer buffer-or-size))
      (BufferedWriter
       (open-memory-buffered-writer buffer (not (u8vector? buffer-or-size))))))
   ;; ((and (output-port? pre-writer)
   ;;       (binary-port? pre-write))
   ;;  (BufferedWriter
   ;;   (make-raw-binary-output-port pre-writer)))
   (else
    (raise-bad-argument open-buffered-writer "writable object, u8vector or #f" pre-writer))))

(def (get-memory-output-u8vector (inst : interface-instance) (done? #t))
  => :u8vector
  (using (mem inst.object : memory-output-buffer)
    (cond
     (mem.closed?
      (raise-io-closed get-memory-output-u8vector "no buffer"))
     (done?
      (let (buf mem.buf)
        (set! mem.buf #f)
        (set! mem.closed? #t)
        (set! mem.cached? #f)
        (when (fx< mem.whi (u8vector-length buf))
          (u8vector-shrink! buf mem.whi))
        buf))
     (else
      (subu8vector mem.buf 0 mem.whi)))))

(def (get-memory-output-string-utf8 (inst : interface-instance) (done? #t))
  => :string
  (using (mem inst.object : memory-output-buffer)
    (def (get-string)
      => :string
      (let ((chars (box 0))
            (str   (make-string mem.whi))
            (input (make-memory-input-buffer mem.buf #f #f 0 mem.whi)))
        (__bio-read-string-utf8 input str 0 mem.whi 0 chars)
        (let (chars-read (unbox chars))
          (when (fx< chars-read mem.whi)
            (string-shrink! str chars-read))
          str)))
    (cond
     (mem.closed?
      (raise-io-closed get-memory-output-u8vector "no buffer"))
     (done?
      (let (str (get-string))
        (__mem-close-input mem)
        str))
     (else
      (get-string)))))
