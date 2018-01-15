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
;;; Packages:
;;;   all                     -- action applies to all packages where sensible to do so
;;;   github.com/user/package -- github based packages
;;;   TODO gitlab, bitbucket etc

(import :std/getopt
        :std/sugar
        :gerbil/gambit/exceptions)
(export main
        ;; script api
        pkg-install pkg-uninstall pkg-update
        pkg-link pkg-unlink
        pkg-build pkg-clean
        pkg-list
        pkg-tag pkg-retag)

(def (main . args)
  (def install-cmd
    (command 'install help: "install one or more packages"
             (rest-arguments 'pkg help: "package to install")))
  (def uninstall-cmd
    (command 'uninstall help: "uninstall one or more packages"
             (flag 'force "-f" "--force" help: "force uninstallation")
             (rest-arguments 'pkg help: "package to uninstall; all for all installed packages")))
  (def update-cmd
    (command 'update help: "update one or more packages"
             (rest-arguments 'pkg help: "package to update; all for all installed packages")))
  (def link-cmd
    (command 'link help: "link a local development package"
             (argument 'pkg help: "package to link")
             (argument 'src help: "path to package source directory")))
  (def unlink-cmd
    (command 'unlink help: "unlink one or more local development packages"
             (flag 'force "-f" "--force" help: "force unlink")
             (rest-arguments 'pkg help: "package to unlink; all for all linked packages")))
  (def build-cmd
    (command 'build help: "rebuild one or more packages and their dependents"
             (rest-arguments 'pkg help: "package to build; all for all installed packages")))
  (def clean-cmd
    (command 'clean help: "clean compilation artefacts from one or more packages"
             (rest-arguments 'pkg help: "package to clean; all for all installed packages")))
  (def list-cmd
    (command 'list help: "list installed packages"))
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
            help-cmd))

  (try
   (let ((values cmd opt) (getopt-parse gopt args))
     (case cmd
       ((install)
        (install-pkgs (hash-ref opt 'pkg)))
       ((uninstall)
        (uninstall-pkgs (hash-ref opt 'pkg) (hash-get opt 'force)))
       ((update)
        (update-pkgs (hash-ref opt 'pkg)))
       ((link)
        (link-pkg (hash-ref opt 'pkg)
                  (hash-ref opt 'src)))
       ((unlink)
        (unlink-pkgs (hash-ref opt 'pkg) (hash-get opt 'force)))
       ((build)
        (build-pkgs (hash-ref opt 'pkg)))
       ((clean)
        (clean-pkgs (hash-ref opt 'pkg)))
       ((list)
        (list-pkgs))
       ((help)
        (let (topic
              (hash-get
               (hash-eq (install install-cmd)
                        (uninstall uninstall-cmd)
                        (link link-cmd)
                        (unlink unlink-cmd)
                        (build build-cmd)
                        (clean clean-cmd)
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
(def (install-pkgs pkgs)
  (for-each pkg-install pkgs)
  (for-each pkg-tag pkgs))

(def (uninstall-pkgs pkgs force?)
  (for-each (cut pkg-uninstall <> force?) pkgs)
  (unless (null? pkgs)
    (pkg-retag)))

(def (link-pkg pkg src)
  (pkg-link pkg src)
  (pkg-tag pkg))

(def (unlink-pkgs pkgs force?)
  (for-each (cut pkg-unlink <> force?) pkgs)
  (pkg-retag))

(def (update-pkgs pkgs)
  (for-each pkg-update pkgs)
  (pkg-retag))

(def (build-pkgs pkgs)
  (for-each pkg-build pkgs))

(def (clean-pkgs pkgs)
  (for-each pkg-clean pkgs))

(def (list-pkgs)
  (for-each displayln (pkg-list)))

;;; action implementation -- script api
(defrules IMPLEMENTME ()
  ((_ what)
   (error "XXX IMPLEMENT ME: " 'what)))

(def +pkg-root-dir+
  (path-expand "pkg" (getenv "GERBIL_PATH" "~/.gerbil")))

(def pkg-root-dir
  (let (f (delay (create-directory* +pkg-root-dir+)))
    (lambda ()
      (force f)
      +pkg-root-dir+)))

(def (pkg-install pkg)
  (IMPLEMENTME pkg-install))

(def (pkg-uninstall pkg (force? #f))
  (IMPLEMENTME pkg-uninstall))

(def (pkg-update pkg)
  (IMPLEMENTME pkg-update))

(def (pkg-link pkg src)
  (IMPLEMENTME pkg-link))

(def (pkg-unlink pkg (force? #f))
  (IMPLEMENTME pkg-unlink))

(def (pkg-build pkg)
  (IMPLEMENTME pkg-build))

(def (pkg-clean pkg)
  (IMPLEMENTME pkg-clean))

(def (pkg-list pkg)
  (IMPLEMENTME pkg-list))

(def (pkg-tag pkg)
  (IMPLEMENTME pkg-tag))

(def (pkg-retag)
  (IMPLEMENTME pkg-retag))
