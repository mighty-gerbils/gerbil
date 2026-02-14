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
        ./port
        ;;./message
        )
(export open-buffered-reader
        open-buffered-writer
        open-source-buffered-reader
        open-sink-buffered-writer
        open-memory-buffered-reader
        open-memory-buffered-writer
        open-input-port-buffered-reader
        open-output-port-buffered-writer
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

(def (open-input-port-buffered-reader (port : :port))
  => BufferedReader
  (def (make-buffer putback)
    (if putback
      (make-port-input-buffer port #f putback 0 (u8vector-length putback))
      (make-port-input-buffer port #f #f 0 0)))

  (BufferedReader
   (if (textual-port? port)
     ;; we need to putback the character buffer
     (using (port : :character-port)
       (do-with-lock port.mutex
         (if (fx< port.rlo port.rhi)
           ;; has buffered characters
           (let (putback (utf8->string port.rbuf port.rlo port.rhi))
             (set! port.rlo 0)
             (set! port.rhi 0)
             (make-buffer putback))
           ;; no buffered characters, just wrap it
           (make-buffer #f))))
     (make-buffer #f))))

(def (open-output-port-buffered-writer (port : :port))
  => BufferedWriter
  (when (textual-port? port)
    ;; we need to flush the character buffer
    (force-output port)
  (BufferedWriter
   (make-port-output-buffer port #f))))

(def (open-buffered-reader pre-reader (buffer-or-size default-buffer-size))
  => BufferedReader
  (cond
   ((BufferedReader? pre-reader)
    (:- pre-reader BufferedReader))
   ((is-BufferedReader? pre-reader)
    (BufferedReader pre-reader))
   ((u8vector? pre-reader)
    (open-memory-buffered-reader pre-reader #f))
   ((is-Reader? pre-reader)
    (let ((buffer (get-u8vector-buffer buffer-or-size))
          (reader (Reader pre-reader)))
      (open-source-buffered-reader reader buffer (not (u8vector? buffer-or-size)))))
   ((and (input-port? pre-reader)
         (binary-port? pre-reader))
    (open-input-port-buffered-reader pre-reader))
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
    (open-memory-buffered-writer pre-writer #f))
   ((not pre-writer)
    (let (buffer (get-u8vector-buffer buffer-or-size))
      (open-memory-buffered-writer buffer (not (u8vector? buffer-or-size)))))
   ((and (output-port? pre-writer)
         (binary-port? pre-writer))
    (open-output-port-buffered-writer pre-writer))
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
