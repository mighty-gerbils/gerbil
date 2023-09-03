;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Gerbil-gambc interpreter support
(##namespace (""))
;;(include "gx-gambc#.scm")

(declare
  (block)
  (standard-bindings)
  (extended-bindings))

(define __gx#default-gerbil-home
  (path-expand "~~"))

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
  (define +readtable+ _gx#*readtable*)
  (_gx#init-gx!)
  ;; do this here so that import failures can report friendly error messages
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

;; bootstrap compatibility shim
(define (_gx#gxi-init-interactive! cmdline)
  (void))

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
         (paths (map path-expand paths))
         (paths (filter (lambda (x) (not (member x current))) paths)))
    (&current-module-libpath (append current paths))))

(define (add-expander-load-path . paths)
  (let* ((current (gx#current-expander-module-library-path))
         (paths (map path-expand paths))
         (paths (filter (lambda (x) (not (member x current))) paths)))
    (gx#current-expander-module-library-path (append current paths))))

(define (cons-load-path . paths)
  (apply cons-library-load-path paths)
  (apply cons-expander-load-path paths))

(define (cons-library-load-path . paths)
  (let ((current (&current-module-libpath))
        (paths (map path-expand paths)))
    (&current-module-libpath (append paths current))))

(define (cons-expander-load-path . paths)
  (let ((current (gx#current-expander-module-library-path))
        (paths (map path-expand paths)))
    (gx#current-expander-module-library-path (append paths current))))

(define (with-cons-load-path thunk . paths)
  (apply with-cons-library-load-path
    (lambda () (apply with-cons-expander-load-path thunk paths))
    paths))

(define (with-cons-library-load-path thunk . paths)
  (let ((current (&current-module-libpath))
        (paths (map path-expand paths)))
    (parameterize ((&current-module-libpath (append paths current)))
      (thunk))))

(define (with-cons-expander-load-path thunk . paths)
  (let ((current (gx#current-expander-module-library-path))
        (paths (map path-expand paths)))
    (parameterize ((gx#current-expander-module-library-path (append paths current)))
      (thunk))))

;; stuffs
(define (_gx#expand-source src)
  (define (expand src)
    (_gx#compile-top
     (gx#core-expand (_gx#source->syntax src))))

  (define (no-expand src)
    (cond
     ((_gx#loading-scheme-source)
      src)
     ((##source? src)
      (let ((code (##source-code src)))
        (and (pair? code)
             (eq? __noexpand: (##car code))
             (##cdr code))))
     (else #f)))

  ;;(displayln "expand-source " src)

  (cond
   ((no-expand src) => values)
   (else (expand src))))

;; hook to make gambit macro expansion work with a hooked expander
;; ##macro-descr recurses into the expander through ##eval-top,
;; which breaks begin-foreign
(define (_gx#macro-descr src def-syntax?)
  (define (fail!)
    (##raise-expression-parsing-exception
     'ill-formed-macro-transformer
     src))

  (define (make-descr size)
    (let ((expander
           (parameterize ((_gx#loading-scheme-source 'macro))
             (##eval-top src ##interaction-cte))))
      (if (procedure? expander)
        (##make-macro-descr def-syntax? size expander src)
        (fail!))))

  (if def-syntax?
    (make-descr -1)
    (let ((code (##source-code src)))
      (if (and (##pair? code)
               (##memq (##source-code (##sourcify (##car code) src))
                       '(##lambda lambda)))
        (begin
          (##shape src src -3)
          (make-descr (##form-size (##sourcify (##cadr code) src))))
        (fail!)))))

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

(define (_gx#compile-top stx)
  (_gx#compile (gx#core-compile-top-syntax stx)))

(define (_gx#eval-import in)
  (define mods (make-hash-table-eq))

  (define (import1 in phi)
    (cond
     ((gx#module-import? in)
      (let ((iphi (fx+ phi (gx#module-import-phi in))))
        (when (fxzero? iphi)
          (eval1
           (gx#module-export-context
            (gx#module-import-source in))))))
     ((gx#module-context? in)
      (when (fxzero? phi)
        (eval1 in)))
     ((gx#import-set? in)
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
    (unless (hash-get mods ctx)
      (hash-put! mods ctx #t)
      (_gx#eval-module ctx)))

  (if (pair? in)
    (for-each (lambda (in) (import1 in 0)) in)
    (import1 in 0)))

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

;; executable setup
(define (gerbil-runtime-init! builtin-modules)
  (let* ((home (gerbil-home))
         (libdir (path-expand "lib" home))
         (loadpath
          (cond
           ((getenv "GERBIL_LOADPATH" #f)
            => (lambda (envvar)
                 (filter (lambda (x) (not (string-empty? x)))
                         (string-split envvar #\:))))
           (else '())))
         (userpath
          (path-expand "lib" (getenv "GERBIL_PATH" "~/.gerbil")))
         (loadpath
          (cons userpath loadpath)))
    (&current-module-libpath (cons libdir loadpath)))

  (let* ((registry-entry (lambda (m) (cons m 'builtin)))
         (runtime-modules '("gx-gambc0" "gx-gambc1" "gx-gambc2" "gx-gambc"))
         (module-registry
         (let lp ((rest builtin-modules) (registry '()))
           (core-match rest
             ((mod . rest)
              (lp rest
                  (cons* (registry-entry (string-append mod "__0"))
                         (registry-entry (string-append mod "__rt"))
                         registry)))
             (else
              (list->hash-table
               (append (map registry-entry runtime-modules)
                       registry)))))))
    (&current-module-registry module-registry))

  (current-readtable _gx#*readtable*)
  (set! ##display-exception-hook _gx#display-exception))

;; expander loading hook
(define __gx#expander-loaded #f)

(define (gerbil-load-expander!)
  (unless __gx#expander-loaded
    (_gx#load-gxi)
    ;; and make it idempotent
    (set! __gx#expander-loaded #t)))

;; define this for compatibility with existing (older) dynamic exe code
(define (_gx#load-expander!)
  (gerbil-load-expander!))

;; home sweet home
(define (gerbil-home)
  (getenv "GERBIL_HOME" __gx#default-gerbil-home))
