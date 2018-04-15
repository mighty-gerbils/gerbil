prelude: :gerbil/compiler/ssxi
package: gerbil/expander

(begin
  (declare-type gx#core-expand-begin% (@lambda 1 #f))
  (declare-type gx#core-expand-begin-syntax% (@lambda 1 #f))
  (declare-type gx#core-expand-begin-foreign% (@lambda 1 #f))
  (declare-type gx#core-expand-begin-module% (@lambda 1 #f))
  (declare-type gx#core-expand-begin-annotation% (@lambda 1 #f))
  (declare-type gx#core-expand-local-block (@lambda 2 #f))
  (declare-type gx#core-expand-declare% (@lambda 1 #f))
  (declare-type gx#core-expand-extern% (@lambda 1 #f))
  (declare-type gx#core-expand-define-values% (@lambda 1 #f))
  (declare-type gx#core-expand-define-runtime% (@lambda 1 #f))
  (declare-type gx#core-expand-define-syntax% (@lambda 1 #f))
  (declare-type gx#core-expand-define-alias% (@lambda 1 #f))
  (declare-type gx#core-expand-lambda%__% (@lambda 2 #f))
  (declare-type gx#core-expand-lambda%__0 (@lambda 1 #f))
  (declare-type
   gx#core-expand-lambda%
   (@case-lambda (1 gx#core-expand-lambda%__0) (2 gx#core-expand-lambda%__%)))
  (declare-type gx#core-expand-case-lambda% (@lambda 1 #f))
  (declare-type gx#core-expand-let-values% (@lambda 1 #f))
  (declare-type gx#core-expand-letrec-values%__% (@lambda 2 #f))
  (declare-type gx#core-expand-letrec-values%__0 (@lambda 1 #f))
  (declare-type
   gx#core-expand-letrec-values%
   (@case-lambda
    (1 gx#core-expand-letrec-values%__0)
    (2 gx#core-expand-letrec-values%__%)))
  (declare-type gx#core-expand-letrec*-values% (@lambda 1 #f))
  (declare-type gx#core-expand-let-bind? (@lambda 1 #f))
  (declare-type gx#core-expand-let-bind-expression (@lambda 1 #f))
  (declare-type gx#core-expand-let-bind-values! (@lambda 1 #f))
  (declare-type gx#core-expand-let-bind-quote (@lambda 2 #f))
  (declare-type gx#core-expand-let-syntax% (@lambda 1 #f))
  (declare-type gx#core-expand-letrec-syntax% (@lambda 1 #f))
  (declare-type gx#core-expand-let-bind-syntax? (@lambda 1 #f))
  (declare-type gx#core-expand-let-bind-syntax-expression (@lambda 1 #f))
  (declare-type gx#core-expand-let-bind-syntax!__% (@lambda 3 #f))
  (declare-type gx#core-expand-let-bind-syntax!__0 (@lambda 2 #f))
  (declare-type
   gx#core-expand-let-bind-syntax!
   (@case-lambda
    (2 gx#core-expand-let-bind-syntax!__0)
    (3 gx#core-expand-let-bind-syntax!__%)))
  (declare-type gx#core-expand-expression% (@lambda 1 #f))
  (declare-type gx#core-expand-quote% (@lambda 1 #f))
  (declare-type gx#core-expand-quote-syntax% (@lambda 1 #f))
  (declare-type gx#core-expand-call% (@lambda 1 #f))
  (declare-type gx#core-expand-if% (@lambda 1 #f))
  (declare-type gx#core-expand-ref% (@lambda 1 #f))
  (declare-type gx#core-expand-setq% (@lambda 1 #f))
  (declare-type gx#macro-expand-extern (@lambda 1 #f))
  (declare-type gx#macro-expand-define-values (@lambda 1 #f))
  (declare-type gx#macro-expand-define-syntax (@lambda 1 #f))
  (declare-type gx#macro-expand-define-alias (@lambda 1 #f))
  (declare-type gx#macro-expand-lambda% (@lambda 1 #f))
  (declare-type gx#macro-expand-case-lambda (@lambda 1 #f))
  (declare-type gx#macro-expand-let-values__% (@lambda 2 #f))
  (declare-type gx#macro-expand-let-values__0 (@lambda 1 #f))
  (declare-type
   gx#macro-expand-let-values
   (@case-lambda
    (1 gx#macro-expand-let-values__0)
    (2 gx#macro-expand-let-values__%)))
  (declare-type gx#macro-expand-letrec-values (@lambda 1 #f))
  (declare-type gx#macro-expand-letrec*-values (@lambda 1 #f))
  (declare-type gx#macro-expand-if (@lambda 1 #f))
  (declare-type gx#free-identifier=? (@lambda 2 #f))
  (declare-type gx#bound-identifier=? (@lambda 2 #f))
  (declare-type gx#underscore? (@lambda 1 #f))
  (declare-type gx#ellipsis? (@lambda 1 #f))
  (declare-type gx#user-binding-identifier (@lambda 1 #f))
  (declare-type gx#check-duplicate-identifiers__% (@lambda 2 #f))
  (declare-type gx#check-duplicate-identifiers__0 (@lambda 1 #f))
  (declare-type
   gx#check-duplicate-identifiers
   (@case-lambda
    (1 gx#check-duplicate-identifiers__0)
    (2 gx#check-duplicate-identifiers__%)))
  (declare-type gx#core-bind-values? (@lambda 1 #f))
  (declare-type gx#core-bind-values!__% (@lambda 4 #f))
  (declare-type gx#core-bind-values!__0 (@lambda 1 #f))
  (declare-type gx#core-bind-values!__1 (@lambda 2 #f))
  (declare-type gx#core-bind-values!__2 (@lambda 3 #f))
  (declare-type
   gx#core-bind-values!
   (@case-lambda
    (1 gx#core-bind-values!__0)
    (2 gx#core-bind-values!__1)
    (3 gx#core-bind-values!__2)
    (4 gx#core-bind-values!__%)))
  (declare-type gx#core-quote-bind-values (@lambda 1 #f))
  (declare-type gx#core-runtime-ref? (@lambda 1 #f))
  (declare-type gx#core-quote-runtime-ref (@lambda 2 #f))
  (declare-type gx#core-bind-runtime!__% (@lambda 4 #f))
  (declare-type gx#core-bind-runtime!__0 (@lambda 1 #f))
  (declare-type gx#core-bind-runtime!__1 (@lambda 2 #f))
  (declare-type gx#core-bind-runtime!__2 (@lambda 3 #f))
  (declare-type
   gx#core-bind-runtime!
   (@case-lambda
    (1 gx#core-bind-runtime!__0)
    (2 gx#core-bind-runtime!__1)
    (3 gx#core-bind-runtime!__2)
    (4 gx#core-bind-runtime!__%)))
  (declare-type gx#core-bind-runtime-reference!__% (@lambda 5 #f))
  (declare-type gx#core-bind-runtime-reference!__0 (@lambda 2 #f))
  (declare-type gx#core-bind-runtime-reference!__1 (@lambda 3 #f))
  (declare-type gx#core-bind-runtime-reference!__2 (@lambda 4 #f))
  (declare-type
   gx#core-bind-runtime-reference!
   (@case-lambda
    (2 gx#core-bind-runtime-reference!__0)
    (3 gx#core-bind-runtime-reference!__1)
    (4 gx#core-bind-runtime-reference!__2)
    (5 gx#core-bind-runtime-reference!__%)))
  (declare-type gx#core-bind-extern!__% (@lambda 5 #f))
  (declare-type gx#core-bind-extern!__0 (@lambda 2 #f))
  (declare-type gx#core-bind-extern!__1 (@lambda 3 #f))
  (declare-type gx#core-bind-extern!__2 (@lambda 4 #f))
  (declare-type
   gx#core-bind-extern!
   (@case-lambda
    (2 gx#core-bind-extern!__0)
    (3 gx#core-bind-extern!__1)
    (4 gx#core-bind-extern!__2)
    (5 gx#core-bind-extern!__%)))
  (declare-type gx#core-bind-syntax!__% (@lambda 5 #f))
  (declare-type gx#core-bind-syntax!__0 (@lambda 2 #f))
  (declare-type gx#core-bind-syntax!__1 (@lambda 3 #f))
  (declare-type gx#core-bind-syntax!__2 (@lambda 4 #f))
  (declare-type
   gx#core-bind-syntax!
   (@case-lambda
    (2 gx#core-bind-syntax!__0)
    (3 gx#core-bind-syntax!__1)
    (4 gx#core-bind-syntax!__2)
    (5 gx#core-bind-syntax!__%)))
  (declare-type gx#core-bind-root-syntax!__% (@lambda 3 #f))
  (declare-type gx#core-bind-root-syntax!__0 (@lambda 2 #f))
  (declare-type
   gx#core-bind-root-syntax!
   (@case-lambda
    (2 gx#core-bind-root-syntax!__0)
    (3 gx#core-bind-root-syntax!__%)))
  (declare-type gx#core-bind-alias!__% (@lambda 5 #f))
  (declare-type gx#core-bind-alias!__0 (@lambda 2 #f))
  (declare-type gx#core-bind-alias!__1 (@lambda 3 #f))
  (declare-type gx#core-bind-alias!__2 (@lambda 4 #f))
  (declare-type
   gx#core-bind-alias!
   (@case-lambda
    (2 gx#core-bind-alias!__0)
    (3 gx#core-bind-alias!__1)
    (4 gx#core-bind-alias!__2)
    (5 gx#core-bind-alias!__%)))
  (declare-type gx#make-binding-id__% (@lambda 4 #f))
  (declare-type gx#make-binding-id__0 (@lambda 1 #f))
  (declare-type gx#make-binding-id__1 (@lambda 2 #f))
  (declare-type gx#make-binding-id__2 (@lambda 3 #f))
  (declare-type
   gx#make-binding-id
   (@case-lambda
    (1 gx#make-binding-id__0)
    (2 gx#make-binding-id__1)
    (3 gx#make-binding-id__2)
    (4 gx#make-binding-id__%))))
