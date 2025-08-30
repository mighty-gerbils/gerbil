prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-class
   gxc#::optimize-call::t
   (@class gxc#::optimize-call::t
           (gxc#::basic-xform::t)
           (gxc#::basic-xform::t
            gxc#::basic-xform-expression::t
            gxc#::identity::t
            gxc#::identity-special-form::t
            gxc#::identity-expression::t
            object::t
            t::t)
           ()
           ()
           #f
           #f
           #t
           #f
           #f
           #f))
  (declare-type
   gxc#::optimize-call::t
   (optimizer-resolve-class '(typedecl gxc#::optimize-call::t) 'class::t))
  (declare-type gxc#::optimize-call? (@predicate gxc#::optimize-call::t))
  (declare-type gxc#make-::optimize-call (@constructor gxc#::optimize-call::t))
  (declare-type
   gxc#::optimize-call-bind-methods!
   (optimizer-resolve-class
    '(typedecl gxc#::optimize-call-bind-methods!)
    'promise::t))
  (declare-type
   gxc#apply-optimize-call
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
             gerbil/compiler/optimize-call)))
  (declare-class
   gxc#::check-return-type::t
   (@class gxc#::check-return-type::t
           (gxc#::void::t)
           (gxc#::void::t
            gxc#::void-special-form::t
            gxc#::void-expression::t
            object::t
            t::t)
           ()
           ()
           #f
           #f
           #t
           #f
           #f
           #f))
  (declare-type
   gxc#::check-return-type::t
   (optimizer-resolve-class '(typedecl gxc#::check-return-type::t) 'class::t))
  (declare-type
   gxc#::check-return-type?
   (@predicate gxc#::check-return-type::t))
  (declare-type
   gxc#make-::check-return-type
   (@constructor gxc#::check-return-type::t))
  (declare-type
   gxc#::check-return-type-bind-methods!
   (optimizer-resolve-class
    '(typedecl gxc#::check-return-type-bind-methods!)
    'promise::t))
  (declare-type
   gxc#apply-check-return-type
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
             gerbil/compiler/optimize-call)))
  (declare-type
   gxc#optimize-call%
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
             gerbil/compiler/optimize-call)))
  (declare-type
   gxc#!procedure::optimize-call
   (@lambda 4
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t t::t t::t t::t)
             unchecked:
             #f
             origin:
             gerbil/compiler/optimize-call)))
  (declare-type
   gxc#!procedure::optimize-call::specialize
   (@lambda 2
            #f
            signature:
            (return:
             procedure::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/compiler/optimize-call)))
  (declare-type
   gxc#!procedure::check-arguments
   (@lambda 4
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t t::t t::t t::t)
             unchecked:
             #f
             origin:
             gerbil/compiler/optimize-call)))
  (declare-type
   gxc#!primitive-predicate::optimize-call
   (@lambda 4
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t t::t t::t t::t)
             unchecked:
             #f
             origin:
             gerbil/compiler/optimize-call)))
  (declare-type
   gxc#!predicate::optimize-call
   (@lambda 4
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t t::t t::t t::t)
             unchecked:
             #f
             origin:
             gerbil/compiler/optimize-call)))
  (declare-type
   gxc#expression-no-side-effects?
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
             gerbil/compiler/optimize-call)))
  (declare-type
   gxc#expression-type?
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
             gerbil/compiler/optimize-call)))
  (declare-type
   gxc#check-expression-type!
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
             gerbil/compiler/optimize-call)))
  (declare-type
   gxc#!constructor::optimize-call
   (@lambda 4
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t t::t t::t t::t)
             unchecked:
             #f
             origin:
             gerbil/compiler/optimize-call)))
  (declare-type
   gxc#!accessor::optimize-call
   (@lambda 4
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t t::t t::t t::t)
             unchecked:
             #f
             origin:
             gerbil/compiler/optimize-call)))
  (declare-type
   gxc#!accessor::optimize-call::specialize
   (@lambda 2
            #f
            signature:
            (return:
             procedure::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/compiler/optimize-call)))
  (declare-type
   gxc#!mutator::optimize-call
   (@lambda 4
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t t::t t::t t::t)
             unchecked:
             #f
             origin:
             gerbil/compiler/optimize-call)))
  (declare-type
   gxc#!mutator::optimize-call::specialize
   (@lambda 2
            #f
            signature:
            (return:
             procedure::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/compiler/optimize-call)))
  (declare-type
   gxc#!lambda::optimize-call
   (@lambda 4
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t t::t t::t t::t)
             unchecked:
             #f
             origin:
             gerbil/compiler/optimize-call)))
  (declare-type
   gxc#!case-lambda::optimize-call
   (@lambda 4
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t t::t t::t t::t)
             unchecked:
             #f
             origin:
             gerbil/compiler/optimize-call)))
  (declare-type
   gxc#!kw-lambda::optimize-call
   (@lambda 4
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t t::t t::t t::t)
             unchecked:
             #f
             origin:
             gerbil/compiler/optimize-call)))
  (declare-type
   gxc#!kw-lambda-split-args
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
             gerbil/compiler/optimize-call)))
  (declare-type
   gxc#!kw-lambda-primary::optimize-call
   (@lambda 4
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t t::t t::t t::t)
             unchecked:
             #f
             origin:
             gerbil/compiler/optimize-call)))
  (declare-type
   gxc#apply-check-return-type-begin-annotation%
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
             gerbil/compiler/optimize-call)))
  (declare-type
   gxc#check-return-type!
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
             gerbil/compiler/optimize-call)))
  (declare-type
   gxc#optimize-if%
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
             gerbil/compiler/optimize-call))))
