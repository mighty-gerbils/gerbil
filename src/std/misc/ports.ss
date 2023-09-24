;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; miscellaneous port utilities

(import :gerbil/gambit
        :std/error
        :std/sugar
        :std/misc/list-builder
        (only-in :std/srfi/13 string-suffix?))
(export copy-port
        read-all-as-string
        read-file-string
        read-all-as-lines
        read-file-lines
        read-all-as-u8vector
        read-file-u8vector
        read-password
        write-file-string
        write-file-lines
        force-current-outputs
        writeln
        output-contents
        call-with-output
        with-output
        call-with-input
        with-input
        char-port-eof?)

;; _gambit#.scm
(extern namespace: #f
  macro-type-port
  macro-byte-port?
  macro-character-port?
  macro-port-mutex-lock!
  macro-port-mutex-unlock!
  macro-character-port-rlo
  macro-character-port-rlo-set!
  macro-character-port-rhi
  macro-character-port-rbuf
  macro-character-port-rbuf-fill
  macro-character-port-peek-eof?
  macro-character-port-peek-eof?-set!
  macro-byte-port-rlo
  macro-byte-port-rlo-set!
  macro-byte-port-rhi
  macro-byte-port-rbuf
  macro-byte-port-rbuf-fill
  )

(bind-method! (macro-type-port) 'destroy close-port)

;; Copy all data from port in to port out
(def (copy-port in out)
  (cond
   ((not (input-port? in))
    (raise-bad-argument copy-port "input port" in))
   ((not (output-port? out))
    (raise-bad-argument copy-port "output port" out))
   ((macro-byte-port? in)
    (cond
     ((macro-byte-port? out)
      (try-copy-byte-port in out))
     ((macro-character-port? out)
      (copy-character-port in out))
     (else
      (copy-object-port in out))))
   ((macro-character-port? in)
    (if (macro-character-port? out)
      (copy-character-port in out)
      (copy-object-port in out)))
   (else
    (copy-object-port in out))))

(def (try-copy-byte-port in out)
  (macro-port-mutex-lock! in)
  (if (or (##fx< (macro-character-port-rlo in)
                 (macro-character-port-rhi in))  ; has unread characters
          (macro-character-port-peek-eof? in))   ; eof is coming
    (copy-character-port/lock in out)
    (copy-byte-port/lock in out)))

(def (copy-character-port in out)
  (macro-port-mutex-lock! in)
  (copy-character-port/lock in out))

(def (copy-byte-port/lock in out)
  (def (loop)
    (let ((rlo (macro-byte-port-rlo in))
          (rhi (macro-byte-port-rhi in)))
      (if (##fx< rlo rhi)
        (let (rbuf (macro-byte-port-rbuf in))
          (try
           (when (eq? in out)
             (macro-port-mutex-unlock! in))
           (write-subu8vector rbuf rlo rhi out)
           (when (eq? in out)
             (macro-port-mutex-lock! in))
           (catch (e)
             (unless (eq? in out)
               (macro-port-mutex-unlock! in))
             (raise e)))
          (macro-byte-port-rlo-set! in rhi)
          (rbuf-fill))
        (rbuf-fill))))

  (def (rbuf-fill)
    (let* ((rbuf (macro-byte-port-rbuf in))
           (res ((macro-byte-port-rbuf-fill in) in
                 (##u8vector-length rbuf) #t)))
      (cond
       ((eq? res ##err-code-EAGAIN)     ; timeout -> eof, we are done
        (macro-port-mutex-unlock! in))
       ((fixnum? res)                   ; error
        (macro-port-mutex-unlock! in)
        (##raise-os-io-exception in #f res copy-port in out))
       (res                             ; bytes were added
        (loop))
       (else                            ; no bytes were added, eof
        (macro-port-mutex-unlock! in)))))

  (loop))

(def (copy-character-port/lock in out)
  (def (loop)
    (let ((rlo (macro-character-port-rlo in))
          (rhi (macro-character-port-rhi in)))
      (cond
       ((##fx< rlo rhi)
        (let (rbuf (macro-character-port-rbuf in))
          (try
           (when (eq? in out)
             (macro-port-mutex-unlock! in))
           (write-substring rbuf rlo rhi out)
           (when (eq? in out)
             (macro-port-mutex-lock! in))
           (catch (e)
             (unless (eq? in out)
               (macro-port-mutex-unlock! in))
             (raise e)))
          (macro-character-port-rlo-set! in rhi)
          (rbuf-fill)))
       ((macro-character-port-peek-eof? in)
        (macro-character-port-peek-eof?-set! in #f)
        (macro-port-mutex-unlock! in))
       (else
        (rbuf-fill)))))

  (def (rbuf-fill)
    (let* ((rbuf (macro-character-port-rbuf in))
           (res ((macro-character-port-rbuf-fill in) in
                 (##string-length rbuf) #t)))
      (cond
       ((eq? res ##err-code-EAGAIN)     ; timeout -> eof
        (macro-port-mutex-unlock! in))
       ((fixnum? res)
        (macro-port-mutex-unlock! in)
        (##raise-os-io-exception in #f res copy-port in out))
       (res                             ; some chars were added
        (loop))
       (else                            ; no chars were added, eof
        (macro-port-mutex-unlock! in)))))

  (loop))

(def (copy-object-port in out)
  (let lp ((next (read in)))
    (unless (eof-object? next)
      (write next out)
      (lp (read in)))))

;; Read all the contents of a port as a string
(def (read-all-as-string port)
  (let ((string (read-line port #f)))
    (if (string? string) string ""))) ;; if it's an eof-object? or whatelse, return ""

;; Read the contents of a file into a string
(def (read-file-string file settings: (settings '()))
  (call-with-input-file (cons* path: file settings) read-all-as-string))

;; Read all the contents of a port as a list of strings, one per line
(def (read-all-as-lines
      port
      separator: (separator #\newline)
      include-separator?: (include-separator? #f))
  (with-list-builder (push!)
    (let loop ()
      (let ((line (read-line port separator include-separator?)))
        (when (string? line)
          (push! line)
          (loop))))))

;; Read the contents of a file into a list of lines
(def (read-file-lines file settings: (settings '()))
  (call-with-input-file (cons* path: file settings) read-all-as-lines))

(def (read-all-as-u8vector port (bufsize 8192))
  (let lp ((buf (make-u8vector bufsize))
           (u8s []))
    (let (len (read-subu8vector buf 0 bufsize port))
      (if (= len bufsize)
        (lp (make-u8vector bufsize) (cons buf u8s))
        (begin
          (u8vector-shrink! buf len)
          (u8vector-concatenate (reverse (cons buf u8s))))))))

(def (read-file-u8vector file-path settings: (settings '()))
  (let* ((finfo (file-info file-path #t))
         (size  (file-info-size finfo))
         (buffer  (make-u8vector size)))
    (call-with-input-file (cons* path: file-path settings)
      (cut read-subu8vector buffer 0 size <>))
    buffer))

;; Write string to file using the 'display' procedure.
;;   file             the file to be written to
;;   string           the string to write
;;   settings:        Gambit path-settings (default [])
;;   newline-ending:  append newline if last character is not a newline (default #t)
;;
;; Example:
;;  (write-file-string "/tmp/foo.txt" "Hello, world!" settings: [append: #t])
(def (write-file-string
      file
      string
      settings: (settings [])
      newline-ending: (newline-ending #t))
  (call-with-output-file (cons* path: file settings)
    (lambda (port)
      (display string port)
      (when (and newline-ending
                 (not (string-empty? string))
                 (not (string-suffix? "\n" string)))
        (newline port)))))

;; Write every entry of the list as newline separated line to file
;; using the 'display' procedure.
;;   file             the file to be written to
;;   list             list of strings to write
;;   settings:        Gambit path-settings (default [])
;;   newline-ending:  append newline if last character is not a newline (default #t)
;;
;; Example:
;;  (write-file-lines "/tmp/foo.txt" ["foo" "bar"])
(def (write-file-lines
      file
      list
      settings: (settings [])
      newline-ending: (newline-ending #t))
  (def string (string-join list "\n"))
  (write-file-string file string settings: settings newline-ending: newline-ending))

;; Put terminal into raw mode. Used by read-password
(def (raw-mode tty)
  (##tty-mode-set! tty
                   #f ;; input-allow-special
                   #f ;; input-echo
                   #t ;; input-raw
                   #t ;; output-raw
                   0)) ;; speed

;; Set defaults back
(def (cooked-mode tty)
  (##tty-mode-set! tty
                   #t ;; input-allow-special
                   #t ;; input-echo
                   #f ;; input-raw
                   #f ;; output-raw
                   0)) ;; speed

;; Read a password without echoing.
(def (read-password (input (current-input-port)) (output (current-output-port))
                    prompt: (prompt "Password: "))
  ;; display prompt
  (when prompt
    (display prompt output)
    (force-output output))
  (try
   (if (equal? (getenv "TERM" #f) "dumb")
     ;; inside emacs, feeley's raw code does not work!
     (begin
       (##tty-mode-set! input #f #f #f #f 0)
       (let (pass (read-line input))
         (newline output)
         pass))
     (begin
       ;; @feeley's code, as posted on gitter
       (raw-mode input)
       (let loop ((chars []))
         (let ((c (read-char input)))
           (cond ((or (eof-object? c)
                      (char=? c #\return)
                      (char=? c #\newline))
                  (cooked-mode input)
                  (display "\n" output)
                  (list->string (reverse chars)))
                 ((or (char=? c #\backspace)
                      (char=? c #\delete))
                  (if (pair? chars)
                    (begin
                      (display "\b \b" output)
                      (loop (cdr chars)))
                    (loop chars)))
                 (else
                  (display "*" output)
                  (loop (cons c chars))))))))
   (finally
    (cooked-mode input))))

;; Output some contents to a port.
;; The contents can be a string (display'ed), a u8vector (written),
;; or a procedure (called with the port as argument)
(def (output-contents contents (port (current-output-port)))
  (cond
   ((string? contents) (display contents port))
   ((u8vector? contents) (write-u8vector contents port))
   ((procedure? contents) (contents port))
   (else
    (raise-bad-argument output-contents "string, u8vector or procedure" contents))))

(def (force-current-outputs)
  (force-output (current-output-port))
  (force-output (current-error-port)))

(def (writeln x (port (current-output-port)))
  (write x port)
  (newline port)
  (force-output port))

(def (call-with-output o f)
  (def (p port) (output-contents f port))
  (cond
   ((port? o) (p o))
   ((not o) (call-with-output-string p))
   ((eq? o #t) (p (current-output-port)))
   ((string? o) (call-with-output-file o p))
   ((list? o) (call-with-output-file o p))
   (else
    (raise-bad-argument call-with-output "output port designator" o))))

(defrules with-output ()
  ((_ (o x) body ...) (call-with-output x (lambda (o) body ...)))
  ((_ (o) body ...) (call-with-output o (lambda (o) body ...))))

(def (call-with-input i f)
  (cond
   ((port? i) (f i))
   ((eq? i #t) (f (current-input-port)))
   ((string? i) (call-with-input-string i f))
   ((list? i) (call-with-input-file i f))))

(defrules with-input ()
  ((_ (i x) body ...) (call-with-input x (lambda (i) body ...)))
  ((_ (i) body ...) (call-with-input i (lambda (i) body ...))))

(def (char-port-eof? in) (eof-object? (peek-char in)))
