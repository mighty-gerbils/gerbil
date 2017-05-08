;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :gerbil/core prelude ssxi
prelude: :gerbil/compiler/ssxi
package: gerbil

;; eventually this should contain types for the entire runtime
;; for now just ASTs to help optimize the expander
(declare-type*
 (AST::t (@struct-type gerbil#AST::t #f 2))
 (AST? (@struct-pred AST::t))
 (AST-e (@struct-getf AST::t 0))
 (AST-source (@struct-getf AST::t 1))
 (make-AST (@struct-cons AST::t)))
