;;; -*- Gerbil -*-
;;; © vyzo
;;; gerbil base prelude
;;;
prelude: :<root>
package: gerbil

(import "core")
(import "runtime")
(export (except-from-out (import: "core")
                         GerbilRuntime)
        (import: "runtime")
        (phi: +1 (import: "core"))
        (phi: +2 (import: "core")))
