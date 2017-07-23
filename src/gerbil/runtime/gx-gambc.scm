;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Gerbil-gambc interpreter support
(##namespace (""))
;;(include "gx-gambc#.scm")

(declare
  (block)
  (standard-bindings)
  (extended-bindings))

(define _gx#loading-scheme-source
  (make-parameter #f))

(define (_gx#init-gx!)
  ;; setup expander
  (gx#current-expander-marks  '())
  (gx#current-expander-phi     0)
  (gx#current-expander-context (gx#make-top-context))
  (gx#current-expander-module-library-path (&current-module-libpath))
  (gx#current-expander-module-registry (make-hash-table))
  (gx#current-expander-module-import gx#core-import-module)
  (gx#current-expander-module-eval   gx#core-eval-module)
  (gx#current-expander-compile      _gx#compile-top)
  (gx#current-expander-eval            ##eval)
  (gx#core-bind-root-syntax! ':<root> (gx#make-prelude-context #f) #t)
  ;; setup _gx
  (&current-context  _gx#*top*)
  (&current-compiler _gx#compile-top)
  (&current-expander  gx#core-expand)
  (set! _gx#eval-module gx#core-eval-module))

;; load the interpreter environment
(define (_gx#load-gxi #!optional (hook-expander? #t))
  (_gx#init-gx!)
  (let* ((core (gx#import-module ':gerbil/core))
         (pre  (gx#make-prelude-context core)))
    (gx#current-expander-module-prelude pre)
    (gx#core-bind-root-syntax! ':<core> pre #t)
    (gx#eval-syntax '(import :gerbil/core)))
  (when hook-expander?
    ;; avoid loops from phi evals
    (gx#current-expander-compile _gx#compile-top-source)
    ;; hook the expander
    (set! ##expand-source _gx#expand-source)
    (set! ##display-exception-hook _gx#display-exception)
    (unless _gx#real-macro-descr
      (set! _gx#real-macro-descr ##macro-descr))
    (set! ##macro-descr _gx#macro-descr)
    ;; hook the readtables
    (set! ##main-readtable _gx#*readtable*)
    (for-each
      (lambda (port)
        (when (macro-character-input-port? port)
          (macro-character-port-input-readtable-set! port _gx#*readtable*)))
      (list ##stdin-port ##console-port))))

(define (_gx#gxi-init-interactive! cmdline)
  ;; load gerbil interactive init
  (let ((init-file (path-expand "lib/init.ss" (getenv "GERBIL_HOME"))))
    (gx#eval-syntax `(include ,init-file)))
  ;; if it exists, load user's ~/.gerbil/init.ss
  (let ((init-file "~/.gerbil/init.ss"))
    (if (file-exists? init-file)
      (gx#eval-syntax `(include ,init-file)))))

;; hook load to be able to load raw gambit code when the expander is hooked
(define (load path)
  (parameterize ((_gx#loading-scheme-source path))
    (##load path (lambda args #f) #t #t #f)))

;; load path utils
(define (load-path)
  (values
    (library-load-path)
    (expander-load-path)))

(define (library-load-path)
  (&current-module-libpath))

(define (expander-load-path)
  (gx#current-expander-module-library-path))

(define (add-load-path . paths)
  (apply add-library-load-path paths)
  (apply add-expander-load-path paths))

(define (add-library-load-path . paths)
  (let* ((current (&current-module-libpath))
         (paths (map path-normalize paths))
         (paths (filter (lambda (x) (not (member x current))) paths)))
    (&current-module-libpath (append current paths))))

(define (add-expander-load-path . paths)
  (let* ((current (gx#current-expander-module-library-path))
         (paths (map path-normalize paths))
         (paths (filter (lambda (x) (not (member x current))) paths)))
    (gx#current-expander-module-library-path (append current paths))))

(define (cons-load-path . paths)
  (apply cons-library-load-path paths)
  (apply cons-expander-load-path paths))

(define (cons-library-load-path . paths)
  (let* ((current (&current-module-libpath))
         (paths (map path-normalize paths)))
    (&current-module-libpath (append paths current))))

(define (cons-expander-load-path . paths)
  (let* ((current (gx#current-expander-module-library-path))
         (paths (map path-normalize paths)))
    (gx#current-expander-module-library-path (append paths current))))

;; stuffs
(define (_gx#expand-source src)
  (define (expand src)
    (_gx#compile-top
     (gx#core-expand (_gx#source->syntax src))))

  (define (no-expand src)
    (cond
     ((##source? src)
      (let ((code (##source-code src)))
        (and (pair? code)
             (eq? __noexpand: (##car code))
             (##cdr code))))
     ((_gx#loading-scheme-source)
      src)
     (else #f)))

  ;;(displayln "expand-source " src)

  (cond
   ((no-expand src) => values)
   (else (expand src))))

;; hook to make gambit macro expansion work with a hooked expander
;; ##macro-descr recurses into the expander through ##eval-top,
;; which breaks begin-foreign
(define _gx#real-macro-descr #f)

(define (_gx#macro-descr . args)
  (parameterize ((_gx#loading-scheme-source 'macro))
    (apply _gx#real-macro-descr args)))

(define (_gx#source->syntax src)
  (let recur ((e src))
    (cond
     ((##source? e)
      (make-AST (recur (##source-code e)) (##source-locat e)))
     ((pair? e)
      (cons (recur (##car e))
            (recur (##cdr e))))
     ((vector? e)
      (vector-map recur e))
     ((box? e)
      (box (recur (unbox e))))
     (else e))))

(define (_gx#compile-top-source stx)
  (cons __noexpand: (_gx#compile-top stx)))

(define (_gx#compile-top stx)
  (_gx#compile (gx#core-compile-top-syntax stx)))

(define (_gx#eval-import in)
  (define (import-context in)
    (cond
     ((gx#module-import? in)
      (gx#module-export-context
         (gx#module-import-source in)))
     ((gx#import-set? in)
      (gx#import-set-source in))
     ((gx#module-context? in) in)
     (else
      (error "Unexpected import" in))))

  (define (import1 in)
    (_gx#eval-module (import-context in)))

  (define (import* lst)
    (let ((tab (make-hash-table-eq)))
      (let lp ((rest lst) (mods '()))
        (core-match rest
          ((in . rest)
           (let ((ctx (import-context in)))
             (if (hash-get tab ctx)
               (lp rest mods)
               (begin
                 (hash-put! tab ctx #t)
                 (lp rest (cons ctx mods))))))
          (else
           (for-each _gx#eval-module (reverse mods)))))))

  ((if (pair? in) import* import1) in))

;; bootstrap module eval - init-gx! sets to gx#core-eval-module
(define (_gx#eval-module obj)
  (let ((key (if (gx#module-context? obj)
               (gx#module-context-path obj)
               obj)))
    (cond
     ((hash-get _gx#*modules* key) => values) ; bootstrap import
     (else
      (gx#core-eval-module obj)))))

(define (_gx#display-exception e port)
  (cond
   ((syntax-error? e)
    (parameterize ((current-output-port port))
      (displayln "Syntax Error")
      (_gx#display-syntax-error e)))
   ((method-ref e 'display-exception)
    => (lambda (f) (f e port)))
   (else
    (##default-display-exception e port))))

(define (_gx#display-syntax-error e)
  (define (location)
    (let lp ((rest (error-irritants e)))
      (core-match rest
        ((hd . rest)
         (or (&AST-source hd)
             (lp rest)))
        (else #f))))

  (display        "*** ERROR IN ")
  (cond
   ((location)
    => (lambda (where)
         (##display-locat where #t (current-output-port))))
   (else (display "?")))
  (newline)
  (display        "--- Syntax Error")
  (cond
   ((error-trace e)
    => (lambda (where) (displayln " at " where ": " (error-message e))))
   (else (displayln ": " (error-message e))))
  (core-match (error-irritants e)
    ((stx . rest)
     (display     "... form:   ")
     (_gx#pp-syntax stx)
     (for-each
       (lambda (detail)
         (display "... detail: ")
         (write (&AST->datum detail))
         (cond
          ((&AST-source detail)
           => (lambda (loc)
                (display " at ")
                (##display-locat loc #t (current-output-port)))))
         (newline))
       rest))
    (else (void)))
  (cond
   ((method-ref e 'display-error-trace) => (lambda (displayf) (displayf e)))))
