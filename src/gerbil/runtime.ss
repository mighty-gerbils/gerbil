;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil runtime in Gerbil
;;; Recursion; See Recursion
prelude: :gerbil/core
package: gerbil

(provide gerbil-runtime)

(import
  "runtime/system"
  "runtime/util"
  "runtime/loader"
  "runtime/control"
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
   "runtime/system"
   "runtime/util"
   "runtime/loader"
   "runtime/control"
   "runtime/c3"
   "runtime/mop"
   "runtime/error"
   "runtime/syntax"
   "runtime/eval"
   "runtime/repl"
   "runtime/init"))

(void) ;; so that the runtime module exists
