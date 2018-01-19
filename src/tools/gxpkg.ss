;;; -*- Gerbil -*-
;;; © vyzo
;;; The Gerbil Package Manager
;;;
;;; Usage:
;;;   gxpkg action arg ....
;;; Actions:
;;;   install pkg ...
;;;   uninstall pkg ...
;;;   update pkg ...
;;;   link pkg src
;;;   unlink pkg ...
;;;   build pkg ...
;;;   clean pkg ...
;;;   list
;;;   retag
;;; Packages:
;;;   github.com/user/package -- github based packages
;;;   TODO all                -- action applies to all packages where sensible to do so
;;;   TODO gitlab, bitbucket etc

(import :std/getopt
        :std/sugar
        :std/iter
        :std/misc/process
        :gerbil/gambit/os
        :gerbil/gambit/exceptions)
(export main
        ;; script api
        pkg-root-dir
        pkg-install pkg-uninstall pkg-update
        pkg-link pkg-unlink
        pkg-build pkg-clean
        pkg-list
        pkg-retag)

(def (main . args)
  (def install-cmd
    (command 'install help: "install one or more packages"
             (rest-arguments 'pkg help: "package to install")))
  (def uninstall-cmd
    (command 'uninstall help: "uninstall one or more packages"
             (rest-arguments 'pkg help: "package to uninstall")))
  (def update-cmd
    (command 'update help: "update one or more packages"
             (rest-arguments 'pkg help: "package to update")))
  (def link-cmd
    (command 'link help: "link a local development package"
             (argument 'pkg help: "package to link")
             (argument 'src help: "path to package source directory")))
  (def unlink-cmd
    (command 'unlink help: "unlink one or more local development packages"
             (rest-arguments 'pkg help: "package to unlink")))
  (def build-cmd
    (command 'build help: "rebuild one or more packages and their dependents"
             (rest-arguments 'pkg help: "package to build")))
  (def clean-cmd
    (command 'clean help: "clean compilation artefacts from one or more packages"
             (rest-arguments 'pkg help: "package to clean")))
  (def list-cmd
    (command 'list help: "list installed packages"))
  (def retag-cmd
    (command 'retag help: "retag installed packages"))
  (def help-cmd
    (command 'help help: "display help; help <command> for command help"
             (optional-argument 'command value: string->symbol)))
  (def gopt
    (getopt install-cmd
            uninstall-cmd
            update-cmd
            link-cmd
            unlink-cmd
            build-cmd
            clean-cmd
            list-cmd
            retag-cmd
            help-cmd))

  (try
   (let ((values cmd opt) (getopt-parse gopt args))
     (case cmd
       ((install)
        (install-pkgs (hash-ref opt 'pkg)))
       ((uninstall)
        (uninstall-pkgs (hash-ref opt 'pkg)))
       ((update)
        (update-pkgs (hash-ref opt 'pkg)))
       ((link)
        (link-pkg (hash-ref opt 'pkg)
                  (hash-ref opt 'src)))
       ((unlink)
        (unlink-pkgs (hash-ref opt 'pkg)))
       ((build)
        (build-pkgs (hash-ref opt 'pkg)))
       ((clean)
        (clean-pkgs (hash-ref opt 'pkg)))
       ((list)
        (list-pkgs))
       ((retag)
        (retag-pkgs))
       ((help)
        (let (topic
              (hash-get
               (hash-eq (install install-cmd)
                        (uninstall uninstall-cmd)
                        (link link-cmd)
                        (unlink unlink-cmd)
                        (build build-cmd)
                        (clean clean-cmd)
                        (list list-cmd)
                        (retag retag-cmd)
                        (help help-cmd))
               (hash-get opt 'command)))
          (getopt-display-help (or topic gopt) "gxpkg")))))
   (catch (getopt-error? exn)
     (getopt-display-help exn "gxpkg" (current-error-port))
     (exit 1))
   (catch (e)
     (display-exception e (current-error-port))
     (exit 2))))

;;; commands
(defrules fold-pkgs-retag ()
  ((_ pkgs action action-arg ...)
   (let lp ((rest pkgs) (retag? #f))
     (match rest
       ([pkg . rest]
        (if (action pkg action-arg ...)
          (lp rest #t)
          (lp rest retag?)))
       (else
        (when retag?
          (pkg-retag)))))))

(def (install-pkgs pkgs)
  (fold-pkgs-retag pkgs pkg-install))

(def (uninstall-pkgs pkgs)
  (fold-pkgs-retag pkgs pkg-uninstall))

(def (update-pkgs pkgs)
  (fold-pkgs-retag pkgs pkg-update))

(def (link-pkg pkg src)
  (pkg-link pkg src))

(def (unlink-pkgs pkgs)
  (for-each pkg-unlink pkgs))

(def (build-pkgs pkgs)
  (for-each pkg-build pkgs))

(def (clean-pkgs pkgs)
  (for-each pkg-clean pkgs))

(def (list-pkgs)
  (for-each displayln (pkg-list)))

(def (retag-pkgs)
  (pkg-retag))

;;; action implementation -- script api
(defrules IMPLEMENTME ()
  ((_ what)
   (error "XXX IMPLEMENT ME: " 'what)))

(def +pkg-root-dir+
  (path-expand "pkg" (getenv "GERBIL_PATH" "~/.gerbil")))

(def pkg-root-dir
  (let (once (delay (create-directory* +pkg-root-dir+)))
    (lambda ()
      (force once)
      +pkg-root-dir+)))

(def (pkg-install pkg)
  (IMPLEMENTME pkg-install))

(def (pkg-uninstall pkg)
  (IMPLEMENTME pkg-uninstall))

(def (pkg-update pkg)
  (IMPLEMENTME pkg-update))

(def (pkg-link pkg src)
  (let* ((root (pkg-root-dir))
         (dest (path-expand pkg root)))
    (when (file-exists? dest)
      (error "Cannot link package; destination already exists" pkg dest))
    ;; We could do some sanity checks about the source package:
    ;; - make sure the source exists, and is a directory
    ;; - make sure it's a valid pkg with a build.ss
    ;; - install dependencies of the package (as listed in gerbil.pkg)
    ;; - etc ...
    ;; ... but where to stop, so just trust the user and link!
    (create-directory* (path-directory dest))
    (create-symbolic-link src dest)))

(def (pkg-unlink pkg)
  (let* ((root (pkg-root-dir))
         (dest (path-expand pkg root)))
    (when (file-exists? dest)
      (unless (file-symbolic-link? dest)
        (error "Cannot unlink package; not a symbolic link" dest))
      ;; We could do some sanity checks about dependent packages:
      ;; - make sure we have no packages installed that depend on the pkg
      ;; - clean the pkg from the build dir.
      ;; ... but for now just unlink!
      (delete-file dest))))

(def (pkg-build pkg)
  (let* ((root (pkg-root-dir))
         (path (path-expand pkg root))
         (plist (pkg-plist pkg))
         (build (pgetq build: plist))
         (build.ss (path-expand (or build "build.ss") path))
         (_ (unless (file-exists? build.ss)
              (error "Cannot build package; missing build script" build.ss)))
         (build.ss (path-normalize build.ss)))
    (displayln "... build " pkg)
    (run-process [build.ss "deps"]
                 directory: path
                 coprocess: void
                 stdout-redirection: #f)
    (run-process [build.ss "compile"]
                 directory: path
                 coprocess: void
                 stdout-redirection: #f)
    (for-each pkg-build (pkg-dependents pkg))))

(def (pkg-clean pkg)
  (IMPLEMENTME pkg-clean))

(def (pkg-list)
  (def root (pkg-root-dir))

  (def (walk dir pkgpath)
    (for-each
      (lambda (file)
        (let* ((path (path-expand file dir))
               (gerbil.pkg (path-expand "gerbil.pkg" path))
               (pkgpath
                (if (string-empty? pkgpath)
                  file
                  (string-append pkgpath "/" file))))
          (cond
           ((file-exists? gerbil.pkg)
            (yield pkgpath))
           ((file-directory? path)
            (walk path pkgpath)))))
    (directory-files dir)))

  (for/collect (pkg (cut walk root "")) pkg))

(def (pkg-retag)
  (IMPLEMENTME pkg-retag))

;;; internal
(def (pkg-plist pkg)
  (let* ((root (pkg-root-dir))
         (path (path-expand pkg root))
         (gerbil.pkg (path-expand "gerbil.pkg" path))
         (_ (unless (file-exists? gerbil.pkg)
              (error "Bad package; missing gerbil.pkg" pkg)))
         (plist (call-with-input-file gerbil.pkg read)))
    (if (eof-object? plist)
      []
      plist)))

(def (pkg-dependents pkg)
  (def (dependent xpkg)
    (let* ((plist (pkg-plist xpkg))
           (deps (or (pgetq depend: plist) [])))
      (and (member pkg deps)
           xpkg)))
  (filter-map dependent (pkg-list)))

(def (file-directory? path)
  (eq? (file-type path) 'directory))

(def (file-symbolic-link? path)
  (eq? (file-info-type (file-info path #f))
       'symbolic-link))
