;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; support for library build scripts
package: std

(import :gerbil/compiler
        :gerbil/expander
        :gerbil/gambit/misc
        :gerbil/gambit/ports
        "sort"
        "sugar")
(export make make-depgraph make-depgraph/spec
        shell-config
        env-cppflags
        env-ldflags
        include-gambit-sharp
        pkg-config
        pkg-config-libs
        pkg-config-cflags
        ldflags
        cppflags)

;; buildspec: [<build> ...]
;;  <build>:
;;    <module> ; module path string without extension
;;   (gxc: <module> gsc-opt ...)
;;   (gsc: <module> gsc-opt ...)
;;   (ssi: <module>)
;; srcdir: input source top directory; MUST BE SPECIFIED
;;         (path-directory (this-source-file)) in build scripts will do
;; libdir: output directory, defaults to $GERBIL_HOME/lib
;; prefix:  string, a package prefix to add to module names
;; force?:  boolean, indicating force build even if compiled modules are newer
(def (make buildspec
       srcdir: (srcdir #f)
       libdir: (libdir #f)
       bindir: (bindir #f)
       prefix: (prefix #f)
       force:  (force? #f)
       optimize: (optimize #f)
       debug:  (debug? #f)
       static: (static #f)
       verbose: (verbose #f)
       depgraph: (depgraph #f))
  (let* ((gerbil-path (getenv "GERBIL_PATH" "~/.gerbil"))
         (srcdir (or srcdir (error "srcdir must be specified")))
         (libdir (or libdir (path-expand "lib" gerbil-path)))
         (bindir (or bindir (path-expand "bin" gerbil-path)))
         (settings  [srcdir: srcdir libdir: libdir bindir: bindir
                     prefix: prefix force: force?
                     optimize: optimize debug: debug?
                     static: static verbose: verbose])
         (buildset (if (not force?)
                     (filter (cut build? <> settings depgraph) buildspec)
                     buildspec))
         (buildset (if depgraph
                     (expand-build-deps buildset buildspec depgraph)
                     buildset)))
    (for-each (cut build <> settings) buildset)))

(def (message . rest)
  (apply displayln rest)
  (force-output))

(def (expand-build-deps buildset buildspec depgraph)
  (def module-ids (make-hash-table))
  (def module-deps (make-hash-table-eq))
  (def module-rdeps (make-hash-table-eq))

  (def (add-deps! dep)
    (let* ((name (path-strip-extension (car dep)))
           (id   (cadr dep))
           (deps (cddr dep)))
      (hash-put! module-ids name id)
      (hash-put! module-deps id deps)
      (for-each (cut add-rdep! <> id) deps)))

  (def (add-rdep! id rdep)
      (hash-update! module-rdeps id (cut cons rdep <>) []))

  (def (expand-rdeps bset bset-new)
    (let (mods (filter-map module-spec-name bset-new))
      (let lp ((rest mods) (new []))
        (match rest
          ([hd . rest]
           (cond
            ((hash-get module-ids hd)
             => (lambda (id)
                  (cond
                   ((hash-get module-rdeps id)
                    => (lambda (rdeps)
                         (expand-rdeps-e bset rdeps lp rest new)))
                   (else
                    (lp rest new)))))
            (else
             (lp rest new))))
          (else new)))))

  (def (expand-rdeps-e bset rdeps K rest-k new)
    (let lp ((rest rdeps) (new new))
      (match rest
        ([hd . rest]
         (cond
          ((or (find (cut module-spec-id? <> hd) bset)
               (find (cut module-spec-id? <> hd) new))
           (lp rest new))
          ((find (cut module-spec-id? <> hd) buildspec)
           => (lambda (spec)
                (lp rest (cons spec new))))
          (else
           (lp rest new))))
        (else
         (K rest-k new)))))

  (def (module-spec-name spec)
    (match spec
      ((? string? modf) modf)
      ([gxc: modf . gsc-opts] modf)
      ([ssi: modf . deps] modf)
      ([exe: modf . opts] modf)
      ([static-exe: modf . opts] modf)
      (else #f)))

  (def (module-spec-id spec)
    (cond
     ((module-spec-name spec) => (cut hash-get module-ids <>))
     (else #f)))

  (def (module-spec-id? spec id)
    (eq? (module-spec-id spec) id))

  (def (module-spec<? a b)
    (alet* ((id-a (module-spec-id a))
            (id-b (module-spec-id b)))
      (module-dep<? id-a id-b)))

  (def (module-dep<? id-a id-b)
    (cond
     ((hash-get module-deps id-b)
      => (lambda (deps-b)
           (or (memq id-a deps-b)
               (ormap (cut module-dep<? id-a <>) deps-b))))
     (else #f)))

  (def (sort-spec<? a b seen)
    (and (not (member a seen))
         (module-spec<? a b)))

  (def (sort-deps bset)
    (let lp ((rest bset) (r []))
      (match rest
        ([hd . rest]
         (cond
          ((member hd r)
           (lp rest r))
          ((find (cut sort-spec<? <> hd r) rest)
           => (lambda (dep)
                (lp (cons* dep hd rest) r)))
          (else
           (lp rest (cons hd r)))))
        (else
         (reverse r)))))

  (for-each add-deps! depgraph)
  (let lp ((bset buildset) (bset-new buildset))
    (let (new (expand-rdeps bset bset-new))
      (if (null? new)
        (sort-deps bset)
        (lp (append bset new) new)))))

(def (make-depgraph files)
  (def (symbol<? a b)
    (string<? (symbol->string a) (symbol->string b)))

  (def (depgraph file)
    (let* ((mod (import-module file))
           (ht  (make-hash-table-eq))
           (pre (core-context-prelude mod)))
      (let lp ((rest (cons pre (module-context-import mod))))
        (match rest
          ([hd . rest]
           (cond
            ((module-context? hd)
             (hash-put! ht (expander-context-id hd) #t)
             (lp rest))
            ((prelude-context? hd)
             (alet (id (expander-context-id hd)) ; maybe it's root!
               (hash-put! ht id #t))
             (lp rest))
            ((module-import? hd)
             (lp (cons (module-import-source hd) rest)))
            ((module-export? hd)
             (lp (cons (module-export-context hd) rest)))
            ((import-set? hd)
             (lp (cons (import-set-source hd) rest)))
            (else
             (error "Unexpected module import" hd))))
          (else
           [file (expander-context-id mod) (sort (hash-keys ht) symbol<?) ...])))))
  (map depgraph files))

(def (make-depgraph/spec spec)
  (def (file-e mod ext)
    (if (string-empty? (path-extension mod))
      (string-append mod ext)
      mod))

  (let lp ((rest spec) (files []))
    (match rest
      ([hd . rest]
       (match hd
         ((? string?)
          (lp rest (cons (file-e hd ".ss") files)))
         ([gxc: mod . opts]
          (lp rest (cons (file-e mod ".ss") files)))
         ([exe: mod . opts]
          (lp rest (cons (file-e mod ".ss") files)))
         ([static-exe: mod . opts]
          (lp rest (cons (file-e mod ".ss") files)))
         ([ssi: mod . opts]
          (lp rest (cons (file-e mod ".ssi") files)))
         (else
          (lp rest files))))
      (else
       (make-depgraph (reverse files))))))

(def (shell-config cmd . args)
  (let* ((proc (open-input-process [path: cmd arguments: args]))
         (status (process-status proc)))
    (unless (zero? status)
      (error "Error executing config script" cmd args status))
    (read-line proc)))

(def (env-ldflags)
  (cond
   ((getenv "LDFLAGS" #f)
    => (lambda (flags)
         (lambda (lib)
           (string-append flags " " lib))))
   (else
    identity)))

(def (env-cppflags)
  (cond
   ((getenv "CPPFLAGS" #f)
    => (lambda (flags)
         (lambda (more)
           (if (string-empty? more)
             flags
             (string-append flags " " more)))))
   (else
    identity)))

(def (include-gambit-sharp)
  (cond
   ((gerbil-runtime-smp?)
    '("-e" "(define-cond-expand-feature|enable-smp|)"
      "-e" "(include \"~~lib/_gambit#.scm\")"))
   (else
    '("-e" "(include \"~~lib/_gambit#.scm\")"))))

(def (build? spec settings depgraph)
  (match spec
    ((? string? modf)
     (or (gxc-compile? modf #f settings)
         (library-deps-newer? modf settings depgraph #f)))
    ([gxc: modf . opts]
     (or (gxc-compile? modf opts settings)
         (library-deps-newer? modf settings depgraph #f)))
    ([gsc: modf . opts]
     (gsc-compile? modf opts settings))
    ([ssi: modf . deps]
     (compile-ssi? modf settings))
    ([exe: modf . opts]
     (or (compile-exe? modf opts settings)
         (library-deps-newer? modf settings depgraph opts)))
    ([static-exe: modf . opts]
     (or (compile-static-exe? modf opts settings)
         (library-deps-newer? modf settings depgraph opts)))
    ([static-include: file]
     (copy-static? file settings))
    ([copy: file]
     (copy-compiled? file settings))
    (else
     (error "Bad buildspec" spec))))

(def (library-deps-newer? mod settings depgraph binopts)
  (and depgraph
       (let* ((target (if binopts
                        (binary-path mod binopts settings)
                        (library-path mod ".ssi" settings)))
              (file (if (string-empty? (path-extension mod))
                      (string-append mod ".ss")
                      mod))
              (deps (assoc file depgraph)))
         (and deps
              (let lp ((rest (cddr deps)))
                (match rest
                  ([dep . rest]
                   (with-catch
                    (lambda (exn)
                      (if (syntax-error? exn)
                        (lp rest) ; it's ok if it can't be found, it might be in the tree
                        (raise exn)))
                    (lambda ()
                      (let* ((libdep (make-symbol ":" dep))
                             (libpath (core-resolve-library-module-path libdep)))
                        (or (file-newer? libpath target)
                            (lp rest))))))
                  (else #f)))))))

(def (build spec settings)
  (match spec
    ((? string? modf)
     (gxc-compile modf #f settings))
    ([gxc: modf . opts]
     (gxc-compile modf opts settings))
    ([gsc: modf . opts]
     (gsc-compile modf opts settings))
    ([ssi: modf . deps]
     (compile-ssi modf deps settings))
    ([exe: modf . opts]
     (compile-exe modf opts settings))
    ([static-exe: modf . opts]
     (compile-static-exe modf opts settings))
    ([static-include: file]
     (copy-static file settings))
    ([copy: file]
     (copy-compiled file settings))
    (else
     (error "Bad buildspec" spec))))

(def (gxc-compile? mod opts settings)
  (def srcpath (source-path mod ".ss" settings))
  (def ssipath (library-path mod ".ssi" settings))
  (def statpath (and (pgetq static: settings)
                     (static-path mod settings)))
  (def deps (and opts (pgetq dep: opts)))

  (or (not (file-exists? ssipath))
      (file-newer? srcpath ssipath)
      (and statpath
           (or (not (file-exists? statpath))
               (file-newer? srcpath statpath)))
      (and deps (ormap (cut file-newer? <> ssipath) deps))))

(def (gsc-compile-opts opts)
  (match opts
    ([dep: _ . rest]
     (and (pair? rest) rest))
    (_
     (and (pair? opts) opts))))

(def (gxc-compile mod opts settings (invoke-gsc? #t))
  (def gsc-opts
    (gsc-compile-opts opts))
  (def gxc-opts
    [invoke-gsc: invoke-gsc?
     output-dir: (pgetq libdir: settings )
     optimize: (pgetq optimize: settings)
     debug: (pgetq debug: settings)
     generate-ssxi: #t
     static: (pgetq static: settings)
     verbose: (pgetq verbose: settings)
     (if gsc-opts [gsc-options: gsc-opts] []) ...])
  (def srcpath (source-path mod ".ss" settings))

  (message "... compile " mod)
  (compile-file srcpath gxc-opts))

(def (gsc-compile? mod opts settings)
  (def srcpath (source-path mod ".scm" settings))
  (def libdir (pgetq libdir: settings))
  (def prefix (pgetq prefix: settings))
  (def libdir-prefix
    (if prefix (path-expand prefix libdir) libdir))
  (defvalues (libpath base)
    (cond
     ((string-rindex mod #\/)
      => (lambda (ix)
           (values (path-expand (substring mod 0 ix) libdir-prefix)
                   (substring mod (fx1+ ix) (string-length mod)))))
     (else (values libdir-prefix mod))))
  (def cpath
    (let lp ((n 1) (cpath #f))
      (let (next (path-expand (string-append base ".o" (number->string n))
                              libpath))
        (if (file-exists? next)
          (lp (fx1+ n) next)
          cpath))))
  (def deps
    (and opts (pgetq dep: opts)))

  (or (not cpath)
      (file-newer? srcpath cpath)
      (and deps (ormap (cut file-newer? <> cpath) deps))))

(def (gsc-compile mod opts settings)
  (def gsc-opts
    (or (gsc-compile-opts opts) []))
  (def srcpath (source-path mod ".scm" settings))
  (def libdir (pgetq libdir: settings))
  (def prefix (pgetq prefix: settings))
  (def libpath
    (cond
     ((string-rindex mod #\/)
      => (lambda (ix)
           (path-expand (substring mod 0 ix)
                        (if prefix (path-expand prefix libdir) libdir))))
     (else (path-expand "std" libdir))))

  (create-directory* libpath)
  (message "... compile foreign " mod)
  (let* ((proc (open-process [path: "gsc"
                              arguments: ["-o" libpath gsc-opts ... srcpath]
                              stdout-redirection: #f]))
         (status (process-status proc)))
    (unless (zero? status)
      (error "Compilation error; gsc exited with nonzero status" status)))
  (when (pgetq static: settings)
    ;; just copy to libdir/static/ with properly mangled module name
    (let (statpath (static-path mod settings))
      (when (file-exists? statpath)
        (delete-file statpath))
      (copy-file srcpath statpath))))

(def (compile-ssi? mod settings)
  (def srcpath (source-path mod ".ssi" settings))
  (def libpath (library-path mod ".ssi" settings))
  (or (not (file-exists? libpath)) (file-newer? srcpath libpath)))

(def (compile-ssi mod deps settings)
  (def srcpath (source-path mod ".ssi" settings))
  (def libpath (library-path mod ".ssi" settings))
  (def rtpath  (library-path mod "__rt.scm" settings))
  (def prefix  (pgetq prefix: settings))

  (message "... copy ssi " mod)
  (create-directory* (path-directory libpath))
  (when (file-exists? libpath)
    (delete-file libpath))
  (copy-file srcpath libpath)
  (message "... compile loader " mod)
  (with-output-to-file rtpath
    (lambda ()
      (for-each (lambda (dep) (pretty-print `(load-module ,dep)))
                deps)
      (pretty-print `(load-module ,(if prefix (string-append prefix "/" mod) mod)))))
  (let* ((proc (open-process [path: "gsc"
                                    arguments: [rtpath]
                                    stdout-redirection: #f]))
         (status (process-status proc)))
    (unless (zero? status)
      (error "Compilation error; gsc exited with nonzero status" status))
    (delete-file rtpath)))

(def (compile-exe? mod opts settings)
  (def srcpath (source-path mod ".ss" settings))
  (def ssipath (library-path mod ".ssi" settings))
  (def binpath (binary-path mod opts settings))
  (or (not (file-exists? ssipath))
      (file-newer? srcpath ssipath)
      (not (file-exists? binpath))
      (file-newer? srcpath binpath)))

(def (compile-exe mod opts settings)
  (def srcpath (source-path mod ".ss" settings))
  (def binpath (binary-path mod opts settings))
  (def gsc-opts (compile-exe-gsc-opts opts))
  (def gxc-opts
    [invoke-gsc: #t
     output-file: binpath
     verbose: (pgetq verbose: settings)])
  (gxc-compile mod gsc-opts settings)
  (message "... compile exe " mod " -> " (path-strip-directory binpath))
  (compile-exe-stub srcpath gxc-opts))

(def (compile-exe-gsc-opts opts)
  (match opts
    ([(? keyword?) opt . rest]
     (compile-exe-gsc-opts rest))
    (else opts)))

(def (compile-static-exe? mod opts settings)
  (def srcpath (source-path mod ".ss" settings))
  (def binpath (binary-path mod opts settings))
  (def statpath (static-path mod settings))
  (or (not (file-exists? statpath))
      (file-newer? srcpath statpath)
      (not (file-exists? binpath))
      (file-newer? srcpath binpath)))

(def (compile-static-exe mod opts settings)
  (def srcpath (source-path mod ".ss" settings))
  (def binpath (binary-path mod opts settings))
  (def gsc-opts (compile-exe-gsc-opts opts))
  (def gxc-opts
    [invoke-gsc: #t
     output-file: binpath
     verbose: (pgetq verbose: settings)
     debug: (pgetq debug: settings)
     (if gsc-opts [gsc-options: gsc-opts] []) ...])
  (gxc-compile mod gsc-opts [static: #t settings ...] #f)
  (message "... compile static exe " mod " -> " (path-strip-directory binpath))
  (gxc#compile-static-exe srcpath gxc-opts))

(def (copy-static? file settings)
  (def spath (static-file-path file settings))
  (and (pgetq static: settings)
       (or (not (file-exists? spath))
           (file-newer? file spath))))

(def (copy-static file settings)
  (def spath (static-file-path file settings))

  (message "... copy static include " file)
  (when (file-exists? spath)
    (delete-file spath))
  (copy-file file spath))

(def (copy-compiled? file settings)
  (def srcpath (source-path file #f settings))
  (def libpath (library-path file #f settings))
  (or (not (file-exists? libpath)) (file-newer? srcpath libpath)))

(def (copy-compiled file settings)
  (def srcpath (source-path file #f settings))
  (def libpath (library-path file #f settings))

  (message "... copy std/" file)
  (when (file-exists? libpath)
    (delete-file libpath))
  (copy-file srcpath libpath))

(def (source-path mod ext settings)
  (let ((path
         (if (and ext (string-empty? (path-extension mod)))
           (string-append mod ext)
           mod))
        (srcdir (pgetq srcdir: settings)))
    (path-expand path srcdir)))

(def (library-path mod ext settings)
  (let* ((path
          (if ext
            (if (string-empty? (path-extension mod))
              (string-append mod ext)
              (string-append (path-strip-extension mod) ext))
            mod))
         (libdir (pgetq libdir: settings))
         (builddir
          (cond
           ((pgetq prefix: settings)
            => (cut path-expand <> libdir))
           (else libdir))))
    (path-expand path builddir)))

(def (binary-path mod opts settings)
  (let* ((bindir (pgetq bindir: settings))
         (_ (unless bindir (error "bindir must be specified")))
         (bin
          (cond
           ((pgetq bin: opts) => values)
           ((string-rindex mod #\/)
            => (lambda (ix) (substring mod (fx1+ ix) (string-length mod))))
           (else mod)))
         (bin
          (if (string-empty? (path-extension bin))
            bin
            (path-strip-extension bin))))
    (path-expand bin bindir)))

(def (static-path mod settings)
  (let* ((libdir (pgetq libdir: settings))
         (staticdir (path-expand "static" libdir))
         (mod
          (cond
           ((pgetq prefix: settings) => (cut string-append <> "/" mod))
           (else mod)))
         (base (string-join (string-split mod #\/) "__"))
         (base
          (if (string-empty? (path-extension base))
            base
            (path-strip-extension base)))
         (scm (string-append base ".scm")))
    (path-expand scm staticdir)))

(def (static-file-path file settings)
  (let* ((libdir (pgetq libdir: settings))
         (staticdir (path-expand "static" libdir))
         (filename (path-strip-directory file)))
    (path-expand filename staticdir)))

;; lib: library to ask configuration for
;; args: [<arg> ...]
;;  <arg>: additionnal arguments to pass to pkg-config
(def (pkg-config lib . args)
  (apply shell-config "pkg-config" "--silence-errors" lib args))

;; calls pkg-config in order to return `ld-options`.
;;
;; libs: [<lib> ...]
;;  <lib>: library to get ld-options for
(def (pkg-config-libs . libs)
  (string-join (map (lambda (l) (pkg-config l "--libs")) libs) " "))

;; calls pkg-config in order to return `cc-options`.
;;
;; libs: [<lib> ...]
;;  <lib>: library to get cc-options for
(def (pkg-config-cflags . libs)
  (string-join (map (lambda (l) (pkg-config l "--cflags")) libs) " "))

;; tries pkg-config-libs with fallback to env-ldflags
(def (ldflags lib ldflags)
  (try
   (pkg-config-libs lib)
   (catch (e)
     ((env-ldflags) ldflags))))

;; tries pkg-confg-cflags with fallback to env-cppflags
(def (cppflags lib cppflags)
  (try
   (pkg-config-cflags lib)
   (catch (e)
     ((env-cppflags) cppflags))))
