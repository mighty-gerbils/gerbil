;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil runtime init
prelude: "../core"
package: gerbil/runtime
namespace: #f

(export #t)
(import "gambit" "system" "util" "loader" "control" "mop" "mop-system-classes" "error" "interface" "hash" "thread" "syntax" "eval"  "repl")


(def __scheme-source
  (make-parameter #f))

;; load the interpreter environment
(def (__load-gxi)
  (__current-compiler __compile-top)
  (__current-expander  gx#core-expand)
  (set! __eval-module gx#core-eval-module)

  (def +readtable+ __*readtable*)
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
  (parameterize ((__scheme-source path))
    (##load path (lambda args #f) #t #t #f)))

;; expander stuffs
(def (__expand-source src)
  (def (expand src)
    (__compile-top
     (gx#core-expand (__source->syntax src))))

  (def (no-expand src)
    (cond
     ((__scheme-source)
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
          (parameterize ((__scheme-source 'macro))
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

(def (__eval-module obj)
  (gx#core-eval-module obj))

(def (__interrupt-handler)
  (when (getenv "GERBIL_DEBUG" #f)
    (newline (current-error-port))
    (display "--- continuation backtrace:" (current-error-port))
    (newline (current-error-port))
    (let (stack-trace-head
          (or (string->number (getenv "GERBIL_DEBUG_STACKTRACE" "10"))
              10))
      (continuation-capture
       (lambda (cont)
         (display-continuation-backtrace cont (current-error-port) 1 1 0 stack-trace-head)))))
  (##default-user-interrupt-handler))

(def (gerbil-runtime-init! builtin-modules)
  (unless __runtime-initialized
    ;; set this to true, we want those stack traces in our programs
    (dump-stack-trace? #t)
    ;; initialize the load path
    (let* ((home (gerbil-home))
           (libdir (path-expand "lib" home))
           (userpath
            (path-expand "lib" (gerbil-path)))
           (loadpath
            (if (getenv "GERBIL_BUILD_PREFIX" #f)
              [libdir]
              [userpath libdir]))
           (loadpath
            (cond
             ((getenv "GERBIL_LOADPATH" #f)
              => (lambda (envvar)
                   (append
                    (filter (lambda (x) (not (string-empty? x)))
                            (string-split envvar #\:))
                    loadpath)))
             (else loadpath))))
      (set-load-path! loadpath))

    ;; initialize the modue registry
    (for-each
      (lambda (mod)
        (hash-put! __modules mod 'builtin)
        (hash-put! __modules (string-append mod "~0") 'builtin))
      builtin-modules)

    ;; set the interrupt-handler
    (current-user-interrupt-handler __interrupt-handler)

    ;; et the readtable
    (current-readtable __*readtable*)

    ;; randomize the default random source
    (random-source-randomize! default-random-source)
    ;; all done
    (set! __runtime-initialized #t)))

;; expander loading hook
(def __expander-loaded #f)
(def __runtime-initialized #f)

(def (gerbil-load-expander!)
  (unless __runtime-initialized
    (error "runtime has not been initialized"))
  (unless __expander-loaded
    (__load-gxi)
    ;; and make it idempotent
    (set! __expander-loaded #t)))
