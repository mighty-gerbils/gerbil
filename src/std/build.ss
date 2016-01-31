#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :gerbil/compiler)

(def buildspec
  (delay
    `("format"
      "pregexp"
      "sort"
      "sugar"
      (gxc: "event" "-e" "(include \"~~lib/_gambit#.scm\")")
      (gxc: "coroutine" "-e" "(include \"~~lib/_gambit#.scm\")")
      ;; :std/misc
      "misc/shuffle"
      ;; :std/net
      "net/address"
      "net/uri"
      ;; "net/requests"
      "net/socks"
      ;; :std/text
      "text/hex"
      (gsc: "text/base64")
      (ssi: "text/base64")
      ;; :std/xml
      (gsc: "xml/_libxml" 
            "-cc-options" ,(shell-config "xml2-config" "--cflags")
            "-ld-options" ,(shell-config "xml2-config" "--libs")
            "-e" "(include \"~~lib/_gambit#.scm\")")
      (ssi: "xml/_libxml")
      "xml/libxml"
      "xml/sxml"
      (gsc: "xml/sxml-to-xml")
      (ssi: "xml/sxml-to-xml")
      "xml/print"
      "xml"
      ;; :std/crypto
      (gsc: "crypto/libcrypto"
            "-ld-options" "-lcrypto"
            "-e" "(include \"~~lib/_gambit#.scm\")")
      (ssi: "crypto/libcrypto")
      (gxc: "crypto/etc"
            "-e" "(include \"~~lib/_gambit#.scm\")")
      "crypto/digest"
      "crypto/cipher"
      ;; SRFI: This is my grandfather's axe; my father replaced the head
      ;;       and i have replaced the handle.
      "srfi/srfi-support"
      "srfi/8"
      "srfi/9"
      "srfi/1"
      "srfi/14"
      "srfi/13"
      "srfi/19"
      "srfi/95"
      )))

(def srcdir (path-normalize (path-directory (this-source-file))))
(def srctop (path-normalize (path-expand ".." srcdir)))
(def libdir (path-normalize (path-expand "lib" (getenv "GERBIL_HOME"))))

(def (source-path mod (ext #f))
  (path-expand (if ext (string-append mod ext) mod) srcdir))

(def (library-path mod (ext #f))
  (path-expand (if ext (string-append mod ext) mod)
               (path-expand "std" libdir)))

(def (shell-config cmd . args)
  (let* ((proc (open-input-process [path: cmd arguments: args]))
         (status (process-status proc)))
    (unless (zero? status)
      (error "Error executing config script" cmd args status))
    (read-line proc)))

(def (gxc-compile mod gsc-opts force?)
  (def gxc-opts 
    [invoke-gsc: #t 
     output-dir: libdir 
     (if gsc-opts [gsc-options: gsc-opts] []) ...])
  (def srcpath (source-path mod ".ss"))
  (def ssipath (library-path mod ".ssi"))
  
  (when (or force?
            (not (file-exists? ssipath))
            (file-newer? srcpath ssipath))
    (displayln "... compile std/" mod)
    (compile-file srcpath gxc-opts)))

(def (gsc-compile mod gsc-opts force?)
  (def srcpath (source-path mod ".scm"))
  (defvalues (libpath base)
    (cond
     ((string-rindex mod #\/)
      => (lambda (ix) 
           (values (path-expand (substring mod 0 ix) 
                                (path-expand "std" libdir))
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
    (displayln "... compile foreign std/" mod)
    (let* ((proc (open-process [path: "gsc" 
                                arguments: ["-o" libpath gsc-opts ... srcpath]
                                stdout-redirection: #f]))
           (status (process-status proc)))
      (unless (zero? status)
        (error "Compilation error; gsc exited with nonzero status" status)))))

(def (compile-ssi mod deps force?)
  (def srcpath (source-path mod ".ssi"))
  (def libpath (library-path mod ".ssi"))
  (def rtpath  (library-path mod "__rt.scm"))
  
  (when (or force? (not (file-exists? libpath)) (file-newer? srcpath libpath))
    (displayln "... copy ssi std/" mod)
    (when (file-exists? libpath)
      (delete-file libpath))
    (copy-file srcpath libpath)
    (displayln "... compile loader std/" mod)
    (with-output-to-file rtpath
      (lambda () 
        (for-each (lambda (dep) (pretty-print `(load-module ,dep)))
                  deps)
        (pretty-print `(load-module ,(string-append "std/" mod)))))
    (let* ((proc (open-process [path: "gsc" 
                                arguments: [rtpath]
                                stdout-redirection: #f]))
           (status (process-status proc)))
      (unless (zero? status)
        (error "Compilation error; gsc exited with nonzero status" status))
      (delete-file rtpath))))

(def (copy-compiled file force?)
  (def srcpath (source-path file))
  (def libpath (library-path file))
  (when (or force? (not (file-exists? libpath)) (file-newer? srcpath libpath))
    (displayln "... copy std/" file)
    (when (file-exists? libpath)
      (delete-file libpath))
    (copy-file srcpath libpath)))

(def (build-all force?)
  (def build1
    (match <>
      ((? string? modf)
       (gxc-compile modf #f force?))
      ([gxc: modf . gsc-opts]
       (gxc-compile modf gsc-opts force?))
      ([gsc: modf . gsc-opts]
       (gsc-compile modf gsc-opts force?))
      ([ssi: modf . deps]
       (compile-ssi modf deps force?))
      ([copy: file]
       (copy-compiled file force?))))
  
  (for-each build1 (force buildspec)))

(def (main . args)
  (add-load-path srctop)
  (match args
    (["-f"] (build-all #t))
    ([]     (build-all #f))
    (else   (error "Unexpected arguments" args))))

