#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/build-script
        :std/make)

(defbuild-script
  `(;; Gerbil variants. Polydactyl needs foreground due to using _gambit# at phi 1.
    (gxc: "gerbil/polydactyl" ,@(include-gambit-sharp))
    )
  libdir: (path-expand "lib" (getenv "GERBIL_BUILD_PREFIX" (gerbil-home)))
  debug: 'src)
