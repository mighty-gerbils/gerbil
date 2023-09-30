;;; -*- Gerbil -*-
;;; © vyzo
;;; buffered string writer implementation
(import :std/error
        :std/contract
        :std/sugar
        ../interface
        ./types)
(export #t)
(declare (not safe))

(defrule (strbuf-output-advance! output whi)
  (using (strbuf output :- string-output-buffer)
    (set! strbuf.whi whi)))

(defrule (strbuf-output-consume! output)
  (using (strbuf output :- string-output-buffer)
    (set! strbuf.whi 0)))

(defrule (strbuf-output-drain! output buf whi)
  (using (strbuf output :- string-output-buffer)
    (&StringWriter-write-string strbuf.writer buf 0 whi)
    (strbuf-output-consume! strbuf)))

(def (strbuf-write-char strbuf char)
  (using (strbuf :- string-output-buffer)
    (let* ((whi strbuf.whi)
           (buf strbuf.buf)
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
          1)))))

(def (strbuf-write-string strbuf input input-start input-end)
  (using (strbuf :- string-output-buffer)
    (let* ((output-want (fx- input-end input-start))
           (whi strbuf.whi)
           (whi+want (fx+ whi output-want))
           (buf strbuf.buf)
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
        (&StringWriter-write-string strbuf.writer input input-start input-end))
       (else
        ;; fits in buffer, copy it
        (substring-move! input input-start input-end buf 0)
        (strbuf-output-advance! strbuf output-want)
        output-want)))))

(def (strbuf-flush-output strbuf)
  (using (strbuf :- string-output-buffer)
    (let* ((whi strbuf.whi)
           (buf strbuf.buf))
      (when (fx> whi 0)
        (strbuf-output-drain! strbuf buf whi)
        (void)))))

(def (strbuf-reset-output! strbuf writer)
  (using (strbuf :- string-output-buffer)
    (let (writer (StringWriter writer))
      (strbuf-close-output strbuf)
      (strbuf-output-consume! strbuf)
      (set! strbuf.writer writer)
      (set! strbuf.closed? #f)
      (void))))

(def (strbuf-close-output strbuf)
  (using (strbuf :- string-output-buffer)
    (def exn #f)
    (unless strbuf.closed?
      (set! strbuf.closed? #t)
      (with-catch (lambda (e) (set! exn e)) (cut strbuf-flush-output strbuf))
      (&StringWriter-close strbuf.writer)
      (when exn (raise exn)))))
