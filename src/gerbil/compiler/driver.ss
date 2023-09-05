;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler compilation methods
package: gerbil/compiler
namespace: gxc

(import :gerbil/expander
        :gerbil/gambit/ports
        "base"
        "compile"
        "optimize"
        (only-in :gerbil/gambit/misc
                 pretty-print)
        (only-in :gerbil/gambit/ports
                 close-port open-process process-status)
        (only-in :gerbil/gambit/os
                 current-time time->seconds file-info file-info-size)
        (only-in :gerbil/gambit/threads
                 make-mutex with-lock))

(export compile-module compile-exe)

(def default-gerbil-gsc
  (path-expand "gsc" (path-expand "~~bin")))
(def default-gerbil-gcc "gcc")
(def default-gerbil-ar "ar")

(def +driver-mutex+ (make-mutex 'compiler/driver))
(defrules with-driver-mutex ()
  ((_ expr)
   (with-lock +driver-mutex+ (lambda () expr))))

(def (compile-timestamp)
  (inexact->exact (floor (time->seconds (current-time)))))

(def (compile-timestamp-nanos)
  (time->seconds (current-time)))

(def scheme-file-settings '(permissions: #o644 char-encoding: UTF-8 eol-encoding: lf))

(def (with-output-to-scheme-file path fun)
  (with-output-to-file [path: path . scheme-file-settings] fun))

(def +gerbil-gsc+ #f)
(def (gerbil-gsc)
  (unless +gerbil-gsc+
    (set! +gerbil-gsc+ (getenv "GERBIL_GSC" default-gerbil-gsc)))
  +gerbil-gsc+)

(def +gerbil-gcc+ #f)
(def (gerbil-gcc)
  (unless +gerbil-gcc+
    (set! +gerbil-gcc+ (getenv "GERBIL_GCC" default-gerbil-gcc)))
  +gerbil-gcc+)

(def +gerbil-ar+ #f)
(def (gerbil-ar)
  (unless +gerbil-ar+
    (set! +gerbil-ar+ (getenv "GERBIL_AR" default-gerbil-ar)))
  +gerbil-ar+)

(def gsc-runtime-args
  [;; force Gambit to use UTF-8:
   (cond-expand
     (,(##unbound? (##global-var-ref (##make-global-var '##get-io-settings)))
      "-:f8,-8,t8") ;; before v4.9.3-1081-g0680901f
     (else "-:i8,f8,-8,t8"))]) ;; works after v4.9.3-1101-g1f1ce436 - in between, you lose.

(cond-expand
  ;; Note: delete-file-or-directory first appeared in v4.9.4
  (,(##unbound? (##global-var-ref (##make-global-var 'delete-file-or-directory)))
   (def (delete-directory* dir)
     (for-each delete-file (directory-files dir))
     (delete-directory dir)))
  ((defined delete-file-or-directory)
   (def (delete-directory* dir)
     (delete-file-or-directory dir #t)))
  (else
   (extern namespace: #f delete-file-or-directory)
   (def (delete-directory* dir)
     (delete-file-or-directory dir #t))))

(def (compile-module srcpath (opts []))
  (unless (string? srcpath)
    (raise-compile-error "Invalid module source path" srcpath))

  (let ((outdir      (pgetq output-dir: opts))
        (invoke-gsc? (pgetq invoke-gsc: opts))
        (gsc-options (pgetq gsc-options: opts))
        (keep-scm?   (pgetq keep-scm: opts))
        (verbosity   (pgetq verbose: opts))
        (optimize    (pgetq optimize: opts))
        (debug       (pgetq debug: opts))
        (gen-ssxi    (pgetq generate-ssxi: opts)))
    (when outdir
      (with-driver-mutex (create-directory* outdir)))
    (when optimize
      (with-driver-mutex (optimizer-info-init!)))
    (parameterize ((current-compile-output-dir outdir)
                   (current-compile-invoke-gsc invoke-gsc?)
                   (current-compile-gsc-options gsc-options)
                   (current-compile-keep-scm keep-scm?)
                   (current-compile-verbose verbosity)
                   (current-compile-optimize optimize)
                   (current-compile-debug debug)
                   (current-compile-generate-ssxi gen-ssxi)
                   (current-compile-timestamp (compile-timestamp))
                   (current-expander-compiling? #t))
      (verbose "compile " srcpath)
      (compile-top-module (with-driver-mutex (import-module srcpath))))))

(def (compile-exe srcpath (opts []))
  (unless (string? srcpath)
    (raise-compile-error "Invalid module source path" srcpath))

  (let ((outdir      (pgetq output-dir: opts))
        (invoke-gsc? (pgetq invoke-gsc: opts))
        (gsc-options (pgetq gsc-options: opts))
        (keep-scm?   (pgetq keep-scm: opts))
        (verbosity   (pgetq verbose: opts)))
    (when outdir
      (with-driver-mutex (create-directory* outdir)))
    (parameterize ((current-compile-output-dir outdir)
                   (current-compile-invoke-gsc invoke-gsc?)
                   (current-compile-gsc-options gsc-options)
                   (current-compile-keep-scm keep-scm?)
                   (current-compile-verbose verbosity)
                   (current-compile-timestamp (compile-timestamp))
                   (current-expander-compiling? #t))
      (verbose "compile exe " srcpath)
      (compile-executable-module (with-driver-mutex (import-module srcpath)) opts))))

(def (compile-executable-module ctx opts)
  (if (pgetq full-program-optimization: opts)
    (compile-executable-module/full-program-optimization ctx opts)
    (compile-executable-module/separate ctx opts)))

(def (compile-executable-module/separate ctx opts)
  (def (generate-stub builtin-modules)
    (let (mod-main (find-runtime-symbol ctx 'main))
      (write `(define builtin-modules
                (append (quote ,builtin-modules) libgerbil-builtin-modules)))
      (write `(define (gerbil-main)
                (gerbil-runtime-init! builtin-modules)
                (apply ,mod-main (cdr (command-line)))))
      (write '(gerbil-main))
      (newline)))

  (def (get-gsc-link-opts)
    (let (opts (pgetq gsc-options: opts))
      (let lp ((rest opts) (opts []))
        (match rest
          (["-cc-options" _ . rest]
           (lp rest opts))
          (["-ld-options" _ . rest]
           (lp rest opts))
          ([hd . rest]
           (lp rest (cons hd opts)))
          (else
           (reverse opts))))))

  (def (get-gsc-cc-opts gerbil-staticdir)
    (let* ((opts (pgetq gsc-options: opts))
           (base (string-append "-I " gerbil-staticdir))
           (user-static-dir
            (path-expand
             (path-expand "lib/static" (getenv "GERBIL_PATH" "~/.gerbil"))))
           (base (string-append base " -I " user-static-dir)))
      (let lp ((rest opts))
        (match rest
          (["-cc-options" opts . _]
           ["-cc-options" (string-append base " " opts)])
          ([_ . rest]
           (lp rest))
          (else
           ["-cc-options" base])))))

  (def (get-output-ld-opts)
    (let (opts (pgetq gsc-options: opts))
      (let lp ((rest opts))
        (match rest
          (["-ld-options" opts . _]
           (filter not-string-empty? (string-split opts #\space)))
          ([_ . rest]
           (lp rest))
          (else [])))))

  (def (get-libgerbil-ld-opts libgerbil)
    (call-with-input-file (string-append libgerbil ".ldd") read))

  (def (replace-extension path ext)
    (string-append (path-strip-extension path) ext))

  (def (not-exclude-module? ctx)
    (let (id-str (symbol->string (expander-context-id ctx)))
      (and (not (string-prefix? "gerbil/" id-str))
           (not (string-prefix? "std/" id-str)))))

  (def (not-file-empty? path)
    (not (file-empty? path)))

  (def (not-string-empty? str)
    (not (string-empty? str)))

  (def (compile-stub output-scm output-bin)
    (let* ((gerbil-home      (getenv "GERBIL_BUILD_PREFIX" (gerbil-home)))
           (gerbil-libdir    (path-expand "lib" gerbil-home))
           (gerbil-staticdir (path-expand "static" gerbil-libdir))
           (gxlink           (path-expand "libgerbil-link" gerbil-libdir))
           (tmp              (path-expand
                              (string-append "gxc." (number->string (compile-timestamp-nanos)))
                              "/tmp"))
           (tmp-path         (lambda (f) (path-expand (path-strip-directory f) tmp)))
           (deps             (find-runtime-module-deps ctx))
           (deps             (filter not-exclude-module? deps))
           (src-deps-scm     (map find-static-module-file deps))
           (src-deps-scm     (filter not-file-empty? src-deps-scm))
           (src-deps-scm     (map path-expand src-deps-scm))
           (deps-scm         (map tmp-path src-deps-scm))
           (deps-c           (map (cut replace-extension <> ".c") deps-scm))
           (deps-o           (map (cut replace-extension <> ".o") deps-scm))
           (src-bin-scm      (find-static-module-file ctx))
           (src-bin-scm      (path-expand src-bin-scm))
           (bin-scm          (tmp-path src-bin-scm))
           (bin-c            (replace-extension bin-scm ".c"))
           (bin-o            (replace-extension bin-scm ".o"))
           (output-bin       (path-expand output-bin))
           (output-scm       (path-expand output-scm))
           (output-c         (replace-extension output-scm ".c"))
           (output-o         (replace-extension output-scm ".o"))
           (output_          (string-append (path-strip-extension output-scm) "_"))
           (output_-c        (string-append output_ ".c"))
           (output_-o        (string-append output_ ".o"))
           (gsc-opts         (get-gsc-link-opts))
           (gsc-cc-opts      (get-gsc-cc-opts gerbil-staticdir))
           (output-ld-opts   (get-output-ld-opts))
           (libgerbil.a      (path-expand "libgerbil.a" gerbil-libdir))
           (libgerbil.so     (path-expand "libgerbil.so" gerbil-libdir))
           (libgerbil-ld-opts
            (cond
             ((file-exists? libgerbil.so)
              (get-libgerbil-ld-opts libgerbil.so))
             ((file-exists? libgerbil.a)
              (get-libgerbil-ld-opts libgerbil.a))
             (else
              (raise-compile-error "libgerbil does not exist" libgerbil.a libgerbil.so))))
           (gerbil-rpath
            (string-append "-Wl,-rpath=" gerbil-libdir))
           (builtin-modules
            (map (lambda (mod) (symbol->string (expander-context-id mod)))
                 (cons ctx deps))))
      (with-output-to-scheme-file output-scm
        (cut generate-stub builtin-modules))
      (when (current-compile-invoke-gsc)
        (create-directory tmp)
        (for-each copy-file src-deps-scm deps-scm)
        (copy-file src-bin-scm bin-scm)
        (invoke (gerbil-gsc)
                [gsc-runtime-args
                 ... "-link" "-l" gxlink
                 (gsc-debug-options) ...
                 gsc-opts ...
                 deps-scm ...
                 bin-scm
                 output-scm])
        (invoke (gerbil-gsc)
                ["-obj"
                 gsc-cc-opts ...
                 deps-c ...
                 bin-c
                 output-c output_-c])
        (invoke (gerbil-gcc)
                ["-o" output-bin
                 deps-o ...
                 bin-o
                 output-o output_-o
                 output-ld-opts ...
                 gerbil-rpath
                 "-L" gerbil-libdir "-lgerbil" "-lgambit"
                 libgerbil-ld-opts ...])
        ;; clean up
        (for-each delete-file [output-c output_-c output-o output_-o])
        (delete-directory* tmp))))

  (let* ((output-bin (compile-exe-output-file ctx opts))
         (output-scm (string-append output-bin ".scmx")))
    (compile-stub output-scm output-bin)
    (unless (current-compile-keep-scm)
      (delete-file output-scm))))

(def (compile-executable-module/full-program-optimization ctx opts)
  (def (reset-declare)
    '(declare
       (gambit-scheme)
       (block)
       (core)
       (inline)
       (inline-primitives)
       (inlining-limit 350)
       (constant-fold)
       (lambda-lift)
       (standard-bindings)
       (extended-bindings)
       (run-time-bindings)
       (safe)
       (interrupts-enabled)
       (proper-tail-calls)
       (not generative-lambda)
       (optimize-dead-local-variables)
       (optimize-dead-definitions)
       (generic)
       (mostly-fixnum-flonum)))

  (def (generate-stub deps)
    (let ((mod-main (find-runtime-symbol ctx 'main))
          (reset-decl (reset-declare))
          (user-decl (user-declare)))
      (for-each
        (lambda (dep)
          (write '(##namespace ("")))
          (newline)
          (write reset-decl)
          (newline)
          (when user-decl
            (write user-decl)
            (newline))
          (write `(include ,dep))
          (newline))
        deps)
      (write `(define (gerbil-main)
                ;; we don't know what the tree shaker will throw out
                ;; so we cannot assume that compiled in modules are fully present
                ;; thus we initialize the runtime with an empty builtin module list
                ;; so that the user can actually load things if he needs to
                (gerbil-runtime-init! '())
                (apply ,mod-main (cdr (command-line)))))
      (write '(gerbil-main))
      (newline)))

  (def (static-include gsc-opts home)
    (def static-dir
      (path-expand "lib/static" home))
    (def user-static-dir
      (path-expand
       (path-expand "lib/static" (getenv "GERBIL_PATH" "~/.gerbil"))))
    (def cppflags
      (string-append "-I " static-dir " -I " user-static-dir))

    (cond
     ((member "-cc-options" gsc-opts)
      => (lambda (rest)
           (let* ((cell (cdr rest))
                  (opt (car cell)))
             (set! (car cell)
               (string-append opt " " cppflags))
             gsc-opts)))
     (else
      (cons* "-cc-options" cppflags gsc-opts))))

  (def (user-declare)
    (let* ((gsc-opts (pgetq gsc-options: opts))
           (gsc-prelude (and gsc-opts (member "-prelude" gsc-opts)))
           (gsc-prelude
            (and gsc-prelude
                 (read (open-input-string (cadr gsc-prelude))))))
      (let lp ((rest [gsc-prelude]) (user-decls []))
        (match rest
          ([expr . rest]
           (match expr
             (['declare . decls]
              (lp rest (foldl cons user-decls decls)))
             (['begin . exprs]
              (lp (append exprs rest) user-decls))
             (else
              (lp rest user-decls))))
          (else
           (if (null? user-decls)
             #f
             (cons 'declare (reverse user-decls))))))))

  (def (compile-stub output-scm output-bin)
    (let* ((gerbil-home (getenv "GERBIL_BUILD_PREFIX" (gerbil-home)))
           (gx-gambc
            (map (lambda (mod)
                   (path-expand (string-append mod ".scm")
                                (path-expand "lib/static" gerbil-home)))
                 '("gx-gambc0" "gx-gambc1" "gx-gambc2" "gx-gambc")))
           (gx-gambc-macros (path-expand "lib/static/gx-gambc#.scm" gerbil-home))
           (include-gx-gambc-macros (string-append "(include \"" gx-gambc-macros "\")"))
           (gambit-sharp (path-expand "lib/_gambit#.scm" gerbil-home))
           (include-gambit-sharp (string-append "(include \"" gambit-sharp "\")"))
           (bin-scm (find-static-module-file ctx))
           (deps (find-runtime-module-deps ctx))
           (deps (map find-static-module-file deps))
           (deps (filter (? (not file-empty?)) deps))
           (gsc-opts (or (pgetq gsc-options: opts) []))
           (gsc-opts (static-include gsc-opts gerbil-home))
           (gsc-gx-macros
            (if (gerbil-runtime-smp?)
              ["-e" "(define-cond-expand-feature|enable-smp|)"
               "-e" include-gambit-sharp "-e" include-gx-gambc-macros]
              ["-e" include-gambit-sharp "-e" include-gx-gambc-macros]))
           (gsc-args
            [gsc-runtime-args
             ... "-exe" "-o" output-bin
             (gsc-debug-options) ... gsc-opts ... gsc-gx-macros ...
             output-scm]))
      (with-output-to-scheme-file output-scm
        (cut generate-stub [gx-gambc ... deps ... bin-scm]))
      (when (current-compile-invoke-gsc)
        (invoke (gerbil-gsc) gsc-args))))

  (let* ((output-bin (compile-exe-output-file ctx opts))
         (output-scm (string-append output-bin ".scmx")))
    (compile-stub output-scm output-bin)
    (unless (current-compile-keep-scm)
      (delete-file output-scm))))

(def (find-export-binding ctx id)
  (cond
   ((find (match <>
            ((module-export _ _ 0 (eq? id)) #t)
            (else #f))
          (module-context-export ctx))
    => core-resolve-module-export)
   (else #f)))

(def (find-runtime-symbol ctx id)
  (cond
   ((find-export-binding ctx id)
    => (lambda (bind)
         (unless (runtime-binding? bind)
           (raise-compile-error "export is not a runtime binding" id))
         (binding-id bind)))
   (else
    (raise-compile-error "module does not export symbol"
                         (expander-context-id ctx) id))))

(def (find-runtime-module-deps ctx)
  (def ht (make-hash-table-eq))

  (def (import-set-template in phi)
    (let ((iphi (fx+ phi (import-set-phi in)))
          (imports (module-context-import (import-set-source in))))
      (let lp ((rest imports) (r []))
        (match rest
          ([in . rest]
           (cond
            ((module-context? in)
             (if (fxzero? iphi)
               (lp rest (cons in r))
               (lp rest r)))
            ((module-import? in)
             (let (iphi (fx+ phi (module-import-phi in)))
               (if (fxzero? iphi)
                 (lp rest (cons (module-export-context (module-import-source in)) r))
                 (lp rest r))))
            ((import-set? in)
             (let (xphi (fx+ iphi (import-set-phi in)))
               (cond
                ((fxzero? xphi)
                 (lp rest (cons (import-set-source in) r)))
                ((fxpositive? xphi)
                 (lp rest (foldl cons r (import-set-template in iphi))))
                (else
                 (lp rest r)))))
            (else
             (lp rest r))))
          (else r)))))

  (def (find-deps rest deps)
    (match rest
      ([hd . rest]
       (cond
        ((module-context? hd)
         (let ((id (expander-context-id hd))
               (imports (module-context-import hd)))
           (cond
            ((hash-get ht id)
             (find-deps rest deps))
            ((core-context-prelude hd)
             => (lambda (pre)
                  (let (xdeps (find-deps (cons pre imports) deps))
                    (hash-put! ht id hd)
                    (find-deps rest (cons hd xdeps)))))
            (else
             (let (xdeps (find-deps imports deps))
               (hash-put! ht id hd)
               (find-deps rest (cons hd xdeps)))))))
        ((prelude-context? hd)
         (let (id (expander-context-id hd))
           (cond
            ((hash-get ht id)
             (find-deps rest deps))
            (else
             (let (xdeps (find-deps (prelude-context-import hd) deps))
               (if (hash-get ht id)     ; imports picked up the module
                 (find-deps rest xdeps)
                 (begin
                   (hash-put! ht id hd)
                   (find-deps rest (cons hd xdeps)))))))))
        ((module-import? hd)
         (if (fxzero? (module-import-phi hd))
           (find-deps (cons (module-import-source hd) rest) deps)
           (find-deps rest deps)))
        ((module-export? hd)
         (find-deps (cons (module-export-context hd) rest) deps))
        ((import-set? hd)
         (cond
          ((fxzero? (import-set-phi hd))
           (find-deps (cons (import-set-source hd) rest) deps))
          ((fxpositive? (import-set-phi hd))
           (let (xdeps (import-set-template hd 0))
             (find-deps (foldl cons rest xdeps) deps)))
          (else
           (find-deps rest deps))))
        (else
         (error "Unexpected module import" hd))))
      (else deps)))

  (reverse
   (filter
    expander-context-id
    (find-deps
     (cond
      ((core-context-prelude ctx)
       => (lambda (pre) (cons pre (module-context-import ctx))))
      (else (module-context-import ctx)))
     []))))

(def (find-static-module-file ctx)
  (let* ((scm (string-append (static-module-name (expander-context-id ctx)) ".scm"))
         (dirs (current-expander-module-library-path))
         (dirs
          (cond
           ((current-compile-output-dir)
            => (cut cons <> dirs))
           (else dirs)))
         (dirs (map (cut path-expand "static" <>) dirs)))
    (let lp ((rest dirs))
      (match rest
        ([dir . rest]
         (let (path (path-expand scm dir))
           (if (file-exists? path)
             path
             (lp rest))))
        (else
         (raise-compile-error "cannot find static module" (expander-context-id ctx) scm))))))

(def (file-empty? path)
  (zero? (file-info-size (file-info path #t))))

(def (compile-top-module ctx)
  (parameterize ((current-expander-context ctx)
                 (current-expander-phi 0)
                 (current-expander-marks [])
                 (current-compile-symbol-table
                  (make-symbol-table))
                 (current-compile-runtime-sections
                  (make-hash-table-eq))
                 (current-compile-runtime-names
                  (make-hash-table)))
    (verbose "compile " (expander-context-id ctx))
    (when (current-compile-optimize)
      (with-driver-mutex (optimize! ctx)))
    (collect-bindings ctx)
    (compile-runtime-code ctx)
    (compile-meta-code ctx)
    (when (and (current-compile-optimize)
               (current-compile-generate-ssxi))
      (compile-ssxi-code ctx))))

(def (collect-bindings ctx)
  (apply-collect-bindings
   (module-context-code ctx)))

(def (compile-runtime-code ctx)
  (def (compile1 ctx)
    (let* ((code (module-context-code ctx))
           (rt (and (apply-find-runtime-code code)
                    (let (idstr (module-id->path-string (expander-context-id ctx)))
                      (string-append idstr "__0")))))
      (cond
       (rt
        (hash-put! (current-compile-runtime-sections) ctx rt)
        (generate-runtime-code ctx code))
       (else
        ;; just touch empty runtime code file in static
        (let (path (compile-static-output-file ctx))
          (with-output-to-scheme-file path void))))

      (generate-loader-code ctx code rt)))

  (def (context-timestamp ctx)
    (string->symbol
     (string-append (symbol->string (expander-context-id ctx))
                    "::timestamp")))

  (def (generate-runtime-code ctx code)
    (let* ((lifts (box []))
           (runtime-code
            (parameterize ((current-expander-context ctx)
                           (current-expander-phi 0)
                           (current-compile-lift lifts)
                           (current-compile-marks (make-hash-table-eq))
                           (current-compile-identifiers (make-bound-identifier-table)))
              (apply-generate-runtime code)))
           (runtime-code
            (if (null? (unbox lifts))
              runtime-code
              ['begin (reverse (unbox lifts)) ... runtime-code]))
           (runtime-code
            ['begin `(define ,(context-timestamp ctx) ,(current-compile-timestamp))
                    runtime-code])
           (scm0 (compile-output-file ctx 0 ".scm")))
      (let (scms (compile-static-output-file ctx))
        ;; copy compiled scm0 to static and delete when not keep-scm
        (parameterize ((current-compile-keep-scm #t))
          (compile-scm-file scm0 runtime-code))
        (when (file-exists? scms)
          (delete-file scms))
        (verbose "copy static module " scm0 " => " scms)
        (copy-file scm0 scms)
        (unless (current-compile-keep-scm)
          (delete-file scm0)))))

  (def (generate-loader-code ctx code rt)
    (let* ((loader-code
            (parameterize ((current-expander-context ctx))
              (apply-generate-loader code)))
           (loader-code
            (if rt
              ['begin loader-code ['load-module rt]]
              loader-code)))
      (parameterize ((current-compile-gsc-options #f))
        (compile-scm-file (compile-output-file ctx 'rt ".scm") loader-code))))

  (let (all-modules (cons ctx (lift-nested-modules ctx)))
    (for-each
      (lambda (ctx)
        ;; declarations are module scoped and are not inherited by nested modules
        (parameterize ((current-compile-decls []))
          (compile1 ctx)))
      all-modules)))

(def (compile-meta-code ctx)
  (def (compile-ssi code)
    (let* ((path (compile-output-file ctx #f ".ssi"))
           (prelude
            (let (super (phi-context-super ctx))
              (cond
               ((expander-context-id super) => (cut make-symbol ":" <>))
               (else ':<root>))))
           (ns (module-context-ns ctx))
           (idstr (symbol->string (expander-context-id ctx)))
           (pkg
            (cond
             ((string-rindex idstr #\/)
              => (lambda (x) (string->symbol (substring idstr 0 x))))
             (else #f)))
           (rt (hash-get (current-compile-runtime-sections) ctx)))
      (verbose "compile " path)
      (with-output-to-scheme-file path
        (lambda ()
          (displayln "prelude:" " " prelude)
          (when pkg (displayln "package:" " " pkg))
          (displayln "namespace:" " " ns)
          (newline)
          (pretty-print code)
          (when rt
            (pretty-print
             ['%#call ['%#ref '_gx#load-module] ['%#quote rt]]))))))

  (def (compile-phi part)
    (match part
      ([phi-ctx phi n code]
       (let (code
             (parameterize ((current-expander-context phi-ctx)
                            (current-expander-phi phi))
               (generate-runtime-phi code)))
         (compile-scm-file (compile-output-file ctx n ".scm") code #t)))))

  (let ((values ssi-code phi-code)
        (generate-meta-code ctx))
    (compile-ssi ssi-code)
    (for-each compile-phi phi-code)))

(def (compile-ssxi-code ctx)
  (let* ((path (compile-output-file ctx #f ".ssxi.ss"))
         (code (apply-generate-ssxi (module-context-code ctx)))
         (idstr (symbol->string (expander-context-id ctx)))
         (pkg
          (cond
           ((string-rindex idstr #\/)
            => (lambda (x) (string->symbol (substring idstr 0 x))))
           (else #f))))

    (verbose "compile " path)
    (with-output-to-scheme-file path
      (lambda ()
        (displayln "prelude: :gerbil/compiler/ssxi")
        (when pkg (displayln "package: " pkg))
        (newline)
        (pretty-print code)))))

(def (generate-meta-code ctx)
  ;; => ssi-code [[phi-ctx phi n phi-code] ...]
  (let* ((state (make-meta-state ctx))
         (ssi-code (apply-generate-meta (module-context-code ctx) state)))
    (values ssi-code (meta-state-end! state))))

(def (generate-runtime-phi stx)
  (let (lifts (box []))
    (parameterize ((current-compile-lift lifts)
                   (current-compile-marks (make-hash-table-eq))
                   (current-compile-identifiers (make-bound-identifier-table)))
      (let (code (apply-generate-runtime-phi stx))
        (if (null? (unbox lifts)) code
            ['begin (reverse (unbox lifts)) ... code])))))

(def (lift-nested-modules ctx)
  (let (modules (box []))
    (apply-lift-modules (module-context-code ctx) modules)
    (reverse (unbox modules))))

;;; utilities
(def (compile-scm-file path code (phi? #f))
  (verbose "compile " path)
  (with-output-to-scheme-file path
    (lambda ()
      (pretty-print
       `(declare
          (block)
          (standard-bindings)
          (extended-bindings)
          ,@(if phi? '((inlining-limit 200)) '())))
      (pretty-print code)))
  (when (current-compile-invoke-gsc)
    (gsc-compile-file path phi?))
  (unless (current-compile-keep-scm)
    (delete-file path)))

(def (gsc-debug-options (phi? #f))
  (defrules not-phi ()
    ((_ opts)
     (if phi? [] opts)))
  (cond
   ((current-compile-debug)
    => (lambda (debug)
         (case debug
           ((env)
            (not-phi ["-debug-environments"]))
           ((env/phi)
            ["-debug-environments"])
           ((src)
            (not-phi ["-debug-environments" "-debug-source"]))
           ((src/phi)
            ["-debug-environments" "-debug-source"])
           ((all)
            (not-phi ["-debug"]))
           ((all/phi #t)
            ["-debug"])
           (else
            (raise-compile-error "unknown debug option" debug)))))
   (else [])))

(def (gsc-compile-file path phi?)
  (let* ((gsc-args
          (cond
           ((current-compile-gsc-options)
            => (lambda (opts) [opts ... path]))
           (else [path])))
         (gsc-args
          [gsc-runtime-args ... (gsc-debug-options phi?) ... gsc-args ...]))
    (invoke (gerbil-gsc) gsc-args)))

(def (compile-output-file ctx n ext)
  (def (module-relative-path ctx)
    (path-strip-directory (module-id->path-string (expander-context-id ctx))))

  (def (module-source-directory ctx)
    (path-directory
     (let (mpath (module-context-path ctx))
       (if (string? mpath) mpath (last mpath)))))

  (def (section-string n)
    (cond
     ((number? n) (number->string n))
     ((symbol? n) (symbol->string n))
     ((string? n) n)
     (else
      (raise-compile-error "Unexpected section" n))))

  (def (file-name path)
    (if n
      (string-append path "__" (section-string n) ext)
      (string-append path ext)))

  (def (file-path)
    (cond
     ((current-compile-output-dir)
      => (lambda (outdir)
           (path-expand
            (file-name (module-id->path-string (expander-context-id ctx)))
            outdir)))
     (else
      (path-expand
       (file-name (module-relative-path ctx))
       (module-source-directory ctx)))))

  (let (path (file-path))
    (create-directory* (path-directory path))
    path))

(def (compile-static-output-file ctx)
  (def (file-name id)
    (string-append (static-module-name id) ".scm"))

  (def (file-path)
    (let (file (file-name (expander-context-id ctx)))
      (cond
       ((current-compile-output-dir)
        => (lambda (outdir)
             (path-expand file (path-expand "static" outdir))))
       (else
        (path-expand file "static")))))

  (let (path (file-path))
    (create-directory* (path-directory path))
    path))

(def (compile-exe-output-file ctx opts)
  (cond
   ((pgetq output-file: opts) => values)
   (else
    (let (mod-str (symbol->string (expander-context-id ctx)))
      (cond
       ((string-rindex mod-str #\/)
        => (lambda (ix) (substring mod-str (fx1+ ix) (string-length mod-str))))
       (else mod-str))))))

(def (static-module-name idstr)
  (cond
   ((string? idstr)
    (let* ((str (module-id->path-string idstr))
           (strs (string-split str #\/)))
      (string-join strs "__")))
   ((symbol? idstr)
    (static-module-name (symbol->string idstr)))
   (else
    (error "Bad module id" idstr))))

(def (invoke program args)
  (verbose "invoke " [program . args])
  (let* ((proc (open-process [path: program arguments: args
                                    stdout-redirection: #f
                                    stderr-redirection: #f]))
         (status (process-status proc)))
    (close-port proc)
    (unless (zero? status)
      (raise-compile-error "Compilation error; process exit with nonzero status"
                           program))))
