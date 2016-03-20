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
       prefix: (prefix #f)
       force:  (force? #f))
  (let* ((srcdir (or srcdir (error "srcdir must be specified")))
         (libdir (or libdir (path-expand "lib" (getenv "GERBIL_HOME"))))
         (settings [srcdir: srcdir libdir: libdir prefix: prefix force: force?]))
    (for-each (cut build <> settings) buildspec)))

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
    ([copy: file]
     (copy-compiled file settings))
    (else
     (error "Bad buildspec" spec))))
  
(def (gxc-compile mod gsc-opts settings)
  (def gxc-opts 
    [invoke-gsc: #t output-dir: (pgetq libdir: settings )
                 (if gsc-opts [gsc-options: gsc-opts] []) ...])
  (def srcpath (source-path mod ".ss" settings))
  (def ssipath (library-path mod ".ssi" settings))
  
  (when (or (pgetq force: settings)
            (not (file-exists? ssipath))
            (file-newer? srcpath ssipath))
    (displayln "... compile " mod)
    (compile-file srcpath gxc-opts)))

(def (gsc-compile mod gsc-opts settings)
  (def srcpath (source-path mod ".scm" settings))
  (def libdir (pgetq libdir: settings))
  (def prefix (pgetq prefix: settings))
  (def force? (pgetq force: settings))
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
  
  (when (or force? (not cpath) (file-newer? srcpath cpath))
    (create-directory* libpath)
    (displayln "... compile foreign " mod)
    (let* ((proc (open-process [path: "gsc" 
                                arguments: ["-o" libpath gsc-opts ... srcpath]
                                stdout-redirection: #f]))
           (status (process-status proc)))
      (unless (zero? status)
        (error "Compilation error; gsc exited with nonzero status" status)))))

(def (compile-ssi mod deps settings)
  (def srcpath (source-path mod ".ssi" settings))
  (def libpath (library-path mod ".ssi" settings))
  (def rtpath  (library-path mod "__rt.scm" settings))
  (def prefix  (pgetq prefix: settings))
  (def force?  (pgetq force: settings))
  
  (when (or force? (not (file-exists? libpath)) (file-newer? srcpath libpath))
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
      (delete-file rtpath))))

(def (copy-compiled file settings)
  (def srcpath (source-path file #f settings))
  (def libpath (library-path file #f settings))
  (def force?  (pgetq force: settings))
  (when (or force? (not (file-exists? libpath)) (file-newer? srcpath libpath))
    (displayln "... copy std/" file)
    (when (file-exists? libpath)
      (delete-file libpath))
    (copy-file srcpath libpath)))

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



