;;; -*- Gerbil -*-
;;; © vyzo
;;; common environment context for tools
(import (only-in :std/cli/getopt flag)
        (only-in :gerbil/runtime/init cons-load-path))
(export #t)

(def global-env-flag
  (flag 'global-env "-g" "--global-env"
        help: "use the user global env even in local package context"))

(def (setup-local-env! opt)
  (unless (hash-get opt 'global-env)
    (unless (getenv "GERBIL_PATH" #f)
      (let* ((here (path-normalize (current-directory)))
             (gerbil.pkg (path-expand "gerbil.pkg" here))
             (gerbil-path (path-expand ".gerbil" here)))
        (when (and (file-exists? gerbil.pkg) (file-exists? gerbil-path))
          (setenv "GERBIL_PATH" gerbil-path)
          (cons-load-path (path-expand "lib" gerbil-path)))))))
