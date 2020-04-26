;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; support for library build scripts

(import :gerbil/compiler
        :gerbil/expander
        :gerbil/gambit/exceptions
        :gerbil/gambit/misc
        :gerbil/gambit/os
        :gerbil/gambit/ports
        ./srfi/1
        ;;./srfi/43 ; vector-for-each, vector-map, but we reimplement them because of bug #465
        ./misc/hash
        ./misc/list
        ./misc/number
        ./misc/path
        ./misc/pqueue
        ./misc/queue
        ./misc/symbol
        ./sort
        ./sugar)

(extern namespace: #f with-cons-load-path load-path)

(export make
        make-depgraph make-depgraph/spec ;; empty shims for backward compatibility only
        shell-config
        env-cppflags
        env-ldflags
        include-gambit-sharp
        pkg-config
        pkg-config-libs
        pkg-config-cflags
        ldflags
        cppflags)

;;; Functions that should be better moved some library...
(defrule (when/list cond list) (if cond list [])) ;; move to std/misc/list ?
(def (listify x) (when/list (pair? x) x)) ;; move to std/misc/list ?
(def (force-outputs) (force-output (current-error-port)) (force-output)) ;; move to std/misc/ports ?
(def (message . lst) (apply displayln lst) (force-outputs)) ;; move to std/misc/ports ?
(def (writeln x) (write x) (newline) (force-outputs)) ;; move to std/misc/ports ?
(def (prefix/ prefix path) (if prefix (string-append prefix "/" path) path)) ;; move to std/misc/path ?


;;; Functions partially reimplemented from std/srfi/43. See bug #465
(def (vector-for-each f v)
  (def l (vector-length v))
  (let loop ((i 0)) (when (< i l) (begin (f i (vector-ref v i)) (loop (+ 1 i))))))
(def (vector-ensure-ref v i f)
  (or (vector-ref v i) (let ((x (f))) (vector-set! v i x) x)))
(def (vector-map f v)
  (def w (make-vector (vector-length v)))
  (vector-for-each (lambda (i x) (vector-set! w i (f x))) v)
  w)


;;; Settings: see details in doc/reference/make.md
(defstruct settings
  (srcdir libdir bindir prefix force optimize debug static static-debug verbose build-deps
   libdir-prefix)
  transparent: #t constructor: :init!)

(defmethod {:init! settings}
  (lambda (self
      srcdir: (srcdir_ #f) libdir: (libdir_ #f) bindir: (bindir_ #f)
      prefix: (prefix_ #f) force: (force? #f)
      optimize: (optimize #t) debug: (debug 'env)
      static: (static #t) static-debug: (static-debug #f)
      verbose: (verbose #f) build-deps: (build-deps_ #f)
      depgraph: (_ #f)) ;; ignored, for backward compatibility only
    (def gerbil-path (getenv "GERBIL_PATH" "~/.gerbil"))
    (def srcdir (or srcdir_ (error "srcdir must be specified")))
    (def libdir (or libdir_ (path-expand "lib" gerbil-path)))
    (def bindir (or bindir_ (path-expand "bin" gerbil-path)))
    (def prefix (or prefix_ (read-package-prefix srcdir)))
    (def libdir-prefix (if prefix (path-expand prefix libdir) libdir))
    (def build-deps (path-expand (or build-deps_ "build-deps") srcdir))
    (struct-instance-init!
      self
      srcdir libdir bindir prefix force? optimize debug static static-debug verbose build-deps
      libdir-prefix)))

(def (settings-verbose>=? settings level)
  (def verbose (settings-verbose settings))
  (and (real? level) (real? verbose) (>= verbose level)))

(def (read-package-prefix srcdir)
  (let (plist (with-catch false (lambda () (call-with-input-file (path-expand "gerbil.pkg" srcdir) read))))
    (alet (pkg (pgetq package: plist)) (and (symbol? pkg) (symbol->string pkg)))))

;;; build-spec: see details in doc/reference/make.md
;; TODO: provide an object-oriented way to extend the spec language,
;; with methods spec-dependencies, spec-inputs, spec-outputs, spec-build
;; and a macro so you can define all the methods coherently in one form,
;; rather than manually keeping the forms in synch.
;; Learn from the successes and failures of ASDF, Bazel, Dune, Cmake, etc.

(def (spec-type spec)
  (match spec
    ((? string? _) gxc:)
    ([(? keyword? type) . _] type)
    (else (error "Bad buildspec" spec))))

(def (spec-file spec settings)
  (match spec
    ((? string? modf) (source-path modf ".ss" settings))
    ([gxc: modf . opts] (source-path modf ".ss" settings))
    ([gsc: modf . opts] (source-path modf ".scm" settings))
    ([ssi: modf . deps] (source-path modf ".ssi" settings))
    ([exe: modf . opts] (source-path modf ".ss" settings))
    ([static-exe: modf . opts] (source-path modf ".ss" settings))
    ([static-include: file] (static-file-path file settings))
    ([copy: file] file)
    (else
     (error "Bad buildspec" spec))))

(def (spec-inputs spec settings)
  [(spec-file spec settings) (spec-dependencies spec settings) ...])

(def (spec-dependencies spec settings)
  (match spec
    ([gxc: _ . opts] (xxc-compile-dep opts))
    ([gsc: _ . opts] (xxc-compile-dep opts))
    ([ssi: _ . submodules] (append-map (cut spec-inputs <> settings) submodules))
    (_ [])))

(def (spec-outputs spec settings)
  (match spec
    ((? string? modf) (gxc-outputs modf #f settings))
    ([gxc: modf . opts] (gxc-outputs modf opts settings))
    ([gsc: modf . opts] [(gsc-c-path modf settings)])
    ([ssi: modf . submodules] [(library-path modf ".ssi" settings)
                               (append-map (cut spec-outputs <> settings) submodules) ...])
    ([exe: modf . opts] [(library-path modf ".ssi" settings)
                         (binary-path modf opts settings)])
    ([static-exe: modf . opts] [(binary-path modf opts settings)
                                (static-path modf settings)])
    ([static-include: file] [(static-file-path file settings)])
    ([copy: file] [(library-path file #f settings)])
    (else (error "Bad buildspec" spec))))

;;; A cache to minimize filesystem access AND to avoid inconsistencies
;;; due to race-conditions while querying the filesystem.
(def cache (make-parameter #f))
(def (cache-put! key value)
  (def c (cache))
  (when c (hash-put! c key value))
  value)
(def (cache-remove! key)
  (def c (cache))
  (when c (hash-remove! c key)))

;; Consult the cache entry for the key if present;
;; if not present, compute it by calling the thunk,
;; and set the cache entry accordingly, if the cache is defined.
;; return the values from the cache and/or the thunk computation.
(def (call-with-cache key (thunk false))
  (def c (cache))
  (if c (hash-ensure-ref c key thunk) (thunk)))
(defrule (with-cache key body ...) (call-with-cache key (lambda () body ...)))
(def (call-with-fresh-cache thunk) (parameterize ((cache (hash))) (thunk)))
(defrule (with-fresh-cache body ...) (call-with-fresh-cache (lambda () body ...)))

(def (modification-time file)
  (let/cc return
    (def info (with-catch (lambda (_) (return #f)) (lambda () (file-info file #t))))
    (time->seconds (file-info-last-modification-time info))))
(def (modification-time/cache file)
  (with-cache ['modification-time file] (modification-time file)))
(def (file-timestamp file)
  (or (modification-time/cache file) +inf.0))

(def (module-strip-nesting module)
  (def name (symbol->string module))
  (cond ((string-rindex name #\$) => (lambda (ix) (string->symbol (substring name 0 ix))))
        (else module)))
(def (library-symbol module)
  (make-symbol ":" (module-strip-nesting module)))
(def (library-file library)
  (with-catch
   (lambda (e) (error "missing library"
            context: 'library-file
            library: library symbol: (library-symbol library)
            load-path: (values->list (load-path))
            error-message: (error-message e)
            error: e))
   (lambda () (core-resolve-library-module-path (library-symbol library)))))
(def (library-timestamp library)
  (file-timestamp (library-file library)))

;;; The build-deps-file contains a list in dependency order of (id spec deps) entries,
;;; where id is a symbol, inputs are non-empty lists of strings denoting files in srcdir,
;;; and deps is a list of symbols denoting module dependencies outside srcdir.
(def build-deps-tag gerbil-build-deps-v2:)
(def (read-build-deps file)
  (match (with-catch void (cut call-with-input-file file read))
    ([(? (cut equal? <> build-deps-tag)) . s] s)
    (_ [])))
(def (write-build-deps file build-deps)
  (create-directory* (path-directory file))
  (call-with-output-file file
    (lambda (port) (pretty-print [build-deps-tag . build-deps] port) (newline port))))

(def (make . args)
  ;; 0. Compute settings, setup a surrounding cache, change directory
  (defvalues (positionals keywords) (separate-keyword-arguments args #t))
  (def buildspec (match positionals ([x] x) (_ (error "invalid arguments" make positionals))))
  (def settings (apply make-settings keywords))
  (parameterize ((current-directory (settings-srcdir settings)))
    (with-fresh-cache (%make buildspec settings))))

(def (%make buildspec settings)

  ;;; 0. (Continued) Extract settings
  (def force? (settings-force settings))
  (def build-deps-file (settings-build-deps settings))
  (def verbose (settings-verbose settings))
  (def (verbose>=? n) (settings-verbose>=? settings n))
  (when (verbose>=? 3) (writeln [Step: 0 settings: settings]))

  ;;; 1. Instantiate the data model that represents the build
  (def spec@ (list->vector (normalize-buildspec buildspec))) ; specs, indexed by target for random access
  (def nspec (vector-length spec@)) ; total number of targets
  (def (specvec) (make-vector nspec #f)) ; vector indexed by target number
  (def spec-index% (invert-hash<-vector spec@)) ; target number by spec
  (def id@ (specvec)) ; dependency id by target number
  (def id-index% (hash)) ; target number by dependency id
  (def deps@ (specvec)) ; list of dependencies (as symbols) by target number
  (def build-list []) ; actual build order by target number
  (def timestamp% (hash)) ; timestamp by dependency id
  (def blocked-by@ (specvec)) ;; #f or hash of numbers of specs blocked by the numbered target
  (def blocking@ (specvec)) ;; #f or hash of numbers of specs blocking the numbered target
  (def ready (make-pqueue identity <)) ;; targets that are ready to build, prioritized by order in user
  (when (verbose>=? 3) (writeln [Step: 1 spec@: spec@]))

  ;;; 2. Reinstate those cached dependencies from previous build that are still up-to-date:

  (def (dependency-timestamp dep) ;; Get timestamp for each dependency by id symbol.
    ;; We must be careful to only call that for modules outside the current project
    (with-catch (lambda (_) +inf.0)
                (lambda () (hash-ensure-ref timestamp% dep (cut library-timestamp dep)))))

  (alet ((build-deps-timestamp (modification-time/cache build-deps-file))
         (previous@ (read-build-deps build-deps-file)))
    (def previous-out-of-date% (hash))
    (def (previous-file-up-to-date? file)
      (<= (file-timestamp file) build-deps-timestamp))
    (def (previous-dependency-up-to-date? dep)
      (or (hash-get spec-index% dep) ;; NB: we depend on the previous build-deps being topologically sorted
          (and (not (hash-get previous-out-of-date% dep))
               (<= (dependency-timestamp dep) build-deps-timestamp))))
    (def (previous-entry-up-to-date? spec deps)
      (and (andmap previous-file-up-to-date? (spec-inputs spec settings))
           (andmap previous-dependency-up-to-date? deps)))
    (def (consider-previous id spec deps)
      (when (verbose>=? 7) (writeln [previous: id spec: spec deps: deps target: (hash-get spec-index% spec) up-to-date?: (and (hash-get spec-index% spec) (previous-entry-up-to-date? spec deps))]))
      (def target (hash-get spec-index% spec))
      (if (and target (previous-entry-up-to-date? spec deps))
        (begin (vector-set! id@ target id)
               (hash-put! id-index% id target)
               (vector-set! deps@ target deps))
        (hash-put! previous-out-of-date% id #t)))
    (for-each (cut apply consider-previous <>) previous@))
  (when (verbose>=? 3)
    (writeln [Step: 2 previous-up-to-date: (hash->list/sort id-index% symbol<?)]))

  ;; 3. Compute dependencies for entries that are out of date, or at least not cached
  ;; NB: We assume this will catch any circular dependency and error out.
  ((cut vector-for-each <> spec@)
   (lambda (target spec)
     (when (verbose>=? 7) (writeln [Step: 3.0 target: target spec]))
     (unless (vector-ref id@ target) ; skip if already done as up-to-date from previous build-deps
       (let-values (((id deps) (file-dependencies (spec-file spec settings) settings)))
         (when (verbose>=? 7) (writeln [target spec id deps]))
         (vector-set! id@ target id)
         (hash-put! id-index% id target)
         (vector-set! deps@ target deps)))))
  (when (verbose>=? 3) (writeln [Step: 3 deps: (apply map list (map vector->list [id@ spec@ deps@]))]))

  ;; 4. Create output directories
  (create-directory* (settings-bindir settings))
  (create-directory* (settings-libdir settings))
  (when (settings-static settings) (create-directory* (path-expand "static" (settings-libdir settings))))
  (when (verbose>=? 3) (writeln [Step: 4]))

  ;; 5. Initialize the blocked and blocking tables and the build queue
  ((cut vector-for-each <> deps@)
   (lambda (target deps)
     ((cut for-each <> deps)
       (lambda (dep)
         (let ((other-target (hash-get id-index% dep)))
           (if other-target
             (begin (hash-put! (vector-ensure-ref blocked-by@ target make-hash-table) other-target #t)
                    (hash-put! (vector-ensure-ref blocking@ other-target make-hash-table) target #t))
             (dependency-timestamp dep))))))) ; NB: this populates the timestamp% table as a side-effect
  ((cut vector-for-each <> spec@)
   (lambda (target _) (unless (vector-ref blocked-by@ target) (pqueue-push! ready target))))
  (when (verbose>=? 3) (writeln [Step: 5 first-target: (vector-ref spec@ (pqueue-peek ready))]))

  ;; 6. Now, build stuff in order, thanks to a priority queue of jobs that are ready,
  ;; and update timestamps as we go.
  (def (compute-timestamp target)
    (def spec (vector-ref spec@ target))
    (def deps (vector-ref deps@ target))
    (def inputs (spec-inputs spec settings))
    (def outputs (spec-outputs spec settings))
    (def dep-timestamps (map dependency-timestamp deps))
    (def in-timestamps (map file-timestamp inputs))
    (def out-timestamps (map file-timestamp outputs))
    (def dep-max (xmax/list dep-timestamps))
    (def in-max (xmax dep-max (xmax/list in-timestamps)))
    (def out-min (xmin/list out-timestamps))
    (def out-max (xmax/list out-timestamps))
    (when (verbose>=? 6)
      (writeln [compute-timestamp:
                [target: target] [spec: spec]
                [in-max: in-max] [out-min: out-min] [out-max: out-max]
                [deps: (map list dep-timestamps deps)]
                [ins: (map list in-timestamps inputs)]
                [outs: (map list outputs out-timestamps)]]))
    (if (<= in-max out-min) out-max +inf.0))
  (def (update-timestamp target)
    (def spec (vector-ref spec@ target))
    (def outputs (spec-outputs spec settings))
    (for-each (lambda (x) (cache-remove! ['modification-time x])) outputs) ; clear stale pre-build timestamps
    (def out-timestamp (xmax/map file-timestamp outputs))
    (unless out-timestamp (error "Build failed to generate expected outputs" spec outputs))
    (hash-put! timestamp% (vector-ref id@ target) out-timestamp))
  (def (mark-built target)
    (push! target build-list)
    (hash-for-each
     (lambda (unblocked _)
       (def blocked-by (vector-ref blocked-by@ unblocked))
       (hash-remove! blocked-by target)
       (when (hash-empty? blocked-by)
         (pqueue-push! ready unblocked)))
     (or (vector-ref blocking@ target) (hash))))

  ;; TODO: parallelize this worker loop, in the style of CL's POIU, or better.
  (until (pqueue-empty? ready)
    (let* ((target (pqueue-pop! ready #f))
           (spec (vector-ref spec@ target)))
      (cond
       ((and (not force?)
             (< (hash-ensure-ref timestamp% target (cut compute-timestamp target)) +inf.0))
        (when (verbose>=? 5) (writeln [Up-to-date: target spec (hash-get timestamp% target)])))
       (else
        (build spec settings)
        (update-timestamp target)))
      (mark-built target)))
  (when (verbose>=? 3) (writeln [Step: 6]))

  ;; 7. Check that we didn't hit some circular dependency. Should already be caught in step 3 above.
  ((cut vector-for-each <> blocked-by@)
   (lambda (target blocked-by)
     (when (and blocked-by (not (hash-empty? blocked-by)))
       (writeln [|Build didn't complete due to circular dependency in|: (vector-ref spec@ target)]))))
  (when (verbose>=? 3) (writeln [Step: 7]))

  ;; 8. Update the build-deps cache, topologically sorted.
  (write-build-deps ; TODO: move this right after step 3. This requires separating the topological
   build-deps-file  ; sort algorithm from the build itself (and while at it, parallelize it)
   (map (lambda (target) (map (cut vector-ref <> target) [id@ spec@ deps@])) (reverse build-list)))
  (when (verbose>=? 3) (writeln [Step: 8 "All done."])))

;; file-dependencies : file -> dependencies
(def (file-dependencies file settings)
  (def ht (make-hash-table-eq)) ; dependencies found so far, so we only find them once
  (def q (make-queue)) ; queue of objects to unwrap to find the dependencies
  (def mod ; load the source file with srcdir in the load-path for dependencies, extract the module
    (with-cons-load-path (cut import-module file) (settings-srcdir settings)))
  (def mod-id (expander-context-id mod)) ; id of the module we're interested in
  (def (consider m)
    (alet (id (expander-context-id m)) ; maybe it's root (#f), then stop.
      (let (module-id (module-strip-nesting id))
        (if (eq? module-id mod-id)
          (for-each (cut enqueue! q <>)
                    (cons (core-context-prelude m)
                          (module-context-import m)))
          (hash-put! ht module-id #t)))))
  (consider mod) ; start from the current module
  (until (queue-empty? q)
    (let ((hd (dequeue! q #f)))
      (cond
       ((module-context? hd)  (consider hd))
       ((prelude-context? hd) (consider hd))
       ((module-import? hd)   (enqueue! q (module-import-source hd)))
       ((module-export? hd)   (enqueue! q (module-export-context hd)))
       ((import-set? hd)      (enqueue! q (import-set-source hd)))
       (else (error "Unexpected module import" hd)))))
  (values mod-id (sort (hash-keys ht) symbol<?)))

(def make-depgraph true) ;; Don't use, for backward compatibility only, during transition
(def make-depgraph/spec true) ;; ^ idem

;; Normalize-buildspec : buildspec -> buildspec
;; Groups the gsc: and static-include: and copy: specs inside the immediately following ssi:
(def (normalize-buildspec buildspec)
  (def submodules '())
  (def (get-submodules)
    (begin0 (reverse submodules) (set! submodules '())))
  (def (no-submodules spec)
    (unless (null? submodules)
      (error "incompatible sequence of build specifications" (reverse (cons spec submodules)))))
  (def (push-submodule spec)
    (set! submodules (cons spec submodules)))
  (with-list-builder (c)
    ((cut for-each <> buildspec)
     (lambda (spec)
       (case (spec-type spec)
         ((gxc: exe: static-exe:) (no-submodules spec) (c spec))
         ((gsc: static-include: copy:) (push-submodule spec))
         ((ssi:) (c (append spec (get-submodules))))
         (else (error "Unrecognized spec type" spec)))))
    (no-submodules #!eof)))

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

(def (build spec settings)
  (match spec
    ((? string? modf)
     (gxc-compile modf #f settings))
    ([gxc: modf . opts]
     (gxc-compile modf opts settings))
    ([gsc: modf . opts]
     (gsc-compile modf opts settings))
    ([ssi: modf . submodules]
     (for-each (cut build <> settings) submodules)
     (compile-ssi modf '() settings))
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

(def (gxc-outputs mod opts settings)
  [(library-path mod ".ssi" settings)
   (when/list (settings-static settings) [(static-path mod settings)]) ...])

(def (xxc-compile-dep opts)
  (match opts
    ([dep: dep . _] dep)
    (_ [])))

(def (gsc-compile-opts opts)
  (match opts
    ([dep: _ . rest] (listify rest))
    (_ (listify opts))))

(def (gxc-compile mod opts settings (invoke-gsc? #t))
  (def gsc-opts (gsc-compile-opts opts))
  (def gxc-opts
    [invoke-gsc: invoke-gsc?
     output-dir: (settings-libdir settings)
     optimize: (settings-optimize settings)
     debug: (settings-debug settings)
     generate-ssxi: #t
     static: (settings-static settings)
     verbose: (settings-verbose>=? settings 9)
     (when/list gsc-opts [gsc-options: gsc-opts]) ...])
  (def srcpath (source-path mod ".ss" settings))
  (message "... compile " mod)
  (compile-file srcpath gxc-opts))

(def (gsc-libpath mod settings)
  (def libdir-prefix (settings-libdir-prefix settings))
  (cond
   ((string-rindex mod #\/) => (lambda (ix) (path-expand (substring mod 0 ix) libdir-prefix)))
   (else libdir-prefix)))

(def (gsc-base mod)
  (cond
   ((string-rindex mod #\/)
    => (lambda (ix) (substring mod (fx1+ ix) (string-length mod))))
   (else mod)))

(def (gsc-c-path mod settings)
  (def libpath (gsc-libpath mod settings))
  (def base (gsc-base mod))
  (let lp ((n 1) (cpath #f))
    (let (next (path-expand (string-append base ".o" (number->string n))
                            libpath))
      (if (file-exists? next)
        (lp (fx1+ n) next)
        cpath))))

(def (gsc-compile mod opts settings)
  (def gsc-opts (gsc-compile-opts opts))
  (def srcpath (source-path mod ".scm" settings))
  (def libpath (gsc-libpath mod settings))
  (create-directory* libpath)
  (message "... compile foreign " mod)
  (let* ((proc (open-process [path: (gerbil-gsc)
                              arguments: ["-o" libpath gsc-opts ... srcpath]
                              stdout-redirection: #f]))
         (status (process-status proc)))
    (unless (zero? status)
      (error "Compilation error; gsc exited with nonzero status" status)))
  (when (settings-static settings)
    ;; just copy to libdir/static/ with properly mangled module name
    (let (statpath (static-path mod settings))
      (when (file-exists? statpath)
        (delete-file statpath))
      (copy-file srcpath statpath))))

(def (gerbil-gsc)
  (getenv "GERBIL_GSC" "gsc"))

(def (compile-ssi mod deps settings)
  (def srcpath (source-path mod ".ssi" settings))
  (def libpath (library-path mod ".ssi" settings))
  (def rtpath  (library-path mod "__rt.scm" settings))
  (def prefix  (settings-prefix settings))
  (message "... copy ssi " mod)
  (create-directory* (path-directory libpath))
  (when (file-exists? libpath)
    (delete-file libpath))
  (copy-file srcpath libpath)
  (message "... compile loader " mod)
  (with-output-to-file rtpath
    (lambda ()
      (for-each (lambda (dep) (pretty-print `(load-module ,dep))) deps)
      (pretty-print `(load-module ,(prefix/ prefix mod)))))
  (let* ((proc (open-process [path: (gerbil-gsc)
                                    arguments: [rtpath]
                                    stdout-redirection: #f]))
         (status (process-status proc)))
    (unless (zero? status)
      (error "Compilation error; gsc exited with nonzero status" status))
    (delete-file rtpath)))

(def (compile-exe mod opts settings)
  (def srcpath (source-path mod ".ss" settings))
  (def binpath (binary-path mod opts settings))
  (def gsc-opts (compile-exe-gsc-opts opts))
  (def gxc-opts
    [invoke-gsc: #t
     output-file: binpath
     verbose: (settings-verbose>=? settings 9)
     ])
  (gxc-compile mod gsc-opts settings)
  (message "... compile exe " mod " -> " binpath)
  (compile-exe-stub srcpath gxc-opts))

(def (compile-exe-gsc-opts opts)
  (match opts
    ([(? keyword?) opt . rest]
     (compile-exe-gsc-opts rest))
    (else opts)))

(def (make-settings-static settings)
  (def s (struct-copy settings))
  (set! (settings-static s) #t)
  s)

(def (compile-static-exe mod opts settings)
  (def srcpath (source-path mod ".ss" settings))
  (def binpath (binary-path mod opts settings))
  (def gsc-opts (compile-exe-gsc-opts opts))
  (def gxc-opts
    [invoke-gsc: #t
     output-file: binpath
     verbose: (settings-verbose>=? settings 9)
     debug: (settings-static-debug settings)
     (when/list gsc-opts [gsc-options: gsc-opts]) ...])
  (gxc-compile mod gsc-opts (make-settings-static settings) #f)
  (message "... compile static exe " mod " -> " binpath)
  (gxc#compile-static-exe srcpath gxc-opts))

(def (copy-static file settings)
  (def spath (static-file-path file settings))
  (message "... copy static include " file)
  (when (file-exists? spath)
    (delete-file spath))
  (copy-file file spath))

(def (copy-compiled file settings)
  (def srcpath (source-path file #f settings))
  (def libpath (library-path file #f settings))
  (message "... copy std/" file)
  (when (file-exists? libpath)
    (delete-file libpath))
  (copy-file srcpath libpath))

(def (source-path mod ext settings)
  (path-expand (path-default-extension mod ext) (settings-srcdir settings)))

(def (library-path mod ext settings)
  (path-expand (path-force-extension mod ext) (settings-libdir-prefix settings)))

(def (binary-path mod opts settings)
  (let* ((bindir (settings-bindir settings))
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
  (let* ((libdir (settings-libdir settings))
         (staticdir (path-expand "static" libdir))
         (mod (prefix/ (settings-prefix settings) mod))
         (base (string-join (string-split mod #\/) "__"))
         (scm (path-force-extension base ".scm")))
    (path-expand scm staticdir)))

(def (static-file-path file settings)
  (let* ((libdir (settings-libdir settings))
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
(def (ldflags lib flags)
  (try
   (pkg-config-libs lib)
   (catch (e)
     ((env-ldflags) flags))))

;; tries pkg-confg-cflags with fallback to env-cppflags
(def (cppflags lib flags)
  (try
   (pkg-config-cflags lib)
   (catch (e)
     ((env-cppflags) flags))))
