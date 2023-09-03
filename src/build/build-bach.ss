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

(def gerbil-bindir
  (path-expand "bin" build-home))
(def gerbil-libdir
  (path-expand "lib" build-home))

(def gambit-libdir
  (path-expand "lib" (getenv "GERBIL_PREFIX")))

(def gerbil-runtime
  '("gx-gambc0"
    "gx-gambc1"
    "gx-gambc2"
    "gx-gambc"))

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

;; first compile the module
(displayln "... compile " bach-main)
(compile-module (string-append bach-main ".ss")
                [output-dir: gerbil-libdir
                 optimize: #t generate-ssxi: #f
                 invoke-gsc: #t static: #t])

;; and then compile the binary
(let* ((runtime-scm (map static-file-name gerbil-runtime))
       (builtin-modules-scm (map static-file-name builtin-modules))
       (bach-main-scm (static-file-name bach-main))
       (gx-gambc-macros (static-file-name "gx-gambc#"))
       (include-gx-gambc-macros (string-append "(include \"" gx-gambc-macros "\")"))
       (gambit-sharp (path-expand "_gambit#.scm" gerbil-libdir))
       (include-gambit-sharp
        (string-append "(include \"" gambit-sharp "\")"))
       (gsc-gx-macros
        (if (gerbil-runtime-smp?)
          ["-e" "(define-cond-expand-feature|enable-smp|)"
           "-e" include-gambit-sharp "-e" include-gx-gambc-macros]
          ["-e" include-gambit-sharp "-e" include-gx-gambc-macros]))
       (gsc-runtime-args
        "-:i8,f8,-8,t8")
       (output-bin
        (path-expand "gerbil" gerbil-bindir))
       (cc-options
        (string-append "-Wl,-rpath=" gambit-libdir)))
  (displayln "... build " output-bin)
  (invoke (gerbil-gsc)
          [gsc-runtime-args
           "-exe" "-o" output-bin
           "-cc-options" cc-options
           gsc-gx-macros ...
           runtime-scm ...
           builtin-modules-scm ...
           bach-main-scm])
  ;; clean up
  (delete-file bach-main-scm)
  (for-each (lambda (ext)
              (delete-file (path-expand (string-append bach-main ext) gerbil-libdir)))
            '(".ssi" "__0.o1" "__rt.o1")))
