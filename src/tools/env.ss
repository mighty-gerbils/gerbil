;;; -*- Gerbil -*-
;;; © vyzo
;;; common environment context for tools
(import (only-in :gerbil/runtime/init cons-load-path))
(export #t)

(def (setup-local-env!)
  (unless (getenv "GERBIL_PATH" #f)
    (let* ((here (path-normalize (current-directory)))
           (gerbil.pkg (path-expand "gerbil.pkg" here))
           (gerbil-path (path-expand ".gerbil" here)))
      (when (and (file-exists? gerbil.pkg) (file-exists? gerbil-path))
        (setenv "GERBIL_PATH" gerbil-path)
        (cons-load-path (path-expand "lib" gerbil-path))))))
