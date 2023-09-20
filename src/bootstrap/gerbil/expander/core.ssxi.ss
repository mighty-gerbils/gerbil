prelude: :gerbil/compiler/ssxi
package: gerbil/expander

(begin
  (declare-type
   gx#expander-context::t
   (@struct-type gx#expander-context::t #f 2 :init! ()))
  (declare-type gx#expander-context? (@struct-pred gx#expander-context::t))
  (declare-type gx#make-expander-context (@struct-cons gx#expander-context::t))
  (declare-type
   gx#expander-context-id
   (@struct-getf gx#expander-context::t 0 #f))
  (declare-type
   gx#expander-context-table
   (@struct-getf gx#expander-context::t 1 #f))
  (declare-type
   gx#expander-context-id-set!
   (@struct-setf gx#expander-context::t 0 #f))
  (declare-type
   gx#expander-context-table-set!
   (@struct-setf gx#expander-context::t 1 #f))
  (declare-type
   gx#&expander-context-id
   (@struct-getf gx#expander-context::t 0 #t))
  (declare-type
   gx#&expander-context-table
   (@struct-getf gx#expander-context::t 1 #t))
  (declare-type
   gx#&expander-context-id-set!
   (@struct-setf gx#expander-context::t 0 #t))
  (declare-type
   gx#&expander-context-table-set!
   (@struct-setf gx#expander-context::t 1 #t))
  (declare-type
   gx#root-context::t
   (@struct-type gx#root-context::t gx#expander-context::t 0 :init! ()))
  (declare-type gx#root-context? (@struct-pred gx#root-context::t))
  (declare-type gx#make-root-context (@struct-cons gx#root-context::t))
  (declare-type
   gx#phi-context::t
   (@struct-type gx#context-phi::t gx#expander-context::t 3 :init! ()))
  (declare-type gx#phi-context? (@struct-pred gx#phi-context::t))
  (declare-type gx#make-phi-context (@struct-cons gx#phi-context::t))
  (declare-type gx#phi-context-super (@struct-getf gx#phi-context::t 0 #f))
  (declare-type gx#phi-context-up (@struct-getf gx#phi-context::t 1 #f))
  (declare-type gx#phi-context-down (@struct-getf gx#phi-context::t 2 #f))
  (declare-type
   gx#phi-context-super-set!
   (@struct-setf gx#phi-context::t 0 #f))
  (declare-type gx#phi-context-up-set! (@struct-setf gx#phi-context::t 1 #f))
  (declare-type gx#phi-context-down-set! (@struct-setf gx#phi-context::t 2 #f))
  (declare-type gx#&phi-context-super (@struct-getf gx#phi-context::t 0 #t))
  (declare-type gx#&phi-context-up (@struct-getf gx#phi-context::t 1 #t))
  (declare-type gx#&phi-context-down (@struct-getf gx#phi-context::t 2 #t))
  (declare-type
   gx#&phi-context-super-set!
   (@struct-setf gx#phi-context::t 0 #t))
  (declare-type gx#&phi-context-up-set! (@struct-setf gx#phi-context::t 1 #t))
  (declare-type
   gx#&phi-context-down-set!
   (@struct-setf gx#phi-context::t 2 #t))
  (declare-type
   gx#top-context::t
   (@struct-type gx#top-context::t gx#phi-context::t 0 :init! ()))
  (declare-type gx#top-context? (@struct-pred gx#top-context::t))
  (declare-type gx#make-top-context (@struct-cons gx#top-context::t))
  (declare-type
   gx#module-context::t
   (@struct-type gx#module-context::t gx#top-context::t 6 :init! ()))
  (declare-type gx#module-context? (@struct-pred gx#module-context::t))
  (declare-type gx#make-module-context (@struct-cons gx#module-context::t))
  (declare-type gx#module-context-ns (@struct-getf gx#module-context::t 0 #f))
  (declare-type
   gx#module-context-path
   (@struct-getf gx#module-context::t 1 #f))
  (declare-type
   gx#module-context-import
   (@struct-getf gx#module-context::t 2 #f))
  (declare-type
   gx#module-context-export
   (@struct-getf gx#module-context::t 3 #f))
  (declare-type gx#module-context-e (@struct-getf gx#module-context::t 4 #f))
  (declare-type
   gx#module-context-code
   (@struct-getf gx#module-context::t 5 #f))
  (declare-type
   gx#module-context-ns-set!
   (@struct-setf gx#module-context::t 0 #f))
  (declare-type
   gx#module-context-path-set!
   (@struct-setf gx#module-context::t 1 #f))
  (declare-type
   gx#module-context-import-set!
   (@struct-setf gx#module-context::t 2 #f))
  (declare-type
   gx#module-context-export-set!
   (@struct-setf gx#module-context::t 3 #f))
  (declare-type
   gx#module-context-e-set!
   (@struct-setf gx#module-context::t 4 #f))
  (declare-type
   gx#module-context-code-set!
   (@struct-setf gx#module-context::t 5 #f))
  (declare-type gx#&module-context-ns (@struct-getf gx#module-context::t 0 #t))
  (declare-type
   gx#&module-context-path
   (@struct-getf gx#module-context::t 1 #t))
  (declare-type
   gx#&module-context-import
   (@struct-getf gx#module-context::t 2 #t))
  (declare-type
   gx#&module-context-export
   (@struct-getf gx#module-context::t 3 #t))
  (declare-type gx#&module-context-e (@struct-getf gx#module-context::t 4 #t))
  (declare-type
   gx#&module-context-code
   (@struct-getf gx#module-context::t 5 #t))
  (declare-type
   gx#&module-context-ns-set!
   (@struct-setf gx#module-context::t 0 #t))
  (declare-type
   gx#&module-context-path-set!
   (@struct-setf gx#module-context::t 1 #t))
  (declare-type
   gx#&module-context-import-set!
   (@struct-setf gx#module-context::t 2 #t))
  (declare-type
   gx#&module-context-export-set!
   (@struct-setf gx#module-context::t 3 #t))
  (declare-type
   gx#&module-context-e-set!
   (@struct-setf gx#module-context::t 4 #t))
  (declare-type
   gx#&module-context-code-set!
   (@struct-setf gx#module-context::t 5 #t))
  (declare-type
   gx#prelude-context::t
   (@struct-type gx#prelude-context::t gx#top-context::t 3 :init! ()))
  (declare-type gx#prelude-context? (@struct-pred gx#prelude-context::t))
  (declare-type gx#make-prelude-context (@struct-cons gx#prelude-context::t))
  (declare-type
   gx#prelude-context-path
   (@struct-getf gx#prelude-context::t 0 #f))
  (declare-type
   gx#prelude-context-import
   (@struct-getf gx#prelude-context::t 1 #f))
  (declare-type gx#prelude-context-e (@struct-getf gx#prelude-context::t 2 #f))
  (declare-type
   gx#prelude-context-path-set!
   (@struct-setf gx#prelude-context::t 0 #f))
  (declare-type
   gx#prelude-context-import-set!
   (@struct-setf gx#prelude-context::t 1 #f))
  (declare-type
   gx#prelude-context-e-set!
   (@struct-setf gx#prelude-context::t 2 #f))
  (declare-type
   gx#local-context::t
   (@struct-type gx#local-context::t gx#phi-context::t 0 :init! ()))
  (declare-type gx#local-context? (@struct-pred gx#local-context::t))
  (declare-type gx#make-local-context (@struct-cons gx#local-context::t))
  (declare-type gx#phi-context:::init!__% (@lambda 3 #f))
  (declare-type gx#phi-context:::init!__0 (@lambda 2 #f))
  (declare-type
   gx#phi-context:::init!
   (@case-lambda (2 gx#phi-context:::init!__0) (3 gx#phi-context:::init!__%)))
  (declare-method gx#phi-context::t :init! gx#phi-context:::init! #f)
  (declare-type gx#local-context:::init!__% (@lambda 2 #f))
  (declare-type gx#local-context:::init!__0 (@lambda 1 #f))
  (declare-type
   gx#local-context:::init!
   (@case-lambda
    (1 gx#local-context:::init!__0)
    (2 gx#local-context:::init!__%)))
  (declare-method gx#local-context::t :init! gx#local-context:::init! #f)
  (declare-type
   gx#binding::t
   (@struct-type gx#binding::t #f 3 #f ((transparent: . #t))))
  (declare-type gx#binding? (@struct-pred gx#binding::t))
  (declare-type gx#make-binding (@struct-cons gx#binding::t))
  (declare-type gx#binding-id (@struct-getf gx#binding::t 0 #f))
  (declare-type gx#binding-key (@struct-getf gx#binding::t 1 #f))
  (declare-type gx#binding-phi (@struct-getf gx#binding::t 2 #f))
  (declare-type gx#binding-id-set! (@struct-setf gx#binding::t 0 #f))
  (declare-type gx#binding-key-set! (@struct-setf gx#binding::t 1 #f))
  (declare-type gx#binding-phi-set! (@struct-setf gx#binding::t 2 #f))
  (declare-type gx#&binding-id (@struct-getf gx#binding::t 0 #t))
  (declare-type gx#&binding-key (@struct-getf gx#binding::t 1 #t))
  (declare-type gx#&binding-phi (@struct-getf gx#binding::t 2 #t))
  (declare-type gx#&binding-id-set! (@struct-setf gx#binding::t 0 #t))
  (declare-type gx#&binding-key-set! (@struct-setf gx#binding::t 1 #t))
  (declare-type gx#&binding-phi-set! (@struct-setf gx#binding::t 2 #t))
  (declare-type
   gx#runtime-binding::t
   (@struct-type
    gx#runtime-binding::t
    gx#binding::t
    0
    #f
    ((transparent: . #t))))
  (declare-type gx#runtime-binding? (@struct-pred gx#runtime-binding::t))
  (declare-type gx#make-runtime-binding (@struct-cons gx#runtime-binding::t))
  (declare-type
   gx#local-binding::t
   (@struct-type
    gx#local-binding::t
    gx#runtime-binding::t
    0
    #f
    ((transparent: . #t))))
  (declare-type gx#local-binding? (@struct-pred gx#local-binding::t))
  (declare-type gx#make-local-binding (@struct-cons gx#local-binding::t))
  (declare-type
   gx#top-binding::t
   (@struct-type
    gx#top-binding::t
    gx#runtime-binding::t
    0
    #f
    ((transparent: . #t))))
  (declare-type gx#top-binding? (@struct-pred gx#top-binding::t))
  (declare-type gx#make-top-binding (@struct-cons gx#top-binding::t))
  (declare-type
   gx#module-binding::t
   (@struct-type
    gx#module-binding::t
    gx#top-binding::t
    1
    #f
    ((transparent: . #t))))
  (declare-type gx#module-binding? (@struct-pred gx#module-binding::t))
  (declare-type gx#make-module-binding (@struct-cons gx#module-binding::t))
  (declare-type
   gx#module-binding-context
   (@struct-getf gx#module-binding::t 0 #f))
  (declare-type
   gx#module-binding-context-set!
   (@struct-setf gx#module-binding::t 0 #f))
  (declare-type
   gx#extern-binding::t
   (@struct-type
    gx#extern-binding::t
    gx#top-binding::t
    0
    #f
    ((transparent: . #t))))
  (declare-type gx#extern-binding? (@struct-pred gx#extern-binding::t))
  (declare-type gx#make-extern-binding (@struct-cons gx#extern-binding::t))
  (declare-type
   gx#syntax-binding::t
   (@struct-type
    gx#syntax-binding::t
    gx#binding::t
    1
    #f
    ((final: . #t) (transparent: . #t))))
  (declare-type gx#syntax-binding? (@struct-pred gx#syntax-binding::t))
  (declare-type gx#make-syntax-binding (@struct-cons gx#syntax-binding::t))
  (declare-type gx#syntax-binding-e (@struct-getf gx#syntax-binding::t 0 #f))
  (declare-type
   gx#syntax-binding-e-set!
   (@struct-setf gx#syntax-binding::t 0 #f))
  (declare-type gx#&syntax-binding-e (@struct-getf gx#syntax-binding::t 0 #t))
  (declare-type
   gx#&syntax-binding-e-set!
   (@struct-setf gx#syntax-binding::t 0 #t))
  (declare-type
   gx#import-binding::t
   (@struct-type
    gx#import-binding::t
    gx#binding::t
    3
    #f
    ((final: . #t) (transparent: . #t))))
  (declare-type gx#import-binding? (@struct-pred gx#import-binding::t))
  (declare-type gx#make-import-binding (@struct-cons gx#import-binding::t))
  (declare-type gx#import-binding-e (@struct-getf gx#import-binding::t 0 #f))
  (declare-type
   gx#import-binding-context
   (@struct-getf gx#import-binding::t 1 #f))
  (declare-type
   gx#import-binding-weak?
   (@struct-getf gx#import-binding::t 2 #f))
  (declare-type
   gx#import-binding-e-set!
   (@struct-setf gx#import-binding::t 0 #f))
  (declare-type
   gx#import-binding-context-set!
   (@struct-setf gx#import-binding::t 1 #f))
  (declare-type
   gx#import-binding-weak?-set!
   (@struct-setf gx#import-binding::t 2 #f))
  (declare-type gx#&import-binding-e (@struct-getf gx#import-binding::t 0 #t))
  (declare-type
   gx#&import-binding-context
   (@struct-getf gx#import-binding::t 1 #t))
  (declare-type
   gx#&import-binding-weak?
   (@struct-getf gx#import-binding::t 2 #t))
  (declare-type
   gx#&import-binding-e-set!
   (@struct-setf gx#import-binding::t 0 #t))
  (declare-type
   gx#&import-binding-context-set!
   (@struct-setf gx#import-binding::t 1 #t))
  (declare-type
   gx#&import-binding-weak?-set!
   (@struct-setf gx#import-binding::t 2 #t))
  (declare-type
   gx#alias-binding::t
   (@struct-type
    gx#alias-binding::t
    gx#binding::t
    1
    #f
    ((final: . #t) (transparent: . #t))))
  (declare-type gx#alias-binding? (@struct-pred gx#alias-binding::t))
  (declare-type gx#make-alias-binding (@struct-cons gx#alias-binding::t))
  (declare-type gx#alias-binding-e (@struct-getf gx#alias-binding::t 0 #f))
  (declare-type
   gx#alias-binding-e-set!
   (@struct-setf gx#alias-binding::t 0 #f))
  (declare-type gx#&alias-binding-e (@struct-getf gx#alias-binding::t 0 #t))
  (declare-type
   gx#&alias-binding-e-set!
   (@struct-setf gx#alias-binding::t 0 #t))
  (declare-type gx#expander::t (@struct-type gx#expander::t #f 1 #f ()))
  (declare-type gx#expander? (@struct-pred gx#expander::t))
  (declare-type gx#make-expander (@struct-cons gx#expander::t))
  (declare-type gx#expander-e (@struct-getf gx#expander::t 0 #f))
  (declare-type gx#expander-e-set! (@struct-setf gx#expander::t 0 #f))
  (declare-type
   gx#core-expander::t
   (@struct-type gx#core-expander::t gx#expander::t 2 #f ()))
  (declare-type gx#core-expander? (@struct-pred gx#core-expander::t))
  (declare-type gx#make-core-expander (@struct-cons gx#core-expander::t))
  (declare-type gx#core-expander-id (@struct-getf gx#core-expander::t 0 #f))
  (declare-type
   gx#core-expander-compile-top
   (@struct-getf gx#core-expander::t 1 #f))
  (declare-type
   gx#core-expander-id-set!
   (@struct-setf gx#core-expander::t 0 #f))
  (declare-type
   gx#core-expander-compile-top-set!
   (@struct-setf gx#core-expander::t 1 #f))
  (declare-type
   gx#expression-form::t
   (@struct-type gx#expression-form::t gx#core-expander::t 0 #f ()))
  (declare-type gx#expression-form? (@struct-pred gx#expression-form::t))
  (declare-type gx#make-expression-form (@struct-cons gx#expression-form::t))
  (declare-type
   gx#special-form::t
   (@struct-type gx#special-form::t gx#core-expander::t 0 #f ()))
  (declare-type gx#special-form? (@struct-pred gx#special-form::t))
  (declare-type gx#make-special-form (@struct-cons gx#special-form::t))
  (declare-type
   gx#definition-form::t
   (@struct-type gx#definition-form::t gx#special-form::t 0 #f ()))
  (declare-type gx#definition-form? (@struct-pred gx#definition-form::t))
  (declare-type gx#make-definition-form (@struct-cons gx#definition-form::t))
  (declare-type
   gx#top-special-form::t
   (@struct-type gx#top-special-form::t gx#special-form::t 0 #f ()))
  (declare-type gx#top-special-form? (@struct-pred gx#top-special-form::t))
  (declare-type gx#make-top-special-form (@struct-cons gx#top-special-form::t))
  (declare-type
   gx#module-special-form::t
   (@struct-type gx#module-special-form::t gx#top-special-form::t 0 #f ()))
  (declare-type
   gx#module-special-form?
   (@struct-pred gx#module-special-form::t))
  (declare-type
   gx#make-module-special-form
   (@struct-cons gx#module-special-form::t))
  (declare-type
   gx#feature-expander::t
   (@struct-type gx#feature-expander::t gx#expander::t 0 #f ()))
  (declare-type gx#feature-expander? (@struct-pred gx#feature-expander::t))
  (declare-type gx#make-feature-expander (@struct-cons gx#feature-expander::t))
  (declare-type
   gx#private-feature-expander::t
   (@struct-type
    gx#private-feature-expander::t
    gx#feature-expander::t
    0
    #f
    ()))
  (declare-type
   gx#private-feature-expander?
   (@struct-pred gx#private-feature-expander::t))
  (declare-type
   gx#make-private-feature-expander
   (@struct-cons gx#private-feature-expander::t))
  (declare-type
   gx#reserved-expander::t
   (@struct-type gx#reserved-expander::t gx#expander::t 0 #f ()))
  (declare-type gx#reserved-expander? (@struct-pred gx#reserved-expander::t))
  (declare-type
   gx#make-reserved-expander
   (@struct-cons gx#reserved-expander::t))
  (declare-type
   gx#macro-expander::t
   (@struct-type gx#core-macro::t gx#expander::t 0 #f ()))
  (declare-type gx#macro-expander? (@struct-pred gx#macro-expander::t))
  (declare-type gx#make-macro-expander (@struct-cons gx#macro-expander::t))
  (declare-type
   gx#rename-macro-expander::t
   (@struct-type gx#rename-macro-expander::t gx#macro-expander::t 0 #f ()))
  (declare-type
   gx#rename-macro-expander?
   (@struct-pred gx#rename-macro-expander::t))
  (declare-type
   gx#make-rename-macro-expander
   (@struct-cons gx#rename-macro-expander::t))
  (declare-type
   gx#user-expander::t
   (@struct-type gx#macro-expander::t gx#macro-expander::t 2 #f ()))
  (declare-type gx#user-expander? (@struct-pred gx#user-expander::t))
  (declare-type gx#make-user-expander (@struct-cons gx#user-expander::t))
  (declare-type
   gx#user-expander-context
   (@struct-getf gx#user-expander::t 0 #f))
  (declare-type gx#user-expander-phi (@struct-getf gx#user-expander::t 1 #f))
  (declare-type
   gx#user-expander-context-set!
   (@struct-setf gx#user-expander::t 0 #f))
  (declare-type
   gx#user-expander-phi-set!
   (@struct-setf gx#user-expander::t 1 #f))
  (declare-type
   gx#expander-mark::t
   (@struct-type gx#expander-mark::t #f 4 #f ()))
  (declare-type gx#expander-mark? (@struct-pred gx#expander-mark::t))
  (declare-type gx#make-expander-mark (@struct-cons gx#expander-mark::t))
  (declare-type gx#expander-mark-subst (@struct-getf gx#expander-mark::t 0 #f))
  (declare-type
   gx#expander-mark-context
   (@struct-getf gx#expander-mark::t 1 #f))
  (declare-type gx#expander-mark-phi (@struct-getf gx#expander-mark::t 2 #f))
  (declare-type gx#expander-mark-trace (@struct-getf gx#expander-mark::t 3 #f))
  (declare-type
   gx#expander-mark-subst-set!
   (@struct-setf gx#expander-mark::t 0 #f))
  (declare-type
   gx#expander-mark-context-set!
   (@struct-setf gx#expander-mark::t 1 #f))
  (declare-type
   gx#expander-mark-phi-set!
   (@struct-setf gx#expander-mark::t 2 #f))
  (declare-type
   gx#expander-mark-trace-set!
   (@struct-setf gx#expander-mark::t 3 #f))
  (declare-type
   gx#&expander-mark-subst
   (@struct-getf gx#expander-mark::t 0 #t))
  (declare-type
   gx#&expander-mark-context
   (@struct-getf gx#expander-mark::t 1 #t))
  (declare-type gx#&expander-mark-phi (@struct-getf gx#expander-mark::t 2 #t))
  (declare-type
   gx#&expander-mark-trace
   (@struct-getf gx#expander-mark::t 3 #t))
  (declare-type
   gx#&expander-mark-subst-set!
   (@struct-setf gx#expander-mark::t 0 #t))
  (declare-type
   gx#&expander-mark-context-set!
   (@struct-setf gx#expander-mark::t 1 #t))
  (declare-type
   gx#&expander-mark-phi-set!
   (@struct-setf gx#expander-mark::t 2 #t))
  (declare-type
   gx#&expander-mark-trace-set!
   (@struct-setf gx#expander-mark::t 3 #t))
  (declare-type gx#raise-syntax-error (@lambda (3) #f))
  (declare-type gx#eval-syntax__% (@lambda 2 #f))
  (declare-type gx#eval-syntax__0 (@lambda 1 #f))
  (declare-type
   gx#eval-syntax
   (@case-lambda (1 gx#eval-syntax__0) (2 gx#eval-syntax__%)))
  (declare-type gx#eval-syntax* (@lambda 1 #f))
  (declare-type gx#core-expand__% (@lambda 2 #f))
  (declare-type gx#core-expand__0 (@lambda 1 #f))
  (declare-type
   gx#core-expand
   (@case-lambda (1 gx#core-expand__0) (2 gx#core-expand__%)))
  (declare-type gx#core-expand-top (@lambda 1 #f))
  (declare-type gx#core-expand-expression (@lambda 1 #f))
  (declare-type gx#core-expand-expression+1 (@lambda 1 #f))
  (declare-type gx#core-expand*__% (@lambda 2 #f))
  (declare-type gx#core-expand*__0 (@lambda 1 #f))
  (declare-type
   gx#core-expand*
   (@case-lambda (1 gx#core-expand*__0) (2 gx#core-expand*__%)))
  (declare-type gx#core-expand1 (@lambda 1 #f))
  (declare-type gx#core-expand-head (@lambda 1 #f))
  (declare-type gx#core-expand-block__% (@lambda 4 #f))
  (declare-type gx#core-expand-block__0 (@lambda 2 #f))
  (declare-type gx#core-expand-block__1 (@lambda 3 #f))
  (declare-type
   gx#core-expand-block
   (@case-lambda
    (2 gx#core-expand-block__0)
    (3 gx#core-expand-block__1)
    (4 gx#core-expand-block__%)))
  (declare-type gx#core-expand-block* (@lambda 2 #f))
  (declare-type gx#core-expand-cond-expand% (@lambda 1 #f))
  (declare-type gx#core-expand-include%__% (@lambda 2 #f))
  (declare-type gx#core-expand-include%__0 (@lambda 1 #f))
  (declare-type
   gx#core-expand-include%
   (@case-lambda
    (1 gx#core-expand-include%__0)
    (2 gx#core-expand-include%__%)))
  (declare-type gx#core-apply-expander__% (@lambda 3 #f))
  (declare-type gx#core-apply-expander__0 (@lambda 2 #f))
  (declare-type
   gx#core-apply-expander
   (@case-lambda (2 gx#core-apply-expander__0) (3 gx#core-apply-expander__%)))
  (declare-type gx#expander::apply-macro-expander (@lambda 2 #f))
  (declare-method
   gx#expander::t
   apply-macro-expander
   gx#expander::apply-macro-expander
   #f)
  (declare-type gx#macro-expander::apply-macro-expander (@lambda 2 #f))
  (declare-method
   gx#macro-expander::t
   apply-macro-expander
   gx#macro-expander::apply-macro-expander
   #f)
  (declare-type gx#core-expander::apply-macro-expander (@lambda 2 #f))
  (declare-method
   gx#core-expander::t
   apply-macro-expander
   gx#core-expander::apply-macro-expander
   #f)
  (declare-type gx#top-special-form::apply-macro-expander__% (@lambda 3 #f))
  (declare-type gx#top-special-form::apply-macro-expander__0 (@lambda 2 #f))
  (declare-type
   gx#top-special-form::apply-macro-expander
   (@case-lambda
    (2 gx#top-special-form::apply-macro-expander__0)
    (3 gx#top-special-form::apply-macro-expander__%)))
  (declare-method
   gx#top-special-form::t
   apply-macro-expander
   gx#top-special-form::apply-macro-expander
   #f)
  (declare-type gx#module-special-form::apply-macro-expander (@lambda 2 #f))
  (declare-method
   gx#module-special-form::t
   apply-macro-expander
   gx#module-special-form::apply-macro-expander
   #f)
  (declare-type gx#rename-macro-expander::apply-macro-expander (@lambda 2 #f))
  (declare-method
   gx#rename-macro-expander::t
   apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   #f)
  (declare-type gx#core-apply-user-expander__% (@lambda 3 #f))
  (declare-type gx#core-apply-user-expander__0 (@lambda 2 #f))
  (declare-type
   gx#core-apply-user-expander
   (@case-lambda
    (2 gx#core-apply-user-expander__0)
    (3 gx#core-apply-user-expander__%)))
  (declare-type gx#core-apply-user-macro (@lambda 5 #f))
  (declare-type
   gx#user-expander::apply-macro-expander
   (@case-lambda
    (2 gx#core-apply-user-expander__0)
    (3 gx#core-apply-user-expander__%)))
  (declare-method
   gx#user-expander::t
   apply-macro-expander
   gx#user-expander::apply-macro-expander
   #f)
  (declare-type gx#resolve-identifier__% (@lambda 3 #f))
  (declare-type gx#resolve-identifier__0 (@lambda 1 #f))
  (declare-type gx#resolve-identifier__1 (@lambda 2 #f))
  (declare-type
   gx#resolve-identifier
   (@case-lambda
    (1 gx#resolve-identifier__0)
    (2 gx#resolve-identifier__1)
    (3 gx#resolve-identifier__%)))
  (declare-type gx#bind-identifier!__% (@lambda 5 #f))
  (declare-type gx#bind-identifier!__0 (@lambda 2 #f))
  (declare-type gx#bind-identifier!__1 (@lambda 3 #f))
  (declare-type gx#bind-identifier!__2 (@lambda 4 #f))
  (declare-type
   gx#bind-identifier!
   (@case-lambda
    (2 gx#bind-identifier!__0)
    (3 gx#bind-identifier!__1)
    (4 gx#bind-identifier!__2)
    (5 gx#bind-identifier!__%)))
  (declare-type gx#core-resolve-identifier__% (@lambda 3 #f))
  (declare-type gx#core-resolve-identifier__0 (@lambda 1 #f))
  (declare-type gx#core-resolve-identifier__1 (@lambda 2 #f))
  (declare-type
   gx#core-resolve-identifier
   (@case-lambda
    (1 gx#core-resolve-identifier__0)
    (2 gx#core-resolve-identifier__1)
    (3 gx#core-resolve-identifier__%)))
  (declare-type gx#core-resolve-binding (@lambda 5 #f))
  (declare-type gx#core-bind!__% (@lambda 5 #f))
  (declare-type gx#core-bind!__0 (@lambda 2 #f))
  (declare-type gx#core-bind!__1 (@lambda 3 #f))
  (declare-type gx#core-bind!__2 (@lambda 4 #f))
  (declare-type
   gx#core-bind!
   (@case-lambda
    (2 gx#core-bind!__0)
    (3 gx#core-bind!__1)
    (4 gx#core-bind!__2)
    (5 gx#core-bind!__%)))
  (declare-type gx#core-identifier-key (@lambda 1 #f))
  (declare-type gx#core-context-shift (@lambda 2 #f))
  (declare-type gx#core-context-get (@lambda 2 #f))
  (declare-type gx#core-context-put! (@lambda 3 #f))
  (declare-type gx#core-context-resolve (@lambda 2 #f))
  (declare-type gx#core-context-bind! (@lambda 4 #f))
  (declare-type gx#core-context-top__% (@lambda 2 #f))
  (declare-type gx#core-context-top__0 (@lambda 0 #f))
  (declare-type gx#core-context-top__1 (@lambda 1 #f))
  (declare-type
   gx#core-context-top
   (@case-lambda
    (0 gx#core-context-top__0)
    (1 gx#core-context-top__1)
    (2 gx#core-context-top__%)))
  (declare-type gx#core-context-root__% (@lambda 1 #f))
  (declare-type gx#core-context-root__0 (@lambda 0 #f))
  (declare-type
   gx#core-context-root
   (@case-lambda (0 gx#core-context-root__0) (1 gx#core-context-root__%)))
  (declare-type gx#core-context-rebind?__% (@lambda (1) #f))
  (declare-type gx#core-context-rebind?__0 (@lambda 0 #f))
  (declare-type
   gx#core-context-rebind?
   (@case-lambda
    (0 gx#core-context-rebind?__0)
    (1 gx#core-context-rebind?__%)
    ((1) gx#core-context-rebind?__%)))
  (declare-type gx#core-context-namespace__% (@lambda 1 #f))
  (declare-type gx#core-context-namespace__0 (@lambda 0 #f))
  (declare-type
   gx#core-context-namespace
   (@case-lambda
    (0 gx#core-context-namespace__0)
    (1 gx#core-context-namespace__%)))
  (declare-type gx#expander-binding?__% (@lambda 2 #f))
  (declare-type gx#expander-binding?__0 (@lambda 1 #f))
  (declare-type
   gx#expander-binding?
   (@case-lambda (1 gx#expander-binding?__0) (2 gx#expander-binding?__%)))
  (declare-type gx#core-expander-binding? (@lambda 1 #f))
  (declare-type gx#expression-form-binding? (@lambda 1 #f))
  (declare-type gx#direct-special-form-binding? (@lambda 1 #f))
  (declare-type gx#special-form-binding? (@lambda 1 #f))
  (declare-type gx#feature-binding? (@lambda 1 #f))
  (declare-type gx#private-feature-binding? (@lambda 1 #f))
  (declare-type gx#core-bound-identifier?__% (@lambda 2 #f))
  (declare-type gx#core-bound-identifier?__0 (@lambda 1 #f))
  (declare-type
   gx#core-bound-identifier?
   (@case-lambda
    (1 gx#core-bound-identifier?__0)
    (2 gx#core-bound-identifier?__%)))
  (declare-type gx#core-identifier=? (@lambda 2 #f))
  (declare-type gx#core-extern-symbol? (@lambda 1 #f))
  (declare-type gx#core-quote-syntax__% (@lambda 4 #f))
  (declare-type gx#core-quote-syntax__0 (@lambda 1 #f))
  (declare-type gx#core-quote-syntax__1 (@lambda 2 #f))
  (declare-type gx#core-quote-syntax__2 (@lambda 3 #f))
  (declare-type
   gx#core-quote-syntax
   (@case-lambda
    (1 gx#core-quote-syntax__0)
    (2 gx#core-quote-syntax__1)
    (3 gx#core-quote-syntax__2)
    (4 gx#core-quote-syntax__%)))
  (declare-type gx#core-cons (@lambda 2 #f))
  (declare-type gx#core-list (@lambda (1) #f))
  (declare-type gx#core-cons* (@lambda (1) #f))
  (declare-type gx#core-resolve-path__% (@lambda 2 #f))
  (declare-type gx#core-resolve-path__0 (@lambda 1 #f))
  (declare-type
   gx#core-resolve-path
   (@case-lambda (1 gx#core-resolve-path__0) (2 gx#core-resolve-path__%)))
  (declare-type gx#core-deserialize-mark__% (@lambda 2 #f))
  (declare-type gx#core-deserialize-mark__0 (@lambda 1 #f))
  (declare-type
   gx#core-deserialize-mark
   (@case-lambda
    (1 gx#core-deserialize-mark__0)
    (2 gx#core-deserialize-mark__%)))
  (declare-type gx#syntax-local-rewrap (@lambda 1 #f))
  (declare-type gx#syntax-local-unwrap (@lambda 1 #f))
  (declare-type gx#syntax-local-introduce (@lambda 1 #f))
  (declare-type gx#syntax-local-e__% (@lambda 2 #f))
  (declare-type gx#syntax-local-e__0 (@lambda 1 #f))
  (declare-type
   gx#syntax-local-e
   (@case-lambda (1 gx#syntax-local-e__0) (2 gx#syntax-local-e__%)))
  (declare-type gx#syntax-local-value__% (@lambda 2 #f))
  (declare-type gx#syntax-local-value__0 (@lambda 1 #f))
  (declare-type
   gx#syntax-local-value
   (@case-lambda (1 gx#syntax-local-value__0) (2 gx#syntax-local-value__%)))
  (declare-type gx#raise-syntax-ref-error (@lambda 1 #f)))
