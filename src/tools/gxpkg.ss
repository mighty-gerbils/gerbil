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
;;;   compile pkg ...
;;;   build pkg ...
;;;   clean pkg ...
;;; Packages:
;;;   all                     -- action applies to all packages
;;;   github.com/user/package -- github based packages
;;;   TODO gitlab, bitbucket etc

(import :std/getopt
        :std/sugar
        :gerbil/gambit/exceptions)
(export main
        ;; script api
        pkg-install pkg-uninstall pkg-update
        pkg-link pkg-unlink
        pkg-compile pkg-build pkg-clean
        pkg-list)

(def (main . args)
  (def install-cmd
    (command 'install help: "install one or more packages"
             (rest-arguments 'pkg help: "package to install")))
  (def uninstall-cmd
    (command 'uninstall help: "uninstall one or more packages"
             (flag 'force "-f" "--force" help: "force uninstallation")
             (rest-arguments 'pkg help: "package to uninstall")))
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
             (rest-arguments 'pkg help: "package to unlink")))
  (def compile-cmd
    (command 'compile help: "recompile one or more packages"
             (rest-arguments 'pkg help: "package to compile; all for all installed packages")))
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
            compile-cmd
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
       ((compile)
        (compile-pkgs (hash-ref opt 'pkg)))
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
                        (compile compile-cmd)
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
     (exit 1))))

;;; commands
(def (install-pkgs pkgs)
  (for-each pkg-install pkgs))

(def (uninstall-pkgs pkgs force?)
  (for-each (cut pkg-uninstall <> force?) pkgs))

(def (link-pkg pkg src)
  (pkg-link pkg src))

(def (unlink-pkgs pkgs force?)
  (for-each (cut pkg-unlink <> force?) pkgs))

(def (update-pkgs pkgs)
  (for-each pkg-update pkgs))

(def (compile-pkgs pkgs)
  (for-each pkg-compile pkgs))

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

(def (pkg-install pkg)
  (IMPLEMENTME install-pkg))

(def (pkg-uninstall pkg (force? #f))
  (IMPLEMENTME uninstall-pkg))

(def (pkg-link pkg src)
  (IMPLEMENTME link-pkg))

(def (pkg-unlink pkg (force? #f))
  (IMPLEMENTME unlink-pkg))

(def (pkg-update pkg)
  (IMPLEMENTME update-pkg))

(def (pkg-compile pkg)
  (IMPLEMENTME compile-pkg))

(def (pkg-build pkg)
  (IMPLEMENTME build-pkg))

(def (pkg-clean pkg)
  (IMPLEMENTME pkg-clean))

(def (pkg-list pkg)
  (IMPLEMENTME pkg-list))
