;; -*- Gerbil -*-
;; © vyzo
;; this module should be imported by build scripts that need _gambit# macros
;; in the interpreter
(extern namespace: #f __loading-scheme-source)
(let (gambit-sharp
      (path-expand "lib/_gambit#.scm"
                   (getenv "GERBIL_BUILD_PREFIX" (gerbil-home))))
  (parameterize ((__loading-scheme-source #t))
    (eval `(include ,gambit-sharp))))
