#!/usr/bin/env gxi
;;; -*- Gerbil -*-
;;; © vyzo
;;; libgerbil build script

(import :gerbil/expander
        :gerbil/gambit/ports
        :std/build-config
        :std/make
        :std/iter)

(include "../std/build-spec.ss")

(def default-gerbil-home #f)
(def default-gerbil-gsc "gsc")
(def default-gerbil-gcc "gcc")
(def default-gerbil-ar "ar")
(def default-ld-options "-ldl -lm")

(def stdlib-exclude
  '("gambit-sharp"                      ; _gambit#.scm wrapper
    "make"                              ; compiler dependency
    "build-script"                      ; compiler dependency
    "interactive"                       ; expander dependency
    "stxutil"                           ; expander dependency
    "foreign-test-support"              ; test support module
    ))

(def gerbil-runtime
  '("gx-gambc0"))

(def gerbil-prelude-gambit
  '("gerbil/gambit/ports"
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
    "gerbil/gambit"))

(def gsc-runtime-opts
  '("-:i8,f8,-8,t8"))

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

(def (fold-cc-options stdlib-spec)
  (let (base (string-append "-D___LIBRARY -I " (gerbil-static-dir)))
    (fold-options "-cc-options" stdlib-spec base)))

(def (fold-ld-options stdlib-spec)
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
    (string-prefix? "gerbil/core" (module-file modctx)))

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

(def (static-module-file f ext)
  (string-append (path-strip-extension f)
                 ext))

(def (static-module-c-file f)
  (static-module-file f ".c"))

(def (static-module-o-file f)
  (static-module-file f ".o"))

(def +gerbil-home+ #f)
(def +gerbil-static-dir+ #f)
(def (gerbil-static-dir)
  (if +gerbil-static-dir+
    +gerbil-static-dir+
    (let (static-dir (path-expand "lib/static" +gerbil-home+))
      (set! +gerbil-static-dir+ static-dir)
      static-dir)))

(def (invoke-gsc args)
  (invoke-process default-gerbil-gsc args))

(def (invoke-ar args)
  (invoke-process default-gerbil-ar args))

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

(def (main)
  (let (gerbil-home (getenv "GERBIL_HOME" default-gerbil-home))
    (unless gerbil-home
      (error "Cannot determine GERBIL_HOME"))
    (set! +gerbil-home+ gerbil-home)
    (let* ((build-spec (build-spec))
           (stdlib-spec (filter-map filter-build-spec build-spec))
           (cc-options (fold-cc-options stdlib-spec))
           (ld-options (fold-ld-options stdlib-spec))
           (stdlib-modules (map car stdlib-spec))
           (all-modules (append gerbil-prelude-gambit stdlib-modules))
           (ordered-modules (order-modules all-modules))
           (static-module-scm-files (map static-module-scm-file ordered-modules))
           (static-module-scm-paths (map static-file-path static-module-scm-files))
           (static-module-c-paths   (map static-module-c-file static-module-scm-paths))
           (static-module-o-paths   (map static-module-o-file static-module-c-paths))
           (gx-gambc-scm-files (map static-module-scm-file gerbil-runtime))
           (gx-gambc-scm-paths (map static-file-path gx-gambc-scm-files))
           (gx-gambc-c-paths   (map static-module-c-file gx-gambc-scm-paths))
           (gx-gambc-o-paths   (map static-module-o-file gx-gambc-c-paths))
           (link-c-path (static-file-path "gxlink.c"))
           (link-o-path (static-module-o-file link-c-path))
           (gx-gambc-macros (static-file-path "gx-gambc#.scm"))
           (include-gx-gambc-macros (string-append "(include \"" gx-gambc-macros "\")"))
           (gsc-gx-macros
            (if (gerbil-runtime-smp?)
              ["-e" "(define-cond-expand-feature|enable-smp|)"
               "-e" include-gx-gambc-macros]
              ["-e" include-gx-gambc-macros]))
           (gsc-gx-features
            '("-e" "(define-cond-expand-feature|gerbil-separate-compilation|)"))
           (libgerbil.a (static-file-path "libgerbil.a")))
      ;; compile each .scm to .c separately to avoid using too much memory
      (for (scm-path [gx-gambc-scm-paths ... static-module-scm-paths ...])
        (displayln "... compile " scm-path)
        (invoke-gsc [gsc-runtime-opts
                     ... "-c"
                     gsc-debug-opts ...
                     gsc-gx-macros ...
                     gsc-gx-features ...
                     scm-path]))
      ;; link them
      (displayln "... link " link-c-path)
      (invoke-gsc [gsc-runtime-opts
                   ... "-link" "-o" link-c-path
                   gx-gambc-c-paths ...
                   static-module-c-paths ...])
      ;; build them
      (for (c-path [gx-gambc-c-paths ... static-module-c-paths ... link-c-path])
        (displayln "... compile " c-path)
        (invoke-gsc [gsc-runtime-opts
                   ... "-obj"
                   "-cc-options" cc-options
                   c-path]))
      ;; and collect them
      (when (file-exists? libgerbil.a)
        (delete-file libgerbil.a))
      (displayln "... collect " libgerbil.a)
      (invoke-ar ["cql" ld-options
                  libgerbil.a
                  gx-gambc-o-paths ...
                  static-module-o-paths ...
                  link-o-path])
      ;; cleanup
      (for (f [gx-gambc-c-paths ... static-module-c-paths ...
               gx-gambc-o-paths ... static-module-o-paths ...])
        (delete-file f)))))
