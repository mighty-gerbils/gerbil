;;; -*- Gerbil -*-
;;; © vyzo
;;; gxc compilation test program
(import "test-lib")
(export main)

(def (main)
  (greeting (gerbil-system-version-string)))
