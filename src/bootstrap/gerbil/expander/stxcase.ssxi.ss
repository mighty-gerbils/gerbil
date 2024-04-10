prelude: :gerbil/compiler/ssxi
package: gerbil/expander

(begin
  (declare-class
   gx#syntax-pattern::t
   (@class gx#syntax-pattern::t
           (gx#expander::t)
           (gx#expander::t object::t t::t)
           (id depth)
           (e id depth)
           #f
           #t
           #f
           #f
           #f
           ((apply-macro-expander . gx#syntax-pattern::apply-macro-expander))))
  (declare-type
   gx#syntax-pattern::t
   (optimizer-resolve-class '(typedecl gx#syntax-pattern::t) 'class::t))
  (declare-type gx#syntax-pattern? (@predicate gx#syntax-pattern::t))
  (declare-type gx#make-syntax-pattern (@constructor gx#syntax-pattern::t))
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
  (declare-type
   gx#syntax-pattern::apply-macro-expander
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/stxcase)))
  (declare-type
   gx#macro-expand-syntax
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/stxcase)))
  (declare-type
   gx#macro-expand-syntax-case__%
   (@lambda 4
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/stxcase)))
  (declare-type
   gx#macro-expand-syntax-case__0
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/stxcase)))
  (declare-type
   gx#macro-expand-syntax-case__1
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/stxcase)))
  (declare-type
   gx#macro-expand-syntax-case__2
   (@lambda 3
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/stxcase)))
  (declare-type
   gx#macro-expand-syntax-case
   (@case-lambda
    (1
     gx#macro-expand-syntax-case__0
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/stxcase))
    (2
     gx#macro-expand-syntax-case__1
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/stxcase))
    (3
     gx#macro-expand-syntax-case__2
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/stxcase))
    (4
     gx#macro-expand-syntax-case__%
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/stxcase))))
  (declare-type
   gx#syntax-local-pattern?
   (@lambda 1
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/stxcase)))
  (declare-type
   gx#syntax-check-splice-targets
   (@lambda (1)
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/stxcase)))
  (declare-type
   gx#syntax-split-splice
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/stxcase))))
