;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble path utils
(export #t)
(import (only-in :gerbil/runtime gerbil-path))

(def (ensemble-base-path)
  (path-expand "ensemble" (gerbil-path)))

(def (ensemble-server-path server-id)
  (path-expand (symbol->string server-id)
               (path-expand "server"
                            (ensemble-base-path))))
