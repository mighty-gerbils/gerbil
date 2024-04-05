;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; support for library build scripts
;;; build-spec: see documentation in doc/reference/make.md

(import :gerbil/compiler
        :gerbil/expander
        :gerbil/gambit
        ./srfi/1
        ./misc/hash
        ./misc/list
        ./misc/number
        ./misc/path
        ./misc/pqueue
        ./misc/queue
        ./misc/symbol
        ./misc/concurrent-plan
        ./sort
        ./sugar
        ./error
        ./assert)

(export make
        make-clean
        shell-config
        env-cppflags
        env-ldflags
        include-gambit-sharp
        pkg-config
        pkg-config-libs
        pkg-config-cflags
        ldflags
        cppflags
        append-options)

(def default-gambit-gsc (path-expand "~~bin/gsc"))
(def default-gerbil-gxc (path-expand "~~bin/gxc"))

#|
TODO:

  * Allow static-include: and gsc: without a ssi:, just a gxc:
    and don't nest, just add a dependency.

  * Allow for extra-dependency: to a list of other targets (as identified by spec-file ?)
    in the plist of gxc:, etc.

  * Divide the building of a spec into multiple actions, some foreground
    (using Gerbil's non-thread-safe compiler), some background (spawning gsc),
    each having inputs and outputs, backgroundability, and a perform method.
    The inputs can have changed from the cache if the dependencies were out of date.
    The outputs can change compare to the cache if the action was out of date.

  * Provide a DSL to extend the spec language, each rule being defining one
    or multiple actions, each with inputs and outputs, its backgroundability,
    is perform method.

  * Learn from the successes and failures of ASDF, Bazel, Dune, Cmake, etc.

  * Should it be that, as in ASDF, there are in-memory actions?
    Should they be, as in ASDF, exactly those without outputs?
    Maybe, if we want to build session state, but they are not strictly needed to build Gerbil,
    since all actions we are considering have outputs.
    Unless we introduce intermediate steps (as in ASDF's prepare-op).

  * Could they be exactly the non-backgroundable ones?
    No, because we can't fork the current image state, so for the sake of not having to rebuild
    that state (if expensive, naturally, or artificially, just because I (fare) don't know how
    to do it so far), we might want to keep such actions in the foreground.
;; |#

;;; Functions that should be better moved some library...
(def (force-outputs) (force-output (current-error-port)) (force-output)) ;; move to std/misc/ports ?
(def (message . lst) (apply displayln lst) (force-outputs)) ;; move to std/misc/ports ?
(def (writeln x) (write x) (newline) (force-outputs)) ;; move to std/misc/ports ?
(def (prefix/ prefix path) (if prefix (string-append prefix "/" path) path)) ;; move to std/misc/path ?

;; from srfi/43
(def (srfi43-vector-for-each proc vec)
  (vector-for-each proc (list->vector (iota (vector-length vec))) vec))
(def (vector-ensure-ref v i f)
  (or (vector-ref v i) (let ((x (f))) (vector-set! v i x) x)))

;;; Settings: see details in doc/reference/make.md
(defstruct settings
  (srcdir libdir bindir prefix force optimize debug verbose build-deps
   libdir-prefix parallelize
   full-program-optimization
   build-release
   build-optimized)
  transparent: #t constructor: :init!)

(defmethod {:init! settings}
  (lambda (self
      srcdir: (srcdir_ #f) libdir: (libdir_ #f) bindir: (bindir_ #f)
      prefix: (prefix_ #f) force: (force? #f)
      optimize: (optimize #t) debug: (debug_ #f)
      static: (_ignore-static #t)
      verbose: (verbose_ #f) build-deps: (build-deps_ #f)
      parallelize: (parallelize_ #f)
      full-program-optimization: (full-program-optimization #f)
      build-release: (build-release #f)
      build-optimized: (build-optimized #f))

    (def gerbil-path_ (delay (gerbil-path)))
    (def srcdir (or srcdir_ (error "srcdir must be specified")))
    (def libdir (or libdir_ (path-expand "lib" (force gerbil-path_))))
    (def bindir (or bindir_ (path-expand "bin" (force gerbil-path_))))
    (def prefix (or prefix_ (read-package-prefix srcdir)))
    (def libdir-prefix (if prefix (path-expand prefix libdir) libdir))
    (def build-deps (path-expand (or build-deps_ "build-deps") srcdir))
    (def parallelize (gerbil-build-cores parallelize))
    (def verbose
      (cond
       (verbose_)
       ((getenv "GERBIL_BUILD_VERBOSE" #f) => string->number)
       (else #f)))
    (def debug
      (cond
       (debug_)
       ((getenv "GERBIL_BUILD_DEBUG" #f) #t)
       (else #f)))
    (struct-instance-init!
      self
      srcdir libdir bindir prefix force? optimize debug verbose build-deps
      libdir-prefix parallelize
      full-program-optimization
      build-release
      build-optimized)))

(def (gerbil-build-cores (cpu-count-spec #t))
  ;; TODO: for the default (catch) case, use something like
  ;; (min (##cpu-count) (/ (available-memory) (memory-per-compilation-cpu)))
  ;; Except we need to compute (available-memory) and calibrate (memory-per-compilation-cpu)...
  ;; Until then, we disable the parallel build as it confuses a lot of beginners.
  (cond
   ((real? cpu-count-spec) cpu-count-spec)
   ((eq? cpu-count-spec #t)
    (with-catch (lambda (_) 0) ;; if not defined and an integer, default to 0
                (lambda () (string->number (getenv "GERBIL_BUILD_CORES")))))
   (else 0)))

(def (settings-verbose>=? settings level)
  (def verbose (settings-verbose settings))
  (and (real? level) (real? verbose) (>= verbose level)))

(def (read-package-prefix srcdir)
  (let (plist (with-catch false (lambda () (call-with-input-file (path-expand "gerbil.pkg" srcdir) read))))
    (alet (pkg (pgetq package: plist)) (and (symbol? pkg) (symbol->string pkg)))))


;;; Build item spec
(def (spec-type spec)
  (match spec
    ((? string? _) gxc:)
    ([(? keyword? type) . _] type)
    (else (error "Bad buildspec" spec))))

(def (spec-file spec settings)
  (match spec
    ((? string? modf)
     (source-path modf ".ss" settings))
    ([gxc: modf . opts]
     (source-path modf ".ss" settings))
    ([gsc: modf . opts]
     (source-path modf ".scm" settings))
    ([ssi: modf . deps]
     (source-path modf ".ssi" settings))
    ([(or exe: static-exe: optimized-exe: optimized-static-exe:)  modf . opts]
     (source-path modf ".ss" settings))
    ([static-include: file]
     (static-file-path file settings))
    ([copy: file]
     file)
    (else
     (error "Bad buildspec" spec))))

(def (spec-inputs spec settings)
  [(spec-file spec settings)
   (spec-extra-inputs spec settings) ...
   (append-map (cut spec-inputs <> settings) (spec-submodules spec)) ...])

(def (spec-extra-inputs spec settings)
  (match spec
    ([gxc: . _] (pgetq extra-inputs: (spec-plist spec) []))
    ([gsc: . _] (pgetq extra-inputs: (spec-plist spec) []))
    (_ [])))

(def (spec-submodules spec)
  (match spec
    ([gxc: . _] (pgetq submodules: (spec-plist spec) []))
    ([ssi: _ . submodules] submodules)
    (_ [])))

(def (spec-plist spec)
  (match spec
    ([(? (cut member <> '(gxc: gsc:))) _ [plist ...] . _] plist)
    (_ [])))

(def (spec-outputs spec settings)
  (match spec
    ((? string? modf) (gxc-outputs modf #f settings))
    ([gxc: modf . opts] (gxc-outputs modf opts settings))
    ([gsc: modf . opts] [(gsc-c-path modf settings)])
    ([ssi: modf . submodules] [(library-path modf ".ssi" settings)
                               (append-map (cut spec-outputs <> settings) submodules) ...])
    ([(or exe: static-exe: optimized-exe: optimized-static-exe:) modf . opts]
     [(binary-path modf opts settings)
      (static-path modf settings)])
    ([static-include: file] [(static-file-path file settings)])
    ([copy: file] [(library-path file #f settings)])
    (else (error "Bad buildspec" spec))))

(def (spec-backgroundable? spec)
  (case (spec-type spec)
    ((gxc:) (not (pgetq foreground: (spec-plist spec))))
    ((gsc:) #t)
    (else #f)))

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
  (parameterize ((current-directory (settings-srcdir settings))
                 (current-expander-compiling? #t))
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
  (def timestamp% (hash)) ; timestamp by dependency id
  (def blocked-by@ (specvec)) ;; #f or hash of numbers of specs blocked by the numbered target
  (def blocking@ (specvec)) ;; #f or hash of numbers of specs blocking the numbered target
  ;; Actions are prioritized by order in user build-spec
  (def ready-fg (make-pqueue identity <)) ;; foreground-only targets that are ready to build
  (def ready-bg (make-pqueue identity >)) ;; backgroundable targets that are ready to build (negative)
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
      (or (hash-get id-index% dep) ;; NB: we depend on the previous build-deps being topologically sorted
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

  ;; 3. Compute dependencies for entries that are out-of-date, or at least not cached
  ;; NB: We assume this will catch any circular dependency and error out.
  ((cut srfi43-vector-for-each <> spec@)
   (lambda (target spec)
     (when (verbose>=? 7) (writeln [Step: 3.0 target: target spec]))
     (unless (vector-ref id@ target) ; skip if already done as up-to-date from previous build-deps
       (let-values (((id deps) (file-dependencies (spec-file spec settings) settings)))
         (when (verbose>=? 7) (writeln [target spec id deps]))
         (vector-set! id@ target id)
         (hash-put! id-index% id target)
         (vector-set! deps@ target deps)))))
  (when (verbose>=? 3) (writeln [Step: 3 deps: (apply map list (map vector->list [id@ spec@ deps@]))]))

  ;; 4. Update the build-deps cache, topologically sorted.
  (def (blockings blocks)
    (let loop ((i (1- nspec)) (l []))
      (if (> 0 i) l
          (let* ((h1 (vector-ref blocks i))
                 (h2 (and h1 (hash-keys h1)))
                 (h3 (and h2 (pair? h2) h2)))
            (loop (1- i) (if h3 [[i h3] . l] l))))))

  (def (init-walk) ;; Initialize a walk of the build graph, which we do twice, in steps 4 and 5.
    (when (verbose>=? 8)
      (writeln [ready-fg: (pqueue-contents ready-fg)
                ready-bg: (pqueue-contents ready-bg)
                blocked-by: (blockings blocked-by@) len: (length (blockings blocked-by@))
                blocking: (blockings blocking@) len: (length (blockings blocking@))]))
    (assert! (null? (blockings blocked-by@)))
    (assert! (null? (blockings blocking@)))
    (assert! (pqueue-empty? ready-fg))
    (assert! (pqueue-empty? ready-bg))

    ((cut srfi43-vector-for-each <> deps@)
     (lambda (target deps)
       ((cut for-each <> deps)
        (lambda (dep)
          (let ((other-target (hash-get id-index% dep)))
            (when other-target
              (hash-put! (vector-ensure-ref blocked-by@ target make-hash-table) other-target #t)
              (hash-put! (vector-ensure-ref blocking@ other-target make-hash-table) target #t)))))))
    ((cut srfi43-vector-for-each <> spec@)
     (lambda (target _) (unless (vector-ref blocked-by@ target) (pqueue-push! ready-fg target)))))

  (def (mark-built target . _)
    (alet (blocking (vector-ref blocking@ target))
      ((cut hash-for-each <> blocking)
       (lambda (unblocked _)
         (hash-remove! blocking unblocked)
         (def blocked-by (vector-ref blocked-by@ unblocked))
         (hash-remove! blocked-by target)
         (when (hash-empty? blocked-by)
           (pqueue-push! ready-fg unblocked))))))

  ;; Walk the dependencies without parallelism, to topologically sort the build-deps.
  (init-walk)
  (def build-list ; actual build order by target number
    (with-list-builder (c)
      (perform-plan/threads
       ready-fg ready-bg
       perform: void on-failure: void ;; nothing to perform, no failure possible doing nothing.
       announce: c ;; record the target in the order they are issued
       on-success: mark-built
       deterministic-order: #t max-workers: 1)))
  ;; Write down the build-deps cache file.
  (write-build-deps
   build-deps-file
   (map (lambda (target) (map (cut vector-ref <> target) [id@ spec@ deps@])) build-list))
  (unless (= (length build-list) nspec)
    ;; This should never happen except by corrupted build-deps:
    ;; Any circularity should be caught in 3.
    (error "Circular dependency in build??? Remove build-deps and try again?"))
  (when (verbose>=? 3) (writeln [Step: 4 build-deps: build-deps-file]))

  ;; 5. Now, actually build that stuff in order, and update timestamps as we go.
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
                [outs: (map list outputs out-timestamps)]
                [result: (if (<= in-max out-min) out-max +inf.0)]]))
    (if (<= in-max out-min) out-max +inf.0))
  (def (compute-new-timestamp target)
    (def spec (vector-ref spec@ target))
    (def outputs (spec-outputs spec settings))
    (for-each (lambda (x) (cache-remove! ['modification-time x])) outputs) ; clear stale pre-build timestamps
    (def out-timestamp (xmax/map file-timestamp outputs))
    (unless (< out-timestamp +inf.0)
      (when verbose
        (writeln [compute-timestamp-failed: spec (map (lambda (x) [x (file-timestamp x)]) outputs)]))
      (error "Build failed to generate expected outputs" spec outputs))
    out-timestamp)
  (def (target<-item item) (if (<= 0 item) item (bitwise-not item)))
  (def (perform target)
    (if (<= 0 target) (fg-perform target) (bg-perform target)))
  (def (fg-perform target)
    (def spec (vector-ref spec@ target))
    (def id (vector-ref id@ target))
    (when (verbose>=? 7) (writeln [Perform: target spec id (hash-get timestamp% id)]))
    (cond
     ((and (not force?)
           (< (hash-ensure-ref timestamp% id (cut compute-timestamp target)) +inf.0))
      (when (verbose>=? 5) (writeln [Up-to-date: target spec (hash-ref timestamp% id)]))
      (hash-ref timestamp% id))
     ((spec-backgroundable? spec)
      (pqueue-push! ready-bg (bitwise-not target))
      +inf.0)
     (else
      (build-target target))))
  (def (build-target target)
    (build (vector-ref spec@ target) settings)
    (compute-new-timestamp target))
  (def (bg-perform target)
    (build-target (bitwise-not target)))
  (def (on-success item timestamp)
    (def target (target<-item item))
    (def spec (vector-ref spec@ target))
    (def id (vector-ref id@ target))
    (when (verbose>=? 7) (writeln [on-success: item target id spec timestamp]))
    (when (< timestamp +inf.0)
      (hash-put! timestamp% id timestamp)
      (mark-built target)))
  (def (on-failure item exception)
    (raise (build-failure (vector-ref spec@ (target<-item item)) exception)))

  (create-directory* (settings-bindir settings))
  (create-directory* (settings-libdir settings))
  (create-directory* (path-expand "static" (settings-libdir settings)))

  (init-walk)
  (when (verbose>=? 6) (writeln [Step: 5. queue: (sort (pqueue-contents ready-fg) <)]))

  (perform-plan/threads
   ready-fg ready-bg
   perform: perform on-success: on-success on-failure: on-failure
   announce: (if (verbose>=? 8)
               (lambda (item)
                 (def target (target<-item item))
                 (writeln [announcing: item (vector-ref spec@ target)]))
               void)
   deterministic-order: #f max-workers: (max (settings-parallelize settings) 1))

  (when (verbose>=? 3) (writeln [Step: 5 "All built"])))

(def (make-clean . args)
  (defvalues (positionals keywords) (separate-keyword-arguments args #t))
  (def buildspec (match positionals ([x] x) (_ (error "invalid arguments" make positionals))))
  (def settings (apply make-settings keywords))

  (for-each
    (lambda (spec)
      (for-each
        (lambda (f)
          (when (file-exists? f)
            (displayln "... remove " f)
            (delete-file-or-directory f)))
        (spec-outputs spec settings)))
    buildspec))

(defstruct build-failure (item exception))

(defmethod {display-exception build-failure}
  (lambda (self port)
    (display "Build Failure at " port)
    (display self.item port)
    (newline port)
    (display-exception self.exception port)))

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
         ((gxc:) (let (s (get-submodules))
                   (if (null? s) (c spec)
                       (c
                        (match spec
                          ([gxc: name (? pair? plist) . args]
                           [gxc: name (psetq plist submodules: (append (pgetq plist submodules:) s))])
                          ([gxc: name . args]
                           [gxc: name [submodules: s] . args])
                          ((? string? spec)
                           [gxc: spec [submodules: s]]))))))
         ((exe: static-exe: optimized-exe: optimized-static-exe:) (no-submodules spec) (c spec))
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
  (let* ((gambit-sharp
          (path-expand "lib/_gambit#.scm"
                       (getenv "GERBIL_BUILD_PREFIX" (gerbil-home))))
         (include-gambit-sharp
          (string-append "(include \"" gambit-sharp "\")")))
    (cond
     ((gerbil-runtime-smp?)
      `("-e" "(define-cond-expand-feature|enable-smp|)"
        "-e" ,include-gambit-sharp))
     (else
      `("-e" ,include-gambit-sharp)))))

(def (build spec settings)
  (match spec
    ((? string? modf)
     (gxc-compile modf #f settings #t))
    ([gxc: modf [submodules: submodules . _] . opts]
     (for-each (cut build <> settings) submodules)
     (gxc-compile modf opts settings #t))
    ([gxc: modf . opts]
     (gxc-compile modf opts settings #t))
    ([gsc: modf . opts]
     (gsc-compile modf opts settings))
    ([ssi: modf . submodules]
     (for-each (cut build <> settings) submodules)
     (compile-ssi modf '() settings))
    ([exe:  modf . opts]
     (compile-exe/context modf opts settings))
    ([static-exe:  modf . opts]
     (compile-exe/static-linkage modf opts settings))
    ([optimized-exe: modf . opts]
     (compile-optimized-exe modf opts settings))
    ([optimized-static-exe: modf . opts]
     (compile-optimized-exe/static-linkage modf opts settings))
    ([static-include: file]
     (copy-target file settings)
     (copy-static file settings))
    ([copy: file]
     (copy-compiled file settings))
    (else
     (error "Bad buildspec" spec))))

(def (gxc-outputs mod opts settings)
  [(library-path mod ".ssi" settings)
   (static-path mod settings)])

(def (gsc-compile-opts opts)
  (match opts
    ([[plist ...] . rest] (listify rest))
    (_ (listify opts))))

;; TODO: split that (and more?) into many action. See :gerbil/compiler/driver
(def (gxc-compile mod opts settings (invoke-gsc? #t))
  (message "... compile " mod)
  (def foreground? (and (pair? opts) (pair? (car opts)) (pgetq foreground: (car opts))))
  (def gsc-opts (gsc-compile-opts opts))
  (def srcpath (source-path mod ".ss" settings))
  (if (or foreground? (> 1 (settings-parallelize settings)))
    (let ((gxc-opts
           [invoke-gsc: invoke-gsc?
            keep-scm: (not invoke-gsc?)
            output-dir: (settings-libdir settings)
            optimize: (settings-optimize settings)
            debug: (settings-debug settings)
            generate-ssxi: #t
            verbose: (settings-verbose>=? settings 9)
            (when/list gsc-opts [gsc-options: gsc-opts]) ...]))
      (compile-module srcpath gxc-opts))
    (let* ((arguments
            ["-d" (settings-libdir settings)
             (when/list (not invoke-gsc?) ["-s" "-S"]) ...
             (when/list (settings-optimize settings) ["-O"]) ...
             (when/list (settings-debug settings) ["-g"]) ...
             (when/list (settings-verbose>=? settings 9) ["-v"]) ...
             (when/list gsc-opts (append-map (lambda (x) ["-gsc-flag" x]) gsc-opts)) ...
             srcpath])
           (_ (when (settings-verbose>=? settings 7) (writeln [invoking: (gerbil-gxc) arguments ...])))
           (proc (open-process [path: (gerbil-gxc)
                                arguments: arguments
                                stdout-redirection: #f]))
           (status (process-status proc)))
      (close-port proc)
      (unless (zero? status)
        (error "Compilation error; gxc exited with nonzero status" status)))))

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

(def (gsc-c-path modf settings)
  (def mod (path-strip-extension modf))
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
    (close-port proc)
    (unless (zero? status)
      (error "Compilation error; gsc exited with nonzero status" status)))
  ;; just copy to libdir/static/ with properly mangled module name
  (let (statpath (static-path mod settings))
    (when (file-exists? statpath)
      (delete-file statpath))
    (copy-file srcpath statpath)))

(def (gerbil-gsc)
  (getenv "GERBIL_GSC" default-gambit-gsc))
(def (gerbil-gxc)
  (getenv "GERBIL_GXC" default-gerbil-gxc))

(def (compile-ssi mod deps settings)
  (def srcpath (source-path mod ".ssi" settings))
  (def libpath (library-path mod ".ssi" settings))
  (def prefix  (settings-prefix settings))
  (message "... copy ssi " mod)
  (create-directory* (path-directory libpath))
  (when (file-exists? libpath)
    (delete-file libpath))
  (copy-file srcpath libpath))

(def (compile-exe-gsc-opts opts)
  (match opts
    ([(? keyword?) opt . rest]
     (compile-exe-gsc-opts rest))
    (else opts)))

(def (compile-exe/context mod opts settings)
  (cond
   ((or (settings-build-release settings)
        (getenv "GERBIL_BUILD_RELEASE" #f))
    (cond
     ((or (settings-build-optimized settings)
          (getenv "GERBIL_BUILD_OPTIMIZED" #f))
      (compile-optimized-exe/static-linkage mod opts settings))
      (else
       (compile-exe/static-linkage mod opts settings))))
   ((or (settings-build-optimized settings)
        (getenv "GERBIL_BUILD_OPTIMIZED" #f))
    (compile-optimized-exe mod opts settings))
   (else
    (compile-exe mod opts settings))))

(def (compile-exe mod opts settings)
  (def srcpath (source-path mod ".ss" settings))
  (def binpath (binary-path mod opts settings))
  (def gsc-opts (compile-exe-gsc-opts opts))
  (def gxc-opts
    [invoke-gsc: #t
     output-file: binpath
     verbose: (settings-verbose>=? settings 9)
     debug: (settings-debug settings)
     full-program-optimization: (settings-full-program-optimization settings)
     (when/list gsc-opts [gsc-options: gsc-opts]) ...])
  (gxc-compile mod gsc-opts settings #f)
  (message "... compile exe " mod " -> " binpath)
  (gxc#compile-exe srcpath gxc-opts))

(def (compile/static-linkage mod opts settings compile-e)
  (when (member "--enable-shared" (string-split (configure-command-string) #\'))
    (error "system is configured with --enable-shared and cannot build static executables"))
  (let (static-opts (append opts '("-cc-options" "-Bstatic" "-ld-options" "-static")))
    (compile-e mod static-opts settings)))

(def (compile-exe/static-linkage mod opts settings)
  (compile/static-linkage mod opts settings compile-exe))

(def (make-settings-optimized settings)
  (def s (struct-copy settings))
  (set! (settings-full-program-optimization s) #t)
  s)

(def (compile-optimized-exe mod opts settings)
  (compile-exe mod opts (make-settings-optimized settings)))

(def (compile-optimized-exe/static-linkage mod opts settings)
  (compile/static-linkage mod opts settings compile-optimized-exe))

(def (copy-static file settings)
  (def spath (static-file-path file settings))
  (message "... copy static include " file)
  (when (file-exists? spath)
    (delete-file spath))
  (copy-file file spath))

(def (copy-target file settings)
  (let* ((libdir (settings-libdir-prefix settings))
         (srcdir (settings-srcdir settings))
         (spath (path-expand file srcdir))
         (tpath (path-expand file libdir)))
    (message "... copy static include to target directory " file)
    (create-directory* (path-directory tpath))
    (when (file-exists? tpath)
      (delete-file tpath))
    (copy-file spath tpath)))

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

;; appends flags together; useful for -cc-options and -ld-options
(def (append-options . opts)
  (let (opts (filter (? (not string-empty?)) opts))
    (string-join opts " ")))

;; temporarily sets the load-path
(def (with-cons-load-path thunk path)
  (let (current-load-path (load-path))
    (dynamic-wind
        (cut add-load-path! path)
        thunk
        (cut set-load-path! current-load-path))))
