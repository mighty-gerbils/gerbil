prelude: :gerbil/compiler/ssxi
package: gerbil/expander

(begin
  (declare-type gx#AST::t (@struct-type gerbil#AST::t #f 2 #f ()))
  (declare-type gx#AST? (@struct-pred gx#AST::t))
  (declare-type gx#make-AST (@struct-cons gx#AST::t))
  (declare-type gx#AST-e (@struct-getf gx#AST::t 0 #f))
  (declare-type gx#AST-source (@struct-getf gx#AST::t 1 #f))
  (declare-type gx#AST-e-set! (@struct-setf gx#AST::t 0 #f))
  (declare-type gx#AST-source-set! (@struct-setf gx#AST::t 1 #f))
  (declare-type gx#&AST-e (@struct-getf gx#AST::t 0 #t))
  (declare-type gx#&AST-source (@struct-getf gx#AST::t 1 #t))
  (declare-type gx#&AST-e-set! (@struct-setf gx#AST::t 0 #t))
  (declare-type gx#&AST-source-set! (@struct-setf gx#AST::t 1 #t)))
