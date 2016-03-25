;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; support for library build scripts
package: std

(import :gerbil/compiler
        :gerbil/expander
        :gerbil/gambit/misc
        :gerbil/gambit/ports)
(export make make-depgraph shell-config)

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
       depgraph: (depgraph #f))
  (let* ((srcdir (or srcdir (error "srcdir must be specified")))
         (libdir (or libdir (path-expand "lib" (getenv "GERBIL_HOME"))))
         (settings  [srcdir: srcdir libdir: libdir bindir: bindir
                     prefix: prefix force: force?])
         (buildset (if (not force?)
                     (filter (cut build? <> settings) buildspec)
                     buildspec))
         (buildset (if depgraph
                     (expand-build-deps buildset buildspec depgraph)
                     buildset)))
    (for-each (cut build <> settings) buildset)))

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
      ([exe: modf . gsc-opts] modf)
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
  (def (depgraph file)
    (let* ((mod (import-module file))
           (ht  (make-hash-table-eq)))
      (let lp ((rest (module-context-import mod)))
        (match rest
          ([hd . rest]
           (cond
            ((module-context? hd)
             (hash-put! ht (expander-context-id hd) #t)
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
           [file (expander-context-id mod) (hash-keys ht) ...])))))
  (map depgraph files))

(def (shell-config cmd . args)
  (let* ((proc (open-input-process [path: cmd arguments: args]))
         (status (process-status proc)))
    (unless (zero? status)
      (error "Error executing config script" cmd args status))
    (read-line proc)))

(def (build? spec settings)
  (match spec
    ((? string? modf)
     (gxc-compile? modf settings))
    ([gxc: modf . gsc-opts]
     (gxc-compile? modf settings))
    ([gsc: modf . gsc-opts]
     (gsc-compile? modf settings))
    ([ssi: modf . deps]
     (compile-ssi? modf settings))
    ([exe: modf . gsc-opts]
     (compile-exe? modf settings))
    ([copy: file]
     (copy-compiled? file settings))
    (else
     (error "Bad buildspec" spec))))

(def (build spec settings)
  (match spec
    ((? string? modf)
     (gxc-compile modf #f settings))
    ([gxc: modf . gsc-opts]
     (gxc-compile modf gsc-opts settings))
    ([gsc: modf . gsc-opts]
     (gsc-compile modf gsc-opts settings))
    ([ssi: modf . deps]
     (compile-ssi modf deps settings))
    ([exe: modf . gsc-opts]
     (compile-exe modf gsc-opts settings))
    ([copy: file]
     (copy-compiled file settings))
    (else
     (error "Bad buildspec" spec))))

(def (gxc-compile? mod settings)
  (def srcpath (source-path mod ".ss" settings))
  (def ssipath (library-path mod ".ssi" settings))
  (or (not (file-exists? ssipath))
      (file-newer? srcpath ssipath)))

(def (gxc-compile mod gsc-opts settings)
  (def gxc-opts 
    [invoke-gsc: #t output-dir: (pgetq libdir: settings )
                 (if gsc-opts [gsc-options: gsc-opts] []) ...])
  (def srcpath (source-path mod ".ss" settings))
  
  (displayln "... compile " mod)
  (compile-file srcpath gxc-opts))

(def (gsc-compile? mod settings)
  (def srcpath (source-path mod ".scm" settings))
  (def libdir (pgetq libdir: settings))
  (def prefix (pgetq prefix: settings))
  (defvalues (libpath base)
    (cond
     ((string-rindex mod #\/)
      => (lambda (ix) 
           (values (path-expand (substring mod 0 ix) 
                                (if prefix (path-expand prefix libdir) libdir))
                   (substring mod (fx1+ ix) (string-length mod)))))
     (else (values (path-expand "std" libdir) mod))))
  (def cpath
    (let lp ((n 1) (cpath #f))
      (let (next (path-expand (string-append base ".o" (number->string n))
                              libpath))
        (if (file-exists? next)
          (lp (fx1+ n) next)
          cpath))))

  (or (not cpath) (file-newer? srcpath cpath)))

(def (gsc-compile mod gsc-opts settings)
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
  (displayln "... compile foreign " mod)
  (let* ((proc (open-process [path: "gsc" 
                              arguments: ["-o" libpath gsc-opts ... srcpath]
                              stdout-redirection: #f]))
         (status (process-status proc)))
    (unless (zero? status)
      (error "Compilation error; gsc exited with nonzero status" status))))

(def (compile-ssi? mod settings)
  (def srcpath (source-path mod ".ssi" settings))
  (def libpath (library-path mod ".ssi" settings))
  (or (not (file-exists? libpath)) (file-newer? srcpath libpath)))

(def (compile-ssi mod deps settings)
  (def srcpath (source-path mod ".ssi" settings))
  (def libpath (library-path mod ".ssi" settings))
  (def rtpath  (library-path mod "__rt.scm" settings))
  (def prefix  (pgetq prefix: settings))
  
  (displayln "... copy ssi " mod)
  (when (file-exists? libpath)
    (delete-file libpath))
  (copy-file srcpath libpath)
  (displayln "... compile loader " mod)
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

(def (compile-exe? mod settings)
  (def srcpath (source-path mod ".ss" settings))
  (def ssipath (library-path mod ".ssi" settings))
  (def binpath (binary-path mod settings))
  (or (not (file-exists? ssipath))
      (file-newer? srcpath ssipath)
      (not (file-exists? binpath))
      (file-newer? srcpath binpath)))

(def (compile-exe mod gsc-opts settings)
  (def srcpath (source-path mod ".ss" settings))
  (def binpath (binary-path mod settings))
  (when (gxc-compile? mod settings)
    (gxc-compile mod gsc-opts settings))
  (displayln "... compile exe " mod)
  (compile-exe-stub srcpath [invoke-gsc: #t output-file: binpath]))

(def (copy-compiled? file settings)
  (def srcpath (source-path file #f settings))
  (def libpath (library-path file #f settings))
  (or (not (file-exists? libpath)) (file-newer? srcpath libpath)))

(def (copy-compiled file settings)
  (def srcpath (source-path file #f settings))
  (def libpath (library-path file #f settings))

  (displayln "... copy std/" file)
  (when (file-exists? libpath)
    (delete-file libpath))
  (copy-file srcpath libpath))

(def (source-path mod ext settings)
  (let ((path (if ext (string-append mod ext) mod))
        (srcdir (pgetq srcdir: settings)))
    (path-expand path srcdir)))

(def (library-path mod ext settings)
  (let* ((path (if ext (string-append mod ext) mod))
         (libdir (pgetq libdir: settings))
         (builddir
          (cond
           ((pgetq prefix: settings)
            => (cut path-expand <> libdir))
           (else libdir))))
    (path-expand path builddir)))

(def (binary-path mod settings)
  (let* ((bindir (pgetq bindir: settings))
         (_ (unless bindir (error "bindir must be specified")))
         (bin
          (cond
           ((string-rindex mod #\/)
            => (lambda (ix) (substring mod (fx1+ ix) (string-length mod))))
           (else mod))))
    (path-expand bin bindir)))


