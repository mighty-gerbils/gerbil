;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil runtime system related things
prelude: :gerbil/core
package: gerbil/runtime
namespace: #f

(import "gambit" "util")
(include "version.ss")

(def (gerbil-system-version-string)
  (string-append "Gerbil " (gerbil-version-string) " on Gambit " (system-version-string)))

(def (gerbil-system)
  'gerbil-gambit)

(def gerbil-greeting
  (gerbil-system-version-string))
(set! gerbil-greeting gerbil-greeting) ; allow user mutation

(def (gerbil-home)
  (getenv "GERBIL_HOME" (path-expand "~~")))

(def (gerbil-runtime-smp?)
  (member "--enable-smp" (string-split (configure-command-string) #\')))
