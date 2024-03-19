#!/usr/bin/env gxi
;;; -*- Gerbil -*-
;;; © vyzo
;;; libgerbil build script

(import :gerbil/expander
        :gerbil/gambit
        :std/build-config
        :std/make
        :std/iter
        :std/misc/wg)

(include "../std/build-spec.ss")

(def build-home
  (getenv "GERBIL_BUILD_PREFIX" (gerbil-home)))

(def default-gerbil-gsc
  (path-expand "bin/gsc" build-home))
(def default-gerbil-gcc "gcc")
(def default-gerbil-ar "ar")

(cond-expand
 (netbsd
  (def default-ld-options "-lm"))
 (else
  (def default-ld-options "-ldl -lm")))

(def stdlib-exclude
  '("gambit-sharp"                      ; _gambit#.scm wrapper
    "foreign-test-support"              ; test support module
    ))

(def gerbil-runtime
  '("gerbil/runtime/gambit"
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
    "gerbil/runtime"))

(def gerbil-prelude-gambit
  '("gerbil/gambit"))

(def gerbil-expander
  '("gerbil/expander/common"
    "gerbil/expander/stx"
    "gerbil/expander/core"
    "gerbil/expander/top"
    "gerbil/expander/module"
    "gerbil/expander/compile"
    "gerbil/expander/root"
    "gerbil/expander/stxcase"
    "gerbil/expander/init"
    "gerbil/expander"))

(def gerbil-compiler
  '("gerbil/compiler/base"
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

(def gsc-debug-opts
  '())

(def (filter-build-spec spec)
  (def (if-not-excluded modf)
    (if (not (member modf stdlib-exclude))
      (cons (string-append "std/" modf) spec)
      #f))
  (match spec
    ((? string? modf)
     (if-not-excluded modf))
    ([gxc: modf . _]
     (if-not-excluded modf))
    ([gsc: modf . _]
     (if-not-excluded modf))
    ([ssi: . _]
     #f)
    ([static-include: modf]
     #f)))

(def (fold-cc-options stdlib-spec mode)
  (let* ((base (if (eq? mode 'shared)
                 "-D___SHARED"
                 "-D___LIBRARY"))
         (base (string-append base " -I " (gerbil-static-dir))))
    (fold-options "-cc-options" stdlib-spec base)))

(def (fold-ld-options stdlib-spec mode)
  (let (base default-ld-options)
    (fold-options "-ld-options" stdlib-spec base)))

(def (fold-options opt stdlib-spec base)
  (let lp ((rest stdlib-spec) (result base))
    (match rest
      ([spec . rest]
       (cond
        ((pget opt (cdr spec))
         => (lambda (val)
              (lp rest (string-append result " " val))))
        (else (lp rest result))))
      (else result))))

(def (order-modules all-modules)
  (def visited-modules
    (make-hash-table-eq))

  (def (module-id modf)
    (string->symbol (string-append ":" modf)))

  (def (module-file modctx)
    (symbol->string (expander-context-id modctx)))

  (def (module-exclude? modctx)
    (or (not (expander-context-id modctx)) ; root prelude
        (string-prefix? "gerbil/core" (symbol->string (expander-context-id modctx)))))

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

  (def (find-deps modctx)
    (let lp ((rest [modctx]) (deps []))
      (match rest
        ([hd . rest]
         (cond
          ((module-context? hd)
           (let ((id (expander-context-id hd))
                 (imports (module-context-import hd)))
             (cond
              ((or (hash-get visited-modules id) (module-exclude? hd))
               (lp rest deps))
              ((core-context-prelude hd)
               => (lambda (pre)
                    (let (deps (lp (cons pre imports) deps))
                      (lp rest (cons hd deps)))))
              (else
               (let (deps (lp imports deps))
                 (lp rest (cons hd deps)))))))
          ((prelude-context? hd)
           (let (id (expander-context-id hd))
             (if (or (hash-get visited-modules id) (module-exclude? hd))
               (lp rest deps)
               (let (deps (lp (prelude-context-import hd) deps))
                 (lp rest (cons hd deps))))))
          ((module-import? hd)
           (if (fxzero? (module-import-phi hd))
             (lp (cons (module-import-source hd) rest) deps)
             (lp rest deps)))
          ((module-export? hd)
           (lp (cons (module-export-context hd) rest) deps))
          ((import-set? hd)
           (cond
            ((fxzero? (import-set-phi hd))
             (lp (cons (import-set-source hd) rest) deps))
            ((fxpositive? (import-set-phi hd))
             (let (xdeps (import-set-template hd 0))
               (lp (foldl cons rest xdeps) deps)))
            (else
             (lp rest deps))))
          (else
           (error "unexpected dependency" hd))))
        (else deps))))

  (let lp ((rest all-modules) (ordered []))
    (match rest
      ([modf . rest]
       (let (mod-id (module-id modf))
         (if (hash-get visited-modules mod-id)
           (lp rest ordered)
           (let* ((modctx (import-module mod-id))
                  (deps (find-deps modctx))
                  (ordered
                   (foldl
                    (lambda (dep r)
                      (if (hash-get visited-modules (expander-context-id dep))
                        r
                        (begin
                           (hash-put! visited-modules (expander-context-id dep) #t)
                           (cons (module-file dep) r))))
                    ordered
                    (reverse deps))))
             (lp rest ordered)))))
      (else
       (reverse ordered)))))

(def (static-module-scm-file modf)
  (string-append (string-join (string-split modf #\/) "__")
                 ".scm"))

(def (static-file-path f)
  (path-expand f (gerbil-static-dir)))

(def (file-replace-extension f ext)
  (string-append (path-strip-extension f)
                 ext))

(def (module-c-file f)
  (file-replace-extension f ".c"))

(def (module-o-file f)
  (file-replace-extension f ".o"))

(def (library-file-path f)
  (path-expand f (gerbil-lib-dir)))

(def +gerbil-lib-dir+ #f)
(def (gerbil-lib-dir)
  (unless +gerbil-lib-dir+
    (set! +gerbil-lib-dir+
      (path-expand "lib" build-home)))
  +gerbil-lib-dir+)

(cond-expand
  (darwin
   (let (hblp (getenv "HOMEBREW_LIBRARY_PATHS" #f))
     (when hblp (setenv "HOMEBREW_LIBRARY_PATHS"
			(string-append (gerbil-libdir)":"hblp)))))
  (else #f))

(def +gerbil-static-dir+ #f)
(def (gerbil-static-dir)
  (unless +gerbil-static-dir+
    (set! +gerbil-static-dir+ (path-expand "static" (gerbil-lib-dir))))
  +gerbil-static-dir+)

(def +gerbil-gsc+ #f)
(def (invoke-gsc args)
  (unless +gerbil-gsc+
    (set! +gerbil-gsc+ (getenv "GERBIL_GSC" default-gerbil-gsc)))
  (invoke-process +gerbil-gsc+ args))

(def +gerbil-gcc+ #f)
(def (invoke-gcc args)
  (unless +gerbil-gcc+
    (set! +gerbil-gcc+ (getenv "GERBIL_GCC" default-gerbil-gcc)))
  (invoke-process +gerbil-gcc+ args))

(def +gerbil-ar+ #f)
(def (invoke-ar args)
  (unless +gerbil-ar+
    (set! +gerbil-ar+ (getenv "GERBIL_AR" default-gerbil-ar)))
  (invoke-process +gerbil-ar+ args))

(def (invoke-process program args)
  ;; (displayln "invoke " program " " args) ; uncomment if you are debugging
  (let* ((process (open-process [path: program arguments: args
                                 stdout-redirection: #f
                                 stderr-redirection: #f]))
         (status (process-status process)))
    (close-port process)
    (unless (zero? status)
      (displayln "process " program " exited with non-zero status " status)
      (error "error executing process" program status))))

(def (make-wg/build-cores)
  (let (cores (string->number (getenv "GERBIL_BUILD_CORES" "0")))
    (if (and (number? cores) (> cores 1))
      (make-wg cores)
      #f)))

(def (build-libgerbil mode)
  (let* ((build-spec (build-spec))
         (stdlib-spec (filter-map filter-build-spec build-spec))
         (cc-options (fold-cc-options stdlib-spec mode))
         (ld-options (fold-ld-options stdlib-spec mode))
         (stdlib-modules (map car stdlib-spec))
         (ordered-modules (order-modules stdlib-modules))
         (ordered-modules (remove-duplicates
                           (append gerbil-runtime
                                   gerbil-prelude-gambit
                                   gerbil-expander
                                   gerbil-compiler
                                   ordered-modules)))
         (static-module-scm-files (map static-module-scm-file ordered-modules))
         (static-module-scm-paths (map static-file-path static-module-scm-files))
         (static-module-c-paths   (map module-c-file static-module-scm-paths))
         (static-module-o-paths   (map module-o-file static-module-c-paths))
         (builtin-modules-scm-path (static-file-path "libgerbil-builtin-modules.scm"))
         (builtin-modules-c-path (module-c-file builtin-modules-scm-path))
         (builtin-modules-o-path (module-o-file builtin-modules-c-path))
         (link-c-path (library-file-path "libgerbil-link.c"))
         (link-o-path (module-o-file link-c-path))
         (gambit-sharp (library-file-path "_gambit#.scm"))
         (include-gambit-sharp
          (string-append "(include \"" gambit-sharp "\")"))
         (gsc-gx-macros
          (if (gerbil-runtime-smp?)
            ["-e" "(define-cond-expand-feature|enable-smp|)"
             "-e" include-gambit-sharp]
            ["-e" include-gambit-sharp]))
         (gsc-gx-features
          '("-e" "(define-cond-expand-feature|gerbil-separate-compilation|)"))
         (libgerbil
          (if (eq? mode 'shared)
            (library-file-path
             (cond-expand (darwin "libgerbil.dylib")
                          "libgerbil.so"))
            (library-file-path "libgerbil.a"))))
    ;; generate the builtin modules stub
    (call-with-output-file builtin-modules-scm-path
      (lambda (p)
        (write `(define ligerbil-builtin-modules
                  (quote ,ordered-modules))
               p)
        (newline p)))
    ;; compile each .scm to .c separately to avoid using too much memory and parallelize build
    (let (wg (make-wg/build-cores))
      (for (scm-path [static-module-scm-paths ... builtin-modules-scm-path])
        (wg-add! wg
          (lambda ()
            (displayln "... compile " scm-path)
            (invoke-gsc ["-c"
                         gsc-debug-opts ...
                         gsc-gx-macros ...
                         gsc-gx-features ...
                         scm-path]))))
      (wg-wait! wg))

    ;; link them
    (displayln "... link " link-c-path)
    (invoke-gsc ["-link" "-o" link-c-path
                 static-module-c-paths ...
                 builtin-modules-c-path])

    ;; build them
    (let (wg (make-wg/build-cores))
      (for (c-path [static-module-c-paths ...
                    builtin-modules-c-path link-c-path])
        (wg-add! wg
          (lambda ()
            (displayln "... compile " c-path)
            (invoke-gsc ["-obj"
                         "-cc-options" cc-options
                         c-path]))))
      (wg-wait! wg))

    ;; and collect them
    (when (file-exists? libgerbil)
      (delete-file libgerbil))
    (displayln "... build " libgerbil)
    (let (libgerbil-ldd (filter (? (not string-empty?)) (string-split ld-options #\space)))
      (if (eq? mode 'shared)
        (invoke-gcc ["-shared" "-o" libgerbil
                     libgerbil-ldd ...
                     static-module-o-paths ...
                     builtin-modules-o-path
                     link-o-path])
        (invoke-ar ["cq" libgerbil
                    static-module-o-paths ...
                    builtin-modules-o-path
                    link-o-path]))
      (call-with-output-file (string-append libgerbil ".ldd")
	(cut write
	     (filter
	      (cond-expand
		(darwin
		 (lambda (arg) (not (string-prefix? (string-append "-L" (gerbil-libdir)) arg))))
		(else true))
	      libgerbil-ldd)
	     <>)))
    ;; cleanup
    (for (f [static-module-c-paths ...
             builtin-modules-c-path
             static-module-o-paths ...
             builtin-modules-o-path])
      (delete-file f))))

(def (remove-duplicates lst)
  (let lp ((rest lst) (result []))
    (match rest
      ([hd . rest]
       (if (member hd result)
         (lp rest result)
         (lp rest (cons hd result))))
      (else (reverse result)))))

(def (auto-build-mode)
  (if (member "--enable-shared" (string-split (configure-command-string) #\'))
    'shared
    'library))

(def (main . args)
  (match args
    ([] (build-libgerbil (auto-build-mode)))
    (["shared"] (build-libgerbil 'shared))
    (["library"] (build-libgerbil 'library))
    (else
     (displayln "Usage: build-libgerbil [shared|library]")
     (exit 1))))
