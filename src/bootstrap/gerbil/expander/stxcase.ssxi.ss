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
  (declare-type gx#syntax-pattern::apply-macro-expander (@lambda 2 #f))
  (declare-type gx#macro-expand-syntax (@lambda 1 #f))
  (declare-type gx#macro-expand-syntax-case__% (@lambda 4 #f))
  (declare-type gx#macro-expand-syntax-case__0 (@lambda 1 #f))
  (declare-type gx#macro-expand-syntax-case__1 (@lambda 2 #f))
  (declare-type gx#macro-expand-syntax-case__2 (@lambda 3 #f))
  (declare-type
   gx#macro-expand-syntax-case
   (@case-lambda
    (1 gx#macro-expand-syntax-case__0)
    (2 gx#macro-expand-syntax-case__1)
    (3 gx#macro-expand-syntax-case__2)
    (4 gx#macro-expand-syntax-case__%)))
  (declare-type gx#syntax-local-pattern? (@lambda 1 #f))
  (declare-type gx#syntax-check-splice-targets (@lambda (1) #f))
  (declare-type gx#syntax-split-splice (@lambda 2 #f)))
