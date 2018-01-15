;;; -*- Gerbil -*-
;;; © vyzo
;;; The Gerbil Package Manager
;;;
;;; Usage:
;;;   gxpkg action pkg ....
;;; Actions:
;;;   install
;;;   uninstall
;;;   link
;;;   unlink
;;;   compile
;;;   build
;;;   clean
;;; Packages:
;;;   all                     -- action applies to all packages
;;;   github.com/user/package -- github based packages
;;;   TODO gitlab, bitbucket etc

(import :std/getopt
        :std/sugar)
(export main)

(def (main . args)
  (def install-cmd
    (command 'install help: "install one or more packages"
             (rest-arguments 'pkg help: "package to install")))
  (def uninstall-cmd
    (command 'uninstall help: "uninstall one or more packages"
             (rest-arguments 'pkg help: "package to uninstall")))
  (def link-cmd
    (command 'link help: "link a local development package"
             (argument 'pkg help: "package to link")
             (argument 'src help: "path to package source directory")))
  (def unlink-cmd
    (command 'unlink help: "unlink one or more local development packages"
             (rest-arguments 'pkg help: "package to unlink")))
  (def compile-cmd
    (command 'compile help: "recompile one or more packages"
             (rest-arguments 'pkg help: "package to compile")))
  (def build-cmd
    (command 'build help: "rebuild one or more packages and their dependents"
             (rest-arguments 'pkg help: "package to build")))
  (def clean-cmd
    (command 'clean help: "clean compilation artefacts from one or more packages"
             (rest-arguments 'pkg help: "package to clean")))
  (def help-cmd
    (command 'help help: "display help"
             (optional-argument 'command value: string->symbol)))
  (def gopt
    (getopt install-cmd
            uninstall-cmd
            link-cmd
            unlink-cmd
            compile-cmd
            build-cmd
            clean-cmd
            help-cmd))

  (try
   (let ((values cmd opt) (getopt-parse gopt args))
     (case cmd
       ((install)
        (install-pkgs (hash-ref opt 'pkg)))
       ((uninstall)
        (uninstall-pkgs (hash-ref opt 'pkg)))
       ((link)
        (link-pkg (hash-ref opt 'pkg)
                  (hash-ref opt 'src)))
       ((unlink)
        (unlink-pkgs (hash-ref opt 'pkg)))
       ((compile)
        (compile-pkgs (hash-ref opt 'pkg)))
       ((build)
        (build-pkgs (hash-ref opt 'pkg)))
       ((clean)
        (clean-pkgs (hash-ref opt 'pkg)))
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
     (exit 1))))

(defrules IMPLEMENTME ()
  ((_ what)
   (displayln "IMPLEMENT ME: " 'what)))

(def (install-pkgs pkgs)
  (IMPLEMENTME install-pkgs))

(def (uninstall-pkgs pkgs)
  (IMPLEMENTME uninstall-pkgs))

(def (link-pkg pkg src)
  (IMPLEMENTME link-pkg))

(def (unlink-pkgs pkgs)
  (IMPLEMENTME unlink-pkgs))

(def (compile-pkgs pkgs)
  (IMPLEMENTME unlink-pkgs))

(def (build-pkgs pkgs)
  (IMPLEMENTME build-pkgs))

(def (clean-pkgs pkgs)
  (IMPLEMENTME clean-pkgs))
