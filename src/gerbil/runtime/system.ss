;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil runtime system related things
prelude: "../core"
package: gerbil/runtime
namespace: #f

(export #t)
(import "gambit" "util" "control")
(include "version.ss")

(def gerbil-system-manifest
  [["Gerbil" :: (gerbil-version-string)]
   ["Gambit" :: (system-version-string)]])

(defmutable* build-manifest gerbil-system-manifest : :list)

(def (display-build-manifest (manifest : :list := __build-manifest)
                             (port     : :port := (current-output-port)))
  (let ((p (cut display <> port))
        (l (length manifest))
        (i 0))
    (for-each ;; we can't use for (for ((i (in-range l)) (layer manifest)) ...)
      (lambda (layer)
        (cond
         ((zero? i) (void))
         ((= i 1) (p " on "))
         (else (p ", ")))
        (match layer ([name . version] (p name) (p " ") (p version)))
        (set! i (+ i 1)))
      manifest)))

(def (build-manifest/layer layer)
  (let (l (assoc layer __build-manifest))
    (if l [l] [])))

(def (build-manifest/head)
  [(car __build-manifest)])

(def (build-manifest-string (manifest : :list := __build-manifest))
  => :string
  (call-with-output-string [] (lambda (p) (display-build-manifest manifest p))))

(def (gerbil-system-version-string)
  => :string
  (build-manifest-string gerbil-system-manifest))

(defmutable* gerbil-greeting (gerbil-system-version-string) : :string)

(def (gerbil-system)
  'gerbil-gambit)

(def (gerbil-home)
  (or (getenv "GERBIL_HOME" #f)
      (path-expand "~~")))

(def (gerbil-path)
  (or (getenv "GERBIL_PATH" #f)
      (path-expand "~/.gerbil")))

(def __smp? (void))

(def (gerbil-runtime-smp?)
  (when (void? __smp?)
    (set! __smp?
      (and (member "--enable-smp" (string-split (configure-command-string) #\'))
           #t)))
  __smp?)
