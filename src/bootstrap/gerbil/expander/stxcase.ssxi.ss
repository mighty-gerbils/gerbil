prelude: :gerbil/compiler/ssxi
package: gerbil/expander

(begin
  (declare-type
   gx#syntax-pattern::t
   (@struct-type gx#syntax-pattern::t gx#expander::t 2 #f ()))
  (declare-type gx#syntax-pattern? (@struct-pred gx#syntax-pattern::t))
  (declare-type gx#make-syntax-pattern (@struct-cons gx#syntax-pattern::t))
  (declare-type gx#syntax-pattern-id (@struct-getf gx#syntax-pattern::t 0 #f))
  (declare-type
   gx#syntax-pattern-depth
   (@struct-getf gx#syntax-pattern::t 1 #f))
  (declare-type
   gx#syntax-pattern-id-set!
   (@struct-setf gx#syntax-pattern::t 0 #f))
  (declare-type
   gx#syntax-pattern-depth-set!
   (@struct-setf gx#syntax-pattern::t 1 #f))
  (declare-method
   gx#syntax-pattern::t
   apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   #f)
  (declare-type
   gx#macro-expand-syntax-case
   (@case-lambda
    (1 gx#macro-expand-syntax-case__0)
    (2 gx#macro-expand-syntax-case__1)
    (3 gx#macro-expand-syntax-case__2)
    (4 gx#macro-expand-syntax-case__opt-lambda13892))))
