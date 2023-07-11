;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Gerbil-gambc interpreter support
(##namespace (""))
;;(include "gx-gambc#.scm")

(declare
  (block)
  (standard-bindings)
  (extended-bindings))


(declare
 ;; (block)
 (standard-bindings) (extended-bindings)

  (not inline)
  ;; (debug)
  ;; (debug-location)
  ;; (debug-source)
  ;; (debug-environments)
 )

;; (define __gx#default-gerbil-home "/usr/local/lib/gerbil")

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
(define (gerbil-lang)
  (string->symbol (getenv "GERBIL_LANG" "gerbil")))

(define (_gx#load-gxi #!optional (hook-expander? #t))
  (define +readtable+ _gx#*readtable*)
  (_gx#init-gx!)
  ;; do this here so that import failures can report friendly error messages
  (set! ##display-exception-hook _gx#display-exception)
  (let* ((core (gx#import-module ':gerbil/core))
         (pre  (gx#make-prelude-context core)))
    (gx#current-expander-module-prelude pre)
    (gx#core-bind-root-syntax! ':<core> pre #t)
    (let ((lang (gerbil-lang)))
      (case lang
        ((gerbil)
         (gx#eval-syntax '(import :gerbil/core)))
        ((polydactyl)
         (gx#eval-syntax '(import :gerbil/polydactyl))
         (set! +readtable+ (gx#eval-syntax '|gerbil/polydactyl[1]#*readtable*|)))
        ((r7rs)
         (gx#eval-syntax '(import :scheme/r7rs :scheme/base)))
        (else
         (gx#eval-syntax `(import ,lang))))))
  (when hook-expander?
    ;; avoid loops from phi evals
    (gx#current-expander-compile _gx#compile-top-source)
    ;; hook the expander
    (set! ##expand-source _gx#expand-source)
    (unless _gx#real-macro-descr
      (set! _gx#real-macro-descr ##macro-descr))
    (set! ##macro-descr _gx#macro-descr)
    ;; hook the readtables
    (set! ##main-readtable _gx#*readtable*)
    (for-each
      (lambda (port)
        (input-port-readtable-set! port +readtable+))
      (list ##stdin-port ##console-port))
    (for-each
      (lambda (port)
        (output-port-readtable-set! port
         (readtable-sharing-allowed?-set (output-port-readtable port) #t)))
      (list ##stdout-port ##console-port))))

(define (_gx#gxi-init-interactive! cmdline)
  (define (load-init init.ss)
    ;; load gerbil interactive init
    (let ((init-file (path-expand (string-append "lib/" init.ss) (getenv "GERBIL_HOME" __gx#default-gerbil-home))))
      (gx#eval-syntax `(include ,init-file)))
    ;; if it exists, load user's ~/.gerbil/init.ss
    (let ((init-file (string-append "~/.gerbil/" init.ss)))
      (if (file-exists? init-file)
        (gx#eval-syntax `(include ,init-file)))))

  (case (gerbil-lang)
    ((gerbil polydactyl)
     (load-init "init.ss"))
    ((r7rs)
     (load-init "r7rs-init.ss"))))

;; hook load to be able to load raw gambit code when the expander is hooked
(define (load-scheme path)
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
  (let ((current (&current-module-libpath))
        (paths (map path-normalize paths)))
    (&current-module-libpath (append paths current))))

(define (cons-expander-load-path . paths)
  (let ((current (gx#current-expander-module-library-path))
        (paths (map path-normalize paths)))
    (gx#current-expander-module-library-path (append paths current))))

(define (with-cons-load-path thunk . paths)
  (apply with-cons-library-load-path
    (lambda () (apply with-cons-expander-load-path thunk paths))
    paths))

(define (with-cons-library-load-path thunk . paths)
  (let ((current (&current-module-libpath))
        (paths (map path-normalize paths)))
    (parameterize ((&current-module-libpath (append paths current)))
      (thunk))))

(define (with-cons-expander-load-path thunk . paths)
  (let ((current (gx#current-expander-module-library-path))
        (paths (map path-normalize paths)))
    (parameterize ((gx#current-expander-module-library-path (append paths current)))
      (thunk))))

;; stuffs
(define (_gx#expand-source src)
  (define (expand src)
    ;; (displayln "In expand" )

    (_gx#compile-top
     (gx#core-expand (_gx#source->syntax src))))

  (define (no-expand src)
    #;(displayln "Trying no expand " (_gx#loading-scheme-source)
               "\n"
               (if  (##source? src)
                    (##source-code src)
                    "  NOt Sotrce"))
    (cond
     ((_gx#loading-scheme-source)
      src)
     ((##source? src)
      (let ((code (##source-code src)))
        (and (pair? code)
             (eq? __noexpand: (##car code))
             (##cdr code))))
     (else #f)))

  #;(displayln "expand-source " src " "
             (and  (##source? src) (##source-code src)))

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

(define-macro (%make-AST e source)
  `(##structure AST::t ,e ,source))

(define (_gx#source->syntax src)
  (let recur ((e src))
    (cond
     ((##source? e)
      (%make-AST (recur (##source-code e)) (##source-locat e)))
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

#;(define (_gx#compile-top stx)
(_gx#compile (gx#core-compile-top-syntax stx)))

(define (_gx#compile-top stx)
  #;(displayln "compile top" stx)
  (let ((comp-me (gx#core-compile-top-syntax stx)
         #;(with-exception-handler
             (lambda (e)
               (displayln "failed trying " gx#core-compile-top-syntax
                          (eq? gx#core-compile-top-syntax _gx#dbug_comp)
                          ;; gx#dbug-import-modules
                          )
               (display-exception e)
               (_gx#pp-syntax stx) (exit 0))
           (lambda ()
             (displayln "Calling Core compile top syntax" gx#core-compile-top-syntax)
             (gx#core-compile-top-syntax stx)))))
    #;(displayln "compile" comp-me)
    (##force-output)
    (_gx#compile comp-me)))

#;(define (_gx#compile-top stx)
  (displayln "trying " stx ())
  (let ((comp-me (gx#core-compile-top-syntax stx)))
    (displayln "compile" comp-me)
    (##force-output)
    (_gx#compile comp-me)))

(define (_gx#eval-import in)
  (define mods (make-hash-table-eq))

  (define (import1 in phi)
    #;(displayln "eval import 1" (_gx#vector->list in) phi)
    (cond
     ((gx#module-import? in)
      #;(displayln "Module IMpoty?")
      (let ((iphi (fx+ phi (gx#module-import-phi in))))
        (when (fxzero? iphi)
          (eval1
           (gx#module-export-context
            (gx#module-import-source in))))))
     ((gx#module-context? in)
      #;(displayln "Module Context "  in)
      (when (fxzero? phi)
        (eval1 in)))
     ((gx#import-set? in)
      #;(displayln "Import SEt!?" (fx+ phi (gx#import-set-phi in))
                 (gx#import-set-source in))
      (let ((iphi (fx+ phi (gx#import-set-phi in))))
        (cond
         ((fxzero? iphi)
          (eval1 (gx#import-set-source in)))
         ((fxpositive? iphi)
          (for-each (lambda (in) (import1 in iphi))
                    (gx#module-context-import (gx#import-set-source in)))))))
     (else
      (error "Unexpected import" in))))

  (define (eval1 ctx)
    #;(displayln "In Eval1 for module" ctx
               " unless " (hash-get mods ctx)
               " evaling " (gx#expander-context-id ctx))
    (unless (hash-get mods ctx)
      #;(displayln "Evaling Module now! "
                 (gx#expander-context-id ctx))
      (hash-put! mods ctx #t)
      (_gx#eval-module ctx)))

  #;(displayln "Evaling import" in)
  (if (pair? in)
      (for-each (lambda (in) (import1 in 0)) in)
      (import1 in 0))
#;(displayln "END: Trying to see the last context \n")
  #;  (with-exception-catcher
     (lambda (e) (display-exception e)
             (displayln "Nope, caught excrption"))
     (lambda () (gx#dbg-core-cxt)
             (displayln "now? " gx#core-dbg-cxt)))
    #;(displayln "\n----\n")


  )

;; bootstrap module eval - init-gx! sets to gx#core-eval-module
(define (_gx#eval-module obj)
  (displayln "Are we here or gx#core-eval-module?" obj)
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
