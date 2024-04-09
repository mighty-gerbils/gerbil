;; -*- Gerbil -*-
(import :gerbil/compiler)

;;(include "../gerbil/runtime/build-lib.scm") ;; Do everything serially for now.

(def gerbil-modules-runtime
  '("gerbil/runtime/gambit.ss"
    "gerbil/runtime/util.ss"
    "gerbil/runtime/table.ss"
    "gerbil/runtime/control.ss"
    "gerbil/runtime/system.ss"
    "gerbil/runtime/c3.ss"
    "gerbil/runtime/mop.ss"
    "gerbil/runtime/mop-system-classes.ss"
    "gerbil/runtime/error.ss"
    "gerbil/runtime/interface.ss"
    "gerbil/runtime/hash.ss"
    "gerbil/runtime/thread.ss"
    "gerbil/runtime/syntax.ss"
    "gerbil/runtime/eval.ss"
    "gerbil/runtime/repl.ss"
    "gerbil/runtime/loader.ss"
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
    "gerbil/expander/init.ss"
    "gerbil/expander.ss"))

(def gerbil-modules-compiler
  '("gerbil/compiler/base.ss"
    "gerbil/compiler/method.ss"
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

(def gerbil-modules-core
  '("gerbil/core/runtime.ss"
    "gerbil/core/expander.ss"
    "gerbil/core/sugar.ss"
    "gerbil/core/mop.ss"
    "gerbil/core/macro-object.ss"
    "gerbil/core/match.ss"
    "gerbil/core/more-sugar.ss"
    "gerbil/core/more-syntax-sugar.ss"
    "gerbil/core/module-sugar.ss"
    "gerbil/core/contract.ss"
    "gerbil/core.ss"))

(def gerbil-prelude-gambit
  '("gerbil/gambit.ss"))

(def gerbil-libdir
  (path-expand "lib" (getenv "GERBIL_BUILD_PREFIX")))

(def (compile1 modf)
  (displayln "... compile " modf)
  (compile-module modf [output-dir: gerbil-libdir invoke-gsc: #t
                        debug: #f
                        optimize: (not (getenv "GERBIL_BUILD_NOOPT" #f))
                        generate-ssxi: #t
                        parallel: #t
                        gsc-options: ["-e" "(include \"~~lib/_gambit#.scm\")"]]))

(def (compile-group group . options) ;; TODO: parallelize this?
  ;; TODO: parallelize, but with the correct dependencies -- instead of "false",
  ;; the on-success function will queue those modules whose dependencies are done.
  ;;(parallel-build group (lambda (x) (apply compile1 x options)) false)
  (for-each (lambda (x) (apply compile1 x options)) group))

(displayln "building gerbil in " gerbil-libdir)
;; initialize optimizer and preload builtin.ssxi so that we have visibility
(unless (getenv "GERBIL_BUILD_NOOPT" #f)
  (gxc#optimizer-info-init!)
  (gx#import-module "gerbil/builtin.ssxi.ss" #t)
  (gx#import-module "gerbil/builtin-inline-rules.ssxi.ss" #t))
;; compile core prelude
(compile-group gerbil-modules-core)
;; compile runtime
(compile-group gerbil-modules-runtime)
;; compile expander
(compile-group gerbil-modules-expander)
;; compile compiler
(compile-group gerbil-modules-compiler)
;; compile gambit prelude (TODO: obsolete, it is just an empty shim now)
(compile-group gerbil-prelude-gambit)

;; run the compile jobs to complete the build
(execute-pending-compile-jobs!)
