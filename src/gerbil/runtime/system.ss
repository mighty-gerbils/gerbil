;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil runtime system related things
prelude: :gerbil/core
package: gerbil/runtime
namespace: #f

(import "gambit")
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
  ;; voodoo hack; this relies on the deq of the thread-group structure having
  ;; 3 fields in UP and 4 fields in SMP
  ;; maybe one day marc will provide a primitive/principled way to figure that out, but
  ;; until that day comes we really need to know in order to have the right cond-expand
  ;; branch when we include _gambit# or gx-gambc# (which includes _gambit#)
  (not (##vector-ref (##thread-thread-group ##primordial-thread) 3)))

(begin-foreign
  (cond-expand
    (enable-smp
     (unless (gerbil-runtime-smp?)
       (display "*** ERROR -- SMP compiled Gerbil on UP Gambit runtime\n" ##stderr-port)
       (exit 42)))
    (else
     (when (gerbil-runtime-smp?)
       (display "*** ERROR -- UP compiled Gerbil on SMP Gambit runtime\n" ##stderr-port)
       (exit 42)))))
