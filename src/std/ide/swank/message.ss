(import
  ./api
  :std/text/utf8
  :std/io
  :gerbil/gambit)
(export #t)

(def default-swank-buffer-size (expt 2 15)) ; 32K
(def (read-message reader (buffer-or-size default-swank-buffer-size))
  (def sizehex (make-u8vector 6))
  (using (reader :- Reader)
    (let* ((size (string->number
		    (utf8->string
		     (begin
		       (reader.read sizehex) sizehex))
		     16))
	     (buffer (if (number? buffer-or-size)
		       (make-u8vector default-swank-buffer-size)
		       buffer-or-size))
	     (mbytes (and size (reader.read buffer 0 size size)))
	     (port (open-input-u8vector buffer)))
      ;; "SWANK-PRESENTATIONS" not needed for messages?
      #;(input-port-readtable-set!
       port
       (readtable-eval-allowed?-set
	(input-port-readtable port) #t))
      (and size (read port)))))

(def swank-message-handlers (make-hash-table-eq))

(defrules def-swank ()
  ((_ (name args ...) body ...)
   (begin
     (def (name args ...) body ...)
     (hash-put! swank-message-handlers 'name name)
     name))
  ((_ (name args ... . rest) body ...)
   (begin
     (def (name args ... . rest) body ...)
     (hash-put! swank-message-handlers 'name name)
     name))
  ((_ (name . rest) body ...)
   (begin
     (def (name . rest) body ...)
     (hash-put! swank-message-handlers 'name name)
     name)))

(defrules set-swank! ()
  ((_ (name args ...) body ...)
   (begin
     (set! name (lambda (args ...) body ...))
     (hash-put! swank-message-handlers 'name name)
     name))
  ((_ (name args ... . rest) body ...)
   (begin
     (set! name (lambda (args ... . rest) body ...))
     (hash-put! swank-message-handlers 'name name)
     name))
  ((_ (name . rest) body ...)
   (begin
     (set! name (lambda (args . rest) body ...))
     (hash-put! swank-message-handlers 'name name)
     name)))

(def (swank-handle-message msg writer)
  (let (handler (hash-get swank-message-handlers (car msg)))
    (if handler
      (let (ret (apply handler (cdr msg)))
	(and ret (write-message writer ret))
        #t)
      #f)))

(def (write-message writer msg)
  (let* ((str (cond ((string? msg) msg)
		    ((pair? msg)
		     (with-output-to-string "" (cut write msg)))
		    (else #f)))
	 (bytes (if (u8vector? msg) msg
		    (string->utf8 str)))
	 (len (u8vector-length bytes))
	 (hex (string->utf8 (number->string len 16)))
	 (filler (make-u8vector (- 6 (u8vector-length hex)))))
    (u8vector-fill! filler 48)
    (using (writer :- Writer)
      (writer.write filler)
      (writer.write hex)
      (writer.write bytes))))

(def (send-to-emacs msg)
  (write-message (current-slime-writer) msg))
  
