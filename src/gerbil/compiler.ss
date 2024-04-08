;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil -> gambc compiler
prelude: "core"
package: gerbil
namespace: gxc

(import "compiler/driver"
        "compiler/base")
(export (import: "compiler/driver")
        execute-pending-compile-jobs!)
