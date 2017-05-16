;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler compilation methods
package: gerbil/compiler
namespace: gxc

(import :gerbil/expander
        :gerbil/compiler/base
        :gerbil/compiler/compile
        :gerbil/compiler/optimize
        (only-in :gerbil/gambit/misc
                 pretty-print)
        (only-in :gerbil/gambit/ports
                 open-process process-status)
        (only-in :gerbil/gambit/os
                 current-time time->seconds))
(export compile-file compile-exe-stub compile-static-exe)

(def (compile-timestamp)
  (inexact->exact (floor (time->seconds (current-time)))))

(def (compile-file srcpath (opts []))
  (unless (string? srcpath)
    (raise-compile-error "Invalid module source path" srcpath))
  
  (let ((outdir      (pgetq output-dir: opts))
        (invoke-gsc? (pgetq invoke-gsc: opts))
        (gsc-options (pgetq gsc-options: opts))
        (keep-scm?   (pgetq keep-scm: opts))
        (verbosity   (pgetq verbose: opts))
        (optimize    (pgetq optimize: opts))
        (gen-ssxi    (pgetq generate-ssxi: opts))
        (static      (pgetq static: opts)))
    (when outdir
      (create-directory* outdir))
    (when optimize
      (optimizer-info-init!))
    (parameterize ((current-compile-output-dir outdir)
                   (current-compile-invoke-gsc invoke-gsc?)
                   (current-compile-gsc-options gsc-options)
                   (current-compile-keep-scm keep-scm?)
                   (current-compile-verbose verbosity)
                   (current-compile-optimize optimize)
                   (current-compile-generate-ssxi gen-ssxi)
                   (current-compile-static static)
                   (current-compile-timestamp (compile-timestamp)))
      (verbose "compile exe " srcpath)
      (compile-top-module (import-module srcpath)))))

(def (compile-exe-stub srcpath (opts []))
  (unless (string? srcpath)
    (raise-compile-error "Invalid module source path" srcpath))

  (let ((outdir      (pgetq output-dir: opts))
        (invoke-gsc? (pgetq invoke-gsc: opts))
        (gsc-options (pgetq gsc-options: opts))
        (keep-scm?   (pgetq keep-scm: opts))
        (verbosity   (pgetq verbose: opts)))
    (when outdir
      (create-directory* outdir))
    (parameterize ((current-compile-output-dir outdir)
                   (current-compile-invoke-gsc invoke-gsc?)
                   (current-compile-gsc-options gsc-options)
                   (current-compile-keep-scm keep-scm?)
                   (current-compile-verbose verbosity)
                   (current-compile-timestamp (compile-timestamp)))
      (verbose "compile " srcpath)
      (compile-exe-stub-module (import-module srcpath) opts))))

(def (compile-static-exe srcpath (opts []))
  (error "XXX Implement me!")
  )

(def (compile-exe-stub-module ctx opts)
  (def (find-export-binding id exports)
    (cond
     ((find (match <>
              ((module-export _ _ 0 (eq? id)) #t)
              (else #f))
            exports)
      => core-resolve-module-export)
     (else #f)))
  
  (def (generate-stub)
    (let* ((mod-str (symbol->string (expander-context-id ctx)))
           (mod-rt  (string-append mod-str "__rt"))
           (mod-main
            (cond
             ((find-export-binding 'main (module-context-export ctx))
              => (lambda (bind)
                   (unless (runtime-binding? bind)
                     (raise-compile-error "main is not a runtime binding"))
                   (binding-id bind)))
             (else
              (raise-compile-error "module does not export main"
                                   (expander-context-id ctx))))))
      (write '(##namespace (""))) (newline)
      (write `(_gx#start! ,mod-rt (quote ,mod-main))) (newline)))
  
  (def (compile-stub output-scm output-bin)
    (let* ((init-stub  (path-expand "lib/gx-init-exe.scm" (getenv "GERBIL_HOME")))
           (gsc-args ["-exe" "-o" output-bin init-stub output-scm])
           (proc (open-process [path: "gsc" arguments: gsc-args
                                      stdout-redirection: #f]))
           (status (process-status proc)))
    (unless (zero? status)
      (raise-compile-error "Compilation error; gsc exit with nonzero status"
                           output-scm output-bin status))))
  
  (let* ((output-bin
          (cond
           ((pgetq output-file: opts) => values)
           (else
            (let (mod-str (symbol->string (expander-context-id ctx)))
              (cond
               ((string-rindex mod-str #\/)
                => (lambda (ix) (substring mod-str (fx1+ ix) (string-length mod-str))))
               (else mod-str))))))
         (output-scm (string-append output-bin ".scm")))
    (with-output-to-file output-scm generate-stub)
    (when (current-compile-invoke-gsc)
      (compile-stub output-scm output-bin))
    (unless (current-compile-keep-scm)
      (delete-file output-scm))))

(def (compile-top-module ctx)
  (parameterize ((current-expander-context ctx)
                 (current-expander-phi 0)
                 (current-expander-marks [])
                 (current-compile-symbol-table
                  (make-symbol-table))
                 (current-compile-runtime-sections
                  (make-hash-table-eq)))
    (verbose "compile " (expander-context-id ctx))
    (when (current-compile-optimize)
      (optimize! ctx))
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
                    (let (idstr (symbol->string (expander-context-id ctx)))
                      (string-append idstr "__0")))))
      (cond
       (rt
        (hash-put! (current-compile-runtime-sections) ctx rt)
        (generate-runtime-code ctx code))
       ((current-compile-static)
        ;; just touch empty runtime code file in static
        (let (path (compile-static-output-file ctx))
          (with-output-to-file [path: path permissions: #o644]
            void))))
      
      (generate-loader-code ctx code rt)))
  
  (def (generate-runtime-code ctx code)
    (let* ((runtime-code 
            (parameterize ((current-expander-context ctx))
              (apply-generate-runtime code)))
           (scm0 (compile-output-file ctx 0 ".scm")))
      (if (current-compile-static)
        (let (scms (compile-static-output-file ctx))
          ;; copy compiled scm0 to static and delete when not keep-scm          
          (parameterize ((current-compile-keep-scm #t))
            (compile-scm-file scm0 runtime-code))
          (copy-file scm0 scms)
          (unless (current-compile-keep-scm)
            (delete-file scm0)))
        (compile-scm-file scm0 runtime-code))))

  (def (generate-loader-code ctx code rt)
    (let* ((loader-code 
            (parameterize ((current-expander-context ctx))
              (apply-generate-loader code)))
           (loader-code 
            (if rt 
              ['begin loader-code ['load-module rt]] 
              loader-code)))
      (compile-scm-file (compile-output-file ctx 'rt ".scm") loader-code)))
  
  (let (all-modules (cons ctx (lift-nested-modules ctx)))
    (for-each compile1 all-modules)))

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
      (with-output-to-file [path: path permissions: #o644]
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
         (compile-scm-file (compile-output-file ctx n ".scm") code)))))
  
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
    (with-output-to-file [path: path permissions: #o644]
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
    (parameterize ((current-compile-lift lifts))
      (let (code (apply-generate-runtime-phi stx))
        (if (null? (unbox lifts)) code
            ['begin (reverse (unbox lifts)) ... code])))))

(def (lift-nested-modules ctx)
  (let (modules (box []))
    (apply-lift-modules (module-context-code ctx) modules)
    (reverse (unbox modules))))

;;; utilities
(def (compile-scm-file path code)
  (verbose "compile " path)
  (with-output-to-file [path: path permissions: #o644]
    (lambda () 
      (pretty-print
       '(declare 
          (block)
          (standard-bindings)
          (extended-bindings)))
      (pretty-print code)))
  (when (current-compile-invoke-gsc)
    (gsc-compile-file path))
  (unless (current-compile-keep-scm)
    (delete-file path)))

(def (gsc-compile-file path)
  (let* ((gsc-args
          (cond
           ((current-compile-gsc-options)
            => (lambda (opts) [opts ... path]))
           (else [path])))
         (proc (open-process [path: "gsc" arguments: gsc-args
                                    stdout-redirection: #f]))
         (status (process-status proc)))
    (unless (zero? status)
      (raise-compile-error "Compilation error; gsc exit with nonzero status"
                           path status))))

(def (compile-output-file ctx n ext)
  (def (module-relative-path ctx)
    (path-strip-directory (symbol->string (expander-context-id ctx))))
  
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
            (file-name (symbol->string (expander-context-id ctx)))
            outdir)))
     (else
      (path-expand
       (file-name (module-relative-path ctx))
       (module-source-directory ctx)))))

  (let (path (file-path))
    (create-directory* (path-directory path))
    path))

(def (compile-static-output-file ctx)
  (def (mangle idstr)
    (let (strs (string-split idstr #\/))
      (string-join strs "__")))
  
  (def (file-name idstr)
    (string-append (mangle idstr) ".scm"))
  
  (def (file-path)
    (let (file (file-name (symbol->string (expander-context-id ctx))))
      (cond
       ((current-compile-output-dir)
        => (lambda (outdir)
             (path-expand file (path-expand "static" outdir))))
       (else
        (path-expand file "static")))))
  
  (let (path (file-path))
    (create-directory* (path-directory path))
    path))
