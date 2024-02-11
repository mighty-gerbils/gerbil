prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type
   __context::t
   (@class gerbil/runtime/eval#__context::t
           ()
           ()
           (t ns super table)
           (t ns super table)
           #f
           #t
           #f
           #f))
  (declare-type __context? (@predicate __context::t))
  (declare-type make-__context (@constructor __context::t))
  (declare-type __context-t (@accessor __context::t t #t))
  (declare-type __context-ns (@accessor __context::t ns #t))
  (declare-type __context-super (@accessor __context::t super #t))
  (declare-type __context-table (@accessor __context::t table #t))
  (declare-type __context-t-set! (@mutator __context::t t #t))
  (declare-type __context-ns-set! (@mutator __context::t ns #t))
  (declare-type __context-super-set! (@mutator __context::t super #t))
  (declare-type __context-table-set! (@mutator __context::t table #t))
  (declare-type &__context-t (@accessor __context::t t #f))
  (declare-type &__context-ns (@accessor __context::t ns #f))
  (declare-type &__context-super (@accessor __context::t super #f))
  (declare-type &__context-table (@accessor __context::t table #f))
  (declare-type &__context-t-set! (@mutator __context::t t #f))
  (declare-type &__context-ns-set! (@mutator __context::t ns #f))
  (declare-type &__context-super-set! (@mutator __context::t super #f))
  (declare-type &__context-table-set! (@mutator __context::t table #f))
  (declare-type
   __runtime::t
   (@class gerbil/runtime/eval#__runtime::t () () (id) (id) #f #t #f #f))
  (declare-type __runtime? (@predicate __runtime::t))
  (declare-type make-__runtime (@constructor __runtime::t))
  (declare-type __runtime-id (@accessor __runtime::t id #t))
  (declare-type __runtime-id-set! (@mutator __runtime::t id #t))
  (declare-type &__runtime-id (@accessor __runtime::t id #f))
  (declare-type &__runtime-id-set! (@mutator __runtime::t id #f))
  (declare-type
   __syntax::t
   (@class gerbil/runtime/eval#__syntax::t () () (e id) (e id) #f #t #f #f))
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
  (declare-type
   __macro::t
   (@class gerbil/runtime/eval#__macro::t
           (__syntax::t)
           (__syntax::t)
           ()
           (e id)
           #f
           #t
           #f
           #f))
  (declare-type __macro? (@predicate __macro::t))
  (declare-type make-__macro (@constructor __macro::t))
  (declare-type __macro-e (@accessor __macro::t e #t))
  (declare-type __macro-id (@accessor __macro::t id #t))
  (declare-type __macro-e-set! (@mutator __macro::t e #t))
  (declare-type __macro-id-set! (@mutator __macro::t id #t))
  (declare-type &__macro-e (@accessor __macro::t e #f))
  (declare-type &__macro-id (@accessor __macro::t id #f))
  (declare-type &__macro-e-set! (@mutator __macro::t e #f))
  (declare-type &__macro-id-set! (@mutator __macro::t id #f))
  (declare-type
   __special-form::t
   (@class gerbil/runtime/eval#__special-form::t
           (__macro::t)
           (__macro::t __syntax::t)
           ()
           (e id)
           #f
           #t
           #f
           #f))
  (declare-type __special-form? (@predicate __special-form::t))
  (declare-type make-__special-form (@constructor __special-form::t))
  (declare-type __special-form-e (@accessor __special-form::t e #t))
  (declare-type __special-form-id (@accessor __special-form::t id #t))
  (declare-type __special-form-e-set! (@mutator __special-form::t e #t))
  (declare-type __special-form-id-set! (@mutator __special-form::t id #t))
  (declare-type &__special-form-e (@accessor __special-form::t e #f))
  (declare-type &__special-form-id (@accessor __special-form::t id #f))
  (declare-type &__special-form-e-set! (@mutator __special-form::t e #f))
  (declare-type &__special-form-id-set! (@mutator __special-form::t id #f))
  (declare-type
   __core-form::t
   (@class gerbil/runtime/eval#__core-form::t
           (__syntax::t)
           (__syntax::t)
           ()
           (e id)
           #f
           #t
           #f
           #f))
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
  (declare-type
   __core-expression::t
   (@class gerbil/runtime/eval#__core-expression::t
           (__core-form::t)
           (__core-form::t __syntax::t)
           ()
           (e id)
           #f
           #t
           #f
           #f))
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
  (declare-type
   __core-special-form::t
   (@class gerbil/runtime/eval#__core-special-form::t
           (__core-form::t)
           (__core-form::t __syntax::t)
           ()
           (e id)
           #f
           #t
           #f
           #f))
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
   __struct-info::t
   (@class gerbil/runtime/eval#__struct-info::t
           (__syntax::t)
           (__syntax::t)
           ()
           (e id)
           #f
           #t
           #f
           #f))
  (declare-type __struct-info? (@predicate __struct-info::t))
  (declare-type make-__struct-info (@constructor __struct-info::t))
  (declare-type __struct-info-e (@accessor __struct-info::t e #t))
  (declare-type __struct-info-id (@accessor __struct-info::t id #t))
  (declare-type __struct-info-e-set! (@mutator __struct-info::t e #t))
  (declare-type __struct-info-id-set! (@mutator __struct-info::t id #t))
  (declare-type &__struct-info-e (@accessor __struct-info::t e #f))
  (declare-type &__struct-info-id (@accessor __struct-info::t id #f))
  (declare-type &__struct-info-e-set! (@mutator __struct-info::t e #f))
  (declare-type &__struct-info-id-set! (@mutator __struct-info::t id #f))
  (declare-type
   __feature::t
   (@class gerbil/runtime/eval#__feature::t
           (__syntax::t)
           (__syntax::t)
           ()
           (e id)
           #f
           #t
           #f
           #f))
  (declare-type __feature? (@predicate __feature::t))
  (declare-type make-__feature (@constructor __feature::t))
  (declare-type __feature-e (@accessor __feature::t e #t))
  (declare-type __feature-id (@accessor __feature::t id #t))
  (declare-type __feature-e-set! (@mutator __feature::t e #t))
  (declare-type __feature-id-set! (@mutator __feature::t id #t))
  (declare-type &__feature-e (@accessor __feature::t e #f))
  (declare-type &__feature-id (@accessor __feature::t id #f))
  (declare-type &__feature-e-set! (@mutator __feature::t e #f))
  (declare-type &__feature-id-set! (@mutator __feature::t id #f))
  (declare-type
   __module::t
   (@class gerbil/runtime/eval#__module::t
           (__context::t)
           (__context::t)
           (id path import export)
           (t ns super table id path import export)
           #f
           #t
           #f
           #f))
  (declare-type __module? (@predicate __module::t))
  (declare-type make-__module (@constructor __module::t))
  (declare-type __module-id (@accessor __module::t id #t))
  (declare-type __module-path (@accessor __module::t path #t))
  (declare-type __module-import (@accessor __module::t import #t))
  (declare-type __module-export (@accessor __module::t export #t))
  (declare-type __module-t (@accessor __module::t t #t))
  (declare-type __module-ns (@accessor __module::t ns #t))
  (declare-type __module-super (@accessor __module::t super #t))
  (declare-type __module-table (@accessor __module::t table #t))
  (declare-type __module-id-set! (@mutator __module::t id #t))
  (declare-type __module-path-set! (@mutator __module::t path #t))
  (declare-type __module-import-set! (@mutator __module::t import #t))
  (declare-type __module-export-set! (@mutator __module::t export #t))
  (declare-type __module-t-set! (@mutator __module::t t #t))
  (declare-type __module-ns-set! (@mutator __module::t ns #t))
  (declare-type __module-super-set! (@mutator __module::t super #t))
  (declare-type __module-table-set! (@mutator __module::t table #t))
  (declare-type &__module-id (@accessor __module::t id #f))
  (declare-type &__module-path (@accessor __module::t path #f))
  (declare-type &__module-import (@accessor __module::t import #f))
  (declare-type &__module-export (@accessor __module::t export #f))
  (declare-type &__module-t (@accessor __module::t t #f))
  (declare-type &__module-ns (@accessor __module::t ns #f))
  (declare-type &__module-super (@accessor __module::t super #f))
  (declare-type &__module-table (@accessor __module::t table #f))
  (declare-type &__module-id-set! (@mutator __module::t id #f))
  (declare-type &__module-path-set! (@mutator __module::t path #f))
  (declare-type &__module-import-set! (@mutator __module::t import #f))
  (declare-type &__module-export-set! (@mutator __module::t export #f))
  (declare-type &__module-t-set! (@mutator __module::t t #f))
  (declare-type &__module-ns-set! (@mutator __module::t ns #f))
  (declare-type &__module-super-set! (@mutator __module::t super #f))
  (declare-type &__module-table-set! (@mutator __module::t table #f))
  (declare-type __core-resolve__% (@lambda 2 #f))
  (declare-type __core-resolve__0 (@lambda 1 #f))
  (declare-type
   __core-resolve
   (@case-lambda (1 __core-resolve__0) (2 __core-resolve__%)))
  (declare-type __core-bound-id?__% (@lambda 2 #f))
  (declare-type __core-bound-id?__0 (@lambda 1 #f))
  (declare-type
   __core-bound-id?
   (@case-lambda (1 __core-bound-id?__0) (2 __core-bound-id?__%)))
  (declare-type __core-bind-runtime!__% (@lambda 3 #f))
  (declare-type __core-bind-runtime!__0 (@lambda 2 #f))
  (declare-type
   __core-bind-runtime!
   (@case-lambda (2 __core-bind-runtime!__0) (3 __core-bind-runtime!__%)))
  (declare-type __core-bind-syntax!__% (@lambda 3 #f))
  (declare-type __core-bind-syntax!__0 (@lambda 2 #f))
  (declare-type
   __core-bind-syntax!
   (@case-lambda (2 __core-bind-syntax!__0) (3 __core-bind-syntax!__%)))
  (declare-type __core-bind-macro! (@lambda 2 #f))
  (declare-type __core-bind-special-form! (@lambda 2 #f))
  (declare-type __core-bind-user-syntax!__% (@lambda 3 #f))
  (declare-type __core-bind-user-syntax!__0 (@lambda 2 #f))
  (declare-type
   __core-bind-user-syntax!
   (@case-lambda
    (2 __core-bind-user-syntax!__0)
    (3 __core-bind-user-syntax!__%)))
  (declare-type make-__runtime-id__% (@lambda 2 #f))
  (declare-type make-__runtime-id__0 (@lambda 1 #f))
  (declare-type
   make-__runtime-id
   (@case-lambda (1 make-__runtime-id__0) (2 make-__runtime-id__%)))
  (declare-type make-__context-local__% (@lambda 1 #f))
  (declare-type make-__context-local__0 (@lambda 0 #f))
  (declare-type
   make-__context-local
   (@case-lambda (0 make-__context-local__0) (1 make-__context-local__%)))
  (declare-type make-__context-module__% (@lambda 4 #f))
  (declare-type make-__context-module__0 (@lambda 3 #f))
  (declare-type
   make-__context-module
   (@case-lambda (3 make-__context-module__0) (4 make-__context-module__%)))
  (declare-type __SRC__% (@lambda 2 #f))
  (declare-type __SRC__0 (@lambda 1 #f))
  (declare-type __SRC (@case-lambda (1 __SRC__0) (2 __SRC__%)))
  (declare-type __locat (@lambda 1 #f))
  (declare-type __check-values (@lambda 2 #f))
  (declare-type __compile (@lambda 1 #f))
  (declare-type __compile-error__% (@lambda 2 #f))
  (declare-type __compile-error__0 (@lambda 1 #f))
  (declare-type
   __compile-error
   (@case-lambda (1 __compile-error__0) (2 __compile-error__%)))
  (declare-type __compile-ignore% (@lambda 1 #f))
  (declare-type __compile-begin% (@lambda 1 #f))
  (declare-type __compile-begin-foreign% (@lambda 1 #f))
  (declare-type __compile-import% (@lambda 1 #f))
  (declare-type __compile-begin-annotation% (@lambda 1 #f))
  (declare-type __compile-define-values% (@lambda 1 #f))
  (declare-type __compile-head-id (@lambda 1 #f))
  (declare-type __compile-lambda-head (@lambda 1 #f))
  (declare-type __compile-lambda% (@lambda 1 #f))
  (declare-type __compile-case-lambda% (@lambda 1 #f))
  (declare-type __compile-let-form (@lambda 3 #f))
  (declare-type __compile-let-values% (@lambda 1 #f))
  (declare-type __compile-letrec-values% (@lambda 1 #f))
  (declare-type __compile-letrec*-values% (@lambda 1 #f))
  (declare-type __compile-call% (@lambda 1 #f))
  (declare-type __compile-ref% (@lambda 1 #f))
  (declare-type __compile-setq% (@lambda 1 #f))
  (declare-type __compile-if% (@lambda 1 #f))
  (declare-type __compile-quote% (@lambda 1 #f))
  (declare-type __compile-quote-syntax% (@lambda 1 #f)))
