;; -*- Gerbil -*-
(import :gerbil/compiler)

;;(include "../gerbil/runtime/build-lib.scm") ;; Do everything serially for now.

(def gerbil-modules-runtime
  '("gerbil/runtime/gambit.ss"
    "gerbil/runtime/util.ss"
    "gerbil/runtime/system.ss"
    "gerbil/runtime/loader.ss"
    "gerbil/runtime/control.ss"
    "gerbil/runtime/c3.ss"
    "gerbil/runtime/mop.ss"
    "gerbil/runtime/error.ss"
    "gerbil/runtime/thread.ss"
    "gerbil/runtime/syntax.ss"
    "gerbil/runtime/eval.ss"
    "gerbil/runtime/repl.ss"
    "gerbil/runtime/init.ss"
    "gerbil/runtime.ss"))

(def gerbil-modules-expander
  '("gerbil/expander/common.ss"
    "gerbil/expander/stx.ss"
    "gerbil/expander/core.ss"
    "gerbil/expander/top.ss"
    "gerbil/expander/module.ss"
    "gerbil/expander/compile.ss"
    "gerbil/expander/root.ss"
    "gerbil/expander/stxcase.ss"
    "gerbil/expander.ss"))

(def gerbil-modules-compiler
  '("gerbil/compiler/base.ss"
    "gerbil/compiler/compile.ss"
    "gerbil/compiler/optimize-base.ss"
    "gerbil/compiler/optimize-xform.ss"
    "gerbil/compiler/optimize-top.ss"
    "gerbil/compiler/optimize-spec.ss"
    "gerbil/compiler/optimize-ann.ss"
    "gerbil/compiler/optimize-call.ss"
    "gerbil/compiler/optimize.ss"
    "gerbil/compiler/driver.ss"
    "gerbil/compiler/ssxi.ss"
    "gerbil/compiler.ss"))

(def gerbil-prelude-core
  '("gerbil/prelude/core.ss"))

(def gerbil-prelude-gambit
  '("gerbil/prelude/gambit.ss"))

(def gerbil-libdir
  (path-expand "lib" (getenv "GERBIL_BUILD_PREFIX")))

(def (compile1 modf gen-ssxi?)
  (displayln "... compile " modf)
  (compile-module modf [output-dir: gerbil-libdir invoke-gsc: #t
                        debug: #f optimize: #t generate-ssxi: gen-ssxi?
                        gsc-options: ["-e" "(include \"~~lib/_gambit#.scm\")"]]))

(def (compile-group group . options) ;; TODO: parallelize this?
  ;; TODO: parallelize, but with the correct dependencies -- instead of "false",
  ;; the on-success function will queue those modules whose dependencies are done.
  ;;(parallel-build group (lambda (x) (apply compile1 x options)) false)
  (for-each (lambda (x) (apply compile1 x options)) group))

(displayln "building gerbil in " gerbil-libdir)
;; initialize optimizer and preload core.ssxi so that we have core visibility
(gxc#optimizer-info-init!)
(gx#import-module "gerbil/prelude/core.ssxi.ss" #t)
;; compile runtime
(compile-group gerbil-modules-runtime #t)
;; compile expander first so that prelude macros have expander visibility
(compile-group gerbil-modules-expander #t)
;; compile core prelude; don't clobber core.ssxi
(compile-group gerbil-prelude-core #f)
;; compile gambit prelude
(compile-group gerbil-prelude-gambit #t)
;; compile compiler
(compile-group gerbil-modules-compiler #t)
