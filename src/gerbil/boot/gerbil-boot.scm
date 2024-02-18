(define __gerbil-boot-modules
  '("gerbil/runtime/gambit"
    "gerbil/runtime/util"
    "gerbil/runtime/table"
    "gerbil/runtime/control"
    "gerbil/runtime/system"
    "gerbil/runtime/c3"
    "gerbil/runtime/mop"
    "gerbil/runtime/error"
    "gerbil/runtime/interface"
    "gerbil/runtime/thread"
    "gerbil/runtime/syntax"
    "gerbil/runtime/eval"
    "gerbil/runtime/repl"
    "gerbil/runtime/loader"
    "gerbil/runtime/init"
    "gerbil/runtime"))

;; predefine some symbols to avoid undefined refences when loading gerbil/runtime/init
(define-macro (define-forward-reference proc)
  `(define (,proc . args)
     (error "undefined" 'proc)))

(define-macro (define-forward-references . procs)
  `(begin ,@(map (lambda (p) `(define-forward-reference ,p)) procs)))

(define-forward-references
  gx#core-bind-root-syntax!
  gx#core-compile-top-syntax
  gx#core-eval-module
  gx#core-expand
  gx#core-import-module
  gx#current-expander-compile
  gx#current-expander-context
  gx#current-expander-eval
  gx#current-expander-marks
  gx#current-expander-module-eval
  gx#current-expander-module-import
  gx#current-expander-module-library-path
  gx#current-expander-module-prelude
  gx#current-expander-module-registry
  gx#current-expander-phi
  gx#eval-syntax
  gx#import-module
  gx#import-set-phi
  gx#import-set-source
  gx#import-set?
  gx#make-prelude-context
  gx#make-top-context
  gx#module-context-import
  gx#module-context-path
  gx#module-context?
  gx#module-export-context
  gx#module-import-phi
  gx#module-import-source
  gx#module-import?
  load-module
  gerbil-runtime-init!
  gerbil-load-expander!)

;; load runtime
(for-each
  (lambda (mod)
    (let* ((mod0 (string-append mod "__0"))
           (modf (path-expand mod0
                   (path-expand "lib" (getenv "GERBIL_STAGE0")))))
      (load modf)))
  __gerbil-boot-modules)

;; initialize the runtime
(gerbil-runtime-init! __gerbil-boot-modules)

;; load and initialize the expander
(load-module "gerbil/expander__rt")
(gerbil-load-expander!)
(eval '(define-alias ##begin begin))
