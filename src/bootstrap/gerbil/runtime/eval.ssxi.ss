prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-class
   __syntax::t
   (@class gerbil/runtime/eval#__syntax::t
           ()
           (object::t t::t)
           (e id)
           (e id)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   __syntax::t
   (optimizer-resolve-class '(typedecl __syntax::t) 'class::t))
  (declare-type __syntax? (@predicate __syntax::t))
  (declare-type make-__syntax (@constructor __syntax::t))
  (declare-type __syntax-e (@accessor __syntax::t e #t))
  (declare-type __syntax-id (@accessor __syntax::t id #t))
  (declare-type __syntax-e-set! (@mutator __syntax::t e #t))
  (declare-type __syntax-id-set! (@mutator __syntax::t id #t))
  (declare-type &__syntax-e (@accessor __syntax::t e #f))
  (declare-type &__syntax-id (@accessor __syntax::t id #f))
  (declare-type &__syntax-e-set! (@mutator __syntax::t e #f))
  (declare-type &__syntax-id-set! (@mutator __syntax::t id #f))
  (declare-class
   __core-form::t
   (@class gerbil/runtime/eval#__core-form::t
           (__syntax::t)
           (__syntax::t object::t t::t)
           ()
           (e id)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   __core-form::t
   (optimizer-resolve-class '(typedecl __core-form::t) 'class::t))
  (declare-type __core-form? (@predicate __core-form::t))
  (declare-type make-__core-form (@constructor __core-form::t))
  (declare-type __core-form-e (@accessor __core-form::t e #t))
  (declare-type __core-form-id (@accessor __core-form::t id #t))
  (declare-type __core-form-e-set! (@mutator __core-form::t e #t))
  (declare-type __core-form-id-set! (@mutator __core-form::t id #t))
  (declare-type &__core-form-e (@accessor __core-form::t e #f))
  (declare-type &__core-form-id (@accessor __core-form::t id #f))
  (declare-type &__core-form-e-set! (@mutator __core-form::t e #f))
  (declare-type &__core-form-id-set! (@mutator __core-form::t id #f))
  (declare-class
   __core-expression::t
   (@class gerbil/runtime/eval#__core-expression::t
           (__core-form::t)
           (__core-form::t __syntax::t object::t t::t)
           ()
           (e id)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   __core-expression::t
   (optimizer-resolve-class '(typedecl __core-expression::t) 'class::t))
  (declare-type __core-expression? (@predicate __core-expression::t))
  (declare-type make-__core-expression (@constructor __core-expression::t))
  (declare-type __core-expression-e (@accessor __core-expression::t e #t))
  (declare-type __core-expression-id (@accessor __core-expression::t id #t))
  (declare-type __core-expression-e-set! (@mutator __core-expression::t e #t))
  (declare-type
   __core-expression-id-set!
   (@mutator __core-expression::t id #t))
  (declare-type &__core-expression-e (@accessor __core-expression::t e #f))
  (declare-type &__core-expression-id (@accessor __core-expression::t id #f))
  (declare-type &__core-expression-e-set! (@mutator __core-expression::t e #f))
  (declare-type
   &__core-expression-id-set!
   (@mutator __core-expression::t id #f))
  (declare-class
   __core-special-form::t
   (@class gerbil/runtime/eval#__core-special-form::t
           (__core-form::t)
           (__core-form::t __syntax::t object::t t::t)
           ()
           (e id)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   __core-special-form::t
   (optimizer-resolve-class '(typedecl __core-special-form::t) 'class::t))
  (declare-type __core-special-form? (@predicate __core-special-form::t))
  (declare-type make-__core-special-form (@constructor __core-special-form::t))
  (declare-type __core-special-form-e (@accessor __core-special-form::t e #t))
  (declare-type
   __core-special-form-id
   (@accessor __core-special-form::t id #t))
  (declare-type
   __core-special-form-e-set!
   (@mutator __core-special-form::t e #t))
  (declare-type
   __core-special-form-id-set!
   (@mutator __core-special-form::t id #t))
  (declare-type &__core-special-form-e (@accessor __core-special-form::t e #f))
  (declare-type
   &__core-special-form-id
   (@accessor __core-special-form::t id #f))
  (declare-type
   &__core-special-form-e-set!
   (@mutator __core-special-form::t e #f))
  (declare-type
   &__core-special-form-id-set!
   (@mutator __core-special-form::t id #f))
  (declare-type
   __core
   (optimizer-resolve-class '(typedecl __core) 'HashTable::t))
  (declare-type
   __current-expander
   (optimizer-resolve-class '(typedecl __current-expander) 'procedure::t))
  (declare-type
   __current-compiler
   (optimizer-resolve-class '(typedecl __current-compiler) 'procedure::t))
  (declare-type
   __current-path
   (optimizer-resolve-class '(typedecl __current-path) 'procedure::t))
  (declare-type
   __core-resolve
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
             gerbil/runtime/eval)))
  (declare-type
   __core-bound-id?__%
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
             gerbil/runtime/eval)))
  (declare-type
   __core-bound-id?__0
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
             gerbil/runtime/eval)))
  (declare-type
   __core-bound-id?
   (@case-lambda
    (1
     __core-bound-id?__0
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
      gerbil/runtime/eval))
    (2
     __core-bound-id?__%
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
      gerbil/runtime/eval))))
  (declare-type
   __core-bind-syntax!__%
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
             gerbil/runtime/eval)))
  (declare-type
   __core-bind-syntax!__0
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
             gerbil/runtime/eval)))
  (declare-type
   __core-bind-syntax!
   (@case-lambda
    (2
     __core-bind-syntax!__0
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
      gerbil/runtime/eval))
    (3
     __core-bind-syntax!__%
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
      gerbil/runtime/eval))))
  (declare-type
   __SRC__%
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
             gerbil/runtime/eval)))
  (declare-type
   __SRC__0
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
             gerbil/runtime/eval)))
  (declare-type
   __SRC
   (@case-lambda
    (1
     __SRC__0
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
      gerbil/runtime/eval))
    (2
     __SRC__%
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
      gerbil/runtime/eval))))
  (declare-type
   __locat
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
             gerbil/runtime/eval)))
  (declare-type
   __check-values
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
             gerbil/runtime/eval)))
  (declare-type
   __compile
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
             gerbil/runtime/eval)))
  (declare-type
   __compile-error__%
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
             gerbil/runtime/eval)))
  (declare-type
   __compile-error__0
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
             gerbil/runtime/eval)))
  (declare-type
   __compile-error
   (@case-lambda
    (1
     __compile-error__0
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
      gerbil/runtime/eval))
    (2
     __compile-error__%
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
      gerbil/runtime/eval))))
  (declare-type
   __compile-ignore%
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
             gerbil/runtime/eval)))
  (declare-type
   __compile-begin%
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
             gerbil/runtime/eval)))
  (declare-type
   __compile-begin-foreign%
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
             gerbil/runtime/eval)))
  (declare-type
   __compile-import%
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
             gerbil/runtime/eval)))
  (declare-type
   __compile-begin-annotation%
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
             gerbil/runtime/eval)))
  (declare-type
   __compile-define-values%
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
             gerbil/runtime/eval)))
  (declare-type
   __compile-head-id
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
             gerbil/runtime/eval)))
  (declare-type
   __compile-lambda-head
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
             gerbil/runtime/eval)))
  (declare-type
   __compile-lambda%
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
             gerbil/runtime/eval)))
  (declare-type
   __compile-case-lambda%
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
             gerbil/runtime/eval)))
  (declare-type
   __compile-let-form
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
             gerbil/runtime/eval)))
  (declare-type
   __compile-let-values%
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
             gerbil/runtime/eval)))
  (declare-type
   __compile-letrec-values%
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
             gerbil/runtime/eval)))
  (declare-type
   __compile-letrec*-values%
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
             gerbil/runtime/eval)))
  (declare-type
   __compile-call%
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
             gerbil/runtime/eval)))
  (declare-type
   __compile-ref%
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
             gerbil/runtime/eval)))
  (declare-type
   __compile-setq%
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
             gerbil/runtime/eval)))
  (declare-type
   __compile-if%
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
             gerbil/runtime/eval)))
  (declare-type
   __compile-quote%
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
             gerbil/runtime/eval)))
  (declare-type
   __compile-quote-syntax%
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
             gerbil/runtime/eval))))
