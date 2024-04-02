prelude: :gerbil/compiler/ssxi
package: gerbil/expander

(begin
  (declare-class
   gx#AST::t
   (@class gerbil#AST::t
           ()
           (object::t t::t)
           (e source)
           (e source)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   gx#AST::t
   (optimizer-resolve-class '(typedecl gx#AST::t) 'class::t))
  (declare-type gx#AST? (@predicate gx#AST::t))
  (declare-type gx#make-AST (@constructor gx#AST::t))
  (declare-type gx#AST-e (@accessor gx#AST::t e #t))
  (declare-type gx#AST-source (@accessor gx#AST::t source #t))
  (declare-type gx#AST-e-set! (@mutator gx#AST::t e #t))
  (declare-type gx#AST-source-set! (@mutator gx#AST::t source #t))
  (declare-type gx#&AST-e (@accessor gx#AST::t e #f))
  (declare-type gx#&AST-source (@accessor gx#AST::t source #f))
  (declare-type gx#&AST-e-set! (@mutator gx#AST::t e #f))
  (declare-type gx#&AST-source-set! (@mutator gx#AST::t source #f)))
