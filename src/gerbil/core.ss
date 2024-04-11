;;; -*- Gerbil -*-
;;; © vyzo
;;; gerbil core prelude
;;;
prelude: :<root>
package: gerbil

(import "core/module-sugar")
(import "core/runtime"
        "core/sugar"
        (except-in "core/mop" @method)
        "core/match"
        "core/more-sugar"
        "core/contract"
        (phi: +1
              "core/runtime"
              "core/sugar"
              (except-in "core/mop" @method)
              "core/match"
              "core/more-sugar"
              "core/contract"
              "core/expander"
              "core/macro-object"
              "core/more-syntax-sugar")
        (phi: +2
              "core/runtime"
              "core/expander"))
(export (except-out
         (import: "core/runtime"
                  "core/sugar"
                  "core/mop"
                  "core/match"
                  "core/more-sugar"
                  "core/module-sugar"
                  "core/contract")
         lambda case-lambda let def def* defmethod defclass defstruct set!)
        (rename: %%app-dotted %%app)
        (rename: %%ref-dotted %%ref)
        (rename: %%set-dotted! set!)
        (rename: lambda/c lambda)
        (rename: case-lambda/c case-lambda)
        (rename: let/c let)
        (rename: def/c def)
        (rename: def*/c def*)
        (rename: defmethod/c defmethod)
        (rename: defclass/c defclass)
        (rename: defstruct/c defstruct)
        (phi: +1
              (except-out
               (import: "core/runtime"
                        "core/sugar"
                        "core/mop"
                        "core/match"
                        "core/more-sugar"
                        "core/contract"
                        "core/expander"
                        "core/macro-object"
                        "core/more-syntax-sugar")
               lambda case-lambda let def def* defmethod defclass defstruct set!)
              (rename: %%app-dotted %%app)
              (rename: %%ref-dotted %%ref)
              (rename: %%set-dotted! set!)
              (rename: lambda/c lambda)
              (rename: case-lambda/c case-lambda)
              (rename: let/c let)
              (rename: def/c def)
              (rename: def*/c def*)
              (rename: defmethod/c defmethod)
              (rename: defclass/c defclass)
              (rename: defstruct/c defstruct))
        (phi: +2 (import: "core/runtime"
                          "core/expander")))
