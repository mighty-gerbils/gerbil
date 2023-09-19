;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil runtime init
prelude: :gerbil/core
package: gerbil/runtime
namespace: #f

(export #t)
(import "gambit" "system" "util" "loader" "control" "mop" "error" "syntax" "eval"  "repl")

(def __loading-scheme-source
  (make-parameter #f))

(def (__init-gx!)
  ;; setup expander
  (gx#current-expander-marks  '())
  (gx#current-expander-phi     0)
  (gx#current-expander-context (gx#make-top-context))
  (gx#current-expander-module-library-path (current-module-library-path))
  (gx#current-expander-module-registry (make-hash-table))
  (gx#current-expander-module-import gx#core-import-module)
  (gx#current-expander-module-eval   gx#core-eval-module)
  (gx#current-expander-compile      __compile-top)
  (gx#current-expander-eval            ##eval)
  (gx#core-bind-root-syntax! ':<root> (gx#make-prelude-context #f) #t)
  ;; setup _gx
  (__current-context  __*top*)
  (__current-compiler __compile-top)
  (__current-expander  gx#core-expand)
  (set! __eval-module gx#core-eval-module))

;; load the interpreter environment
(def (__load-gxi)
  (def +readtable+ __*readtable*)
  (__init-gx!)
  ;; do this here so that import failures can report friendly error messages
  (let* ((core (gx#import-module ':gerbil/core))
         (pre  (gx#make-prelude-context core)))
    (gx#current-expander-module-prelude pre)
    (gx#core-bind-root-syntax! ':<core> pre #t)
    (gx#eval-syntax '(import :gerbil/core)))
  ;; avoid loops from phi evals
  (gx#current-expander-compile __compile-top-source)
  ;; hook the expander
  (##expand-source-set! __expand-source)
  (##macro-descr-set! __macro-descr)
  ;; hook the readtables
  (##main-readtable-set! __*readtable*)
  (for-each
    (lambda (port)
      (input-port-readtable-set! port +readtable+))
    (list ##stdin-port ##console-port))
  (for-each
    (lambda (port)
      (output-port-readtable-set! port
        (readtable-sharing-allowed?-set (output-port-readtable port) #t)))
    (list ##stdout-port ##console-port)))

;; bootstrap compatibility shim
(def (__gxi-init-interactive! cmdline)
  (void))

;; hook load to be able to load raw gambit code when the expander is hooked
(def (load-scheme path)
  (parameterize ((__loading-scheme-source path))
    (##load path (lambda args #f) #t #t #f)))

;; load path utils
(def (load-path)
  (values
    (library-load-path)
    (expander-load-path)))

(def (library-load-path)
  (current-module-library-path))

(def (expander-load-path)
  (gx#current-expander-module-library-path))

(def (add-load-path . paths)
  (apply add-library-load-path paths)
  (apply add-expander-load-path paths))

(def (add-library-load-path . paths)
  (let* ((current (current-module-library-path))
         (paths (map path-expand paths))
         (paths (filter (lambda (x) (not (member x current))) paths)))
    (current-module-library-path (append current paths))))

(def (add-expander-load-path . paths)
  (let* ((current (gx#current-expander-module-library-path))
         (paths (map path-expand paths))
         (paths (filter (lambda (x) (not (member x current))) paths)))
    (gx#current-expander-module-library-path (append current paths))))

(def (cons-load-path . paths)
  (apply cons-library-load-path paths)
  (apply cons-expander-load-path paths))

(def (cons-library-load-path . paths)
  (let ((current (current-module-library-path))
        (paths (map path-expand paths)))
    (current-module-library-path (append paths current))))

(def (cons-expander-load-path . paths)
  (let ((current (gx#current-expander-module-library-path))
        (paths (map path-expand paths)))
    (gx#current-expander-module-library-path (append paths current))))

(def (with-cons-load-path thunk . paths)
  (apply with-cons-library-load-path
    (lambda () (apply with-cons-expander-load-path thunk paths))
    paths))

(def (with-cons-library-load-path thunk . paths)
  (let ((current (current-module-library-path))
        (paths (map path-expand paths)))
    (parameterize ((current-module-library-path (append paths current)))
      (thunk))))

(def (with-cons-expander-load-path thunk . paths)
  (let ((current (gx#current-expander-module-library-path))
        (paths (map path-expand paths)))
    (parameterize ((gx#current-expander-module-library-path (append paths current)))
      (thunk))))

;; stuffs
(def (__expand-source src)
  (def (expand src)
    (__compile-top
     (gx#core-expand (__source->syntax src))))

  (def (no-expand src)
    (cond
     ((__loading-scheme-source)
      src)
     ((##source? src)
      (let (code (##source-code src))
        (and (pair? code)
             (eq? __noexpand: (##car code))
             (##cdr code))))
     (else #f)))

  (cond
   ((no-expand src))
   (else
    (expand src))))

;; hook to make gambit macro expansion work with a hooked expander
;; ##macro-descr recurses into the expander through ##eval-top,
;; which breaks begin-foreign
(def (__macro-descr src def-syntax?)
  (def (fail!)
    (##raise-expression-parsing-exception
     'ill-formed-macro-transformer
     src))

  (def (make-descr size)
    (let (expander
          (parameterize ((__loading-scheme-source 'macro))
            (##eval-top src ##interaction-cte)))
      (if (procedure? expander)
        (##make-macro-descr def-syntax? size expander src)
        (fail!))))

  (if def-syntax?
    (make-descr -1)
    (let (code (##source-code src))
      (if (and (##pair? code)
               (##memq (##source-code (##sourcify (##car code) src))
                       '(##lambda lambda)))
        (begin
          (##shape src src -3)
          (make-descr (##form-size (##sourcify (##cadr code) src))))
        (fail!)))))

(def (__source->syntax src)
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

(def (__compile-top-source stx)
  (cons __noexpand: (__compile-top stx)))

(def (__compile-top stx)
  (__compile (gx#core-compile-top-syntax stx)))

(def (__eval-import in)
  (def mods (make-hash-table-eq))

  (def (import1 in phi)
    (cond
     ((gx#module-import? in)
      (let (iphi (fx+ phi (gx#module-import-phi in)))
        (when (fxzero? iphi)
          (eval1
           (gx#module-export-context
            (gx#module-import-source in))))))
     ((gx#module-context? in)
      (when (fxzero? phi)
        (eval1 in)))
     ((gx#import-set? in)
      (let (iphi (fx+ phi (gx#import-set-phi in)))
        (cond
         ((fxzero? iphi)
          (eval1 (gx#import-set-source in)))
         ((fxpositive? iphi)
          (for-each (lambda (in) (import1 in iphi))
                    (gx#module-context-import (gx#import-set-source in)))))))
     (else
      (error "Unexpected import" in))))

  (def (eval1 ctx)
    (unless (hash-get mods ctx)
      (hash-put! mods ctx #t)
      (__eval-module ctx)))

  (if (pair? in)
    (for-each (lambda (in) (import1 in 0)) in)
    (import1 in 0)))

;; bootstrap module eval - init-gx! sets to gx#core-eval-module
(def (__eval-module obj)
  (let (key (if (gx#module-context? obj)
               (gx#module-context-path obj)
               obj))
    (cond
     ((hash-get __*modules* key) => values) ; bootstrap import
     (else
      (gx#core-eval-module obj)))))

(def (gerbil-runtime-init! builtin-modules)
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
          (if (getenv "GERBIL_BUILD_PREFIX" #f)
            loadpath
            (cons userpath loadpath))))
    (current-module-library-path (cons libdir loadpath)))

  (let* ((registry-entry (lambda (m) (cons m 'builtin)))
         (module-registry
          (let lp ((rest builtin-modules) (registry '()))
            (match rest
              ([mod . rest]
               (lp rest
                   (cons* (registry-entry (string-append mod "__0"))
                          (registry-entry (string-append mod "__rt"))
                          registry)))
              (else
               (list->hash-table
                registry))))))
    (current-module-registry module-registry))

  (current-readtable __*readtable*))

;; expander loading hook
(def __expander-loaded #f)

(def (gerbil-load-expander!)
  (unless __expander-loaded
    (__load-gxi)
    ;; and make it idempotent
    (set! __expander-loaded #t)))
