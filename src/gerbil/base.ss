;;; -*- Gerbil -*-
;;; © vyzo
;;; gerbil base prelude
;;;
prelude: :<root>
package: gerbil

(import "core" (phi: +1 "core") (phi: +2 "core"))
(import "runtime")
(export (except-from-out (import: "core")
                         GerbilRuntime)
        (import: "runtime")
        (phi: +1 (import: "core"))
        (phi: +2 (import: "core")))
