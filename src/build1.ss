;; -*- Gerbil -*-
(import :gerbil/compiler)

(def gerbil-modules
  '("gerbil/expander.ss"
    "gerbil/expander/stxcase.ss"
    "gerbil/expander/module.ss"
    "gerbil/expander/common.ss"
    "gerbil/expander/top.ss"
    "gerbil/expander/stx.ss"
    "gerbil/expander/core.ss"
    "gerbil/expander/compile.ss"
    "gerbil/expander/root.ss"
    "gerbil/prelude/core.ss"
    "gerbil/prelude/gambit.ss"
    "gerbil/prelude/gambit/ports.ss"
    "gerbil/prelude/gambit/misc.ss"
    "gerbil/prelude/gambit/random.ss"
    "gerbil/prelude/gambit/continuations.ss"
    "gerbil/prelude/gambit/os.ss"
    "gerbil/prelude/gambit/exceptions.ss"
    "gerbil/prelude/gambit/threads.ss"
    "gerbil/prelude/gambit/bits.ss"
    "gerbil/prelude/gambit/hvectors.ss"
    "gerbil/prelude/gambit/system.ss"
    "gerbil/prelude/gambit/foreign.ss"
    "gerbil/prelude/gambit/hash.ss"
    "gerbil/prelude/gambit/readtables.ss"
    "gerbil/prelude/gambit/fixnum.ss"
    "gerbil/prelude/gambit/flonum.ss"
    "gerbil/compiler/base.ss"
    "gerbil/compiler/compile.ss"
    "gerbil/compiler/optimize.ss"
    "gerbil/compiler/driver.ss"
    "gerbil/compiler.ss"
    ))

(def gerbil-libdir
  (path-expand "lib" (getenv "GERBIL_TARGET")))

(displayln "building gerbil in " gerbil-libdir)
(for-each
  (lambda (modf)
    (displayln "... compile " modf)
    (compile-file modf [output-dir: gerbil-libdir invoke-gsc: #t
                        gsc-options: ["-cc-options" "--param max-gcse-memory=300000000"]]))
  gerbil-modules)
