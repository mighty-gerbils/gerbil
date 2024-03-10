;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil runtime in Gerbil
;;; Recursion; See Recursion
prelude: "core"
package: gerbil
namespace: #f

(provide gerbil-runtime)

(import
  "runtime/util"
  "runtime/table"
  "runtime/control"
  "runtime/system"
  "runtime/c3"
  "runtime/mop"
  "runtime/error"
  "runtime/interface"
  "runtime/hash"
  "runtime/thread"
  "runtime/syntax"
  "runtime/eval"
  "runtime/repl"
  "runtime/loader"
  "runtime/init")
(export
  (import:
   "runtime/util"
   "runtime/table"
   "runtime/control"
   "runtime/system"
   "runtime/c3"
   "runtime/mop"
   "runtime/error"
   "runtime/interface"
   "runtime/hash"
   "runtime/thread"
   "runtime/syntax"
   "runtime/eval"
   "runtime/repl"
   "runtime/loader"
   "runtime/init"))

(void) ;; so that the runtime module exists
