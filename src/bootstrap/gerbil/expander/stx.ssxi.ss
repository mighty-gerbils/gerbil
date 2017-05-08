prelude: :gerbil/compiler/ssxi
package: gerbil/expander

(begin
  (declare-type
   gx#identifier-wrap::t
   (@struct-type gx#identifier-wrap::t AST::t 1 #f ((final: . #t))))
  (declare-type gx#identifier-wrap? (@struct-pred gx#identifier-wrap::t))
  (declare-type gx#make-identifier-wrap (@struct-cons gx#identifier-wrap::t))
  (declare-type
   gx#identifier-wrap-marks
   (@struct-getf gx#identifier-wrap::t 0))
  (declare-type
   gx#identifier-wrap-marks-set!
   (@struct-setf gx#identifier-wrap::t 0))
  (declare-type
   gx#syntax-wrap::t
   (@struct-type gx#syntax-wrap::t AST::t 1 #f ((final: . #t))))
  (declare-type gx#syntax-wrap? (@struct-pred gx#syntax-wrap::t))
  (declare-type gx#make-syntax-wrap (@struct-cons gx#syntax-wrap::t))
  (declare-type gx#syntax-wrap-mark (@struct-getf gx#syntax-wrap::t 0))
  (declare-type gx#syntax-wrap-mark-set! (@struct-setf gx#syntax-wrap::t 0))
  (declare-type
   gx#syntax-quote::t
   (@struct-type gx#syntax-quote::t AST::t 2 #f ((final: . #t))))
  (declare-type gx#syntax-quote? (@struct-pred gx#syntax-quote::t))
  (declare-type gx#make-syntax-quote (@struct-cons gx#syntax-quote::t))
  (declare-type gx#syntax-quote-context (@struct-getf gx#syntax-quote::t 0))
  (declare-type gx#syntax-quote-marks (@struct-getf gx#syntax-quote::t 1))
  (declare-type
   gx#syntax-quote-context-set!
   (@struct-setf gx#syntax-quote::t 0))
  (declare-type
   gx#syntax-quote-marks-set!
   (@struct-setf gx#syntax-quote::t 1)))
