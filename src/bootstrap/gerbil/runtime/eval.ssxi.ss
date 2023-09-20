prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type
   __context::t
   (@struct-type gerbil/runtime/eval#__context::t #f 4 #f ()))
  (declare-type __context? (@struct-pred __context::t))
  (declare-type make-__context (@struct-cons __context::t))
  (declare-type __context-t (@struct-getf __context::t 0 #f))
  (declare-type __context-ns (@struct-getf __context::t 1 #f))
  (declare-type __context-super (@struct-getf __context::t 2 #f))
  (declare-type __context-table (@struct-getf __context::t 3 #f))
  (declare-type __context-t-set! (@struct-setf __context::t 0 #f))
  (declare-type __context-ns-set! (@struct-setf __context::t 1 #f))
  (declare-type __context-super-set! (@struct-setf __context::t 2 #f))
  (declare-type __context-table-set! (@struct-setf __context::t 3 #f))
  (declare-type &__context-t (@struct-getf __context::t 0 #t))
  (declare-type &__context-ns (@struct-getf __context::t 1 #t))
  (declare-type &__context-super (@struct-getf __context::t 2 #t))
  (declare-type &__context-table (@struct-getf __context::t 3 #t))
  (declare-type &__context-t-set! (@struct-setf __context::t 0 #t))
  (declare-type &__context-ns-set! (@struct-setf __context::t 1 #t))
  (declare-type &__context-super-set! (@struct-setf __context::t 2 #t))
  (declare-type &__context-table-set! (@struct-setf __context::t 3 #t))
  (declare-type
   __runtime::t
   (@struct-type gerbil/runtime/eval#__runtime::t #f 1 #f ()))
  (declare-type __runtime? (@struct-pred __runtime::t))
  (declare-type make-__runtime (@struct-cons __runtime::t))
  (declare-type __runtime-id (@struct-getf __runtime::t 0 #f))
  (declare-type __runtime-id-set! (@struct-setf __runtime::t 0 #f))
  (declare-type &__runtime-id (@struct-getf __runtime::t 0 #t))
  (declare-type &__runtime-id-set! (@struct-setf __runtime::t 0 #t))
  (declare-type
   __syntax::t
   (@struct-type gerbil/runtime/eval#__syntax::t #f 2 #f ()))
  (declare-type __syntax? (@struct-pred __syntax::t))
  (declare-type make-__syntax (@struct-cons __syntax::t))
  (declare-type __syntax-e (@struct-getf __syntax::t 0 #f))
  (declare-type __syntax-id (@struct-getf __syntax::t 1 #f))
  (declare-type __syntax-e-set! (@struct-setf __syntax::t 0 #f))
  (declare-type __syntax-id-set! (@struct-setf __syntax::t 1 #f))
  (declare-type &__syntax-e (@struct-getf __syntax::t 0 #t))
  (declare-type &__syntax-id (@struct-getf __syntax::t 1 #t))
  (declare-type &__syntax-e-set! (@struct-setf __syntax::t 0 #t))
  (declare-type &__syntax-id-set! (@struct-setf __syntax::t 1 #t))
  (declare-type
   __macro::t
   (@struct-type gerbil/runtime/eval#__macro::t __syntax::t 0 #f ()))
  (declare-type __macro? (@struct-pred __macro::t))
  (declare-type make-__macro (@struct-cons __macro::t))
  (declare-type
   __special-form::t
   (@struct-type gerbil/runtime/eval#__special-form::t __macro::t 0 #f ()))
  (declare-type __special-form? (@struct-pred __special-form::t))
  (declare-type make-__special-form (@struct-cons __special-form::t))
  (declare-type
   __core-form::t
   (@struct-type gerbil/runtime/eval#__core-form::t __syntax::t 0 #f ()))
  (declare-type __core-form? (@struct-pred __core-form::t))
  (declare-type make-__core-form (@struct-cons __core-form::t))
  (declare-type
   __core-expression::t
   (@struct-type
    gerbil/runtime/eval#__core-expression::t
    __core-form::t
    0
    #f
    ()))
  (declare-type __core-expression? (@struct-pred __core-expression::t))
  (declare-type make-__core-expression (@struct-cons __core-expression::t))
  (declare-type
   __core-special-form::t
   (@struct-type
    gerbil/runtime/eval#__core-special-form::t
    __core-form::t
    0
    #f
    ()))
  (declare-type __core-special-form? (@struct-pred __core-special-form::t))
  (declare-type make-__core-special-form (@struct-cons __core-special-form::t))
  (declare-type
   __struct-info::t
   (@struct-type gerbil/runtime/eval#__struct-info::t __syntax::t 0 #f ()))
  (declare-type __struct-info? (@struct-pred __struct-info::t))
  (declare-type make-__struct-info (@struct-cons __struct-info::t))
  (declare-type
   __feature::t
   (@struct-type gerbil/runtime/eval#__feature::t __syntax::t 0 #f ()))
  (declare-type __feature? (@struct-pred __feature::t))
  (declare-type make-__feature (@struct-cons __feature::t))
  (declare-type
   __module::t
   (@struct-type gerbil/runtime/eval#__module::t __context::t 4 #f ()))
  (declare-type __module? (@struct-pred __module::t))
  (declare-type make-__module (@struct-cons __module::t))
  (declare-type __module-id (@struct-getf __module::t 0 #f))
  (declare-type __module-path (@struct-getf __module::t 1 #f))
  (declare-type __module-import (@struct-getf __module::t 2 #f))
  (declare-type __module-export (@struct-getf __module::t 3 #f))
  (declare-type __module-id-set! (@struct-setf __module::t 0 #f))
  (declare-type __module-path-set! (@struct-setf __module::t 1 #f))
  (declare-type __module-import-set! (@struct-setf __module::t 2 #f))
  (declare-type __module-export-set! (@struct-setf __module::t 3 #f))
  (declare-type &__module-id (@struct-getf __module::t 0 #t))
  (declare-type &__module-path (@struct-getf __module::t 1 #t))
  (declare-type &__module-import (@struct-getf __module::t 2 #t))
  (declare-type &__module-export (@struct-getf __module::t 3 #t))
  (declare-type &__module-id-set! (@struct-setf __module::t 0 #t))
  (declare-type &__module-path-set! (@struct-setf __module::t 1 #t))
  (declare-type &__module-import-set! (@struct-setf __module::t 2 #t))
  (declare-type &__module-export-set! (@struct-setf __module::t 3 #t))
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
