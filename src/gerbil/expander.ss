;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil expander package

;;; The expander is based largely on the algorithm described in:
;;; Extending the Scope of Syntactic Abstraction, by Oscar Waddell and R. Kent Dybvig, POPL '99.
;;; https://guenchi.github.io/Scheme/doc/Extending%20the%20Scope%20of%20Syntactic%20Abstraction.pdf
;;; (See also Waddell's thesis with the same title.)
prelude: "core"
package: gerbil

(provide gerbil-expander)

(import
  "expander/common"
  "expander/stx"
  "expander/core"
  "expander/top"
  "expander/module"
  "expander/compile"
  "expander/root"
  "expander/stxcase"
  "expander/init")

(export
  (import: "expander/common"
           "expander/stx"
           "expander/core"
           "expander/top"
           "expander/module"
           "expander/compile"
           "expander/root"
           "expander/stxcase"))
