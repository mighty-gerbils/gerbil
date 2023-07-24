;;; -*- Gerbil -*-
;;; © vyzo
;;; buffered string reader implementation
(import :std/error
        :std/sugar
        (only-in :std/srfi/1 reverse!)
        ../interface
        ./types)
(export #t)
(declare (not safe))

(defrule (strbuf-input-fill! strbuf buf need)
  (let (read (&StringReader-read-string (&string-input-buffer-reader strbuf) buf 0 (string-length buf) need))
    (set! (&string-input-buffer-rhi strbuf) read)
    read))

(defrule (strbuf-input-advance! strbuf new-rlo rhi)
  (if (fx< new-rlo rhi)
    (set! (&string-input-buffer-rlo strbuf) new-rlo)
    (strbuf-input-consume! strbuf)))

(defrule (strbuf-input-consume! strbuf)
  (begin
    (set! (&string-input-buffer-rlo strbuf) 0)
    (set! (&string-input-buffer-rhi strbuf) 0)))

(def (strbuf-peek-char strbuf)
  (let ((rlo (&string-input-buffer-rlo strbuf))
        (rhi (&string-input-buffer-rhi strbuf))
        (buf (&string-input-buffer-buf strbuf)))
    (if (fx< rlo rhi)
      (string-ref buf rlo)
      ;; empty buffer
      (let (read (strbuf-input-fill! strbuf buf 0))
        (if (fx> read 0)
          (string-ref buf 0)
          '#!eof)))))

(def (strbuf-read-char strbuf)
  (let ((rlo (&string-input-buffer-rlo strbuf))
        (rhi (&string-input-buffer-rhi strbuf))
        (buf (&string-input-buffer-buf strbuf)))
    (if (fx< rlo rhi)
      (let ((char (string-ref buf rlo))
            (rlo+1 (fx+ rlo 1)))
        (strbuf-input-advance! strbuf rlo+1 rhi)
        char)
      ;; empty buffer
      (let (read (strbuf-input-fill! strbuf buf 0))
        (if (fx> read 0)
          (let (char (string-ref buf 0))
            (strbuf-input-advance! strbuf 1 read)
            char)
          '#!eof)))))

(def (strbuf-read-string strbuf output output-start output-end input-need)
  (let* ((input-want (fx- output-end output-start))
         (rlo (&string-input-buffer-rlo strbuf))
         (rhi (&string-input-buffer-rhi strbuf))
         (rlo+want (fx+ rlo input-want))
         (rlo+need (fx+ rlo input-need))
         (buf (&string-input-buffer-buf strbuf)))
    (cond
     ((fx<= rlo+want rhi)
      ;; have wanted
      (substring-move! buf rlo rlo+want output output-start)
      (strbuf-input-advance! strbuf rlo+want rhi)
      input-want)
     ((and (fx> input-need 0) (fx<= rlo+need rhi))
      ;; have needed
      (substring-move! buf rlo rlo+need output output-start)
      (strbuf-input-advance! strbuf rlo+need rhi)
      input-need)
     ((fx< rlo rhi)
      ;; have some, try to read at least needed
      (substring-move! buf rlo rhi output output-start)
      (strbuf-input-consume! strbuf)
      (let* ((have (fx- rhi rlo))
             (output-start (fx+ output-start have))
             (input-need
              (if (fx> input-need 0)
                (if (fx> input-need have)
                  (fx- input-need have)
                  0)
                0))
             (read (strbuf-read-string strbuf output output-start output-end input-need)))
        (fx+ have read)))
     ;; empty buffer (rlo=rhi=0)
     ((or (fx>= input-need (string-length buf)) fx>= input-want (string-length buf))
      ;; needed/wanted bytes exceed buffer size, read unbuffered
      (&StringReader-read-string (&string-input-buffer-reader strbuf) output output-start output-end input-need))
     (else
      (let (read (strbuf-input-fill! strbuf buf input-need))
        (if (fx> read 0)
          (strbuf-read-string strbuf output output-start output-end input-need)
          0))))))

(def (strbuf-read-line strbuf sep include-sep? max-chars)
  (let* ((separators (if (pair? sep) sep [sep]))
         (read-more?
          (if max-chars
            (lambda (x) (fx< x max-chars))
            (lambda (x) #t)))
         (finish
          (if include-sep?
            (lambda (chars drop) (list->string (reverse! chars)))
            (lambda (chars drop) (list->string (reverse! (list-tail chars drop)))))))
    (let lp ((x 0) (separating separators) (drop 0) (chars []))
      (cond
       ((null? separating)
        (finish chars drop))
       ((read-more? x)
        (let (next (strbuf-read-char strbuf))
          (cond
           ((eof-object? next)
            (finish chars drop))
           ((eq? (car separating) next)
            (lp (fx+ x 1) (cdr separating) (fx+ drop 1) (cons next chars)))
           (else
            (lp (fx+ x 1) separators 0 (cons next chars))))))
       (else
        (raise-io-error 'strbuf-read-line "too many characters" x))))))

(def (strbuf-close-input strbuf)
  (unless (&string-input-buffer-closed? strbuf)
    (set! (&string-input-buffer-closed? strbuf) #t)
    (&Reader-close (&string-input-buffer-reader strbuf))))