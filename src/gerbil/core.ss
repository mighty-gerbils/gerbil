;;; -*- Gerbil -*-
;;; © vyzo
;;; gerbil core prelude
;;;
prelude: :<root>
package: gerbil/core

(import "core/runtime"
        "core/sugar"
        "core/mop"
        "core/match"
        "core/more-sugar"
        "core/module-sugar"
        (phi: +1
              "core/runtime"
              "core/sugar"
              "core/mop"
              "core/match"
              "core/more-sugar"
              "core/expander"
              "core/macro-object"
              "core/more-syntax-sugar")
        (phi: +2
              "core/runtime"
              "core/expander"))
(export (import: "core/runtime"
                 "core/sugar"
                 "core/mop"
                 "core/match"
                 "core/more-sugar"
                 "core/module-sugar")
        (phi: +1 (import: "core/runtime"
                          "core/sugar"
                          "core/mop"
                          "core/match"
                          "core/more-sugar"
                          "core/expander"
                          "core/macro-object"
                          "core/more-syntax-sugar"))
        (phi: +2 (import: "core/runtime"
                          "core/expander")))
