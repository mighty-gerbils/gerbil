prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-class
   gxc#::collect-mutators::t
   (@class gxc#::collect-mutators::t
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
   gxc#::collect-mutators::t
   (optimizer-resolve-class '(typedecl gxc#::collect-mutators::t) 'class::t))
  (declare-type gxc#::collect-mutators? (@predicate gxc#::collect-mutators::t))
  (declare-type
   gxc#make-::collect-mutators
   (@constructor gxc#::collect-mutators::t))
  (declare-type
   gxc#::collect-mutators-bind-methods!
   (optimizer-resolve-class
    '(typedecl gxc#::collect-mutators-bind-methods!)
    'promise::t))
  (declare-type
   gxc#apply-collect-mutators
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
             gerbil/compiler/optimize-xform)))
  (declare-class
   gxc#::expression-subst::t
   (@class gxc#::expression-subst::t
           (gxc#::basic-xform-expression::t)
           (gxc#::basic-xform-expression::t object::t t::t)
           (id new-id)
           (id new-id)
           #f
           #f
           #t
           #f
           #f
           #f))
  (declare-type
   gxc#::expression-subst::t
   (optimizer-resolve-class '(typedecl gxc#::expression-subst::t) 'class::t))
  (declare-type gxc#::expression-subst? (@predicate gxc#::expression-subst::t))
  (declare-type
   gxc#make-::expression-subst
   (@constructor gxc#::expression-subst::t))
  (declare-type
   gxc#::expression-subst-id
   (@accessor gxc#::expression-subst::t id #t))
  (declare-type
   gxc#::expression-subst-new-id
   (@accessor gxc#::expression-subst::t new-id #t))
  (declare-type
   gxc#::expression-subst-id-set!
   (@mutator gxc#::expression-subst::t id #t))
  (declare-type
   gxc#::expression-subst-new-id-set!
   (@mutator gxc#::expression-subst::t new-id #t))
  (declare-type
   gxc#&::expression-subst-id
   (@accessor gxc#::expression-subst::t id #f))
  (declare-type
   gxc#&::expression-subst-new-id
   (@accessor gxc#::expression-subst::t new-id #f))
  (declare-type
   gxc#&::expression-subst-id-set!
   (@mutator gxc#::expression-subst::t id #f))
  (declare-type
   gxc#&::expression-subst-new-id-set!
   (@mutator gxc#::expression-subst::t new-id #f))
  (declare-type
   gxc#::expression-subst-bind-methods!
   (optimizer-resolve-class
    '(typedecl gxc#::expression-subst-bind-methods!)
    'promise::t))
  (declare-type
   gxc#apply-expression-subst__%
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
             gerbil/compiler/optimize-xform)))
  (declare-type
   gxc#apply-expression-subst__@
   (@kw-lambda-dispatch (id: new-id:) gxc#apply-expression-subst__%))
  (declare-type
   gxc#apply-expression-subst
   (@kw-lambda (id: new-id:) gxc#apply-expression-subst__@))
  (declare-class
   gxc#::expression-subst*::t
   (@class gxc#::expression-subst*::t
           (gxc#::basic-xform-expression::t)
           (gxc#::basic-xform-expression::t object::t t::t)
           (subst)
           (subst)
           #f
           #f
           #t
           #f
           #f
           #f))
  (declare-type
   gxc#::expression-subst*::t
   (optimizer-resolve-class '(typedecl gxc#::expression-subst*::t) 'class::t))
  (declare-type
   gxc#::expression-subst*?
   (@predicate gxc#::expression-subst*::t))
  (declare-type
   gxc#make-::expression-subst*
   (@constructor gxc#::expression-subst*::t))
  (declare-type
   gxc#::expression-subst*-subst
   (@accessor gxc#::expression-subst*::t subst #t))
  (declare-type
   gxc#::expression-subst*-subst-set!
   (@mutator gxc#::expression-subst*::t subst #t))
  (declare-type
   gxc#&::expression-subst*-subst
   (@accessor gxc#::expression-subst*::t subst #f))
  (declare-type
   gxc#&::expression-subst*-subst-set!
   (@mutator gxc#::expression-subst*::t subst #f))
  (declare-type
   gxc#::expression-subst*-bind-methods!
   (optimizer-resolve-class
    '(typedecl gxc#::expression-subst*-bind-methods!)
    'promise::t))
  (declare-type
   gxc#apply-expression-subst*__%
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
             gerbil/compiler/optimize-xform)))
  (declare-type
   gxc#apply-expression-subst*__@
   (@kw-lambda-dispatch (subst:) gxc#apply-expression-subst*__%))
  (declare-type
   gxc#apply-expression-subst*
   (@kw-lambda (subst:) gxc#apply-expression-subst*__@))
  (declare-class
   gxc#::find-expression::t
   (@class gxc#::find-expression::t
           (gxc#::false-expression::t)
           (gxc#::false-expression::t object::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   gxc#::find-expression::t
   (optimizer-resolve-class '(typedecl gxc#::find-expression::t) 'class::t))
  (declare-type gxc#::find-expression? (@predicate gxc#::find-expression::t))
  (declare-type
   gxc#make-::find-expression
   (@constructor gxc#::find-expression::t))
  (declare-type
   gxc#::find-expression-bind-methods!
   (optimizer-resolve-class
    '(typedecl gxc#::find-expression-bind-methods!)
    'promise::t))
  (declare-class
   gxc#::find-var-refs::t
   (@class gxc#::find-var-refs::t
           (gxc#::find-expression::t)
           (gxc#::find-expression::t gxc#::false-expression::t object::t t::t)
           (ids)
           (ids)
           #f
           #f
           #t
           #f
           #f
           #f))
  (declare-type
   gxc#::find-var-refs::t
   (optimizer-resolve-class '(typedecl gxc#::find-var-refs::t) 'class::t))
  (declare-type gxc#::find-var-refs? (@predicate gxc#::find-var-refs::t))
  (declare-type gxc#make-::find-var-refs (@constructor gxc#::find-var-refs::t))
  (declare-type
   gxc#::find-var-refs-ids
   (@accessor gxc#::find-var-refs::t ids #t))
  (declare-type
   gxc#::find-var-refs-ids-set!
   (@mutator gxc#::find-var-refs::t ids #t))
  (declare-type
   gxc#&::find-var-refs-ids
   (@accessor gxc#::find-var-refs::t ids #f))
  (declare-type
   gxc#&::find-var-refs-ids-set!
   (@mutator gxc#::find-var-refs::t ids #f))
  (declare-type
   gxc#::find-var-refs-bind-methods!
   (optimizer-resolve-class
    '(typedecl gxc#::find-var-refs-bind-methods!)
    'promise::t))
  (declare-type
   gxc#apply-find-var-refs__%
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
             gerbil/compiler/optimize-xform)))
  (declare-type
   gxc#apply-find-var-refs__@
   (@kw-lambda-dispatch (ids:) gxc#apply-find-var-refs__%))
  (declare-type
   gxc#apply-find-var-refs
   (@kw-lambda (ids:) gxc#apply-find-var-refs__@))
  (declare-class
   gxc#::collect-runtime-refs::t
   (@class gxc#::collect-runtime-refs::t
           (gxc#::collect-expression-refs::t)
           (gxc#::collect-expression-refs::t object::t t::t)
           ()
           (table)
           #f
           #f
           #t
           #f
           #f
           #f))
  (declare-type
   gxc#::collect-runtime-refs::t
   (optimizer-resolve-class
    '(typedecl gxc#::collect-runtime-refs::t)
    'class::t))
  (declare-type
   gxc#::collect-runtime-refs?
   (@predicate gxc#::collect-runtime-refs::t))
  (declare-type
   gxc#make-::collect-runtime-refs
   (@constructor gxc#::collect-runtime-refs::t))
  (declare-type
   gxc#::collect-runtime-refs-table
   (@accessor gxc#::collect-runtime-refs::t table #t))
  (declare-type
   gxc#::collect-runtime-refs-table-set!
   (@mutator gxc#::collect-runtime-refs::t table #t))
  (declare-type
   gxc#&::collect-runtime-refs-table
   (@accessor gxc#::collect-runtime-refs::t table #f))
  (declare-type
   gxc#&::collect-runtime-refs-table-set!
   (@mutator gxc#::collect-runtime-refs::t table #f))
  (declare-type
   gxc#::collect-runtime-refs-bind-methods!
   (optimizer-resolve-class
    '(typedecl gxc#::collect-runtime-refs-bind-methods!)
    'promise::t))
  (declare-type
   gxc#apply-collect-runtime-refs__%
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
             gerbil/compiler/optimize-xform)))
  (declare-type
   gxc#apply-collect-runtime-refs__@
   (@kw-lambda-dispatch (table:) gxc#apply-collect-runtime-refs__%))
  (declare-type
   gxc#apply-collect-runtime-refs
   (@kw-lambda (table:) gxc#apply-collect-runtime-refs__@))
  (declare-type
   gxc#collect-mutators-setq%
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
             gerbil/compiler/optimize-xform)))
  (declare-type
   gxc#expression-subst-ref%
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
             gerbil/compiler/optimize-xform)))
  (declare-type
   gxc#expression-subst*-ref%
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
             gerbil/compiler/optimize-xform)))
  (declare-type
   gxc#expression-subst-setq%
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
             gerbil/compiler/optimize-xform)))
  (declare-type
   gxc#expression-subst*-setq%
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
             gerbil/compiler/optimize-xform)))
  (declare-type
   gxc#collect-runtime-refs-ref%
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
             gerbil/compiler/optimize-xform)))
  (declare-type
   gxc#collect-runtime-refs-setq%
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
             gerbil/compiler/optimize-xform)))
  (declare-type
   gxc#find-body%
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
             gerbil/compiler/optimize-xform)))
  (declare-type
   gxc#find-let-values%
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
             gerbil/compiler/optimize-xform)))
  (declare-type
   gxc#find-var-refs-ref%
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
             gerbil/compiler/optimize-xform)))
  (declare-type
   gxc#find-var-refs-setq%
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
             gerbil/compiler/optimize-xform))))
