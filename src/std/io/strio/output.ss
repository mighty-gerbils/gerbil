;;; -*- Gerbil -*-
;;; © vyzo
;;; buffered string writer implementation
(import :std/error
        :std/sugar
        ../interface
        ./types)
(export #t)
(declare (not safe))

(defrule (strbuf-output-advance! strbuf whi)
  (set! (&string-output-buffer-whi strbuf) whi))

(defrule (strbuf-output-consume! strbuf)
  (set! (&string-output-buffer-whi strbuf) 0))

(defrule (strbuf-output-drain! strbuf buf whi)
  (begin
    (&StringWriter-write-string (&string-output-buffer-writer strbuf) buf 0 whi)
    (strbuf-output-consume! strbuf)))

(def (strbuf-write-char strbuf char)
  (let* ((whi (&string-output-buffer-whi strbuf))
         (buf (&string-output-buffer-buf strbuf))
         (buflen (string-length buf)))
    (if (fx< whi buflen)
      (let (whi+1 (fx+ whi 1))
        (string-set! buf whi char)
        (strbuf-output-advance! strbuf whi+1)
        1)
      ;; full buffer
      (begin
        (strbuf-output-drain! strbuf buf whi)
        (string-set! buf 0 char)
        (strbuf-output-advance! strbuf 1)
        1))))

(def (strbuf-write-string strbuf input input-start input-end)
  (let* ((output-want (fx- input-end input-start))
         (whi (&string-output-buffer-whi strbuf))
         (whi+want (fx+ whi output-want))
         (buf (&string-output-buffer-buf strbuf))
         (buflen (string-length buf)))
    (cond
     ((fx<= whi+want buflen)
      ;; have space in buffer
      (substring-move! input input-start input-end buf whi)
      (strbuf-output-advance! strbuf whi+want)
      output-want)
     ;; not enough space
     ((fx> whi 0)
      ;; have some in the buffer, drain it and recurse
      (strbuf-output-drain! strbuf buf whi)
      (strbuf-write-string strbuf input input-start input-end))
     ;; empty buffer
     ((fx>= output-want buflen)
      ;; large write, do it unbuffered
      (&StringWriter-write-string (&string-output-buffer-writer strbuf) input input-start input-end))
     (else
      ;; fits in buffer, copy it
      (substring-move! input input-start input-end buf 0)
      (strbuf-output-advance! strbuf output-want)
      output-want))))

(def (strbuf-flush-output strbuf)
  (let* ((whi (&string-output-buffer-whi strbuf))
         (buf (&string-output-buffer-buf strbuf)))
    (when (fx> whi 0)
      (strbuf-output-drain! strbuf buf whi)
      (void))))

(def (strbuf-reset-output! strbuf writer)
  (let (writer (StringWriter writer))
    (strbuf-close-output strbuf)
    (strbuf-output-consume! strbuf)
    (set! (&string-output-buffer-writer strbuf) writer)
    (set! (&string-output-buffer-closed? strbuf) #f)
    (void)))

(def (strbuf-close-output strbuf)
  (def exn #f)
  (unless (&string-output-buffer-closed? strbuf)
    (set! (&string-output-buffer-closed? strbuf) #t)
    (with-catch (lambda (e) (set! exn e)) (cut strbuf-flush-output strbuf))
    (&StringWriter-close (&string-output-buffer-writer strbuf))
    (when exn (raise exn))))
