;;; -*- Gerbil -*-
;;; © vyzo
;;; gerbil universal binary (aka "BACH") main function
package: gerbil
(import :gerbil/gambit
        :gerbil/expander
        :gerbil/compiler)
(include "gxi-main.ss")
(include "gxc-main.ss")

(def builtin-modules
  '(;; :gerbil/gambit
    "gerbil/gambit/ports"
    "gerbil/gambit/bytes"
    "gerbil/gambit/misc"
    "gerbil/gambit/random"
    "gerbil/gambit/continuations"
    "gerbil/gambit/os"
    "gerbil/gambit/exceptions"
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

(def builtin-tools
  '("pkg"
    "test"
    "tags"
    "prof"
    "ensemble"))

(def builtin-tools-synonyms
  '(("compile" . "gxc")
    ("interactive" . "gxi")))

(def builtin-tools-subcommand-synonyms
  '(("new" "gxkpg" "new")
    ("build" "gxpkg" "build")))

(def (print-usage! program-name)
  (displayln "Usage: " program-name " [option ...] arguments ...")
  (displayln)
  (displayln "Options: ")
  (displayln "  -h|--help|help                   display this help message exit")
  (displayln "  -v|--version|version             display the system version and exit")
  (displayln)
  (displayln "Arguments: ")
  (displayln "  <tool> tool-arg ...              execute a builtin gerbil tool")
  (displayln "  arg ...                          drop to the gerbil interpreter")
  (displayln)
  (displayln "Builtin Tools:")
  (displayln "  interactive                      the gerbil interpreter (gxi)")
  (displayln "  compile                          the gerbil compiler (gxc)")
  (displayln "  new                              the gerbil package template tool (gxpkg new)")
  (displayln "  build                            the gerbil build tool (gxkpg build)")
  (displayln "  pkg                              the gerbil package manager (gxpkg)")
  (displayln "  test                             the gerbil test runner (gxtest)")
  (displayln "  tags                             the gerbil tag generator (gxtags)")
  (displayln "  prof                             the gerbil profiler (gxprof)")
  (displayln "  ensemble                         the gerbil actor ensemble manager (gxensemble)")
  (displayln)
  (displayln "Try " program-name " <tool> [-h|--help|help] for help on tool usage" ))

(extern namespace: #f
  gerbil-runtime-init!)

(def (init!)
  (gerbil-runtime-init! builtin-modules)
  (gerbil-load-expander!)
  ;; hook ##begin -- gambit wraps it around scripts
  (eval-syntax '(define-alias ##begin begin)))

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
      ((member hd builtin-tools)
       (tool-main (string-append "gx" hd) rest))
      ((assoc hd builtin-tools-synonyms)
       => (lambda (p) (tool-main (cdr p) rest)))
      ((assoc hd builtin-tools-subcommand-synonyms)
       => (lambda (sub) (tool-main (cadr sub) (append (cdr sub) rest))))
      ((member hd '("-h" "--help" "help"))
       (print-usage! program-name))
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
