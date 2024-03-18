;;; -*- Gerbil -*-
;;; © vyzo
;;; common environment context for tools
(import (only-in :std/cli/getopt flag))
(export #t)

(def global-env-flag
  (flag 'global-env "-g" "--global-env"
        help: "use the user global env even in local package context"))

(def (setup-local-env! opt)
  (unless (hash-get opt 'global-env)
    (setup-local-pkg-env! #f)))

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
