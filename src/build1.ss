;; -*- Gerbil -*-
(import :gerbil/compiler)

(def gerbil-modules
  '("gerbil/expander/common.ss"
    "gerbil/expander/stx.ss"
    "gerbil/expander/core.ss"
    "gerbil/expander/top.ss"
    "gerbil/expander/module.ss"
    "gerbil/expander/compile.ss"
    "gerbil/expander/root.ss"
    "gerbil/expander/stxcase.ss"
    "gerbil/expander.ss"
    "gerbil/compiler/base.ss"
    "gerbil/compiler/compile.ss"
    "gerbil/compiler/optimize.ss"
    "gerbil/compiler/driver.ss"
    "gerbil/compiler/ssxi.ss"
    "gerbil/compiler.ss"
    ))

(def gerbil-prelude
  '("gerbil/prelude/core.ss"
    "gerbil/prelude/gambit/ports.ss"
    "gerbil/prelude/gambit/bytes.ss"
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
    "gerbil/prelude/gambit.ss"))

(def gerbil-libdir
  (path-expand "lib" (getenv "GERBIL_TARGET")))

(def (compile1 modf optimize? gen-ssxi? static?)
  (displayln "... compile " modf)
  (compile-file modf [output-dir: gerbil-libdir invoke-gsc: #t
                      optimize: optimize? generate-ssxi: gen-ssxi? static: static?
                      gsc-options: ["-cc-options" "--param max-gcse-memory=300000000"]]))

(def optimize-prelude #f) ; meaningless before macros are also optimized
(def optimize-modules #t)

(displayln "building gerbil in " gerbil-libdir)
(for-each (cut compile1 <> optimize-prelude #f #t) ; don't clobber core.ssxi, static stubs
          gerbil-prelude)
(for-each (cut compile1 <> optimize-modules #t #f) ; we want ssxis for that, but no static yet
          gerbil-modules)
