prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-type gxc#make-bound-identifier-table (@lambda 0 #f))
  (declare-type
   gxc#::collect-bindings::t
   (@class gxc#::collect-bindings::t
           (gxc#::void::t)
           (gxc#::void::t gxc#::void-special-form::t gxc#::void-expression::t)
           ()
           ()
           #f
           #f
           #t
           #f
           #f
           #f))
  (declare-type gxc#::collect-bindings? (@predicate gxc#::collect-bindings::t))
  (declare-type
   gxc#make-::collect-bindings
   (@constructor gxc#::collect-bindings::t))
  (declare-type gxc#apply-collect-bindings (@lambda 1 #f))
  (declare-type
   gxc#::lift-modules::t
   (@class gxc#::lift-modules::t
           (gxc#::void::t)
           (gxc#::void::t gxc#::void-special-form::t gxc#::void-expression::t)
           (modules)
           (modules)
           #f
           #f
           #t
           #f
           #f
           #f))
  (declare-type gxc#::lift-modules? (@predicate gxc#::lift-modules::t))
  (declare-type gxc#make-::lift-modules (@constructor gxc#::lift-modules::t))
  (declare-type
   gxc#::lift-modules-modules
   (@accessor gxc#::lift-modules::t modules #t))
  (declare-type
   gxc#::lift-modules-modules-set!
   (@mutator gxc#::lift-modules::t modules #t))
  (declare-type
   gxc#&::lift-modules-modules
   (@accessor gxc#::lift-modules::t modules #f))
  (declare-type
   gxc#&::lift-modules-modules-set!
   (@mutator gxc#::lift-modules::t modules #f))
  (declare-type gxc#apply-lift-modules__% (@lambda 3 #f))
  (declare-type gxc#apply-lift-modules__@ (@lambda (1) #f))
  (declare-type
   gxc#apply-lift-modules
   (@kw-lambda (modules:) gxc#apply-lift-modules__@))
  (declare-type
   gxc#::find-runtime-code::t
   (@class gxc#::find-runtime-code::t () () () () #f #f #t #f #f #f))
  (declare-type
   gxc#::find-runtime-code?
   (@predicate gxc#::find-runtime-code::t))
  (declare-type
   gxc#make-::find-runtime-code
   (@constructor gxc#::find-runtime-code::t))
  (declare-type gxc#apply-find-runtime-code (@lambda 1 #f))
  (declare-type
   gxc#::find-lambda-expression::t
   (@class gxc#::find-lambda-expression::t
           (gxc#::false::t)
           (gxc#::false::t
            gxc#::false-special-form::t
            gxc#::false-expression::t)
           ()
           ()
           #f
           #f
           #t
           #f
           #f
           #f))
  (declare-type
   gxc#::find-lambda-expression?
   (@predicate gxc#::find-lambda-expression::t))
  (declare-type
   gxc#make-::find-lambda-expression
   (@constructor gxc#::find-lambda-expression::t))
  (declare-type gxc#apply-find-lambda-expression (@lambda 1 #f))
  (declare-type
   gxc#::count-values::t
   (@class gxc#::count-values::t
           (gxc#::false-expression::t)
           (gxc#::false-expression::t)
           ()
           ()
           #f
           #f
           #t
           #f
           #f
           #f))
  (declare-type gxc#::count-values? (@predicate gxc#::count-values::t))
  (declare-type gxc#make-::count-values (@constructor gxc#::count-values::t))
  (declare-type gxc#apply-count-values (@lambda 1 #f))
  (declare-type
   gxc#::generate-runtime-empty::t
   (@class gxc#::generate-runtime-empty::t () () () () #f #f #f #f #f #f))
  (declare-type
   gxc#::generate-runtime-empty?
   (@predicate gxc#::generate-runtime-empty::t))
  (declare-type
   gxc#make-::generate-runtime-empty
   (@constructor gxc#::generate-runtime-empty::t))
  (declare-type
   gxc#::generate-loader::t
   (@class gxc#::generate-loader::t
           (gxc#::generate-runtime-empty::t)
           (gxc#::generate-runtime-empty::t)
           ()
           ()
           #f
           #f
           #t
           #f
           #f
           #f))
  (declare-type gxc#::generate-loader? (@predicate gxc#::generate-loader::t))
  (declare-type
   gxc#make-::generate-loader
   (@constructor gxc#::generate-loader::t))
  (declare-type gxc#apply-generate-loader (@lambda 1 #f))
  (declare-type
   gxc#::generate-runtime::t
   (@class gxc#::generate-runtime::t
           (gxc#::generate-runtime-empty::t)
           (gxc#::generate-runtime-empty::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type gxc#::generate-runtime? (@predicate gxc#::generate-runtime::t))
  (declare-type
   gxc#make-::generate-runtime
   (@constructor gxc#::generate-runtime::t))
  (declare-type gxc#apply-generate-runtime (@lambda 1 #f))
  (declare-type
   gxc#::generate-runtime-phi::t
   (@class gxc#::generate-runtime-phi::t
           (gxc#::generate-runtime::t)
           (gxc#::generate-runtime::t gxc#::generate-runtime-empty::t)
           ()
           ()
           #f
           #f
           #t
           #f
           #f
           #f))
  (declare-type
   gxc#::generate-runtime-phi?
   (@predicate gxc#::generate-runtime-phi::t))
  (declare-type
   gxc#make-::generate-runtime-phi
   (@constructor gxc#::generate-runtime-phi::t))
  (declare-type gxc#apply-generate-runtime-phi (@lambda 1 #f))
  (declare-type
   gxc#::collect-expression-refs::t
   (@class gxc#::collect-expression-refs::t
           ()
           ()
           (table)
           (table)
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   gxc#::collect-expression-refs?
   (@predicate gxc#::collect-expression-refs::t))
  (declare-type
   gxc#make-::collect-expression-refs
   (@constructor gxc#::collect-expression-refs::t))
  (declare-type
   gxc#::collect-expression-refs-table
   (@accessor gxc#::collect-expression-refs::t table #t))
  (declare-type
   gxc#::collect-expression-refs-table-set!
   (@mutator gxc#::collect-expression-refs::t table #t))
  (declare-type
   gxc#&::collect-expression-refs-table
   (@accessor gxc#::collect-expression-refs::t table #f))
  (declare-type
   gxc#&::collect-expression-refs-table-set!
   (@mutator gxc#::collect-expression-refs::t table #f))
  (declare-type gxc#apply-collect-expression-refs__% (@lambda 3 #f))
  (declare-type gxc#apply-collect-expression-refs__@ (@lambda (1) #f))
  (declare-type
   gxc#apply-collect-expression-refs
   (@kw-lambda (table:) gxc#apply-collect-expression-refs__@))
  (declare-type
   gxc#::generate-meta::t
   (@class gxc#::generate-meta::t
           (gxc#::void-expression::t)
           (gxc#::void-expression::t)
           (state)
           (state)
           #f
           #f
           #t
           #f
           #f
           #f))
  (declare-type gxc#::generate-meta? (@predicate gxc#::generate-meta::t))
  (declare-type gxc#make-::generate-meta (@constructor gxc#::generate-meta::t))
  (declare-type
   gxc#::generate-meta-state
   (@accessor gxc#::generate-meta::t state #t))
  (declare-type
   gxc#::generate-meta-state-set!
   (@mutator gxc#::generate-meta::t state #t))
  (declare-type
   gxc#&::generate-meta-state
   (@accessor gxc#::generate-meta::t state #f))
  (declare-type
   gxc#&::generate-meta-state-set!
   (@mutator gxc#::generate-meta::t state #f))
  (declare-type gxc#apply-generate-meta__% (@lambda 3 #f))
  (declare-type gxc#apply-generate-meta__@ (@lambda (1) #f))
  (declare-type
   gxc#apply-generate-meta
   (@kw-lambda (state:) gxc#apply-generate-meta__@))
  (declare-type
   gxc#::generate-meta-phi::t
   (@class gxc#::generate-meta-phi::t () () (state) (state) #f #f #t #f #f #f))
  (declare-type
   gxc#::generate-meta-phi?
   (@predicate gxc#::generate-meta-phi::t))
  (declare-type
   gxc#make-::generate-meta-phi
   (@constructor gxc#::generate-meta-phi::t))
  (declare-type
   gxc#::generate-meta-phi-state
   (@accessor gxc#::generate-meta-phi::t state #t))
  (declare-type
   gxc#::generate-meta-phi-state-set!
   (@mutator gxc#::generate-meta-phi::t state #t))
  (declare-type
   gxc#&::generate-meta-phi-state
   (@accessor gxc#::generate-meta-phi::t state #f))
  (declare-type
   gxc#&::generate-meta-phi-state-set!
   (@mutator gxc#::generate-meta-phi::t state #f))
  (declare-type gxc#apply-generate-meta-phi__% (@lambda 3 #f))
  (declare-type gxc#apply-generate-meta-phi__@ (@lambda (1) #f))
  (declare-type
   gxc#apply-generate-meta-phi
   (@kw-lambda (state:) gxc#apply-generate-meta-phi__@))
  (declare-type gxc#collect-bindings-define-values% (@lambda 2 #f))
  (declare-type gxc#collect-bindings-define-syntax% (@lambda 2 #f))
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
  (declare-type gxc#generate-runtime-empty (@lambda 2 #f))
  (declare-type gxc#generate-runtime-begin% (@lambda 2 #f))
  (declare-type gxc#generate-runtime-begin-foreign% (@lambda 2 #f))
  (declare-type gxc#generate-runtime-begin-annotation% (@lambda 2 #f))
  (declare-type gxc#generate-runtime-declare% (@lambda 2 #f))
  (declare-type gxc#generate-runtime-define-values% (@lambda 2 #f))
  (declare-type gxc#generate-runtime-check-values (@lambda 3 #f))
  (declare-type gxc#generate-runtime-values-count (@lambda 1 #f))
  (declare-type gxc#generate-runtime-values-ref (@lambda 3 #f))
  (declare-type gxc#generate-runtime-values->list (@lambda 2 #f))
  (declare-type gxc#generate-runtime-lambda% (@lambda 2 #f))
  (declare-type gxc#generate-runtime-lambda-form (@lambda 3 #f))
  (declare-type gxc#generate-runtime-lambda-head (@lambda 1 #f))
  (declare-type gxc#generate-runtime-case-lambda% (@lambda 2 #f))
  (declare-type gxc#generate-runtime-let-values%__% (@lambda 3 #f))
  (declare-type gxc#generate-runtime-let-values%__0 (@lambda 2 #f))
  (declare-type
   gxc#generate-runtime-let-values%
   (@case-lambda
    (2 gxc#generate-runtime-let-values%__0)
    (3 gxc#generate-runtime-let-values%__%)))
  (declare-type gxc#generate-runtime-let-values-bind (@lambda 2 #f))
  (declare-type gxc#generate-runtime-letrec-values%__% (@lambda 3 #f))
  (declare-type gxc#generate-runtime-letrec-values%__0 (@lambda 2 #f))
  (declare-type
   gxc#generate-runtime-letrec-values%
   (@case-lambda
    (2 gxc#generate-runtime-letrec-values%__0)
    (3 gxc#generate-runtime-letrec-values%__%)))
  (declare-type gxc#generate-runtime-letrec*-values% (@lambda 2 #f))
  (declare-type gxc#generate-runtime-simple-let? (@lambda 1 #f))
  (declare-type gxc#generate-runtime-simple-let (@lambda 5 #f))
  (declare-type gxc#generate-runtime-quote% (@lambda 2 #f))
  (declare-type gxc#generate-runtime-call% (@lambda 2 #f))
  (declare-type gxc#generate-runtime-call-unchecked% (@lambda 2 #f))
  (declare-type gxc#generate-runtime-if% (@lambda 2 #f))
  (declare-type gxc#generate-runtime-ref% (@lambda 2 #f))
  (declare-type gxc#generate-runtime-setq% (@lambda 2 #f))
  (declare-type gxc#generate-runtime-struct-instancep% (@lambda 2 #f))
  (declare-type gxc#generate-runtime-struct-direct-instancep% (@lambda 2 #f))
  (declare-type gxc#generate-runtime-struct-ref% (@lambda 2 #f))
  (declare-type gxc#generate-runtime-struct-setq% (@lambda 2 #f))
  (declare-type gxc#generate-runtime-struct-direct-ref% (@lambda 2 #f))
  (declare-type gxc#generate-runtime-struct-direct-setq% (@lambda 2 #f))
  (declare-type gxc#generate-runtime-struct-unchecked-ref% (@lambda 2 #f))
  (declare-type gxc#generate-runtime-struct-unchecked-setq% (@lambda 2 #f))
  (declare-type gxc#generate-runtime-loader-import% (@lambda 2 #f))
  (declare-type gxc#generate-runtime-quote-syntax% (@lambda 2 #f))
  (declare-type gxc#generate-runtime-phi-define-runtime% (@lambda 2 #f))
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
   (@class gxc#meta-state::t
           ()
           ()
           (src n open blocks)
           (src n open blocks)
           :init!
           #t
           #f
           #f
           #f
           ((:init! . gxc#meta-state:::init!))))
  (declare-type gxc#meta-state? (@predicate gxc#meta-state::t))
  (declare-type gxc#make-meta-state (@constructor gxc#meta-state::t))
  (declare-type gxc#meta-state-src (@accessor gxc#meta-state::t src #t))
  (declare-type gxc#meta-state-n (@accessor gxc#meta-state::t n #t))
  (declare-type gxc#meta-state-open (@accessor gxc#meta-state::t open #t))
  (declare-type gxc#meta-state-blocks (@accessor gxc#meta-state::t blocks #t))
  (declare-type gxc#meta-state-src-set! (@mutator gxc#meta-state::t src #t))
  (declare-type gxc#meta-state-n-set! (@mutator gxc#meta-state::t n #t))
  (declare-type gxc#meta-state-open-set! (@mutator gxc#meta-state::t open #t))
  (declare-type
   gxc#meta-state-blocks-set!
   (@mutator gxc#meta-state::t blocks #t))
  (declare-type gxc#&meta-state-src (@accessor gxc#meta-state::t src #f))
  (declare-type gxc#&meta-state-n (@accessor gxc#meta-state::t n #f))
  (declare-type gxc#&meta-state-open (@accessor gxc#meta-state::t open #f))
  (declare-type gxc#&meta-state-blocks (@accessor gxc#meta-state::t blocks #f))
  (declare-type gxc#&meta-state-src-set! (@mutator gxc#meta-state::t src #f))
  (declare-type gxc#&meta-state-n-set! (@mutator gxc#meta-state::t n #f))
  (declare-type gxc#&meta-state-open-set! (@mutator gxc#meta-state::t open #f))
  (declare-type
   gxc#&meta-state-blocks-set!
   (@mutator gxc#meta-state::t blocks #f))
  (declare-type gxc#meta-state:::init! (@lambda 2 #f))
  (declare-type
   gxc#meta-state-block::t
   (@class gxc#meta-state-block::t
           ()
           ()
           (ctx phi n code)
           (ctx phi n code)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type gxc#meta-state-block? (@predicate gxc#meta-state-block::t))
  (declare-type
   gxc#make-meta-state-block
   (@constructor gxc#meta-state-block::t))
  (declare-type
   gxc#meta-state-block-ctx
   (@accessor gxc#meta-state-block::t ctx #t))
  (declare-type
   gxc#meta-state-block-phi
   (@accessor gxc#meta-state-block::t phi #t))
  (declare-type
   gxc#meta-state-block-n
   (@accessor gxc#meta-state-block::t n #t))
  (declare-type
   gxc#meta-state-block-code
   (@accessor gxc#meta-state-block::t code #t))
  (declare-type
   gxc#meta-state-block-ctx-set!
   (@mutator gxc#meta-state-block::t ctx #t))
  (declare-type
   gxc#meta-state-block-phi-set!
   (@mutator gxc#meta-state-block::t phi #t))
  (declare-type
   gxc#meta-state-block-n-set!
   (@mutator gxc#meta-state-block::t n #t))
  (declare-type
   gxc#meta-state-block-code-set!
   (@mutator gxc#meta-state-block::t code #t))
  (declare-type
   gxc#&meta-state-block-ctx
   (@accessor gxc#meta-state-block::t ctx #f))
  (declare-type
   gxc#&meta-state-block-phi
   (@accessor gxc#meta-state-block::t phi #f))
  (declare-type
   gxc#&meta-state-block-n
   (@accessor gxc#meta-state-block::t n #f))
  (declare-type
   gxc#&meta-state-block-code
   (@accessor gxc#meta-state-block::t code #f))
  (declare-type
   gxc#&meta-state-block-ctx-set!
   (@mutator gxc#meta-state-block::t ctx #f))
  (declare-type
   gxc#&meta-state-block-phi-set!
   (@mutator gxc#meta-state-block::t phi #f))
  (declare-type
   gxc#&meta-state-block-n-set!
   (@mutator gxc#meta-state-block::t n #f))
  (declare-type
   gxc#&meta-state-block-code-set!
   (@mutator gxc#meta-state-block::t code #f))
  (declare-type gxc#meta-state-begin-phi! (@lambda 2 #f))
  (declare-type gxc#meta-state-add-phi! (@lambda 3 #f))
  (declare-type gxc#meta-state-end-phi! (@lambda 1 #f))
  (declare-type gxc#meta-state-end! (@lambda 1 #f))
  (declare-type gxc#collect-expression-refs (@lambda 1 #f))
  (declare-type gxc#collect-refs-ref% (@lambda 2 #f))
  (declare-type gxc#collect-refs-setq% (@lambda 2 #f))
  (declare-type gxc#find-runtime-begin% (@lambda 2 #f))
  (declare-type gxc#count-values-single% (@lambda 2 #f))
  (declare-type gxc#count-values-call% (@lambda 2 #f))
  (declare-type gxc#count-values-if% (@lambda 2 #f)))
