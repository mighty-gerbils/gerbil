;;; -*- Gerbil -*-
;;; © vyzo
;;; script to build "BACH", the universal gerbil binary
(import :gerbil/compiler)

(def build-home
  (getenv "GERBIL_BUILD_PREFIX" (gerbil-home)))

(def default-gerbil-gsc
  (path-expand "bin/gsc" build-home))

(def (gerbil-gsc)
  (getenv "GERBIL_GSC" default-gerbil-gsc))

(def (gerbil-gcc)
  (getenv "GERBIL_GCC" "gcc"))

(def gerbil-bindir
  (path-expand "bin" build-home))
(def gerbil-libdir
  (path-expand "lib" build-home))

(def gambit-libdir
  (path-expand "lib" (getenv "GERBIL_PREFIX")))

(cond-expand
 (freebsd
  (def default-ld-options ["-lutil" "-lm"]))
 (netbsd
  (def default-ld-options ["-lm"]))
 (else
  (def default-ld-options ["-ldl" "-lm"])))

(def builtin-modules
  '(;; :gerbil/runtime
    "gerbil/runtime/gambit"
    "gerbil/runtime/util"
    "gerbil/runtime/table"
    "gerbil/runtime/control"
    "gerbil/runtime/system"
    "gerbil/runtime/c3"
    "gerbil/runtime/mop"
    "gerbil/runtime/mop-system-classes"
    "gerbil/runtime/error"
    "gerbil/runtime/interface"
    "gerbil/runtime/hash"
    "gerbil/runtime/thread"
    "gerbil/runtime/syntax"
    "gerbil/runtime/eval"
    "gerbil/runtime/repl"
    "gerbil/runtime/loader"
    "gerbil/runtime/init"
    "gerbil/runtime"
    ;; :gerbil/gambit
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
    "gerbil/expander/init"
    "gerbil/expander"
    ;; :gerbil/compiler
    "gerbil/compiler/base"
    "gerbil/compiler/method"
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

(def bach-main
  "gerbil/main")

(def (invoke program args)
  (let* ((proc (open-process [path: program arguments: args
                                    stdout-redirection: #f
                                    stderr-redirection: #f]))
         (status (process-status proc)))
    (close-port proc)
    (unless (zero? status)
      (error "process exited abnormally" program status))))

(def (static-file-name mod)
  (path-expand (string-append (string-join (string-split mod #\/) "__") ".scm")
               (path-expand "static" gerbil-libdir)))

(def (replace-extension path ext)
  (string-append (path-strip-extension path) ext))

;; first compile the module
(displayln "... compile " bach-main)
(compile-module (string-append bach-main ".ss")
                [output-dir: gerbil-libdir
                 optimize: (not (getenv "GERBIL_BUILD_NOOPT" #f))
                 generate-ssxi: #f
                 invoke-gsc: #f static: #t])

;; and then compile the binary
(let* ((builtin-modules-scm (map static-file-name builtin-modules))
       (builtin-modules-c (map (cut replace-extension <> ".c") builtin-modules-scm))
       (builtin-modules-o (map (cut replace-extension <> ".o") builtin-modules-scm))
       (bach-main-scm (static-file-name bach-main))
       (bach-main-c (replace-extension bach-main-scm ".c"))
       (bach-main-o (replace-extension bach-main-scm ".o"))
       (bach-link-c (path-expand "gerbil-link.c" gerbil-libdir))
       (bach-link-o (replace-extension bach-link-c ".o"))
       (gambit-sharp (path-expand "_gambit#.scm" gerbil-libdir))
       (include-gambit-sharp
        (string-append "(include \"" gambit-sharp "\")"))
       (gsc-gx-macros
        (if (gerbil-runtime-smp?)
          ["-e" "(define-cond-expand-feature|enable-smp|)"
           "-e" include-gambit-sharp]
          ["-e" include-gambit-sharp]))
       (output-bin
        (path-expand "gerbil" gerbil-bindir))
       (configure-flags (string-split (configure-command-string) #\'))
       (gerbil-shared? (member "--enable-shared" configure-flags))
       (enable-openssl? (member "--enable-openssl" configure-flags))
       (rpath-options
        (if gerbil-shared?
          [(string-append (cond-expand (darwin "-Wl,-rpath,") (else "-Wl,-rpath="))
		                  gambit-libdir)]
          []))
       (extra-ld-options (if enable-openssl? ["-lssl" "-lcrypto"] [])))
  (displayln "... link " output-bin)
  (invoke (gerbil-gsc)
          ["-link" "-o" bach-link-c
           "-track-scheme"
           gsc-gx-macros ...
           builtin-modules-scm ...
           bach-main-scm])
  (for-each (lambda (path-c)
              (add-compile-job!
               (lambda () (invoke (gerbil-gsc) ["-obj" "-cc-options" "-g" path-c]))
               `(compile ,path-c)))
            [builtin-modules-c ... bach-main-c bach-link-c])
  (execute-pending-compile-jobs!)
  (displayln "... build " output-bin)
  (invoke (gerbil-gcc)
          ["-o" output-bin
           rpath-options ...
           builtin-modules-o ...
           bach-main-o
           bach-link-o
           "-L" gerbil-libdir "-lgambit"
           default-ld-options ...
           extra-ld-options ...])
  ;; clean up
  (delete-file bach-main-scm)
  (delete-file bach-link-c)
  (delete-file bach-link-o)
  (for-each (lambda (ext)
              (let (path (path-expand (string-append bach-main ext) gerbil-libdir))
                (when (file-exists? path)
                  (delete-file path))))
            '(".ssi" ".scm" "~0.scm" )))
