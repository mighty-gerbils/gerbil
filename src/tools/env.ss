;;; -*- Gerbil -*-
;;; © vyzo
;;; common environment context for tools
(import (only-in :std/cli/getopt flag option))
(export #t)

(def global-env-flag
  (flag 'global-env "-g" "--global-env"
        help: "use the user global env even in local package context"))

(def gerbil-path-option
  (option 'gerbil-path "-G" "--gerbil-path"
    help: "specifies the GERBIL_PATH for ensemble operations"))

(def (setup-local-env! opt)
  (cond
   ((hash-get opt 'gerbil-path)
    => (lambda (path)
         (let (path (path-expand path))
           (unless (file-exists? path)
             (create-directory* path))
           (setenv "GERBIL_PATH" path)
           (add-load-path! (path-expand "lib" path)))))
   ((not (hash-get opt 'global-env))
    (setup-local-pkg-env! #f))))

(def (setup-local-pkg-env! create?)
  (unless (getenv "GERBIL_PATH" #f)
    (let* ((here (path-normalize (current-directory)))
           (gerbil.pkg (path-expand "gerbil.pkg" here))
           (gerbil-path (path-expand ".gerbil" here)))
      (when (file-exists? gerbil.pkg)
        (when (and create? (not (file-exists? gerbil-path)))
          (create-directory gerbil-path))
        (setenv "GERBIL_PATH" gerbil-path)
        (add-load-path! (path-expand "lib" gerbil-path))))))
