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
    "gerbil/compiler.ss"))

(def gerbil-prelude-core
  '("gerbil/prelude/core.ss"))

(def gerbil-prelude-runtime
  '("gerbil/prelude/gambit/ports.ss"
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
    "gerbil/prelude/gambit/exact.ss"
    "gerbil/prelude/gambit.ss"))

(def gerbil-libdir
  (path-expand "lib" (getenv "GERBIL_TARGET")))

(def (compile1 modf debug optimize? gen-ssxi? static?)
  (displayln "... compile " modf)
  (compile-file modf [output-dir: gerbil-libdir invoke-gsc: #t
                      debug: debug optimize: optimize? generate-ssxi: gen-ssxi? static: static?
                      gsc-options: ["-cc-options" "--param max-gcse-memory=300000000"]]))

(def optimize-prelude #f) ; meaningless before macros are also optimized
(def optimize-modules #t) ; runtime code, we want these optimizations

(def debug-prelude #f)   ; almost exclusively macros and externs, not worth the bloat
(def debug-modules 'src) ; full introspection

(displayln "building gerbil in " gerbil-libdir)
;; compile core prelude: don't clobber core.ssxi, generate static stubs
(for-each (cut compile1 <> debug-prelude optimize-prelude #f #t)
          gerbil-prelude-core)
;; compile gambit prelude: we want debug and optimizations as there are runtime definitions
(for-each (cut compile1 <> debug-modules optimize-modules #t #t)
          gerbil-prelude-runtime)
;; compile expander/compiler: we want ssxis for that, but no static
(for-each (cut compile1 <> debug-modules optimize-modules #t #f)
          gerbil-modules)
