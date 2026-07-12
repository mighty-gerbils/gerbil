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
        open-string-port-buffered-reader
        open-string-port-buffered-writer
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
                 ./writer
                 ./port))

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

;; For textual ports, wraps lazily via string-port-input-buffer so that
;; unread bytes can be restored to the port on detach.
;; For binary ports, wraps directly via port-input-buffer (no intermediate buffer).
(def (open-input-port-buffered-reader (port : :port) (buffer-or-size default-buffer-size))
  => BufferedReader
  (if (binary-port? port)
    (BufferedReader (make-port-input-buffer port #f #f 0 0))
    (open-string-port-buffered-reader port buffer-or-size)))

;; For textual ports, wraps via string-port-output-buffer so that complete
;; UTF-8 sequences are flushed as chars to the port.
;; For binary ports, wraps directly via port-output-buffer.
(def (open-output-port-buffered-writer (port : :port) (buffer-or-size default-buffer-size))
  => BufferedWriter
  (if (binary-port? port)
    (BufferedWriter (make-port-output-buffer port #f))
    (open-string-port-buffered-writer port buffer-or-size)))

;; Wrap a textual port as a BufferedReader by lazily encoding chars to UTF-8.
;; Unlike open-input-port-buffered-reader, the port is NOT consumed upfront;
;; call string-port-input-buffer-detach! to restore unread bytes when done.
(def (open-string-port-buffered-reader (port : :port) (buffer-or-size default-buffer-size))
  => BufferedReader
  (let* ((buf     (get-u8vector-buffer buffer-or-size))
         (cached? (not (u8vector? buffer-or-size)))
         (cbuf    (make-string (fxmax 1 (fxquotient (u8vector-length buf) 4)))))
    (BufferedReader
     (make-string-port-input-buffer buf #f cached? 0 0 port cbuf))))

;; Wrap a textual port as a BufferedWriter by flushing complete UTF-8 sequences.
;; Call string-port-output-buffer-detach! (or BufferedWriter-flush) when done.
(def (open-string-port-buffered-writer (port : :port) (buffer-or-size default-buffer-size))
  => BufferedWriter
  (let* ((buf     (get-u8vector-buffer buffer-or-size))
         (cached? (not (u8vector? buffer-or-size))))
    (BufferedWriter
     (make-string-port-output-buffer buf #f cached? 0 port))))

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
   ((string? pre-reader)
    (open-memory-buffered-reader (string->utf8 pre-reader) #f))
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
  (using (mem inst.object :- memory-output-buffer)
    (when mem.closed?
      (raise-io-closed get-memory-output-u8vector "no buffer"))
    (if done?
      ;; Take ownership of the buffer directly rather than copying + caching.
      (let ((buf mem.buf) (whi mem.whi))
        (set! mem.buf #f)
        (set! mem.closed? #t)
        (set! mem.cached? #f)
        (when (fx< whi (u8vector-length buf))
          (u8vector-shrink! buf whi))
        buf)
      (subu8vector mem.buf 0 mem.whi))))

(def (get-memory-output-string-utf8 (inst : interface-instance) (done? #t))
  => :string
  (using (mem inst.object :- memory-output-buffer)
    (when mem.closed?
      (raise-io-closed get-memory-output-string-utf8 "no buffer"))
    ;; utf8->string is non-destructive; done?=#f leaves the buffer intact.
    (let (str (utf8->string mem.buf 0 mem.whi))
      (when done?
        (mem-close-output mem))
      str)))
