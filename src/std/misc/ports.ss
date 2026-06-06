;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; miscellaneous port utilities

(import :std/error
        :std/list/list-builder)
(export read-all-as-string
        read-all-as-lines
        read-all-as-u8vector
        read-password
        force-current-outputs
        writeln
        output-contents
        call-with-output
        with-output
        call-with-input
        with-input
        char-port-eof?)

;; Read all the contents of a port as a string
(def (read-all-as-string port)
  (let ((string (read-line port #f)))
    (if (string? string) string ""))) ;; if it's an eof-object? or whatelse, return ""

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

(def (read-all-as-u8vector port (bufsize 8192))
  (let lp ((buf (make-u8vector bufsize))
           (u8s []))
    (let (len (read-subu8vector buf 0 bufsize port))
      (if (= len bufsize)
        (lp (make-u8vector bufsize) (cons buf u8s))
        (begin
          (u8vector-shrink! buf len)
          (u8vector-concatenate (reverse (cons buf u8s))))))))

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
   ((u8vector? i) (call-with-input-u8vector i f))
   ((list? i) (call-with-input-file i f))
   (else (error "bad call-with-input input" i))))

(defrules with-input ()
  ((_ (i x) body ...) (call-with-input x (lambda (i) body ...)))
  ((_ (i) body ...) (call-with-input i (lambda (i) body ...))))

(def (char-port-eof? in) (eof-object? (peek-char in)))
