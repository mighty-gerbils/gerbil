;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil runtime in Gerbil
;;; Recursion; See Recursion
prelude: "prelude/core"
package: gerbil

(provide gerbil-runtime)

(import
  "runtime/util"
  "runtime/table"
  "runtime/loader"
  "runtime/control"
  "runtime/system"
  "runtime/c3"
  "runtime/mop"
  "runtime/error"
  "runtime/thread"
  "runtime/syntax"
  "runtime/eval"
  "runtime/repl"
  "runtime/init")
(export
  (import:
   "runtime/util"
   "runtime/table"
   "runtime/loader"
   "runtime/control"
   "runtime/system"
   "runtime/c3"
   "runtime/mop"
   "runtime/error"
   "runtime/syntax"
   "runtime/eval"
   "runtime/repl"
   "runtime/init"))

(void) ;; so that the runtime module exists
