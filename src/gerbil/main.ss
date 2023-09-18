;;; -*- Gerbil -*-
;;; © vyzo
;;; gerbil universal binary (aka "BACH") main function
prelude: :gerbil/core
package: gerbil
(import :gerbil/runtime
        :gerbil/gambit
        :gerbil/expander
        :gerbil/compiler)
(include "gxi-main.ss")
(include "gxc-main.ss")

(def builtin-modules
  '(;; :gerbil/runtime
    "gerbil/runtime/gambit"
    "gerbil/runtime/util"
    "gerbil/runtime/system"
    "gerbil/runtime/loader"
    "gerbil/runtime/control"
    "gerbil/runtime/mop"
    "gerbil/runtime/error"
    "gerbil/runtime/syntax"
    "gerbil/runtime/eval"
    "gerbil/runtime/repl"
    "gerbil/runtime/init"
    "gerbil/runtime"
    ;; :gerbil/gambit
    "gerbil/gambit/ports"
    "gerbil/gambit/bytes"
    "gerbil/gambit/misc"
    "gerbil/gambit/random"
    "gerbil/gambit/continuations"
    "gerbil/gambit/os"
    "gerbil/gambit/threads"
    "gerbil/gambit/bits"
    "gerbil/gambit/hvectors"
    "gerbil/gambit/system"
    "gerbil/gambit/foreign"
    "gerbil/gambit/hash"
    "gerbil/gambit/readtables"
    "gerbil/gambit/fixnum"
    "gerbil/gambit/flonum"
    "gerbil/gambit/exact"
    "gerbil/gambit"
    ;; :gerbil/expander
    "gerbil/expander/common"
    "gerbil/expander/stx"
    "gerbil/expander/core"
    "gerbil/expander/top"
    "gerbil/expander/module"
    "gerbil/expander/compile"
    "gerbil/expander/root"
    "gerbil/expander/stxcase"
    "gerbil/expander"
    ;; :gerbil/compiler
    "gerbil/compiler/base"
    "gerbil/compiler/compile"
    "gerbil/compiler/optimize-base"
    "gerbil/compiler/optimize-xform"
    "gerbil/compiler/optimize-top"
    "gerbil/compiler/optimize-spec"
    "gerbil/compiler/optimize-ann"
    "gerbil/compiler/optimize-call"
    "gerbil/compiler/optimize"
    "gerbil/compiler/driver"
    "gerbil/compiler/ssxi"
    "gerbil/compiler"))

(def builtin-tool-commands
  '(("new"         "gxpkg" "new")
    ("build"       "gxpkg" "build")
    ("clean"       "gxpkg" "clean")
    ("pkg"         "gxpkg")
    ("test"        "gxtest")
    ("tags"        "gxtags")
    ("prof"        "gxprof")
    ("ensemble"    "gxensemble")
    ("interactive" "gxi")
    ("compile"     "gxc")))

(def builtin-tool-help
  '(("new"         "gxpkg" "help" "new")
    ("build"       "gxpkg" "help" "build")
    ("clean"       "gxpkg" "help" "clean")
    ("pkg"         "gxpkg" "help")
    ("test"        "gxtest" "-h")
    ("tags"        "gxtags" "-h")
    ("prof"        "gxprof" "-h")
    ("ensemble"    "gxensemble" "help")
    ("interactive" "gxi" "-h")
    ("compile"     "gxc" "-h")))

(def (print-usage! program-name)
  (displayln "Usage: " program-name " [option ...] arguments ...")
  (displayln)
  (displayln "Options: ")
  (displayln "  -h|--help                        display this help message exit")
  (displayln "  -v|--version|version             display the system version and exit")
  (displayln)
  (displayln "Arguments: ")
  (displayln "  <cmd> cmd-arg ...                execute a builtin tool command")
  (displayln "  arg ...                          drop to the gerbil interpreter")
  (displayln)
  (displayln "Commands:")
  (displayln "  new                              create a new project template (gxpkg new)")
  (displayln "  build                            build a gerbil package (gxpkg build)")
  (displayln "  clean                            clean build artifactacts for a package (gxpkg clean)")
  (displayln "  pkg                              invoke the gerbil package manager (gxpkg)")
  (displayln "  test                             run tests (gxtest)")
  (displayln "  tags                             create emacs tags (gxtags)")
  (displayln "  prof                             profile a dynamic executable module (gxprof)")
  (displayln "  ensemble                         invoke the gerbil actor ensemble manager (gxensemble)")
  (displayln "  interactive                      invoke the gerbil interpreter (gxi)")
  (displayln "  compile                          invoke the gerbil compiler (gxc)")
  (displayln "  help <cmd>                       display help for a tool command")
  (displayln)
  (displayln "Try " program-name " help <cmd> for help on tool command usage" ))

(extern namespace: #f
  gerbil-runtime-init!)

(def (init!)
  (gerbil-runtime-init! builtin-modules)
  (gerbil-load-expander!)
  ;; hook ##begin -- gambit wraps it around scripts
  (eval '(define-alias ##begin begin)))

(def +current-lang+ 'gerbil)
(def (set-lang! lang)
  (unless (equal? +current-lang+ lang)
    (let ((top (make-top-context))
          (lang-readtable #f)
          (lang-prelude #f))
      (parameterize ((current-expander-context top))
        (case lang
          ((gerbil)
           (eval-syntax '(import :gerbil/core))
           (set! lang-prelude (import-module ':gerbil/core))
           (set! lang-readtable _gx#*readtable*))
          ((polydactyl)
           (eval-syntax '(import :gerbil/polydactyl))
           (set! lang-prelude (import-module ':gerbil/polydactyl))
           (set! lang-readtable (eval-syntax '|gerbil/polydactyl[1]#*readtable*|)))
          ((r7rs)
           (eval-syntax '(import :scheme/r7rs :scheme/base))
           (set! lang-prelude (import-module ':scheme/r7rs))
           (set! lang-readtable (##make-standard-readtable)))
          (else
           (eval-syntax `(import ,lang))
           (set! lang-prelude (import-module lang))
           ;; TODO lang-specific readtables for user langs
           (set! lang-readtable _gx#*readtable*))))
      (current-expander-context top)
      (current-expander-module-prelude (make-prelude-context lang-prelude))
      (set! +current-lang+ lang)
      (set! ##main-readtable lang-readtable)
      (for-each
        (lambda (port)
          (input-port-readtable-set! port lang-readtable))
        [##stdin-port ##console-port]))))

(def (init-interactive!)
  (def (load-init! init.ss)
    ;; load interactive init
    (let (init-file (path-expand (path-expand init.ss "lib") (gerbil-home)))
      (when (file-exists? init-file)
        (eval-syntax `(include ,init-file))))
    ;; load user init if it exists
    (let (user-init-file (path-expand init.ss "~/.gerbil"))
      (when (file-exists? user-init-file)
        (eval-syntax `(include ,user-init-file)))))

  ;; TODO lang-specific init for user langs
  (case +current-lang+
    ((gerbil polydactyl)
     (load-init! "init.ss"))
    ((r7rs)
     (load-init! "r7rs-init.ss"))))

(def (find-runtime-symbol ctx id)
  (cond
   ((find-export-binding ctx id)
    => (lambda (bind)
         (unless (runtime-binding? bind)
           (error "export is not a runtime binding" id))
         (binding-id bind)))
   (else
    (error "module does not export symbol" (expander-context-id ctx) id))))

(def (find-export-binding ctx id)
  (cond
   ((find (match <>
            ((? module-export? xport)
            (and (eqv? (module-export-phi xport) 0)
                 (eq? (module-export-name xport) id)))
            (else #f))
          (module-context-export ctx))
    => core-resolve-module-export)
   (else #f)))

(def (tool-main program-name args)
  (cond
   ((equal? program-name "gxi")
    (apply gxi-main args))
   ((equal? program-name "gxc")
    (apply gxc-main args))
   (else
    (let* ((tool-id (string->symbol (string-append ":gerbil/tools/" program-name)))
           (tool-module (import-module tool-id #f #t))
           (tool-main-id (find-runtime-symbol tool-module 'main))
           (tool-main (eval tool-main-id)))
      (apply tool-main args)))))

(def (bach-main program-name args)
  (match args
    ([hd . rest]
     (cond
      ((member hd '("-h" "--help"))
       (print-usage! program-name))
      ((equal? "help" hd)
       (match rest
         ([cmd]
          (cond
           ((assoc cmd builtin-tool-help)
            => (lambda (help-cmd) (tool-main (cadr help-cmd) (cddr help-cmd))))
           (else
            (displayln "no help for topic " cmd)
            (print-usage! program-name))))
         (else
          (print-usage! program-name))))
      ((assoc hd builtin-tool-commands)
       => (lambda (cmd) (tool-main (cadr cmd) (append (cddr cmd) rest))))
      ((member hd '("-v" "--version" "version"))
       (displayln (gerbil-system-version-string)))
      (else
       ;; do gxi by default
       (apply gxi-main hd rest))))
    (else
     (gxi-main))))

(def (main)
  (init!)
  (let* ((cmdline      (command-line))
         (program      (car cmdline))
         (program-name (path-strip-directory program))
         (args         (cdr cmdline)))
    (if (string-prefix? "gx" program-name)
      ;; a gerbil tool
      (tool-main program-name args)
      ;; our main -- process arguments and dispatch
      (bach-main program-name args))))

(##main-set! main)
