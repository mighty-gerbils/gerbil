prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-type gxc#make-bound-identifier-table (@lambda 0 #f))
  (declare-type gxc#compile-e (@lambda (1) #f))
  (declare-type gxc#apply-collect-bindings (@lambda (1) #f))
  (declare-type gxc#apply-lift-modules (@lambda (1) #f))
  (declare-type gxc#apply-find-runtime-code (@lambda (1) #f))
  (declare-type gxc#apply-find-lambda-expression (@lambda (1) #f))
  (declare-type gxc#apply-count-values (@lambda (1) #f))
  (declare-type gxc#apply-generate-loader (@lambda (1) #f))
  (declare-type gxc#apply-generate-runtime (@lambda (1) #f))
  (declare-type gxc#apply-generate-runtime-phi (@lambda (1) #f))
  (declare-type gxc#apply-collect-expression-refs (@lambda (1) #f))
  (declare-type gxc#apply-generate-meta (@lambda (1) #f))
  (declare-type gxc#apply-generate-meta-phi (@lambda (1) #f))
  (declare-type gxc#collect-begin% (@lambda (1) #f))
  (declare-type gxc#collect-begin-syntax% (@lambda (1) #f))
  (declare-type gxc#collect-module% (@lambda (1) #f))
  (declare-type gxc#collect-begin-annotation% (@lambda (1) #f))
  (declare-type gxc#collect-define-values% (@lambda (1) #f))
  (declare-type gxc#collect-define-syntax% (@lambda (1) #f))
  (declare-type gxc#collect-body-lambda% (@lambda (1) #f))
  (declare-type gxc#collect-body-case-lambda% (@lambda (1) #f))
  (declare-type gxc#collect-body-let-values% (@lambda (1) #f))
  (declare-type gxc#collect-body-setq% (@lambda (1) #f))
  (declare-type gxc#collect-operands (@lambda (1) #f))
  (declare-type gxc#collect-bindings-define-values% (@lambda 1 #f))
  (declare-type gxc#collect-bindings-define-syntax% (@lambda 1 #f))
  (declare-type gxc#lift-modules-module% (@lambda 2 #f))
  (declare-type gxc#current-compile-decls-unsafe? (@lambda 0 #f))
  (declare-type gxc#add-module-binding! (@lambda 2 #f))
  (declare-type gxc#runtime-identifier=? (@lambda 2 #f))
  (declare-type gxc#generate-runtime-binding-id (@lambda 1 #f))
  (declare-type gxc#generate-runtime-binding-id* (@lambda 1 #f))
  (declare-type gxc#generate-runtime-gensym-reference__% (@lambda 2 #f))
  (declare-type gxc#generate-runtime-gensym-reference__0 (@lambda 1 #f))
  (declare-type
   gxc#generate-runtime-gensym-reference
   (@case-lambda
    (1 gxc#generate-runtime-gensym-reference__0)
    (2 gxc#generate-runtime-gensym-reference__%)))
  (declare-type gxc#generate-runtime-identifier (@lambda 1 #f))
  (declare-type gxc#generate-runtime-identifier-key (@lambda 1 #f))
  (declare-type gxc#generate-runtime-temporary__% (@lambda 1 #f))
  (declare-type gxc#generate-runtime-temporary__0 (@lambda 0 #f))
  (declare-type
   gxc#generate-runtime-temporary
   (@case-lambda
    (0 gxc#generate-runtime-temporary__0)
    (1 gxc#generate-runtime-temporary__%)))
  (declare-type gxc#generate-runtime-empty (@lambda 1 #f))
  (declare-type gxc#generate-runtime-begin% (@lambda 1 #f))
  (declare-type gxc#generate-runtime-begin-foreign% (@lambda 1 #f))
  (declare-type gxc#generate-runtime-begin-annotation% (@lambda 1 #f))
  (declare-type gxc#generate-runtime-declare% (@lambda 1 #f))
  (declare-type gxc#generate-runtime-define-values% (@lambda 1 #f))
  (declare-type gxc#generate-runtime-check-values (@lambda 3 #f))
  (declare-type gxc#generate-runtime-values-count (@lambda 1 #f))
  (declare-type gxc#generate-runtime-values-ref (@lambda 3 #f))
  (declare-type gxc#generate-runtime-values->list (@lambda 2 #f))
  (declare-type gxc#generate-runtime-lambda% (@lambda 1 #f))
  (declare-type gxc#generate-runtime-lambda-form (@lambda 2 #f))
  (declare-type gxc#generate-runtime-lambda-head (@lambda 1 #f))
  (declare-type gxc#generate-runtime-case-lambda% (@lambda 1 #f))
  (declare-type gxc#generate-runtime-let-values%__% (@lambda 2 #f))
  (declare-type gxc#generate-runtime-let-values%__0 (@lambda 1 #f))
  (declare-type
   gxc#generate-runtime-let-values%
   (@case-lambda
    (1 gxc#generate-runtime-let-values%__0)
    (2 gxc#generate-runtime-let-values%__%)))
  (declare-type gxc#generate-runtime-let-values-bind (@lambda 2 #f))
  (declare-type gxc#generate-runtime-letrec-values%__% (@lambda 2 #f))
  (declare-type gxc#generate-runtime-letrec-values%__0 (@lambda 1 #f))
  (declare-type
   gxc#generate-runtime-letrec-values%
   (@case-lambda
    (1 gxc#generate-runtime-letrec-values%__0)
    (2 gxc#generate-runtime-letrec-values%__%)))
  (declare-type gxc#generate-runtime-letrec*-values% (@lambda 1 #f))
  (declare-type gxc#generate-runtime-simple-let? (@lambda 1 #f))
  (declare-type gxc#generate-runtime-simple-let (@lambda 4 #f))
  (declare-type gxc#generate-runtime-quote% (@lambda 1 #f))
  (declare-type gxc#generate-runtime-call% (@lambda 1 #f))
  (declare-type gxc#generate-runtime-if% (@lambda 1 #f))
  (declare-type gxc#generate-runtime-ref% (@lambda 1 #f))
  (declare-type gxc#generate-runtime-setq% (@lambda 1 #f))
  (declare-type gxc#generate-runtime-struct-instancep% (@lambda 1 #f))
  (declare-type gxc#generate-runtime-struct-direct-instancep% (@lambda 1 #f))
  (declare-type gxc#generate-runtime-struct-ref% (@lambda 1 #f))
  (declare-type gxc#generate-runtime-struct-setq% (@lambda 1 #f))
  (declare-type gxc#generate-runtime-struct-direct-ref% (@lambda 1 #f))
  (declare-type gxc#generate-runtime-struct-direct-setq% (@lambda 1 #f))
  (declare-type gxc#generate-runtime-struct-unchecked-ref% (@lambda 1 #f))
  (declare-type gxc#generate-runtime-struct-unchecked-setq% (@lambda 1 #f))
  (declare-type gxc#generate-runtime-loader-import% (@lambda 1 #f))
  (declare-type gxc#generate-runtime-quote-syntax% (@lambda 1 #f))
  (declare-type gxc#generate-runtime-phi-define-runtime% (@lambda 1 #f))
  (declare-type gxc#generate-meta-begin% (@lambda 2 #f))
  (declare-type gxc#generate-meta-begin-syntax% (@lambda 2 #f))
  (declare-type gxc#generate-meta-module% (@lambda 2 #f))
  (declare-type gxc#generate-meta-import-path (@lambda 2 #f))
  (declare-type gxc#current-context-chain (@lambda 0 #f))
  (declare-type gxc#generate-meta-import% (@lambda 2 #f))
  (declare-type gxc#generate-meta-export% (@lambda 2 #f))
  (declare-type gxc#generate-meta-provide% (@lambda 2 #f))
  (declare-type gxc#generate-meta-extern% (@lambda 2 #f))
  (declare-type gxc#generate-meta-define-values% (@lambda 2 #f))
  (declare-type gxc#generate-meta-define-syntax% (@lambda 2 #f))
  (declare-type gxc#generate-meta-define-alias% (@lambda 2 #f))
  (declare-type gxc#generate-meta-phi-define-values% (@lambda 2 #f))
  (declare-type gxc#generate-meta-phi-expr (@lambda 2 #f))
  (declare-type
   gxc#meta-state::t
   (@struct-type gxc#meta-state::t #f 4 :init! ()))
  (declare-type gxc#meta-state? (@struct-pred gxc#meta-state::t))
  (declare-type gxc#make-meta-state (@struct-cons gxc#meta-state::t))
  (declare-type gxc#meta-state-src (@struct-getf gxc#meta-state::t 0 #f))
  (declare-type gxc#meta-state-n (@struct-getf gxc#meta-state::t 1 #f))
  (declare-type gxc#meta-state-open (@struct-getf gxc#meta-state::t 2 #f))
  (declare-type gxc#meta-state-blocks (@struct-getf gxc#meta-state::t 3 #f))
  (declare-type gxc#meta-state-src-set! (@struct-setf gxc#meta-state::t 0 #f))
  (declare-type gxc#meta-state-n-set! (@struct-setf gxc#meta-state::t 1 #f))
  (declare-type gxc#meta-state-open-set! (@struct-setf gxc#meta-state::t 2 #f))
  (declare-type
   gxc#meta-state-blocks-set!
   (@struct-setf gxc#meta-state::t 3 #f))
  (declare-type gxc#meta-state:::init! (@lambda 2 #f))
  (declare-method gxc#meta-state::t :init! gxc#meta-state:::init! #f)
  (declare-type
   gxc#meta-state-block::t
   (@struct-type gxc#meta-state-block::t #f 4 #f ()))
  (declare-type gxc#meta-state-block? (@struct-pred gxc#meta-state-block::t))
  (declare-type
   gxc#make-meta-state-block
   (@struct-cons gxc#meta-state-block::t))
  (declare-type
   gxc#meta-state-block-ctx
   (@struct-getf gxc#meta-state-block::t 0 #f))
  (declare-type
   gxc#meta-state-block-phi
   (@struct-getf gxc#meta-state-block::t 1 #f))
  (declare-type
   gxc#meta-state-block-n
   (@struct-getf gxc#meta-state-block::t 2 #f))
  (declare-type
   gxc#meta-state-block-code
   (@struct-getf gxc#meta-state-block::t 3 #f))
  (declare-type
   gxc#meta-state-block-ctx-set!
   (@struct-setf gxc#meta-state-block::t 0 #f))
  (declare-type
   gxc#meta-state-block-phi-set!
   (@struct-setf gxc#meta-state-block::t 1 #f))
  (declare-type
   gxc#meta-state-block-n-set!
   (@struct-setf gxc#meta-state-block::t 2 #f))
  (declare-type
   gxc#meta-state-block-code-set!
   (@struct-setf gxc#meta-state-block::t 3 #f))
  (declare-type gxc#meta-state-begin-phi! (@lambda 2 #f))
  (declare-type gxc#meta-state-add-phi! (@lambda 3 #f))
  (declare-type gxc#meta-state-end-phi! (@lambda 1 #f))
  (declare-type gxc#meta-state-end! (@lambda 1 #f))
  (declare-type gxc#collect-expression-refs (@lambda 1 #f))
  (declare-type gxc#collect-refs-ref% (@lambda 2 #f))
  (declare-type gxc#collect-refs-setq% (@lambda 2 #f))
  (declare-type gxc#find-runtime-begin% (@lambda 1 #f))
  (declare-type gxc#find-lambda-expression-begin% (@lambda 1 #f))
  (declare-type gxc#find-lambda-expression-begin-annotation% (@lambda 1 #f))
  (declare-type gxc#find-lambda-expression-let-values% (@lambda 1 #f))
  (declare-type gxc#count-values-single% (@lambda 1 #f))
  (declare-type gxc#count-values-begin% (@lambda 1 #f))
  (declare-type gxc#count-values-begin-annotation% (@lambda 1 #f))
  (declare-type gxc#count-values-let-values% (@lambda 1 #f))
  (declare-type gxc#count-values-call% (@lambda 1 #f))
  (declare-type gxc#count-values-if% (@lambda 1 #f)))
