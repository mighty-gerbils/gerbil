;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble path utils
(export #t)

(def (ensemble-base-path)
  (path-expand
   (path-expand "ensemble" (getenv "GERBIL_PATH" "~/.gerbil"))))

(def (ensemble-server-path server-id)
  (path-expand (symbol->string server-id)
               (path-expand "server"
                            (ensemble-base-path))))
