;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; support for library build scripts

;;; For bootstrap purposes, we minimize dependencies from make.ss to :std modules.
;;; Indeed, those modules we depend on have to be imported specially by path with
;;; "relative/file/path" string syntax instead of :std/module/path symbol syntax,
;;; and must transitively do so themselves, too. These transitive dependencies
;;; also may not involve FFI as make.ss is evaluated by the interpreter
;;; while bootstrapping the :std library.

(import :gerbil/compiler
        :gerbil/expander
        :gerbil/gambit/misc
        :gerbil/gambit/os
        :gerbil/gambit/ports
        "srfi/1"
        ;;"srfi/43"
        "misc/list"
        "misc/hash"
        "misc/queue"
        "misc/xreal"
        "sort"
        "sugar")

(extern namespace: #f with-cons-load-path)

(export make make-depgraph make-depgraph/spec
        build-settings buildspec-depfiles
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
;;   (ssi: <module> [gsc: (gsc-opt ...)] [static-include: file])
;; TODO: provide an object-oriented way to extend the spec language,
;; with methods spec-dependencies, spec-inputs, spec-outputs, spec-build
;; and a macro so you can define all the methods coherently in one form,
;; rather than manually keeping the forms in synch.

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
    ([gxc: _ . opts] (pgetq dep: opts []))
    ([gsc: _ . opts] (pgetq dep: opts []))
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

;;; Display and/or debugging utilities
(def (message . lst) (apply displayln lst) (force-output))
(def (writeln x) (write x) (newline) (force-output))

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

(def (library-file library)
  (def string (symbol->string library))
  (def module (cond ((string-rindex string #\$) => (lambda (ix) (substring string 0 ix))) (else string)))
  (def symbol (make-symbol ":" module))
  (core-resolve-library-module-path symbol))
(def (library-timestamp library)
  (def x (modification-time/cache (library-file library)))
  (unless x (error 'missing-library library))
  x)

(def (symbol<? a b)
  (string<? (symbol->string a) (symbol->string b)))
(def (vector-for-each f v)
  (def l (vector-length v))
  (let loop ((i 0)) (when (< i l) (begin (f i (vector-ref v i)) (loop (+ 1 i))))))
(def (vector-ensure-ref v i f)
  (or (vector-ref v i) (let ((x (f))) (vector-set! v i x) x)))

;;; Settings:
;; srcdir: input source top directory; MUST BE SPECIFIED
;;         (path-directory (this-source-file)) in build scripts will do
;; libdir: output directory, defaults to $GERBIL_HOME/lib
;; prefix:  string, a package prefix to add to module names
;; force?:  boolean, indicating force build even if compiled modules are newer
(def (build-settings . settings)
  (defvalues (_ s) (apply make-settings #f settings))
  s)

(def (make-settings buildspec
      srcdir: (srcdir_ #f) libdir: (libdir_ #f) bindir: (bindir_ #f)
      prefix: (prefix #f) force: (force? #f)
      optimize: (optimize #f) debug: (debug #f)
      static: (static #f) static-debug: (static-debug #f)
      verbose: (verbose #f)
      depgraph: (depgraph #f)) ;; if depgraph is true, compute a depgraph, otherwise build in order
  (def gerbil-path (getenv "GERBIL_PATH" "~/.gerbil"))
  (def srcdir (or srcdir_ (error "srcdir must be specified")))
  (def libdir (or libdir_ (path-expand "lib" gerbil-path)))
  (def bindir (or bindir_ (path-expand "bin" gerbil-path)))
  (values buildspec
          [srcdir: srcdir libdir: libdir bindir: bindir prefix: prefix force: force?
                   optimize: optimize debug: debug static: static static-debug: static-debug
                   verbose: verbose depgraph: depgraph]))

(def (make . args)
  (defvalues (buildspec settings) (apply make-settings args))
  (with-cons-load-path (lambda () (%make buildspec settings)) (pgetq srcdir: settings)))

(def (%make buildspec settings)
  (def verbose (pgetq verbose: settings))
  (when verbose (writeln settings))

  (def spec% (list->vector (normalize-buildspec buildspec))) ; specs, indexed for random access
  (def nspec (vector-length spec%)) ; how many build specs we have
  (def id% (make-vector nspec)) ; to be filled: mapping spec numbers to dependency id
  (def deps% (make-vector nspec)) ; to be filled: mapping spec number to dependencies (list of symbol)

  (vector-for-each
   (lambda (i spec)
     (defvalues (id deps) (if (pgetq depgraph: settings)
                            (file-dependencies (spec-file spec settings))
                            (values i (if (< 0 i) [(- i 1)] [])))) ; force serial dependencies
     (when (and (real? verbose) (<= 6 verbose)) (writeln [i spec id deps]))
     (vector-set! id% i id)
     (vector-set! deps% i deps))
   spec%)
  (def index% (invert-hash<-vector id%))

  (def timestamp% (hash)) ;; timestamp for each build spec by id and/or out-of-build dependency by symbol
  (def (compute-timestamp target)
    (def spec (vector-ref spec% target))
    (def deps (vector-ref deps% target))
    (def inputs (spec-inputs spec settings))
    (def outputs (spec-outputs spec settings))
    (build-timestamp index% timestamp% deps inputs outputs verbose))
  (def (update-timestamp target)
    (def spec (vector-ref spec% target))
    (def outputs (spec-outputs spec settings))
    (for-each (lambda (x) (cache-remove! ['modification-time x])) outputs)
    (def out-timestamp (xreal-max/map modification-time/cache outputs))
    (unless out-timestamp (error "Build failed to generate expected outputs" spec outputs))
    (hash-put! timestamp% target out-timestamp))

  (create-directory* (pgetq bindir: settings))
  (create-directory* (pgetq libdir: settings))
  (when (pgetq static: settings) (create-directory* (path-expand "static" (pgetq libdir: settings))))

  (def blocked-by% (make-vector nspec #f)) ;; #f or hash of numbers of specs blocked by the current one
  (def blocking% (make-vector nspec #f)) ;; #f or hash of numbers of specs blocking the current one
  (def ready (make-queue)) ;; TODO: should we use a pqueue to try to preserve original order?

  ((cut vector-for-each <> deps%)
   (lambda (i deps)
     ((cut for-each <> deps)
       (lambda (d)
         (let ((j (hash-get index% d)))
           (if j (begin (hash-put! (vector-ensure-ref blocked-by% i make-hash-table) j #t)
                        (hash-put! (vector-ensure-ref blocking% j make-hash-table) i #t))
               (hash-ensure-ref timestamp% d (cut library-timestamp d))))))))
  ((cut vector-for-each <> spec%)
   (lambda (i _) (unless (vector-ref blocked-by% i) (enqueue! ready i))))

  (def (mark-built target)
    (hash-for-each
     (lambda (unblocked _)
       (def blocked-by (vector-ref blocked-by% unblocked))
       (hash-remove! blocked-by target)
       (when (hash-empty? blocked-by)
         (enqueue! ready unblocked)))
     (or (vector-ref blocking% target) (hash))))

  (def force? (pgetq force: settings))
  (with-fresh-cache
   (until (queue-empty? ready)
     (let ()
       (def target (dequeue! ready #f))
       (def spec (vector-ref spec% target))
       (cond
        ((and (not force?) (hash-ensure-ref timestamp% target (cut compute-timestamp target)))
         (when verbose (writeln [Up-to-date: target])))
        (else
         (build spec settings)
         (update-timestamp target)))
       (mark-built target))))

  ;; Check that we didn't hit some circular dependency
  (vector-for-each
   (lambda (target blocked-by)
     (when (and blocked-by (not (hash-empty? blocked-by)))
       (write [Target: target blocked-by: (hash->list/sort blocked-by symbol<?) ...])
       (message "Build didn't complete due to circular dependency")))
   blocked-by%))

;; file-dependencies : file -> dependencies
(def (file-dependencies file)
  (def mod (import-module file))
  (def ht  (make-hash-table-eq))
  (def pre (core-context-prelude mod))
  (def q (make-queue))
  (for-each (cut enqueue! q <>) (cons pre (module-context-import mod)))
  (until (queue-empty? q)
    (let ((hd (dequeue! q #f)))
      (cond
       ((module-context? hd)
        (hash-put! ht (expander-context-id hd) #t))
       ((prelude-context? hd)
        (alet (id (expander-context-id hd)) ; maybe it's root!
          (hash-put! ht id #t)))
       ((module-import? hd)
        (enqueue! q (module-import-source hd)))
       ((module-export? hd)
        (enqueue! q (module-export-context hd)))
       ((import-set? hd)
        (enqueue! q (import-set-source hd)))
       (else
        (error "Unexpected module import" hd)))))
  (values (expander-context-id mod) (sort (hash-keys ht) symbol<?)))

;; make-depgraph : (listof file) -> depgraph
(def make-depgraph true)

;; make-depgraph : buildspec -> depgraph
(def make-depgraph/spec true)

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
    (for-each (lambda (spec)
                (case (spec-type spec)
                  ((gxc: exe: static-exe:) (no-submodules spec) (c spec))
                  ((gsc: static-include: copy:) (push-submodule spec))
                  ((ssi:) (c (append spec (get-submodules))))
                  (else (error "Unrecognized spec type" spec))))
              buildspec)
    (no-submodules #!eof)))

;; buildspec-depfiles : buildspec -> (listof file)
;; Produces the list of files with deps relevant for making a depgraph
(def (buildspec-depfiles spec settings)
  (map (lambda (spec) (spec-file spec settings))
       (filter (lambda (spec) (member (spec-type spec) '(gxc: exe: static-exe: ssi:)))
               spec)))

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

(def (build-timestamp index% timestamp% deps inputs outputs verbose)
  ;; We assume the timestamp% table is pre-populated for external libraries,
  ;; and updated for internal libraries after they are built.
  (def (get-timestamp dep) (hash-get timestamp% (hash-ref index% dep dep)))
  (def dep-timestamps (map get-timestamp deps))
  (def in-timestamps (map modification-time/cache inputs))
  (def out-timestamps (map modification-time/cache outputs))
  (def dep-max (xreal-max/list dep-timestamps))
  (def in-max (xreal-max dep-max (xreal-max/list in-timestamps)))
  (def out-min (xreal-min/list out-timestamps))
  (def out-max (xreal-max/list out-timestamps))
  (when (and (real? verbose) (<= 6 verbose))
    (writeln [build-timestamp:
              [in-max: in-max]
              [out-min: out-min]
              [out-max: out-max]
              [deps: (map list dep-timestamps deps)]
              [ins: (map list in-timestamps inputs)]
              [outs: (map list outputs out-timestamps)]]))
  (and in-max (xreal<= in-max out-min) out-max))

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
   (when (pgetq static: settings) [(static-path mod settings)]) ...])

(def (gxc-compile-inputs mod opts settings)
  [(source-path mod ".ss" settings)
   (when opts (pgetq dep: opts)) ...])

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
     output-dir: (pgetq libdir: settings)
     optimize: (pgetq optimize: settings)
     debug: (pgetq debug: settings)
     generate-ssxi: #t
     static: (pgetq static: settings)
     verbose: (pgetq verbose: settings)
     (if gsc-opts [gsc-options: gsc-opts] []) ...])
  (def srcpath (source-path mod ".ss" settings))

  (message "... compile " mod)
  (compile-file srcpath gxc-opts))

(def (libdir-prefix settings)
  (def libdir (pgetq libdir: settings))
  (def prefix (pgetq prefix: settings))
  (if prefix (path-expand prefix libdir) libdir))

(def (gsc-libpath mod settings)
  (def prefix (libdir-prefix settings))
  (cond
   ((string-rindex mod #\/) => (lambda (ix) (path-expand (substring mod 0 ix) prefix)))
   (else prefix)))

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
  (def gsc-opts (or (gsc-compile-opts opts) []))
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
  (when (pgetq static: settings)
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
     verbose: (pgetq verbose: settings)])
  (gxc-compile mod gsc-opts settings)
  (message "... compile exe " mod " -> " binpath)
  (compile-exe-stub srcpath gxc-opts))

(def (compile-exe-gsc-opts opts)
  (match opts
    ([(? keyword?) opt . rest]
     (compile-exe-gsc-opts rest))
    (else opts)))

(def (compile-static-exe mod opts settings)
  (def srcpath (source-path mod ".ss" settings))
  (def binpath (binary-path mod opts settings))
  (def gsc-opts (compile-exe-gsc-opts opts))
  (def gxc-opts
    [invoke-gsc: #t
     output-file: binpath
     verbose: (pgetq verbose: settings)
     debug: (pgetq static-debug: settings)
     (if gsc-opts [gsc-options: gsc-opts] []) ...])
  (gxc-compile mod gsc-opts [static: #t settings ...] #f)
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

