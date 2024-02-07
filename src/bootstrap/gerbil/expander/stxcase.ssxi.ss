prelude: :gerbil/compiler/ssxi
package: gerbil/expander

(begin
  (declare-type
   gx#syntax-pattern::t
   (@class gx#syntax-pattern::t
           (gx#expander::t)
           (gx#expander::t)
           (id depth)
           (e id depth)
           #f
           #t
           #f
           ((apply-macro-expander . gx#syntax-pattern::apply-macro-expander))))
  (declare-type gx#syntax-pattern? (@predicate gx#syntax-pattern::t))
  (declare-type gx#make-syntax-pattern (@constrctuor gx#syntax-pattern::t))
  (declare-type gx#syntax-pattern-id (@accessor gx#syntax-pattern::t id #t))
  (declare-type
   gx#syntax-pattern-depth
   (@accessor gx#syntax-pattern::t depth #t))
  (declare-type gx#syntax-pattern-e (@accessor gx#syntax-pattern::t e #t))
  (declare-type
   gx#syntax-pattern-id-set!
   (@mutator gx#syntax-pattern::t id #t))
  (declare-type
   gx#syntax-pattern-depth-set!
   (@mutator gx#syntax-pattern::t depth #t))
  (declare-type gx#syntax-pattern-e-set! (@mutator gx#syntax-pattern::t e #t))
  (declare-type gx#&syntax-pattern-id (@accessor gx#syntax-pattern::t id #f))
  (declare-type
   gx#&syntax-pattern-depth
   (@accessor gx#syntax-pattern::t depth #f))
  (declare-type gx#&syntax-pattern-e (@accessor gx#syntax-pattern::t e #f))
  (declare-type
   gx#&syntax-pattern-id-set!
   (@mutator gx#syntax-pattern::t id #f))
  (declare-type
   gx#&syntax-pattern-depth-set!
   (@mutator gx#syntax-pattern::t depth #f))
  (declare-type gx#&syntax-pattern-e-set! (@mutator gx#syntax-pattern::t e #f))
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
