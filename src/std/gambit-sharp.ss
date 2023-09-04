;; -*- Gerbil -*-
;; © vyzo
;; this module should imported for build scripts that need _gambit# macros
;; in the interpreter
(parameterize ((_gx#loading-scheme-source #t))
  (let (gambit-sharp
        (path-expand "lib/_gambit#.scm"
                     (getenv "GERBIL_BUILD_PREFIX" (gerbil-home))))

  (eval `(include ,gambit-sharp))))
