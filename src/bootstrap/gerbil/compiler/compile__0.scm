(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#current-compile-marks (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx12833_ . _args12834_)
      (let* ((_g1283612846_
              (lambda (_g1283712843_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1283712843_)))
             (_g1283512874_
              (lambda (_g1283712849_)
                (if (gx#stx-pair? _g1283712849_)
                    (let ((_e1283912851_ (gx#stx-e _g1283712849_)))
                      (let ((_hd1284012854_ (##car _e1283912851_))
                            (_tl1284112856_ (##cdr _e1283912851_)))
                        ((lambda (_L12859_)
                           (let ((_$e12869_
                                  (table-ref
                                   (gxc#current-compile-methods)
                                   (gx#stx-e _L12859_)
                                   '#f)))
                             (if _$e12869_
                                 ((lambda (_method12872_)
                                    (apply _method12872_
                                           _stx12833_
                                           _args12834_))
                                  _$e12869_)
                                 (gxc#raise-compile-error
                                  '"Cannot compile; missing method"
                                  _stx12833_
                                  _L12859_))))
                         _hd1284012854_)))
                    (_g1283612846_ _g1283712849_)))))
        (_g1283512874_ _stx12833_))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl12830_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12830_ '%#begin-annotation void)
           (table-set! _tbl12830_ '%#lambda void)
           (table-set! _tbl12830_ '%#case-lambda void)
           (table-set! _tbl12830_ '%#let-values void)
           (table-set! _tbl12830_ '%#letrec-values void)
           (table-set! _tbl12830_ '%#letrec*-values void)
           (table-set! _tbl12830_ '%#quote void)
           (table-set! _tbl12830_ '%#quote-syntax void)
           (table-set! _tbl12830_ '%#call void)
           (table-set! _tbl12830_ '%#if void)
           (table-set! _tbl12830_ '%#ref void)
           (table-set! _tbl12830_ '%#set! void)
           (table-set! _tbl12830_ '%#struct-instance? void)
           (table-set! _tbl12830_ '%#struct-direct-instance? void)
           (table-set! _tbl12830_ '%#struct-ref void)
           (table-set! _tbl12830_ '%#struct-set! void)
           (table-set! _tbl12830_ '%#struct-direct-ref void)
           (table-set! _tbl12830_ '%#struct-direct-set! void)
           (table-set! _tbl12830_ '%#struct-unchecked-ref void)
           (table-set! _tbl12830_ '%#struct-unchecked-set! void)
           _tbl12830_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl12826_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12826_ '%#begin void)
           (table-set! _tbl12826_ '%#begin-syntax void)
           (table-set! _tbl12826_ '%#begin-foreign void)
           (table-set! _tbl12826_ '%#module void)
           (table-set! _tbl12826_ '%#import void)
           (table-set! _tbl12826_ '%#export void)
           (table-set! _tbl12826_ '%#provide void)
           (table-set! _tbl12826_ '%#extern void)
           (table-set! _tbl12826_ '%#define-values void)
           (table-set! _tbl12826_ '%#define-syntax void)
           (table-set! _tbl12826_ '%#define-alias void)
           (table-set! _tbl12826_ '%#declare void)
           _tbl12826_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl12822_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12822_ (force gxc#&void-special-form))
           (hash-copy! _tbl12822_ (force gxc#&void-expression))
           _tbl12822_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl12818_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12818_ '%#begin-annotation false)
           (table-set! _tbl12818_ '%#lambda false)
           (table-set! _tbl12818_ '%#case-lambda false)
           (table-set! _tbl12818_ '%#let-values false)
           (table-set! _tbl12818_ '%#letrec-values false)
           (table-set! _tbl12818_ '%#letrec*-values false)
           (table-set! _tbl12818_ '%#quote false)
           (table-set! _tbl12818_ '%#quote-syntax false)
           (table-set! _tbl12818_ '%#call false)
           (table-set! _tbl12818_ '%#if false)
           (table-set! _tbl12818_ '%#ref false)
           (table-set! _tbl12818_ '%#set! false)
           (table-set! _tbl12818_ '%#struct-instance? false)
           (table-set! _tbl12818_ '%#struct-direct-instance? false)
           (table-set! _tbl12818_ '%#struct-ref false)
           (table-set! _tbl12818_ '%#struct-set! false)
           (table-set! _tbl12818_ '%#struct-direct-ref false)
           (table-set! _tbl12818_ '%#struct-direct-set! false)
           (table-set! _tbl12818_ '%#struct-unchecked-ref false)
           (table-set! _tbl12818_ '%#struct-unchecked-set! false)
           _tbl12818_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl12814_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12814_ '%#begin false)
           (table-set! _tbl12814_ '%#begin-syntax false)
           (table-set! _tbl12814_ '%#begin-foreign false)
           (table-set! _tbl12814_ '%#module false)
           (table-set! _tbl12814_ '%#import false)
           (table-set! _tbl12814_ '%#export false)
           (table-set! _tbl12814_ '%#provide false)
           (table-set! _tbl12814_ '%#extern false)
           (table-set! _tbl12814_ '%#define-values false)
           (table-set! _tbl12814_ '%#define-syntax false)
           (table-set! _tbl12814_ '%#define-alias false)
           (table-set! _tbl12814_ '%#declare false)
           _tbl12814_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl12810_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12810_ (force gxc#&false-special-form))
           (hash-copy! _tbl12810_ (force gxc#&false-expression))
           _tbl12810_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl12806_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12806_ (force gxc#&void-expression))
           (hash-copy! _tbl12806_ (force gxc#&void-special-form))
           (table-set! _tbl12806_ '%#begin gxc#collect-begin%)
           (table-set! _tbl12806_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl12806_ '%#module gxc#collect-module%)
           (table-set!
            _tbl12806_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl12806_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl12806_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx12799_ . _args12801_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12799_ _args12801_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl12796_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12796_ (force gxc#&void))
           (table-set! _tbl12796_ '%#begin gxc#collect-begin%)
           (table-set! _tbl12796_ '%#module gxc#lift-modules-module%)
           _tbl12796_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx12789_ . _args12791_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12789_ _args12791_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl12786_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12786_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl12786_ '%#begin-syntax false)
           (table-set! _tbl12786_ '%#begin-foreign true)
           (table-set! _tbl12786_ '%#begin-annotation true)
           (table-set! _tbl12786_ '%#module false)
           (table-set! _tbl12786_ '%#import false)
           (table-set! _tbl12786_ '%#export false)
           (table-set! _tbl12786_ '%#provide false)
           (table-set! _tbl12786_ '%#extern false)
           (table-set! _tbl12786_ '%#define-values true)
           (table-set! _tbl12786_ '%#define-syntax false)
           (table-set! _tbl12786_ '%#define-alias false)
           (table-set! _tbl12786_ '%#declare false)
           (table-set! _tbl12786_ '%#lambda true)
           (table-set! _tbl12786_ '%#case-lambda true)
           (table-set! _tbl12786_ '%#let-values true)
           (table-set! _tbl12786_ '%#letrec-values true)
           (table-set! _tbl12786_ '%#letrec*-values true)
           (table-set! _tbl12786_ '%#quote true)
           (table-set! _tbl12786_ '%#call true)
           (table-set! _tbl12786_ '%#if true)
           (table-set! _tbl12786_ '%#ref true)
           (table-set! _tbl12786_ '%#set! true)
           (table-set! _tbl12786_ '%#struct-instance? true)
           (table-set! _tbl12786_ '%#struct-direct-instance? true)
           (table-set! _tbl12786_ '%#struct-ref true)
           (table-set! _tbl12786_ '%#struct-set! true)
           (table-set! _tbl12786_ '%#struct-direct-ref true)
           (table-set! _tbl12786_ '%#struct-direct-set! true)
           (table-set! _tbl12786_ '%#struct-unchecked-ref true)
           (table-set! _tbl12786_ '%#struct-unchecked-set! true)
           _tbl12786_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx12779_ . _args12781_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12779_ _args12781_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (make-promise
     (lambda ()
       (let ((_tbl12776_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12776_ (force gxc#&false))
           (table-set! _tbl12776_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set!
            _tbl12776_
            '%#begin-annotation
            gxc#find-lambda-expression-begin-annotation%)
           (table-set! _tbl12776_ '%#lambda values)
           (table-set! _tbl12776_ '%#case-lambda values)
           (table-set!
            _tbl12776_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl12776_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl12776_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl12776_)))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx12769_ . _args12771_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12769_ _args12771_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&count-values
    (make-promise
     (lambda ()
       (let ((_tbl12766_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12766_ (force gxc#&false-expression))
           (table-set! _tbl12766_ '%#begin gxc#count-values-begin%)
           (table-set!
            _tbl12766_
            '%#begin-annotation
            gxc#count-values-begin-annotation%)
           (table-set! _tbl12766_ '%#lambda gxc#count-values-single%)
           (table-set! _tbl12766_ '%#case-lambda gxc#count-values-single%)
           (table-set! _tbl12766_ '%#let-values gxc#count-values-let-values%)
           (table-set!
            _tbl12766_
            '%#letrec-values
            gxc#count-values-let-values%)
           (table-set!
            _tbl12766_
            '%#letrec*-values
            gxc#count-values-let-values%)
           (table-set! _tbl12766_ '%#quote gxc#count-values-single%)
           (table-set! _tbl12766_ '%#call gxc#count-values-call%)
           (table-set! _tbl12766_ '%#if gxc#count-values-if%)
           _tbl12766_)))))
  (define gxc#apply-count-values
    (lambda (_stx12759_ . _args12761_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12759_ _args12761_))
       gxc#current-compile-methods
       (force gxc#&count-values))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl12756_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12756_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl12756_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl12756_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set!
            _tbl12756_
            '%#begin-annotation
            gxc#generate-runtime-empty)
           (table-set! _tbl12756_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl12756_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl12756_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl12756_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl12756_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl12756_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl12756_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl12756_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl12756_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl12756_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl12756_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl12756_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl12756_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl12756_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl12756_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl12756_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl12756_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl12756_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl12756_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl12756_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12756_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl12756_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl12756_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl12756_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12756_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12756_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12756_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl12756_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl12752_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12752_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl12752_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl12752_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl12752_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx12745_ . _args12747_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12745_ _args12747_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl12742_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12742_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl12742_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl12742_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl12742_
            '%#begin-annotation
            gxc#generate-runtime-begin-annotation%)
           (table-set!
            _tbl12742_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl12742_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl12742_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl12742_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl12742_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl12742_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl12742_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl12742_ '%#quote gxc#generate-runtime-quote%)
           (table-set!
            _tbl12742_
            '%#quote-syntax
            gxc#generate-runtime-quote-syntax%)
           (table-set! _tbl12742_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl12742_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl12742_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl12742_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl12742_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl12742_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl12742_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl12742_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl12742_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl12742_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl12742_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl12742_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl12742_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx12735_ . _args12737_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12735_ _args12737_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl12732_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12732_ (force gxc#&generate-runtime))
           (table-set!
            _tbl12732_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl12732_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx12725_ . _args12727_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12725_ _args12727_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl12722_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12722_ '%#begin gxc#collect-begin%)
           (table-set!
            _tbl12722_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl12722_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl12722_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl12722_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl12722_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl12722_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl12722_ '%#quote void)
           (table-set! _tbl12722_ '%#quote-syntax void)
           (table-set! _tbl12722_ '%#call gxc#collect-operands)
           (table-set! _tbl12722_ '%#if gxc#collect-operands)
           (table-set! _tbl12722_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl12722_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl12722_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl12722_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl12722_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl12722_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl12722_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl12722_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl12722_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl12722_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl12722_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx12715_ . _args12717_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12715_ _args12717_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl12712_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12712_ (force gxc#&void-expression))
           (table-set! _tbl12712_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl12712_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl12712_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl12712_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl12712_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl12712_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl12712_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl12712_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl12712_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl12712_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl12712_ '%#begin-foreign void)
           (table-set! _tbl12712_ '%#declare void)
           _tbl12712_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx12705_ . _args12707_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12705_ _args12707_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl12702_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12702_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl12702_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl12702_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl12702_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl12702_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set!
            _tbl12702_
            '%#begin-annotation
            gxc#generate-meta-phi-expr)
           (table-set! _tbl12702_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl12702_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl12702_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl12702_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl12702_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl12702_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl12702_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl12702_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl12702_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl12702_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl12702_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12702_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12702_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl12702_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl12702_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12702_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12702_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12702_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12702_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl12702_ '%#declare void)
           _tbl12702_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx12695_ . _args12697_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12695_ _args12697_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx12652_ . _args12653_)
      (let* ((_g1265512665_
              (lambda (_g1265612662_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1265612662_)))
             (_g1265412692_
              (lambda (_g1265612668_)
                (if (gx#stx-pair? _g1265612668_)
                    (let ((_e1265812670_ (gx#stx-e _g1265612668_)))
                      (let ((_hd1265912673_ (##car _e1265812670_))
                            (_tl1266012675_ (##cdr _e1265812670_)))
                        ((lambda (_L12678_)
                           (for-each
                            (lambda (_g1268712689_)
                              (apply gxc#compile-e _g1268712689_ _args12653_))
                            (gx#stx-e _L12678_)))
                         _tl1266012675_)))
                    (_g1265512665_ _g1265612668_)))))
        (_g1265412692_ _stx12652_))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx12608_ . _args12609_)
      (let* ((_g1261112621_
              (lambda (_g1261212618_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1261212618_)))
             (_g1261012649_
              (lambda (_g1261212624_)
                (if (gx#stx-pair? _g1261212624_)
                    (let ((_e1261412626_ (gx#stx-e _g1261212624_)))
                      (let ((_hd1261512629_ (##car _e1261412626_))
                            (_tl1261612631_ (##cdr _e1261412626_)))
                        ((lambda (_L12634_)
                           (call-with-parameters
                            (lambda ()
                              (for-each
                               (lambda (_g1264412646_)
                                 (apply gxc#compile-e
                                        _g1264412646_
                                        _args12609_))
                               (gx#stx-e _L12634_)))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl1261612631_)))
                    (_g1261112621_ _g1261212624_)))))
        (_g1261012649_ _stx12608_))))
  (define gxc#collect-module%
    (lambda (_stx12550_ . _args12551_)
      (let* ((_g1255312567_
              (lambda (_g1255412564_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1255412564_)))
             (_g1255212605_
              (lambda (_g1255412570_)
                (if (gx#stx-pair? _g1255412570_)
                    (let ((_e1255712572_ (gx#stx-e _g1255412570_)))
                      (let ((_hd1255812575_ (##car _e1255712572_))
                            (_tl1255912577_ (##cdr _e1255712572_)))
                        (if (gx#stx-pair? _tl1255912577_)
                            (let ((_e1256012580_ (gx#stx-e _tl1255912577_)))
                              (let ((_hd1256112583_ (##car _e1256012580_))
                                    (_tl1256212585_ (##cdr _e1256012580_)))
                                ((lambda (_L12588_ _L12589_)
                                   (let ((_ctx12602_
                                          (gx#syntax-local-e__0 _L12589_)))
                                     (call-with-parameters
                                      (lambda ()
                                        (apply gxc#compile-e
                                               (##structure-ref
                                                _ctx12602_
                                                '11
                                                gx#module-context::t
                                                '#f)
                                               _args12551_))
                                      gx#current-expander-context
                                      _ctx12602_)))
                                 _tl1256212585_
                                 _hd1256112583_)))
                            (_g1255312567_ _g1255412570_))))
                    (_g1255312567_ _g1255412570_)))))
        (_g1255212605_ _stx12550_))))
  (define gxc#collect-begin-annotation%
    (lambda (_stx12482_ . _args12483_)
      (let* ((_g1248512502_
              (lambda (_g1248612499_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1248612499_)))
             (_g1248412547_
              (lambda (_g1248612505_)
                (if (gx#stx-pair? _g1248612505_)
                    (let ((_e1248912507_ (gx#stx-e _g1248612505_)))
                      (let ((_hd1249012510_ (##car _e1248912507_))
                            (_tl1249112512_ (##cdr _e1248912507_)))
                        (if (gx#stx-pair? _tl1249112512_)
                            (let ((_e1249212515_ (gx#stx-e _tl1249112512_)))
                              (let ((_hd1249312518_ (##car _e1249212515_))
                                    (_tl1249412520_ (##cdr _e1249212515_)))
                                (if (gx#stx-pair? _tl1249412520_)
                                    (let ((_e1249512523_
                                           (gx#stx-e _tl1249412520_)))
                                      (let ((_hd1249612526_
                                             (##car _e1249512523_))
                                            (_tl1249712528_
                                             (##cdr _e1249512523_)))
                                        (if (gx#stx-null? _tl1249712528_)
                                            ((lambda (_L12531_ _L12532_)
                                               (apply gxc#compile-e
                                                      _L12531_
                                                      _args12483_))
                                             _hd1249612526_
                                             _hd1249312518_)
                                            (_g1248512502_ _g1248612505_))))
                                    (_g1248512502_ _g1248612505_))))
                            (_g1248512502_ _g1248612505_))))
                    (_g1248512502_ _g1248612505_)))))
        (_g1248412547_ _stx12482_))))
  (define gxc#collect-body-lambda%
    (lambda (_stx12414_ . _args12415_)
      (let* ((_g1241712434_
              (lambda (_g1241812431_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1241812431_)))
             (_g1241612479_
              (lambda (_g1241812437_)
                (if (gx#stx-pair? _g1241812437_)
                    (let ((_e1242112439_ (gx#stx-e _g1241812437_)))
                      (let ((_hd1242212442_ (##car _e1242112439_))
                            (_tl1242312444_ (##cdr _e1242112439_)))
                        (if (gx#stx-pair? _tl1242312444_)
                            (let ((_e1242412447_ (gx#stx-e _tl1242312444_)))
                              (let ((_hd1242512450_ (##car _e1242412447_))
                                    (_tl1242612452_ (##cdr _e1242412447_)))
                                (if (gx#stx-pair? _tl1242612452_)
                                    (let ((_e1242712455_
                                           (gx#stx-e _tl1242612452_)))
                                      (let ((_hd1242812458_
                                             (##car _e1242712455_))
                                            (_tl1242912460_
                                             (##cdr _e1242712455_)))
                                        (if (gx#stx-null? _tl1242912460_)
                                            ((lambda (_L12463_ _L12464_)
                                               (apply gxc#compile-e
                                                      _L12463_
                                                      _args12415_))
                                             _hd1242812458_
                                             _hd1242512450_)
                                            (_g1241712434_ _g1241812437_))))
                                    (_g1241712434_ _g1241812437_))))
                            (_g1241712434_ _g1241812437_))))
                    (_g1241712434_ _g1241812437_)))))
        (_g1241612479_ _stx12414_))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx12296_ . _args12297_)
      (let* ((_g1229912327_
              (lambda (_g1230012324_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1230012324_)))
             (_g1229812411_
              (lambda (_g1230012330_)
                (if (gx#stx-pair? _g1230012330_)
                    (let ((_e1230312332_ (gx#stx-e _g1230012330_)))
                      (let ((_hd1230412335_ (##car _e1230312332_))
                            (_tl1230512337_ (##cdr _e1230312332_)))
                        (if (gx#stx-pair/null? _tl1230512337_)
                            (if (fx>= (gx#stx-length _tl1230512337_) '0)
                                (let ((_g12887_
                                       (gx#syntax-split-splice
                                        _tl1230512337_
                                        '0)))
                                  (begin
                                    (let ((_g12888_
                                           (if (##values? _g12887_)
                                               (##vector-length _g12887_)
                                               1)))
                                      (if (not (##fx= _g12888_ 2))
                                          (error "Context expects 2 values"
                                                 _g12888_)))
                                    (let ((_target1230612340_
                                           (##vector-ref _g12887_ 0))
                                          (_tl1230812342_
                                           (##vector-ref _g12887_ 1)))
                                      (if (gx#stx-null? _tl1230812342_)
                                          (letrec ((_loop1230912345_
                                                    (lambda (_hd1230712348_
                                                             _body1231312350_
                                                             _hd1231412352_)
                                                      (if (gx#stx-pair?
                                                           _hd1230712348_)
                                                          (let ((_e1231012355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1230712348_)))
                    (let ((_lp-hd1231112358_ (##car _e1231012355_))
                          (_lp-tl1231212360_ (##cdr _e1231012355_)))
                      (if (gx#stx-pair? _lp-hd1231112358_)
                          (let ((_e1231712363_ (gx#stx-e _lp-hd1231112358_)))
                            (let ((_hd1231812366_ (##car _e1231712363_))
                                  (_tl1231912368_ (##cdr _e1231712363_)))
                              (if (gx#stx-pair? _tl1231912368_)
                                  (let ((_e1232012371_
                                         (gx#stx-e _tl1231912368_)))
                                    (let ((_hd1232112374_
                                           (##car _e1232012371_))
                                          (_tl1232212376_
                                           (##cdr _e1232012371_)))
                                      (if (gx#stx-null? _tl1232212376_)
                                          (_loop1230912345_
                                           _lp-tl1231212360_
                                           (cons _hd1232112374_
                                                 _body1231312350_)
                                           (cons _hd1231812366_
                                                 _hd1231412352_))
                                          (_g1229912327_ _g1230012330_))))
                                  (_g1229912327_ _g1230012330_))))
                          (_g1229912327_ _g1230012330_))))
                  (let ((_body1231512379_ (reverse _body1231312350_))
                        (_hd1231612381_ (reverse _hd1231412352_)))
                    ((lambda (_L12384_ _L12385_)
                       (for-each
                        (lambda (_g1239912401_)
                          (apply gxc#compile-e _g1239912401_ _args12297_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1240312406_ _g1240412408_)
                                    (cons _g1240312406_ _g1240412408_))
                                  '()
                                  _L12384_))))
                     _body1231512379_
                     _hd1231612381_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1230912345_
                                             _target1230612340_
                                             '()
                                             '()))
                                          (_g1229912327_ _g1230012330_)))))
                                (_g1229912327_ _g1230012330_))
                            (_g1229912327_ _g1230012330_))))
                    (_g1229912327_ _g1230012330_)))))
        (_g1229812411_ _stx12296_))))
  (define gxc#collect-body-let-values%
    (lambda (_stx12149_ . _args12150_)
      (let* ((_g1215212187_
              (lambda (_g1215312184_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1215312184_)))
             (_g1215112293_
              (lambda (_g1215312190_)
                (if (gx#stx-pair? _g1215312190_)
                    (let ((_e1215712192_ (gx#stx-e _g1215312190_)))
                      (let ((_hd1215812195_ (##car _e1215712192_))
                            (_tl1215912197_ (##cdr _e1215712192_)))
                        (if (gx#stx-pair? _tl1215912197_)
                            (let ((_e1216012200_ (gx#stx-e _tl1215912197_)))
                              (let ((_hd1216112203_ (##car _e1216012200_))
                                    (_tl1216212205_ (##cdr _e1216012200_)))
                                (if (gx#stx-pair/null? _hd1216112203_)
                                    (if (fx>= (gx#stx-length _hd1216112203_)
                                              '0)
                                        (let ((_g12889_
                                               (gx#syntax-split-splice
                                                _hd1216112203_
                                                '0)))
                                          (begin
                                            (let ((_g12890_
                                                   (if (##values? _g12889_)
                                                       (##vector-length
                                                        _g12889_)
                                                       1)))
                                              (if (not (##fx= _g12890_ 2))
                                                  (error "Context expects 2 values"
                                                         _g12890_)))
                                            (let ((_target1216312208_
                                                   (##vector-ref _g12889_ 0))
                                                  (_tl1216512210_
                                                   (##vector-ref _g12889_ 1)))
                                              (if (gx#stx-null? _tl1216512210_)
                                                  (letrec ((_loop1216612213_
                                                            (lambda (_hd1216412216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr1217012218_
                             _hd1217112220_)
                      (if (gx#stx-pair? _hd1216412216_)
                          (let ((_e1216712223_ (gx#stx-e _hd1216412216_)))
                            (let ((_lp-hd1216812226_ (##car _e1216712223_))
                                  (_lp-tl1216912228_ (##cdr _e1216712223_)))
                              (if (gx#stx-pair? _lp-hd1216812226_)
                                  (let ((_e1217412231_
                                         (gx#stx-e _lp-hd1216812226_)))
                                    (let ((_hd1217512234_
                                           (##car _e1217412231_))
                                          (_tl1217612236_
                                           (##cdr _e1217412231_)))
                                      (if (gx#stx-pair? _tl1217612236_)
                                          (let ((_e1217712239_
                                                 (gx#stx-e _tl1217612236_)))
                                            (let ((_hd1217812242_
                                                   (##car _e1217712239_))
                                                  (_tl1217912244_
                                                   (##cdr _e1217712239_)))
                                              (if (gx#stx-null? _tl1217912244_)
                                                  (_loop1216612213_
                                                   _lp-tl1216912228_
                                                   (cons _hd1217812242_
                                                         _expr1217012218_)
                                                   (cons _hd1217512234_
                                                         _hd1217112220_))
                                                  (_g1215212187_
                                                   _g1215312190_))))
                                          (_g1215212187_ _g1215312190_))))
                                  (_g1215212187_ _g1215312190_))))
                          (let ((_expr1217212247_ (reverse _expr1217012218_))
                                (_hd1217312249_ (reverse _hd1217112220_)))
                            (if (gx#stx-pair? _tl1216212205_)
                                (let ((_e1218012252_
                                       (gx#stx-e _tl1216212205_)))
                                  (let ((_hd1218112255_ (##car _e1218012252_))
                                        (_tl1218212257_ (##cdr _e1218012252_)))
                                    (if (gx#stx-null? _tl1218212257_)
                                        ((lambda (_L12260_ _L12261_ _L12262_)
                                           (for-each
                                            (lambda (_g1228112283_)
                                              (apply gxc#compile-e
                                                     _g1228112283_
                                                     _args12150_))
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g1228512288_
                                                               _g1228612290_)
                                                        (cons _g1228512288_
                                                              _g1228612290_))
                                                      (cons _L12260_ '())
                                                      _L12261_))))
                                         _hd1218112255_
                                         _expr1217212247_
                                         _hd1217312249_)
                                        (_g1215212187_ _g1215312190_))))
                                (_g1215212187_ _g1215312190_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1216612213_
                                                     _target1216312208_
                                                     '()
                                                     '()))
                                                  (_g1215212187_
                                                   _g1215312190_)))))
                                        (_g1215212187_ _g1215312190_))
                                    (_g1215212187_ _g1215312190_))))
                            (_g1215212187_ _g1215312190_))))
                    (_g1215212187_ _g1215312190_)))))
        (_g1215112293_ _stx12149_))))
  (define gxc#collect-body-setq%
    (lambda (_stx12081_ . _args12082_)
      (let* ((_g1208412101_
              (lambda (_g1208512098_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1208512098_)))
             (_g1208312146_
              (lambda (_g1208512104_)
                (if (gx#stx-pair? _g1208512104_)
                    (let ((_e1208812106_ (gx#stx-e _g1208512104_)))
                      (let ((_hd1208912109_ (##car _e1208812106_))
                            (_tl1209012111_ (##cdr _e1208812106_)))
                        (if (gx#stx-pair? _tl1209012111_)
                            (let ((_e1209112114_ (gx#stx-e _tl1209012111_)))
                              (let ((_hd1209212117_ (##car _e1209112114_))
                                    (_tl1209312119_ (##cdr _e1209112114_)))
                                (if (gx#stx-pair? _tl1209312119_)
                                    (let ((_e1209412122_
                                           (gx#stx-e _tl1209312119_)))
                                      (let ((_hd1209512125_
                                             (##car _e1209412122_))
                                            (_tl1209612127_
                                             (##cdr _e1209412122_)))
                                        (if (gx#stx-null? _tl1209612127_)
                                            ((lambda (_L12130_ _L12131_)
                                               (apply gxc#compile-e
                                                      _L12130_
                                                      _args12082_))
                                             _hd1209512125_
                                             _hd1209212117_)
                                            (_g1208412101_ _g1208512104_))))
                                    (_g1208412101_ _g1208512104_))))
                            (_g1208412101_ _g1208512104_))))
                    (_g1208412101_ _g1208512104_)))))
        (_g1208312146_ _stx12081_))))
  (define gxc#collect-operands
    (lambda (_stx11994_ . _args11995_)
      (let* ((_g1199712016_
              (lambda (_g1199812013_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1199812013_)))
             (_g1199612078_
              (lambda (_g1199812019_)
                (if (gx#stx-pair? _g1199812019_)
                    (let ((_e1200012021_ (gx#stx-e _g1199812019_)))
                      (let ((_hd1200112024_ (##car _e1200012021_))
                            (_tl1200212026_ (##cdr _e1200012021_)))
                        (if (gx#stx-pair/null? _tl1200212026_)
                            (if (fx>= (gx#stx-length _tl1200212026_) '0)
                                (let ((_g12891_
                                       (gx#syntax-split-splice
                                        _tl1200212026_
                                        '0)))
                                  (begin
                                    (let ((_g12892_
                                           (if (##values? _g12891_)
                                               (##vector-length _g12891_)
                                               1)))
                                      (if (not (##fx= _g12892_ 2))
                                          (error "Context expects 2 values"
                                                 _g12892_)))
                                    (let ((_target1200312029_
                                           (##vector-ref _g12891_ 0))
                                          (_tl1200512031_
                                           (##vector-ref _g12891_ 1)))
                                      (if (gx#stx-null? _tl1200512031_)
                                          (letrec ((_loop1200612034_
                                                    (lambda (_hd1200412037_
                                                             _rands1201012039_)
                                                      (if (gx#stx-pair?
                                                           _hd1200412037_)
                                                          (let ((_e1200712042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1200412037_)))
                    (let ((_lp-hd1200812045_ (##car _e1200712042_))
                          (_lp-tl1200912047_ (##cdr _e1200712042_)))
                      (_loop1200612034_
                       _lp-tl1200912047_
                       (cons _lp-hd1200812045_ _rands1201012039_))))
                  (let ((_rands1201112050_ (reverse _rands1201012039_)))
                    ((lambda (_L12053_)
                       (for-each
                        (lambda (_g1206612068_)
                          (apply gxc#compile-e _g1206612068_ _args11995_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1207012073_ _g1207112075_)
                                    (cons _g1207012073_ _g1207112075_))
                                  '()
                                  _L12053_))))
                     _rands1201112050_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1200612034_
                                             _target1200312029_
                                             '()))
                                          (_g1199712016_ _g1199812019_)))))
                                (_g1199712016_ _g1199812019_))
                            (_g1199712016_ _g1199812019_))))
                    (_g1199712016_ _g1199812019_)))))
        (_g1199612078_ _stx11994_))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx11925_)
      (let* ((_g1192711944_
              (lambda (_g1192811941_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1192811941_)))
             (_g1192611991_
              (lambda (_g1192811947_)
                (if (gx#stx-pair? _g1192811947_)
                    (let ((_e1193111949_ (gx#stx-e _g1192811947_)))
                      (let ((_hd1193211952_ (##car _e1193111949_))
                            (_tl1193311954_ (##cdr _e1193111949_)))
                        (if (gx#stx-pair? _tl1193311954_)
                            (let ((_e1193411957_ (gx#stx-e _tl1193311954_)))
                              (let ((_hd1193511960_ (##car _e1193411957_))
                                    (_tl1193611962_ (##cdr _e1193411957_)))
                                (if (gx#stx-pair? _tl1193611962_)
                                    (let ((_e1193711965_
                                           (gx#stx-e _tl1193611962_)))
                                      (let ((_hd1193811968_
                                             (##car _e1193711965_))
                                            (_tl1193911970_
                                             (##cdr _e1193711965_)))
                                        (if (gx#stx-null? _tl1193911970_)
                                            ((lambda (_L11973_ _L11974_)
                                               (gx#stx-for-each1
                                                (lambda (_bind11989_)
                                                  (if (gx#identifier?
                                                       _bind11989_)
                                                      (gxc#add-module-binding!
                                                       _bind11989_
                                                       '#f)
                                                      '#!void))
                                                _L11974_))
                                             _hd1193811968_
                                             _hd1193511960_)
                                            (_g1192711944_ _g1192811947_))))
                                    (_g1192711944_ _g1192811947_))))
                            (_g1192711944_ _g1192811947_))))
                    (_g1192711944_ _g1192811947_)))))
        (_g1192611991_ _stx11925_))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx11858_)
      (let* ((_g1186011877_
              (lambda (_g1186111874_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1186111874_)))
             (_g1185911922_
              (lambda (_g1186111880_)
                (if (gx#stx-pair? _g1186111880_)
                    (let ((_e1186411882_ (gx#stx-e _g1186111880_)))
                      (let ((_hd1186511885_ (##car _e1186411882_))
                            (_tl1186611887_ (##cdr _e1186411882_)))
                        (if (gx#stx-pair? _tl1186611887_)
                            (let ((_e1186711890_ (gx#stx-e _tl1186611887_)))
                              (let ((_hd1186811893_ (##car _e1186711890_))
                                    (_tl1186911895_ (##cdr _e1186711890_)))
                                (if (gx#stx-pair? _tl1186911895_)
                                    (let ((_e1187011898_
                                           (gx#stx-e _tl1186911895_)))
                                      (let ((_hd1187111901_
                                             (##car _e1187011898_))
                                            (_tl1187211903_
                                             (##cdr _e1187011898_)))
                                        (if (gx#stx-null? _tl1187211903_)
                                            ((lambda (_L11906_ _L11907_)
                                               (gxc#add-module-binding!
                                                _L11907_
                                                '#t))
                                             _hd1187111901_
                                             _hd1186811893_)
                                            (_g1186011877_ _g1186111880_))))
                                    (_g1186011877_ _g1186111880_))))
                            (_g1186011877_ _g1186111880_))))
                    (_g1186011877_ _g1186111880_)))))
        (_g1185911922_ _stx11858_))))
  (define gxc#lift-modules-module%
    (lambda (_stx11800_ _modules11801_)
      (let* ((_g1180311817_
              (lambda (_g1180411814_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1180411814_)))
             (_g1180211855_
              (lambda (_g1180411820_)
                (if (gx#stx-pair? _g1180411820_)
                    (let ((_e1180711822_ (gx#stx-e _g1180411820_)))
                      (let ((_hd1180811825_ (##car _e1180711822_))
                            (_tl1180911827_ (##cdr _e1180711822_)))
                        (if (gx#stx-pair? _tl1180911827_)
                            (let ((_e1181011830_ (gx#stx-e _tl1180911827_)))
                              (let ((_hd1181111833_ (##car _e1181011830_))
                                    (_tl1181211835_ (##cdr _e1181011830_)))
                                ((lambda (_L11838_ _L11839_)
                                   (let ((_ctx11852_
                                          (gx#syntax-local-e__0 _L11839_)))
                                     (begin
                                       (set-box!
                                        _modules11801_
                                        (cons _ctx11852_
                                              (unbox _modules11801_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           (##structure-ref
                                            _ctx11852_
                                            '11
                                            gx#module-context::t
                                            '#f)
                                           _modules11801_))
                                        gx#current-expander-context
                                        _ctx11852_))))
                                 _tl1181211835_
                                 _hd1181111833_)))
                            (_g1180311817_ _g1180411820_))))
                    (_g1180311817_ _g1180411820_)))))
        (_g1180211855_ _stx11800_))))
  (define gxc#add-module-binding!
    (lambda (_id11794_ _syntax?11795_)
      (let ((_eid11797_
             (##structure-ref
              (gx#resolve-identifier__0 _id11794_)
              '1
              gx#binding::t
              '#f))
            (_ht11798_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid11797_)
            '#!void
            (table-set!
             _ht11798_
             _eid11797_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid11797_)
              _syntax?11795_))))))
  (define gxc#runtime-identifier=?
    (lambda (_id111787_ _id211788_)
      (letrec ((_symbol-e11790_
                (lambda (_id11792_)
                  (if (symbol? _id11792_)
                      _id11792_
                      (gxc#generate-runtime-binding-id _id11792_)))))
        (eq? (_symbol-e11790_ _id111787_) (_symbol-e11790_ _id211788_)))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id11765_)
      (let ((_$e11767_
             (if (##structure-direct-instance-of?
                  _id11765_
                  'gx#syntax-quote::t)
                 (gx#resolve-identifier__0 _id11765_)
                 '#f)))
        (if _$e11767_
            ((lambda (_bind11770_)
               (let ((_eid11772_
                      (##structure-ref _bind11770_ '1 gx#binding::t '#f))
                     (_ht11773_
                      (##structure-ref
                       (gxc#current-compile-symbol-table)
                       '2
                       gxc#symbol-table::t
                       '#f)))
                 (if (interned-symbol? _eid11772_)
                     _eid11772_
                     (let ((_$e11775_ (table-ref _ht11773_ _eid11772_ '#f)))
                       (if _$e11775_
                           (values _$e11775_)
                           (if (##structure-instance-of?
                                _bind11770_
                                'gx#local-binding::t)
                               (let ((_gid11778_
                                      (gxc#generate-runtime-gensym-reference__0
                                       _eid11772_)))
                                 (begin
                                   (table-set! _ht11773_ _eid11772_ _gid11778_)
                                   _gid11778_))
                               (if (##structure-instance-of?
                                    _bind11770_
                                    'gx#module-binding::t)
                                   (let ((_gid11785_
                                          (let ((_$e11780_
                                                 (##structure-ref
                                                  (##structure-ref
                                                   _bind11770_
                                                   '4
                                                   gx#module-binding::t
                                                   '#f)
                                                  '6
                                                  gx#module-context::t
                                                  '#f)))
                                            (if _$e11780_
                                                ((lambda (_ns11783_)
                                                   (make-symbol
                                                    _ns11783_
                                                    '"#"
                                                    _eid11772_))
                                                 _$e11780_)
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _eid11772_)))))
                                     (begin
                                       (table-set!
                                        _ht11773_
                                        _eid11772_
                                        _gid11785_)
                                       _gid11785_))
                                   (gxc#raise-compile-error
                                    '"Cannot compile reference to uninterned binding"
                                    _id11765_
                                    _eid11772_
                                    _bind11770_))))))))
             _$e11767_)
            (if (interned-symbol? (gx#stx-e _id11765_))
                (gx#stx-e _id11765_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id11765_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id11763_)
      (if (gx#identifier? _id11763_)
          (gxc#generate-runtime-binding-id _id11763_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym11743_ _quote?11744_)
        (let* ((_ht11746_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e11748_ (table-ref _ht11746_ _sym11743_ '#f)))
          (if _$e11748_
              (values _$e11748_)
              (let ((_g11751_
                     (if _quote?11744_
                         (make-symbol
                          '"__"
                          _sym11743_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym11743_ '"_"))))
                (begin
                  (table-set! _ht11746_ _sym11743_ _g11751_)
                  _g11751_))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym11756_)
          (let ((_quote?11758_ '#f))
            (gxc#generate-runtime-gensym-reference__%
             _sym11756_
             _quote?11758_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g12894_
          (let ((_g12893_ (length _g12894_)))
            (cond ((##fx= _g12893_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g12894_))
                  ((##fx= _g12893_ 2)
                   (apply gxc#generate-runtime-gensym-reference__% _g12894_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g12894_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id11740_)
      (gxc#generate-runtime-identifier-key
       (gx#core-identifier-key _id11740_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key11700_)
      (if (interned-symbol? _key11700_)
          _key11700_
          (if (uninterned-symbol? _key11700_)
              (gxc#generate-runtime-gensym-reference__0 _key11700_)
              (let* ((_key1170111708_ _key11700_)
                     (_E1170311712_
                      (lambda ()
                        (error '"No clause matching" _key1170111708_)))
                     (_K1170411728_
                      (lambda (_mark11715_ _eid11716_)
                        (let ((_$e11718_
                               (##structure-ref
                                _mark11715_
                                '1
                                gx#expander-mark::t
                                '#f)))
                          (if _$e11718_
                              ((lambda (_ht11721_)
                                 (let ((_$e11723_
                                        (table-ref _ht11721_ _eid11716_ '#f)))
                                   (if _$e11723_
                                       ((lambda (_id11726_)
                                          (if (interned-symbol? _id11726_)
                                              _id11726_
                                              (gxc#generate-runtime-gensym-reference__0
                                               _id11726_)))
                                        _$e11723_)
                                       (gxc#generate-runtime-identifier-key
                                        _eid11716_))))
                               _$e11718_)
                              (gxc#generate-runtime-identifier-key
                               _eid11716_))))))
                (if (##pair? _key1170111708_)
                    (let ((_hd1170511731_ (##car _key1170111708_))
                          (_tl1170611733_ (##cdr _key1170111708_)))
                      (let* ((_eid11736_ _hd1170511731_)
                             (_mark11738_ _tl1170611733_))
                        (_K1170411728_ _mark11738_ _eid11736_)))
                    (_E1170311712_)))))))
  (begin
    (define gxc#generate-runtime-temporary__%
      (lambda (_top11687_)
        (if _top11687_
            (let ((_ns11689_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi11690_ (gx#current-expander-phi)))
              (if (fxpositive? _phi11690_)
                  (make-symbol
                   _ns11689_
                   '"["
                   (number->string _phi11690_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns11689_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top11696_ '#f))
            (gxc#generate-runtime-temporary__% _top11696_))))
      (define gxc#generate-runtime-temporary
        (lambda _g12896_
          (let ((_g12895_ (length _g12896_)))
            (cond ((##fx= _g12895_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g12896_))
                  ((##fx= _g12895_ 1)
                   (apply gxc#generate-runtime-temporary__% _g12896_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g12896_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx11684_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx11604_)
      (let* ((_g1160611616_
              (lambda (_g1160711613_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1160711613_)))
             (_g1160511681_
              (lambda (_g1160711619_)
                (if (gx#stx-pair? _g1160711619_)
                    (let ((_e1160911621_ (gx#stx-e _g1160711619_)))
                      (let ((_hd1161011624_ (##car _e1160911621_))
                            (_tl1161111626_ (##cdr _e1160911621_)))
                        ((lambda (_L11629_)
                           (let* ((_body11639_
                                   (gx#stx-map1 gxc#compile-e _L11629_))
                                  (_body11678_
                                   (filter (lambda (_stx11641_)
                                             (let* ((_g1164411653_
                                                     (lambda (_g1164511650_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1164511650_)))
                                                    (_g1164311660_
                                                     (lambda (_g1164511656_)
                                                       ((lambda () '#t))))
                                                    (_g1164211675_
                                                     (lambda (_g1164511663_)
                                                       (if (gx#stx-pair?
                                                            _g1164511663_)
                                                           (let ((_e1164611665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1164511663_)))
                     (let ((_hd1164711668_ (##car _e1164611665_))
                           (_tl1164811670_ (##cdr _e1164611665_)))
                       (if (gx#identifier? _hd1164711668_)
                           (if (gx#stx-eq? 'begin _hd1164711668_)
                               (if (gx#stx-null? _tl1164811670_)
                                   ((lambda () '#f))
                                   (_g1164311660_ _g1164511663_))
                               (_g1164311660_ _g1164511663_))
                           (_g1164311660_ _g1164511663_))))
                   (_g1164311660_ _g1164511663_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1164211675_ _stx11641_)))
                                           _body11639_)))
                             (if (fx= (length _body11678_) '1)
                                 (car _body11678_)
                                 (cons 'begin _body11678_))))
                         _tl1161111626_)))
                    (_g1160611616_ _g1160711619_)))))
        (_g1160511681_ _stx11604_))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx11566_)
      (let* ((_g1156811578_
              (lambda (_g1156911575_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1156911575_)))
             (_g1156711601_
              (lambda (_g1156911581_)
                (if (gx#stx-pair? _g1156911581_)
                    (let ((_e1157111583_ (gx#stx-e _g1156911581_)))
                      (let ((_hd1157211586_ (##car _e1157111583_))
                            (_tl1157311588_ (##cdr _e1157111583_)))
                        ((lambda (_L11591_)
                           (cons 'begin (gx#syntax->datum _L11591_)))
                         _tl1157311588_)))
                    (_g1156811578_ _g1156911581_)))))
        (_g1156711601_ _stx11566_))))
  (define gxc#generate-runtime-begin-annotation%
    (lambda (_stx11443_)
      (let* ((_g1144611474_
              (lambda (_g1144711471_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1144711471_)))
             (_g1144511519_
              (lambda (_g1144711477_)
                (if (gx#stx-pair? _g1144711477_)
                    (let ((_e1146111479_ (gx#stx-e _g1144711477_)))
                      (let ((_hd1146211482_ (##car _e1146111479_))
                            (_tl1146311484_ (##cdr _e1146111479_)))
                        (if (gx#stx-pair? _tl1146311484_)
                            (let ((_e1146411487_ (gx#stx-e _tl1146311484_)))
                              (let ((_hd1146511490_ (##car _e1146411487_))
                                    (_tl1146611492_ (##cdr _e1146411487_)))
                                (if (gx#stx-pair? _tl1146611492_)
                                    (let ((_e1146711495_
                                           (gx#stx-e _tl1146611492_)))
                                      (let ((_hd1146811498_
                                             (##car _e1146711495_))
                                            (_tl1146911500_
                                             (##cdr _e1146711495_)))
                                        (if (gx#stx-null? _tl1146911500_)
                                            ((lambda (_L11503_ _L11504_)
                                               (cons 'begin
                                                     (cons (cons 'declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (map gx#syntax->datum _L11504_))
                   (cons (gxc#compile-e _L11503_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1146811498_
                                             _hd1146511490_)
                                            (_g1144611474_ _g1144711477_))))
                                    (_g1144611474_ _g1144711477_))))
                            (_g1144611474_ _g1144711477_))))
                    (_g1144611474_ _g1144711477_))))
             (_g1144411563_
              (lambda (_g1144711522_)
                (if (gx#stx-pair? _g1144711522_)
                    (let ((_e1145011524_ (gx#stx-e _g1144711522_)))
                      (let ((_hd1145111527_ (##car _e1145011524_))
                            (_tl1145211529_ (##cdr _e1145011524_)))
                        (if (gx#stx-pair? _tl1145211529_)
                            (let ((_e1145311532_ (gx#stx-e _tl1145211529_)))
                              (let ((_hd1145411535_ (##car _e1145311532_))
                                    (_tl1145511537_ (##cdr _e1145311532_)))
                                (if (gx#stx-pair? _tl1145511537_)
                                    (let ((_e1145611540_
                                           (gx#stx-e _tl1145511537_)))
                                      (let ((_hd1145711543_
                                             (##car _e1145611540_))
                                            (_tl1145811545_
                                             (##cdr _e1145611540_)))
                                        (if (gx#stx-null? _tl1145811545_)
                                            ((lambda (_L11548_ _L11549_)
                                               (if (gx#identifier? _L11549_)
                                                   (gxc#compile-e _L11548_)
                                                   (_g1144511519_
                                                    _g1144711522_)))
                                             _hd1145711543_
                                             _hd1145411535_)
                                            (_g1144511519_ _g1144711522_))))
                                    (_g1144511519_ _g1144711522_))))
                            (_g1144511519_ _g1144711522_))))
                    (_g1144511519_ _g1144711522_)))))
        (_g1144411563_ _stx11443_))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx11405_)
      (let* ((_g1140711417_
              (lambda (_g1140811414_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1140811414_)))
             (_g1140611440_
              (lambda (_g1140811420_)
                (if (gx#stx-pair? _g1140811420_)
                    (let ((_e1141011422_ (gx#stx-e _g1140811420_)))
                      (let ((_hd1141111425_ (##car _e1141011422_))
                            (_tl1141211427_ (##cdr _e1141011422_)))
                        ((lambda (_L11430_)
                           (cons 'declare (map gx#syntax->datum _L11430_)))
                         _tl1141211427_)))
                    (_g1140711417_ _g1140811420_)))))
        (_g1140611440_ _stx11405_))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx11161_)
      (let* ((_g1116311180_
              (lambda (_g1116411177_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1116411177_)))
             (_g1116211402_
              (lambda (_g1116411183_)
                (if (gx#stx-pair? _g1116411183_)
                    (let ((_e1116711185_ (gx#stx-e _g1116411183_)))
                      (let ((_hd1116811188_ (##car _e1116711185_))
                            (_tl1116911190_ (##cdr _e1116711185_)))
                        (if (gx#stx-pair? _tl1116911190_)
                            (let ((_e1117011193_ (gx#stx-e _tl1116911190_)))
                              (let ((_hd1117111196_ (##car _e1117011193_))
                                    (_tl1117211198_ (##cdr _e1117011193_)))
                                (if (gx#stx-pair? _tl1117211198_)
                                    (let ((_e1117311201_
                                           (gx#stx-e _tl1117211198_)))
                                      (let ((_hd1117411204_
                                             (##car _e1117311201_))
                                            (_tl1117511206_
                                             (##cdr _e1117311201_)))
                                        (if (gx#stx-null? _tl1117511206_)
                                            ((lambda (_L11209_ _L11210_)
                                               (let* ((_g1122711240_
                                                       (lambda (_g1122811237_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1122811237_)))
                                                      (_g1122611354_
                                                       (lambda (_g1122811243_)
                                                         ((lambda ()
                                                            (let* ((_tmp11247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#generate-runtime-temporary__% '#t))
                           (_body11351_
                            (let _lp11249_ ((_rest11251_ _L11210_)
                                            (_k11252_ '0)
                                            (_r11253_ '()))
                              (let* ((_g1125811274_
                                      (lambda (_g1125911271_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1125911271_)))
                                     (_g1125711281_
                                      (lambda (_g1125911277_)
                                        ((lambda () (reverse _r11253_)))))
                                     (_g1125611302_
                                      (lambda (_g1125911284_)
                                        ((lambda (_L11286_)
                                           (if (gx#identifier? _L11286_)
                                               (foldl1 cons
                                                       (cons (cons 'define
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gxc#generate-runtime-binding-id _L11286_)
                                 (cons (gxc#generate-runtime-values->list
                                        _tmp11247_
                                        _k11252_)
                                       '())))
                     '())
               _r11253_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1125711281_ _g1125911284_)))
                                         _g1125911284_)))
                                     (_g1125511326_
                                      (lambda (_g1125911305_)
                                        (if (gx#stx-pair? _g1125911305_)
                                            (let ((_e1126611307_
                                                   (gx#stx-e _g1125911305_)))
                                              (let ((_hd1126711310_
                                                     (##car _e1126611307_))
                                                    (_tl1126811312_
                                                     (##cdr _e1126611307_)))
                                                ((lambda (_L11315_ _L11316_)
                                                   (_lp11249_
                                                    _L11315_
                                                    (fx+ _k11252_ '1)
                                                    (cons (cons 'define
                                                                (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L11316_)
                              (cons (gxc#generate-runtime-values-ref
                                     _tmp11247_
                                     _k11252_
                                     _L11315_)
                                    '())))
                  _r11253_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _tl1126811312_
                                                 _hd1126711310_)))
                                            (_g1125611302_ _g1125911305_))))
                                     (_g1125411348_
                                      (lambda (_g1125911329_)
                                        (if (gx#stx-pair? _g1125911329_)
                                            (let ((_e1126111331_
                                                   (gx#stx-e _g1125911329_)))
                                              (let ((_hd1126211334_
                                                     (##car _e1126111331_))
                                                    (_tl1126311336_
                                                     (##cdr _e1126111331_)))
                                                (if (gx#stx-datum?
                                                     _hd1126211334_)
                                                    (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1126211334_)
                        '#f)
                ((lambda (_L11339_)
                   (_lp11249_ _L11339_ (fx+ _k11252_ '1) _r11253_))
                 _tl1126311336_)
                (_g1125511326_ _g1125911329_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1125511326_
                                                     _g1125911329_))))
                                            (_g1125511326_ _g1125911329_)))))
                                (_g1125411348_ _rest11251_)))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _tmp11247_
                                              (cons (gxc#compile-e _L11209_)
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _tmp11247_
                                         _L11210_
                                         _L11209_)
                                        _body11351_))))))))
              (_g1122511384_
               (lambda (_g1122811357_)
                 (if (gx#stx-pair? _g1122811357_)
                     (let ((_e1123311359_ (gx#stx-e _g1122811357_)))
                       (let ((_hd1123411362_ (##car _e1123311359_))
                             (_tl1123511364_ (##cdr _e1123311359_)))
                         (if (gx#stx-null? _tl1123511364_)
                             ((lambda (_L11367_)
                                (let ((_eid11376_
                                       (gxc#generate-runtime-binding-id
                                        _L11367_)))
                                  (begin
                                    (let ((_lambda-expr1137711379_
                                           (gxc#apply-find-lambda-expression
                                            _L11209_)))
                                      (if _lambda-expr1137711379_
                                          (let ((_lambda-expr11382_
                                                 _lambda-expr1137711379_))
                                            (table-set!
                                             (gxc#current-compile-runtime-names)
                                             _lambda-expr11382_
                                             _eid11376_))
                                          '#f))
                                    (cons 'define
                                          (cons _eid11376_
                                                (cons (gxc#compile-e _L11209_)
                                                      '()))))))
                              _hd1123411362_)
                             (_g1122611354_ _g1122811357_))))
                     (_g1122611354_ _g1122811357_))))
              (_g1122411399_
               (lambda (_g1122811387_)
                 (if (gx#stx-pair? _g1122811387_)
                     (let ((_e1122911389_ (gx#stx-e _g1122811387_)))
                       (let ((_hd1123011392_ (##car _e1122911389_))
                             (_tl1123111394_ (##cdr _e1122911389_)))
                         (if (gx#stx-datum? _hd1123011392_)
                             (if (equal? (gx#stx-e _hd1123011392_) '#f)
                                 (if (gx#stx-null? _tl1123111394_)
                                     ((lambda () (gxc#compile-e _L11209_)))
                                     (_g1122511384_ _g1122811387_))
                                 (_g1122511384_ _g1122811387_))
                             (_g1122511384_ _g1122811387_))))
                     (_g1122511384_ _g1122811387_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1122411399_ _L11210_)))
                                             _hd1117411204_
                                             _hd1117111196_)
                                            (_g1116311180_ _g1116411183_))))
                                    (_g1116311180_ _g1116411183_))))
                            (_g1116311180_ _g1116411183_))))
                    (_g1116311180_ _g1116411183_)))))
        (_g1116211402_ _stx11161_))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals11137_ _hd11138_ _expr11139_)
      (let ((_$e11141_ (gxc#apply-count-values _expr11139_)))
        (if _$e11141_
            ((lambda (_count11144_)
               (let ((_len11146_ (gx#stx-length _hd11138_))
                     (_cmp11147_ (if (gx#stx-list? _hd11138_) fx= fx>=)))
                 (if (let ((_$e11149_ (fx= _len11146_ '0)))
                       (if _$e11149_
                           _$e11149_
                           (_cmp11147_ _count11144_ _len11146_)))
                     '#!void
                     (gxc#raise-compile-error
                      '"Value count mismatch"
                      _expr11139_
                      _hd11138_))))
             _$e11141_)
            (let* ((_len11152_ (gx#stx-length _hd11138_))
                   (_cmp11154_ (if (gx#stx-list? _hd11138_) '##fx= '##fx>=))
                   (_errmsg11156_
                    (string-append
                     (if (gx#stx-list? _hd11138_)
                         '"Context expects "
                         '"Context expects at least ")
                     (number->string _len11152_)
                     '" values"))
                   (_count11158_ (gxc#generate-runtime-temporary__0)))
              (if (if (not (gx#stx-list? _hd11138_)) (fx= _len11152_ '0) '#f)
                  '#!void
                  (cons 'let
                        (cons (cons (cons _count11158_
                                          (cons (gxc#generate-runtime-values-count
                                                 _vals11137_)
                                                '()))
                                    '())
                              (cons (cons 'if
                                          (cons (cons 'not
                                                      (cons (cons _cmp11154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _count11158_ (cons _len11152_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons 'error
                                                            (cons _errmsg11156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _count11158_ '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))))))
  (define gxc#generate-runtime-values-count
    (lambda (_var11135_)
      (cons 'if
            (cons (cons '##values? (cons _var11135_ '()))
                  (cons (cons '##vector-length (cons _var11135_ '()))
                        (cons '1 '()))))))
  (define gxc#generate-runtime-values-ref
    (lambda (_var11131_ _i11132_ _rest11133_)
      (if (if (fx= _i11132_ '0) (not (gx#stx-pair? _rest11133_)) '#f)
          (cons 'if
                (cons (cons '##values? (cons _var11131_ '()))
                      (cons (cons '##vector-ref
                                  (cons _var11131_ (cons '0 '())))
                            (cons _var11131_ '()))))
          (cons '##vector-ref (cons _var11131_ (cons _i11132_ '()))))))
  (define gxc#generate-runtime-values->list
    (lambda (_var11128_ _i11129_)
      (if (fx= _i11129_ '0)
          (cons 'if
                (cons (cons '##values? (cons _var11128_ '()))
                      (cons (cons '##vector->list (cons _var11128_ '()))
                            (cons (cons 'list (cons _var11128_ '())) '()))))
          (if (fx= _i11129_ '1)
              (cons 'if
                    (cons (cons '##values? (cons _var11128_ '()))
                          (cons (cons '##cdr
                                      (cons (cons '##vector->list
                                                  (cons _var11128_ '()))
                                            '()))
                                (cons ''() '()))))
              (cons 'list-tail
                    (cons (cons '##vector->list (cons _var11128_ '()))
                          (cons _i11129_ '())))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx11061_)
      (let* ((_g1106311080_
              (lambda (_g1106411077_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1106411077_)))
             (_g1106211125_
              (lambda (_g1106411083_)
                (if (gx#stx-pair? _g1106411083_)
                    (let ((_e1106711085_ (gx#stx-e _g1106411083_)))
                      (let ((_hd1106811088_ (##car _e1106711085_))
                            (_tl1106911090_ (##cdr _e1106711085_)))
                        (if (gx#stx-pair? _tl1106911090_)
                            (let ((_e1107011093_ (gx#stx-e _tl1106911090_)))
                              (let ((_hd1107111096_ (##car _e1107011093_))
                                    (_tl1107211098_ (##cdr _e1107011093_)))
                                (if (gx#stx-pair? _tl1107211098_)
                                    (let ((_e1107311101_
                                           (gx#stx-e _tl1107211098_)))
                                      (let ((_hd1107411104_
                                             (##car _e1107311101_))
                                            (_tl1107511106_
                                             (##cdr _e1107311101_)))
                                        (if (gx#stx-null? _tl1107511106_)
                                            ((lambda (_L11109_ _L11110_)
                                               (cons 'lambda
                                                     (cons (gxc#generate-runtime-lambda-head
                                                            _L11110_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11109_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1107411104_
                                             _hd1107111096_)
                                            (_g1106311080_ _g1106411083_))))
                                    (_g1106311080_ _g1106411083_))))
                            (_g1106311080_ _g1106411083_))))
                    (_g1106311080_ _g1106411083_)))))
        (_g1106211125_ _stx11061_))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd11059_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd11059_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx9602_)
      (letrec ((_dispatch-case?9604_
                (lambda (_hd10289_ _body10290_)
                  (let* ((_form10292_ (cons _hd10289_ (cons _body10290_ '())))
                         (_g1029710454_
                          (lambda (_g1029810451_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1029810451_)))
                         (_g1029610461_
                          (lambda (_g1029810457_) ((lambda () '#f))))
                         (_g1029510602_
                          (lambda (_g1029810464_)
                            (if (gx#stx-pair? _g1029810464_)
                                (let ((_e1041410466_ (gx#stx-e _g1029810464_)))
                                  (let ((_hd1041510469_ (##car _e1041410466_))
                                        (_tl1041610471_ (##cdr _e1041410466_)))
                                    (if (gx#stx-pair? _tl1041610471_)
                                        (let ((_e1041710474_
                                               (gx#stx-e _tl1041610471_)))
                                          (let ((_hd1041810477_
                                                 (##car _e1041710474_))
                                                (_tl1041910479_
                                                 (##cdr _e1041710474_)))
                                            (if (gx#stx-pair? _hd1041810477_)
                                                (let ((_e1042010482_
                                                       (gx#stx-e
                                                        _hd1041810477_)))
                                                  (let ((_hd1042110485_
                                                         (##car _e1042010482_))
                                                        (_tl1042210487_
                                                         (##cdr _e1042010482_)))
                                                    (if (gx#identifier?
                                                         _hd1042110485_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd1042110485_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1042210487_)
                        (let ((_e1042310490_ (gx#stx-e _tl1042210487_)))
                          (let ((_hd1042410493_ (##car _e1042310490_))
                                (_tl1042510495_ (##cdr _e1042310490_)))
                            (if (gx#stx-pair? _hd1042410493_)
                                (let ((_e1042610498_
                                       (gx#stx-e _hd1042410493_)))
                                  (let ((_hd1042710501_ (##car _e1042610498_))
                                        (_tl1042810503_ (##cdr _e1042610498_)))
                                    (if (gx#identifier? _hd1042710501_)
                                        (if (gx#stx-eq? '%#ref _hd1042710501_)
                                            (if (gx#stx-pair? _tl1042810503_)
                                                (let ((_e1042910506_
                                                       (gx#stx-e
                                                        _tl1042810503_)))
                                                  (let ((_hd1043010509_
                                                         (##car _e1042910506_))
                                                        (_tl1043110511_
                                                         (##cdr _e1042910506_)))
                                                    (if (gx#stx-null?
                                                         _tl1043110511_)
                                                        (if (gx#stx-pair?
                                                             _tl1042510495_)
                                                            (let ((_e1043210514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1042510495_)))
                      (let ((_hd1043310517_ (##car _e1043210514_))
                            (_tl1043410519_ (##cdr _e1043210514_)))
                        (if (gx#stx-pair? _hd1043310517_)
                            (let ((_e1043510522_ (gx#stx-e _hd1043310517_)))
                              (let ((_hd1043610525_ (##car _e1043510522_))
                                    (_tl1043710527_ (##cdr _e1043510522_)))
                                (if (gx#identifier? _hd1043610525_)
                                    (if (gx#stx-eq? '%#ref _hd1043610525_)
                                        (if (gx#stx-pair? _tl1043710527_)
                                            (let ((_e1043810530_
                                                   (gx#stx-e _tl1043710527_)))
                                              (let ((_hd1043910533_
                                                     (##car _e1043810530_))
                                                    (_tl1044010535_
                                                     (##cdr _e1043810530_)))
                                                (if (gx#stx-null?
                                                     _tl1044010535_)
                                                    (if (gx#stx-pair?
                                                         _tl1043410519_)
                                                        (let ((_e1044110538_
                                                               (gx#stx-e
                                                                _tl1043410519_)))
                                                          (let ((_hd1044210541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1044110538_))
                        (_tl1044310543_ (##cdr _e1044110538_)))
                    (if (gx#stx-pair? _hd1044210541_)
                        (let ((_e1044410546_ (gx#stx-e _hd1044210541_)))
                          (let ((_hd1044510549_ (##car _e1044410546_))
                                (_tl1044610551_ (##cdr _e1044410546_)))
                            (if (gx#identifier? _hd1044510549_)
                                (if (gx#stx-eq? '%#ref _hd1044510549_)
                                    (if (gx#stx-pair? _tl1044610551_)
                                        (let ((_e1044710554_
                                               (gx#stx-e _tl1044610551_)))
                                          (let ((_hd1044810557_
                                                 (##car _e1044710554_))
                                                (_tl1044910559_
                                                 (##cdr _e1044710554_)))
                                            (if (gx#stx-null? _tl1044910559_)
                                                (if (gx#stx-null?
                                                     _tl1044310543_)
                                                    (if (gx#stx-null?
                                                         _tl1041910479_)
                                                        ((lambda (_L10562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10563_
                          _L10564_
                          _L10565_)
                   (if (if (gx#identifier? _L10565_)
                           (if (gxc#runtime-identifier=? _L10564_ 'apply)
                               (if (gx#free-identifier=? _L10565_ _L10562_)
                                   (not (gx#free-identifier=?
                                         _L10563_
                                         _L10565_))
                                   '#f)
                               '#f)
                           '#f)
                       '#t
                       (_g1029610461_ _g1029810464_)))
                 _hd1044810557_
                 _hd1043910533_
                 _hd1043010509_
                 _hd1041510469_)
                (_g1029610461_ _g1029810464_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1029610461_
                                                     _g1029810464_))
                                                (_g1029610461_
                                                 _g1029810464_))))
                                        (_g1029610461_ _g1029810464_))
                                    (_g1029610461_ _g1029810464_))
                                (_g1029610461_ _g1029810464_))))
                        (_g1029610461_ _g1029810464_))))
                (_g1029610461_ _g1029810464_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1029610461_
                                                     _g1029810464_))))
                                            (_g1029610461_ _g1029810464_))
                                        (_g1029610461_ _g1029810464_))
                                    (_g1029610461_ _g1029810464_))))
                            (_g1029610461_ _g1029810464_))))
                    (_g1029610461_ _g1029810464_))
                (_g1029610461_ _g1029810464_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1029610461_ _g1029810464_))
                                            (_g1029610461_ _g1029810464_))
                                        (_g1029610461_ _g1029810464_))))
                                (_g1029610461_ _g1029810464_))))
                        (_g1029610461_ _g1029810464_))
                    (_g1029610461_ _g1029810464_))
                (_g1029610461_ _g1029810464_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1029610461_
                                                 _g1029810464_))))
                                        (_g1029610461_ _g1029810464_))))
                                (_g1029610461_ _g1029810464_))))
                         (_g1029410862_
                          (lambda (_g1029810605_)
                            (if (gx#stx-pair? _g1029810605_)
                                (let ((_e1035010607_ (gx#stx-e _g1029810605_)))
                                  (let ((_hd1035110610_ (##car _e1035010607_))
                                        (_tl1035210612_ (##cdr _e1035010607_)))
                                    (if (gx#stx-pair/null? _hd1035110610_)
                                        (if (fx>= (gx#stx-length
                                                   _hd1035110610_)
                                                  '0)
                                            (let ((_g12897_
                                                   (gx#syntax-split-splice
                                                    _hd1035110610_
                                                    '0)))
                                              (begin
                                                (let ((_g12898_
                                                       (if (##values? _g12897_)
                                                           (##vector-length
                                                            _g12897_)
                                                           1)))
                                                  (if (not (##fx= _g12898_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12898_)))
                                                (let ((_target1035310615_
                                                       (##vector-ref
                                                        _g12897_
                                                        0))
                                                      (_tl1035510617_
                                                       (##vector-ref
                                                        _g12897_
                                                        1)))
                                                  (letrec ((_loop1035610620_
                                                            (lambda (_hd1035410623_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg1036010625_)
                      (if (gx#stx-pair? _hd1035410623_)
                          (let ((_e1035710628_ (gx#stx-e _hd1035410623_)))
                            (let ((_lp-hd1035810631_ (##car _e1035710628_))
                                  (_lp-tl1035910633_ (##cdr _e1035710628_)))
                              (_loop1035610620_
                               _lp-tl1035910633_
                               (cons _lp-hd1035810631_ _arg1036010625_))))
                          (let ((_arg1036110636_ (reverse _arg1036010625_)))
                            (if (gx#stx-pair? _tl1035210612_)
                                (let ((_e1036210639_
                                       (gx#stx-e _tl1035210612_)))
                                  (let ((_hd1036310642_ (##car _e1036210639_))
                                        (_tl1036410644_ (##cdr _e1036210639_)))
                                    (if (gx#stx-pair? _hd1036310642_)
                                        (let ((_e1036510647_
                                               (gx#stx-e _hd1036310642_)))
                                          (let ((_hd1036610650_
                                                 (##car _e1036510647_))
                                                (_tl1036710652_
                                                 (##cdr _e1036510647_)))
                                            (if (gx#identifier? _hd1036610650_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd1036610650_)
                                                    (if (gx#stx-pair?
                                                         _tl1036710652_)
                                                        (let ((_e1036810655_
                                                               (gx#stx-e
                                                                _tl1036710652_)))
                                                          (let ((_hd1036910658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1036810655_))
                        (_tl1037010660_ (##cdr _e1036810655_)))
                    (if (gx#stx-pair? _hd1036910658_)
                        (let ((_e1037110663_ (gx#stx-e _hd1036910658_)))
                          (let ((_hd1037210666_ (##car _e1037110663_))
                                (_tl1037310668_ (##cdr _e1037110663_)))
                            (if (gx#identifier? _hd1037210666_)
                                (if (gx#stx-eq? '%#ref _hd1037210666_)
                                    (if (gx#stx-pair? _tl1037310668_)
                                        (let ((_e1037410671_
                                               (gx#stx-e _tl1037310668_)))
                                          (let ((_hd1037510674_
                                                 (##car _e1037410671_))
                                                (_tl1037610676_
                                                 (##cdr _e1037410671_)))
                                            (if (gx#stx-null? _tl1037610676_)
                                                (if (gx#stx-pair?
                                                     _tl1037010660_)
                                                    (let ((_e1037710679_
                                                           (gx#stx-e
                                                            _tl1037010660_)))
                                                      (let ((_hd1037810682_
                                                             (##car _e1037710679_))
                                                            (_tl1037910684_
                                                             (##cdr _e1037710679_)))
                                                        (if (gx#stx-pair?
                                                             _hd1037810682_)
                                                            (let ((_e1038010687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1037810682_)))
                      (let ((_hd1038110690_ (##car _e1038010687_))
                            (_tl1038210692_ (##cdr _e1038010687_)))
                        (if (gx#identifier? _hd1038110690_)
                            (if (gx#stx-eq? '%#ref _hd1038110690_)
                                (if (gx#stx-pair? _tl1038210692_)
                                    (let ((_e1038310695_
                                           (gx#stx-e _tl1038210692_)))
                                      (let ((_hd1038410698_
                                             (##car _e1038310695_))
                                            (_tl1038510700_
                                             (##cdr _e1038310695_)))
                                        (if (gx#stx-null? _tl1038510700_)
                                            (if (gx#stx-pair/null?
                                                 _tl1037910684_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1037910684_)
                                                          '1)
                                                    (let ((_g12899_
                                                           (gx#syntax-split-splice
                                                            _tl1037910684_
                                                            '1)))
                                                      (begin
                                                        (let ((_g12900_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g12899_)
                           (##vector-length _g12899_)
                           1)))
                  (if (not (##fx= _g12900_ 2))
                      (error "Context expects 2 values" _g12900_)))
                (let ((_target1038610703_ (##vector-ref _g12899_ 0))
                      (_tl1038810705_ (##vector-ref _g12899_ 1)))
                  (if (gx#stx-pair? _tl1038810705_)
                      (let ((_e1039510708_ (gx#stx-e _tl1038810705_)))
                        (let ((_hd1039610711_ (##car _e1039510708_))
                              (_tl1039710713_ (##cdr _e1039510708_)))
                          (if (gx#stx-pair? _hd1039610711_)
                              (let ((_e1039810716_ (gx#stx-e _hd1039610711_)))
                                (let ((_hd1039910719_ (##car _e1039810716_))
                                      (_tl1040010721_ (##cdr _e1039810716_)))
                                  (if (gx#identifier? _hd1039910719_)
                                      (if (gx#stx-eq? '%#ref _hd1039910719_)
                                          (if (gx#stx-pair? _tl1040010721_)
                                              (let ((_e1040110724_
                                                     (gx#stx-e
                                                      _tl1040010721_)))
                                                (let ((_hd1040210727_
                                                       (##car _e1040110724_))
                                                      (_tl1040310729_
                                                       (##cdr _e1040110724_)))
                                                  (if (gx#stx-null?
                                                       _tl1040310729_)
                                                      (if (gx#stx-null?
                                                           _tl1039710713_)
                                                          (letrec ((_loop1038910732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1038710735_ _xarg1039310737_)
                              (if (gx#stx-pair? _hd1038710735_)
                                  (let ((_e1039010740_
                                         (gx#stx-e _hd1038710735_)))
                                    (let ((_lp-hd1039110743_
                                           (##car _e1039010740_))
                                          (_lp-tl1039210745_
                                           (##cdr _e1039010740_)))
                                      (if (gx#stx-pair? _lp-hd1039110743_)
                                          (let ((_e1040410748_
                                                 (gx#stx-e _lp-hd1039110743_)))
                                            (let ((_hd1040510751_
                                                   (##car _e1040410748_))
                                                  (_tl1040610753_
                                                   (##cdr _e1040410748_)))
                                              (if (gx#identifier?
                                                   _hd1040510751_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1040510751_)
                                                      (if (gx#stx-pair?
                                                           _tl1040610753_)
                                                          (let ((_e1040710756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1040610753_)))
                    (let ((_hd1040810759_ (##car _e1040710756_))
                          (_tl1040910761_ (##cdr _e1040710756_)))
                      (if (gx#stx-null? _tl1040910761_)
                          (_loop1038910732_
                           _lp-tl1039210745_
                           (cons _hd1040810759_ _xarg1039310737_))
                          (_g1029510602_ _g1029810605_))))
                  (_g1029510602_ _g1029810605_))
              (_g1029510602_ _g1029810605_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1029510602_
                                                   _g1029810605_))))
                                          (_g1029510602_ _g1029810605_))))
                                  (let ((_xarg1039410764_
                                         (reverse _xarg1039310737_)))
                                    (if (gx#stx-null? _tl1036410644_)
                                        ((lambda (_L10767_
                                                  _L10768_
                                                  _L10769_
                                                  _L10770_
                                                  _L10771_
                                                  _L10772_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1081510818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1081610820_)
                        (cons _g1081510818_ _g1081610820_))
                      '()
                      _L10772_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#identifier?
                                                        _L10771_)
                                                       (if (gxc#runtime-identifier=?
                                                            _L10770_
                                                            'apply)
                                                           (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '#!void
                                      (foldr1 (lambda (_g1082210825_
                                                       _g1082310827_)
                                                (cons _g1082210825_
                                                      _g1082310827_))
                                              '()
                                              _L10772_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1082910832_
                                                       _g1083010834_)
                                                (cons _g1082910832_
                                                      _g1083010834_))
                                              '()
                                              _L10768_))))
                       (if (andmap2 gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1083610839_
                                                       _g1083710841_)
                                                (cons _g1083610839_
                                                      _g1083710841_))
                                              '()
                                              _L10772_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1084310846_
                                                       _g1084410848_)
                                                (cons _g1084310846_
                                                      _g1084410848_))
                                              '()
                                              _L10768_)))
                           (if (gx#free-identifier=? _L10771_ _L10767_)
                               (not (find (lambda (_g1085010852_)
                                            (gx#free-identifier=?
                                             _g1085010852_
                                             _L10769_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1085410857_
                                                             _g1085510859_)
                                                      (cons _g1085410857_
                                                            _g1085510859_))
                                                    (cons _L10771_ '())
                                                    _L10772_))))
                               '#f)
                           '#f)
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g1029510602_ _g1029810605_)))
                                         _hd1040210727_
                                         _xarg1039410764_
                                         _hd1038410698_
                                         _hd1037510674_
                                         _tl1035510617_
                                         _arg1036110636_)
                                        (_g1029510602_ _g1029810605_)))))))
                    (_loop1038910732_ _target1038610703_ '()))
                  (_g1029510602_ _g1029810605_))
              (_g1029510602_ _g1029810605_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1029510602_ _g1029810605_))
                                          (_g1029510602_ _g1029810605_))
                                      (_g1029510602_ _g1029810605_))))
                              (_g1029510602_ _g1029810605_))))
                      (_g1029510602_ _g1029810605_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1029510602_
                                                     _g1029810605_))
                                                (_g1029510602_ _g1029810605_))
                                            (_g1029510602_ _g1029810605_))))
                                    (_g1029510602_ _g1029810605_))
                                (_g1029510602_ _g1029810605_))
                            (_g1029510602_ _g1029810605_))))
                    (_g1029510602_ _g1029810605_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1029510602_
                                                     _g1029810605_))
                                                (_g1029510602_
                                                 _g1029810605_))))
                                        (_g1029510602_ _g1029810605_))
                                    (_g1029510602_ _g1029810605_))
                                (_g1029510602_ _g1029810605_))))
                        (_g1029510602_ _g1029810605_))))
                (_g1029510602_ _g1029810605_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1029510602_
                                                     _g1029810605_))
                                                (_g1029510602_
                                                 _g1029810605_))))
                                        (_g1029510602_ _g1029810605_))))
                                (_g1029510602_ _g1029810605_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1035610620_
                                                     _target1035310615_
                                                     '())))))
                                            (_g1029510602_ _g1029810605_))
                                        (_g1029510602_ _g1029810605_))))
                                (_g1029510602_ _g1029810605_))))
                         (_g1029311056_
                          (lambda (_g1029810865_)
                            (if (gx#stx-pair? _g1029810865_)
                                (let ((_e1030210867_ (gx#stx-e _g1029810865_)))
                                  (let ((_hd1030310870_ (##car _e1030210867_))
                                        (_tl1030410872_ (##cdr _e1030210867_)))
                                    (if (gx#stx-pair/null? _hd1030310870_)
                                        (if (fx>= (gx#stx-length
                                                   _hd1030310870_)
                                                  '0)
                                            (let ((_g12901_
                                                   (gx#syntax-split-splice
                                                    _hd1030310870_
                                                    '0)))
                                              (begin
                                                (let ((_g12902_
                                                       (if (##values? _g12901_)
                                                           (##vector-length
                                                            _g12901_)
                                                           1)))
                                                  (if (not (##fx= _g12902_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12902_)))
                                                (let ((_target1030510875_
                                                       (##vector-ref
                                                        _g12901_
                                                        0))
                                                      (_tl1030710877_
                                                       (##vector-ref
                                                        _g12901_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1030710877_)
                                                      (letrec ((_loop1030810880_
                                                                (lambda (_hd1030610883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg1031210885_)
                          (if (gx#stx-pair? _hd1030610883_)
                              (let ((_e1030910888_ (gx#stx-e _hd1030610883_)))
                                (let ((_lp-hd1031010891_ (##car _e1030910888_))
                                      (_lp-tl1031110893_
                                       (##cdr _e1030910888_)))
                                  (_loop1030810880_
                                   _lp-tl1031110893_
                                   (cons _lp-hd1031010891_ _arg1031210885_))))
                              (let ((_arg1031310896_
                                     (reverse _arg1031210885_)))
                                (if (gx#stx-pair? _tl1030410872_)
                                    (let ((_e1031410899_
                                           (gx#stx-e _tl1030410872_)))
                                      (let ((_hd1031510902_
                                             (##car _e1031410899_))
                                            (_tl1031610904_
                                             (##cdr _e1031410899_)))
                                        (if (gx#stx-pair? _hd1031510902_)
                                            (let ((_e1031710907_
                                                   (gx#stx-e _hd1031510902_)))
                                              (let ((_hd1031810910_
                                                     (##car _e1031710907_))
                                                    (_tl1031910912_
                                                     (##cdr _e1031710907_)))
                                                (if (gx#identifier?
                                                     _hd1031810910_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1031810910_)
                                                        (if (gx#stx-pair?
                                                             _tl1031910912_)
                                                            (let ((_e1032010915_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1031910912_)))
                      (let ((_hd1032110918_ (##car _e1032010915_))
                            (_tl1032210920_ (##cdr _e1032010915_)))
                        (if (gx#stx-pair? _hd1032110918_)
                            (let ((_e1032310923_ (gx#stx-e _hd1032110918_)))
                              (let ((_hd1032410926_ (##car _e1032310923_))
                                    (_tl1032510928_ (##cdr _e1032310923_)))
                                (if (gx#identifier? _hd1032410926_)
                                    (if (gx#stx-eq? '%#ref _hd1032410926_)
                                        (if (gx#stx-pair? _tl1032510928_)
                                            (let ((_e1032610931_
                                                   (gx#stx-e _tl1032510928_)))
                                              (let ((_hd1032710934_
                                                     (##car _e1032610931_))
                                                    (_tl1032810936_
                                                     (##cdr _e1032610931_)))
                                                (if (gx#stx-null?
                                                     _tl1032810936_)
                                                    (if (gx#stx-pair/null?
                                                         _tl1032210920_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1032210920_)
                          '0)
                    (let ((_g12903_
                           (gx#syntax-split-splice _tl1032210920_ '0)))
                      (begin
                        (let ((_g12904_
                               (if (##values? _g12903_)
                                   (##vector-length _g12903_)
                                   1)))
                          (if (not (##fx= _g12904_ 2))
                              (error "Context expects 2 values" _g12904_)))
                        (let ((_target1032910939_ (##vector-ref _g12903_ 0))
                              (_tl1033110941_ (##vector-ref _g12903_ 1)))
                          (if (gx#stx-null? _tl1033110941_)
                              (letrec ((_loop1033210944_
                                        (lambda (_hd1033010947_
                                                 _xarg1033610949_)
                                          (if (gx#stx-pair? _hd1033010947_)
                                              (let ((_e1033310952_
                                                     (gx#stx-e
                                                      _hd1033010947_)))
                                                (let ((_lp-hd1033410955_
                                                       (##car _e1033310952_))
                                                      (_lp-tl1033510957_
                                                       (##cdr _e1033310952_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd1033410955_)
                                                      (let ((_e1033810960_
                                                             (gx#stx-e
                                                              _lp-hd1033410955_)))
                                                        (let ((_hd1033910963_
                                                               (##car _e1033810960_))
                                                              (_tl1034010965_
                                                               (##cdr _e1033810960_)))
                                                          (if (gx#identifier?
                                                               _hd1033910963_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd1033910963_)
                          (if (gx#stx-pair? _tl1034010965_)
                              (let ((_e1034110968_ (gx#stx-e _tl1034010965_)))
                                (let ((_hd1034210971_ (##car _e1034110968_))
                                      (_tl1034310973_ (##cdr _e1034110968_)))
                                  (if (gx#stx-null? _tl1034310973_)
                                      (_loop1033210944_
                                       _lp-tl1033510957_
                                       (cons _hd1034210971_ _xarg1033610949_))
                                      (_g1029410862_ _g1029810865_))))
                              (_g1029410862_ _g1029810865_))
                          (_g1029410862_ _g1029810865_))
                      (_g1029410862_ _g1029810865_))))
              (_g1029410862_ _g1029810865_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg1033710976_
                                                     (reverse _xarg1033610949_)))
                                                (if (gx#stx-null?
                                                     _tl1031610904_)
                                                    ((lambda (_L10979_
                                                              _L10980_
                                                              _L10981_)
                                                       (if (if (gx#identifier-list?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g1100911012_ _g1101011014_)
                                    (cons _g1100911012_ _g1101011014_))
                                  '()
                                  _L10981_)))
                       (if (fx= (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g1101611019_
                                                           _g1101711021_)
                                                    (cons _g1101611019_
                                                          _g1101711021_))
                                                  '()
                                                  _L10981_)))
                                (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g1102311026_
                                                           _g1102411028_)
                                                    (cons _g1102311026_
                                                          _g1102411028_))
                                                  '()
                                                  _L10979_))))
                           (if (andmap2 gx#free-identifier=?
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g1103011033_
                                                           _g1103111035_)
                                                    (cons _g1103011033_
                                                          _g1103111035_))
                                                  '()
                                                  _L10981_))
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g1103711040_
                                                           _g1103811042_)
                                                    (cons _g1103711040_
                                                          _g1103811042_))
                                                  '()
                                                  _L10979_)))
                               (not (find (lambda (_g1104411046_)
                                            (gx#free-identifier=?
                                             _g1104411046_
                                             _L10980_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1104811051_
                                                             _g1104911053_)
                                                      (cons _g1104811051_
                                                            _g1104911053_))
                                                    '()
                                                    _L10981_))))
                               '#f)
                           '#f)
                       '#f)
                   '#t
                   (_g1029410862_ _g1029810865_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg1033710976_
                                                     _hd1032710934_
                                                     _arg1031310896_)
                                                    (_g1029410862_
                                                     _g1029810865_)))))))
                                (_loop1033210944_ _target1032910939_ '()))
                              (_g1029410862_ _g1029810865_)))))
                    (_g1029410862_ _g1029810865_))
                (_g1029410862_ _g1029810865_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1029410862_
                                                     _g1029810865_))))
                                            (_g1029410862_ _g1029810865_))
                                        (_g1029410862_ _g1029810865_))
                                    (_g1029410862_ _g1029810865_))))
                            (_g1029410862_ _g1029810865_))))
                    (_g1029410862_ _g1029810865_))
                (_g1029410862_ _g1029810865_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1029410862_
                                                     _g1029810865_))))
                                            (_g1029410862_ _g1029810865_))))
                                    (_g1029410862_ _g1029810865_)))))))
                (_loop1030810880_ _target1030510875_ '()))
              (_g1029410862_ _g1029810865_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1029410862_ _g1029810865_))
                                        (_g1029410862_ _g1029810865_))))
                                (_g1029410862_ _g1029810865_)))))
                    (_g1029311056_ _form10292_))))
               (_dispatch-case-e9605_
                (lambda (_hd9753_ _body9754_)
                  (let* ((_form9756_ (cons _hd9753_ (cons _body9754_ '())))
                         (_g97609884_
                          (lambda (_g97619881_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g97619881_)))
                         (_g975910002_
                          (lambda (_g97619887_)
                            (if (gx#stx-pair? _g97619887_)
                                (let ((_e98509889_ (gx#stx-e _g97619887_)))
                                  (let ((_hd98519892_ (##car _e98509889_))
                                        (_tl98529894_ (##cdr _e98509889_)))
                                    (if (gx#stx-pair? _tl98529894_)
                                        (let ((_e98539897_
                                               (gx#stx-e _tl98529894_)))
                                          (let ((_hd98549900_
                                                 (##car _e98539897_))
                                                (_tl98559902_
                                                 (##cdr _e98539897_)))
                                            (if (gx#stx-pair? _hd98549900_)
                                                (let ((_e98569905_
                                                       (gx#stx-e
                                                        _hd98549900_)))
                                                  (let ((_hd98579908_
                                                         (##car _e98569905_))
                                                        (_tl98589910_
                                                         (##cdr _e98569905_)))
                                                    (if (gx#identifier?
                                                         _hd98579908_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd98579908_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl98589910_)
                        (let ((_e98599913_ (gx#stx-e _tl98589910_)))
                          (let ((_hd98609916_ (##car _e98599913_))
                                (_tl98619918_ (##cdr _e98599913_)))
                            (if (gx#stx-pair? _hd98609916_)
                                (let ((_e98629921_ (gx#stx-e _hd98609916_)))
                                  (let ((_hd98639924_ (##car _e98629921_))
                                        (_tl98649926_ (##cdr _e98629921_)))
                                    (if (gx#identifier? _hd98639924_)
                                        (if (gx#stx-eq? '%#ref _hd98639924_)
                                            (if (gx#stx-pair? _tl98649926_)
                                                (let ((_e98659929_
                                                       (gx#stx-e
                                                        _tl98649926_)))
                                                  (let ((_hd98669932_
                                                         (##car _e98659929_))
                                                        (_tl98679934_
                                                         (##cdr _e98659929_)))
                                                    (if (gx#stx-null?
                                                         _tl98679934_)
                                                        (if (gx#stx-pair?
                                                             _tl98619918_)
                                                            (let ((_e98689937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl98619918_)))
                      (let ((_hd98699940_ (##car _e98689937_))
                            (_tl98709942_ (##cdr _e98689937_)))
                        (if (gx#stx-pair? _hd98699940_)
                            (let ((_e98719945_ (gx#stx-e _hd98699940_)))
                              (let ((_hd98729948_ (##car _e98719945_))
                                    (_tl98739950_ (##cdr _e98719945_)))
                                (if (gx#identifier? _hd98729948_)
                                    (if (gx#stx-eq? '%#ref _hd98729948_)
                                        (if (gx#stx-pair? _tl98739950_)
                                            (let ((_e98749953_
                                                   (gx#stx-e _tl98739950_)))
                                              (let ((_hd98759956_
                                                     (##car _e98749953_))
                                                    (_tl98769958_
                                                     (##cdr _e98749953_)))
                                                (if (gx#stx-null? _tl98769958_)
                                                    (if (gx#stx-pair?
                                                         _tl98709942_)
                                                        (let ((_e98779961_
                                                               (gx#stx-e
                                                                _tl98709942_)))
                                                          (let ((_hd98789964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e98779961_))
                        (_tl98799966_ (##cdr _e98779961_)))
                    (if (gx#stx-null? _tl98799966_)
                        (if (gx#stx-null? _tl98559902_)
                            ((lambda (_L9969_ _L9970_ _L9971_)
                               (gxc#compile-e
                                (cons (gx#datum->syntax__0 '#f '%#ref)
                                      (cons _L9969_ '()))))
                             _hd98759956_
                             _hd98669932_
                             _hd98519892_)
                            (_g97609884_ _g97619887_))
                        (_g97609884_ _g97619887_))))
                (_g97609884_ _g97619887_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g97609884_
                                                     _g97619887_))))
                                            (_g97609884_ _g97619887_))
                                        (_g97609884_ _g97619887_))
                                    (_g97609884_ _g97619887_))))
                            (_g97609884_ _g97619887_))))
                    (_g97609884_ _g97619887_))
                (_g97609884_ _g97619887_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g97609884_ _g97619887_))
                                            (_g97609884_ _g97619887_))
                                        (_g97609884_ _g97619887_))))
                                (_g97609884_ _g97619887_))))
                        (_g97609884_ _g97619887_))
                    (_g97609884_ _g97619887_))
                (_g97609884_ _g97619887_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g97609884_ _g97619887_))))
                                        (_g97609884_ _g97619887_))))
                                (_g97609884_ _g97619887_))))
                         (_g975810138_
                          (lambda (_g976110005_)
                            (if (gx#stx-pair? _g976110005_)
                                (let ((_e981110007_ (gx#stx-e _g976110005_)))
                                  (let ((_hd981210010_ (##car _e981110007_))
                                        (_tl981310012_ (##cdr _e981110007_)))
                                    (if (gx#stx-pair/null? _hd981210010_)
                                        (if (fx>= (gx#stx-length _hd981210010_)
                                                  '0)
                                            (let ((_g12905_
                                                   (gx#syntax-split-splice
                                                    _hd981210010_
                                                    '0)))
                                              (begin
                                                (let ((_g12906_
                                                       (if (##values? _g12905_)
                                                           (##vector-length
                                                            _g12905_)
                                                           1)))
                                                  (if (not (##fx= _g12906_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12906_)))
                                                (let ((_target981410015_
                                                       (##vector-ref
                                                        _g12905_
                                                        0))
                                                      (_tl981610017_
                                                       (##vector-ref
                                                        _g12905_
                                                        1)))
                                                  (letrec ((_loop981710020_
                                                            (lambda (_hd981510023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg982110025_)
                      (if (gx#stx-pair? _hd981510023_)
                          (let ((_e981810028_ (gx#stx-e _hd981510023_)))
                            (let ((_lp-hd981910031_ (##car _e981810028_))
                                  (_lp-tl982010033_ (##cdr _e981810028_)))
                              (_loop981710020_
                               _lp-tl982010033_
                               (cons _lp-hd981910031_ _arg982110025_))))
                          (let ((_arg982210036_ (reverse _arg982110025_)))
                            (if (gx#stx-pair? _tl981310012_)
                                (let ((_e982310039_ (gx#stx-e _tl981310012_)))
                                  (let ((_hd982410042_ (##car _e982310039_))
                                        (_tl982510044_ (##cdr _e982310039_)))
                                    (if (gx#stx-pair? _hd982410042_)
                                        (let ((_e982610047_
                                               (gx#stx-e _hd982410042_)))
                                          (let ((_hd982710050_
                                                 (##car _e982610047_))
                                                (_tl982810052_
                                                 (##cdr _e982610047_)))
                                            (if (gx#identifier? _hd982710050_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd982710050_)
                                                    (if (gx#stx-pair?
                                                         _tl982810052_)
                                                        (let ((_e982910055_
                                                               (gx#stx-e
                                                                _tl982810052_)))
                                                          (let ((_hd983010058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e982910055_))
                        (_tl983110060_ (##cdr _e982910055_)))
                    (if (gx#stx-pair? _hd983010058_)
                        (let ((_e983210063_ (gx#stx-e _hd983010058_)))
                          (let ((_hd983310066_ (##car _e983210063_))
                                (_tl983410068_ (##cdr _e983210063_)))
                            (if (gx#identifier? _hd983310066_)
                                (if (gx#stx-eq? '%#ref _hd983310066_)
                                    (if (gx#stx-pair? _tl983410068_)
                                        (let ((_e983510071_
                                               (gx#stx-e _tl983410068_)))
                                          (let ((_hd983610074_
                                                 (##car _e983510071_))
                                                (_tl983710076_
                                                 (##cdr _e983510071_)))
                                            (if (gx#stx-null? _tl983710076_)
                                                (if (gx#stx-pair?
                                                     _tl983110060_)
                                                    (let ((_e983810079_
                                                           (gx#stx-e
                                                            _tl983110060_)))
                                                      (let ((_hd983910082_
                                                             (##car _e983810079_))
                                                            (_tl984010084_
                                                             (##cdr _e983810079_)))
                                                        (if (gx#stx-pair?
                                                             _hd983910082_)
                                                            (let ((_e984110087_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd983910082_)))
                      (let ((_hd984210090_ (##car _e984110087_))
                            (_tl984310092_ (##cdr _e984110087_)))
                        (if (gx#identifier? _hd984210090_)
                            (if (gx#stx-eq? '%#ref _hd984210090_)
                                (if (gx#stx-pair? _tl984310092_)
                                    (let ((_e984410095_
                                           (gx#stx-e _tl984310092_)))
                                      (let ((_hd984510098_
                                             (##car _e984410095_))
                                            (_tl984610100_
                                             (##cdr _e984410095_)))
                                        (if (gx#stx-null? _tl984610100_)
                                            (if (gx#stx-null? _tl982510044_)
                                                ((lambda (_L10103_
                                                          _L10104_
                                                          _L10105_
                                                          _L10106_)
                                                   (gxc#compile-e
                                                    (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _L10103_
                                                                '()))))
                                                 _hd984510098_
                                                 _hd983610074_
                                                 _tl981610017_
                                                 _arg982210036_)
                                                (_g975910002_ _g976110005_))
                                            (_g975910002_ _g976110005_))))
                                    (_g975910002_ _g976110005_))
                                (_g975910002_ _g976110005_))
                            (_g975910002_ _g976110005_))))
                    (_g975910002_ _g976110005_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g975910002_
                                                     _g976110005_))
                                                (_g975910002_ _g976110005_))))
                                        (_g975910002_ _g976110005_))
                                    (_g975910002_ _g976110005_))
                                (_g975910002_ _g976110005_))))
                        (_g975910002_ _g976110005_))))
                (_g975910002_ _g976110005_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g975910002_
                                                     _g976110005_))
                                                (_g975910002_ _g976110005_))))
                                        (_g975910002_ _g976110005_))))
                                (_g975910002_ _g976110005_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop981710020_
                                                     _target981410015_
                                                     '())))))
                                            (_g975910002_ _g976110005_))
                                        (_g975910002_ _g976110005_))))
                                (_g975910002_ _g976110005_))))
                         (_g975710286_
                          (lambda (_g976110141_)
                            (if (gx#stx-pair? _g976110141_)
                                (let ((_e976510143_ (gx#stx-e _g976110141_)))
                                  (let ((_hd976610146_ (##car _e976510143_))
                                        (_tl976710148_ (##cdr _e976510143_)))
                                    (if (gx#stx-pair/null? _hd976610146_)
                                        (if (fx>= (gx#stx-length _hd976610146_)
                                                  '0)
                                            (let ((_g12907_
                                                   (gx#syntax-split-splice
                                                    _hd976610146_
                                                    '0)))
                                              (begin
                                                (let ((_g12908_
                                                       (if (##values? _g12907_)
                                                           (##vector-length
                                                            _g12907_)
                                                           1)))
                                                  (if (not (##fx= _g12908_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12908_)))
                                                (let ((_target976810151_
                                                       (##vector-ref
                                                        _g12907_
                                                        0))
                                                      (_tl977010153_
                                                       (##vector-ref
                                                        _g12907_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl977010153_)
                                                      (letrec ((_loop977110156_
                                                                (lambda (_hd976910159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg977510161_)
                          (if (gx#stx-pair? _hd976910159_)
                              (let ((_e977210164_ (gx#stx-e _hd976910159_)))
                                (let ((_lp-hd977310167_ (##car _e977210164_))
                                      (_lp-tl977410169_ (##cdr _e977210164_)))
                                  (_loop977110156_
                                   _lp-tl977410169_
                                   (cons _lp-hd977310167_ _arg977510161_))))
                              (let ((_arg977610172_ (reverse _arg977510161_)))
                                (if (gx#stx-pair? _tl976710148_)
                                    (let ((_e977710175_
                                           (gx#stx-e _tl976710148_)))
                                      (let ((_hd977810178_
                                             (##car _e977710175_))
                                            (_tl977910180_
                                             (##cdr _e977710175_)))
                                        (if (gx#stx-pair? _hd977810178_)
                                            (let ((_e978010183_
                                                   (gx#stx-e _hd977810178_)))
                                              (let ((_hd978110186_
                                                     (##car _e978010183_))
                                                    (_tl978210188_
                                                     (##cdr _e978010183_)))
                                                (if (gx#identifier?
                                                     _hd978110186_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd978110186_)
                                                        (if (gx#stx-pair?
                                                             _tl978210188_)
                                                            (let ((_e978310191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl978210188_)))
                      (let ((_hd978410194_ (##car _e978310191_))
                            (_tl978510196_ (##cdr _e978310191_)))
                        (if (gx#stx-pair? _hd978410194_)
                            (let ((_e978610199_ (gx#stx-e _hd978410194_)))
                              (let ((_hd978710202_ (##car _e978610199_))
                                    (_tl978810204_ (##cdr _e978610199_)))
                                (if (gx#identifier? _hd978710202_)
                                    (if (gx#stx-eq? '%#ref _hd978710202_)
                                        (if (gx#stx-pair? _tl978810204_)
                                            (let ((_e978910207_
                                                   (gx#stx-e _tl978810204_)))
                                              (let ((_hd979010210_
                                                     (##car _e978910207_))
                                                    (_tl979110212_
                                                     (##cdr _e978910207_)))
                                                (if (gx#stx-null?
                                                     _tl979110212_)
                                                    (if (gx#stx-pair/null?
                                                         _tl978510196_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl978510196_)
                          '0)
                    (let ((_g12909_ (gx#syntax-split-splice _tl978510196_ '0)))
                      (begin
                        (let ((_g12910_
                               (if (##values? _g12909_)
                                   (##vector-length _g12909_)
                                   1)))
                          (if (not (##fx= _g12910_ 2))
                              (error "Context expects 2 values" _g12910_)))
                        (let ((_target979210215_ (##vector-ref _g12909_ 0))
                              (_tl979410217_ (##vector-ref _g12909_ 1)))
                          (if (gx#stx-null? _tl979410217_)
                              (letrec ((_loop979510220_
                                        (lambda (_hd979310223_ _xarg979910225_)
                                          (if (gx#stx-pair? _hd979310223_)
                                              (let ((_e979610228_
                                                     (gx#stx-e _hd979310223_)))
                                                (let ((_lp-hd979710231_
                                                       (##car _e979610228_))
                                                      (_lp-tl979810233_
                                                       (##cdr _e979610228_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd979710231_)
                                                      (let ((_e980110236_
                                                             (gx#stx-e
                                                              _lp-hd979710231_)))
                                                        (let ((_hd980210239_
                                                               (##car _e980110236_))
                                                              (_tl980310241_
                                                               (##cdr _e980110236_)))
                                                          (if (gx#identifier?
                                                               _hd980210239_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd980210239_)
                          (if (gx#stx-pair? _tl980310241_)
                              (let ((_e980410244_ (gx#stx-e _tl980310241_)))
                                (let ((_hd980510247_ (##car _e980410244_))
                                      (_tl980610249_ (##cdr _e980410244_)))
                                  (if (gx#stx-null? _tl980610249_)
                                      (_loop979510220_
                                       _lp-tl979810233_
                                       (cons _hd980510247_ _xarg979910225_))
                                      (_g975810138_ _g976110141_))))
                              (_g975810138_ _g976110141_))
                          (_g975810138_ _g976110141_))
                      (_g975810138_ _g976110141_))))
              (_g975810138_ _g976110141_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg980010252_
                                                     (reverse _xarg979910225_)))
                                                (if (gx#stx-null?
                                                     _tl977910180_)
                                                    ((lambda (_L10255_
                                                              _L10256_
                                                              _L10257_)
                                                       (gxc#compile-e
                                                        (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref)
                                                              (cons _L10256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg980010252_
                                                     _hd979010210_
                                                     _arg977610172_)
                                                    (_g975810138_
                                                     _g976110141_)))))))
                                (_loop979510220_ _target979210215_ '()))
                              (_g975810138_ _g976110141_)))))
                    (_g975810138_ _g976110141_))
                (_g975810138_ _g976110141_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g975810138_
                                                     _g976110141_))))
                                            (_g975810138_ _g976110141_))
                                        (_g975810138_ _g976110141_))
                                    (_g975810138_ _g976110141_))))
                            (_g975810138_ _g976110141_))))
                    (_g975810138_ _g976110141_))
                (_g975810138_ _g976110141_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g975810138_
                                                     _g976110141_))))
                                            (_g975810138_ _g976110141_))))
                                    (_g975810138_ _g976110141_)))))))
                (_loop977110156_ _target976810151_ '()))
              (_g975810138_ _g976110141_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g975810138_ _g976110141_))
                                        (_g975810138_ _g976110141_))))
                                (_g975810138_ _g976110141_)))))
                    (_g975710286_ _form9756_))))
               (_generate19606_
                (lambda (_args9741_ _arglen9742_ _hd9743_ _body9744_)
                  (let* ((_len9746_ (gx#stx-length _hd9743_))
                         (_condition9748_
                          (if (gx#stx-list? _hd9743_)
                              (cons '##fx=
                                    (cons _arglen9742_ (cons _len9746_ '())))
                              (if (> _len9746_ '0)
                                  (cons '##fx>=
                                        (cons _arglen9742_
                                              (cons _len9746_ '())))
                                  '#t)))
                         (_dispatch9750_
                          (if (_dispatch-case?9604_ _hd9743_ _body9744_)
                              (_dispatch-case-e9605_ _hd9743_ _body9744_)
                              (cons 'lambda
                                    (cons (gxc#generate-runtime-lambda-head
                                           _hd9743_)
                                          (cons (gxc#compile-e _body9744_)
                                                '()))))))
                    (cons _condition9748_
                          (cons (cons 'apply
                                      (cons _dispatch9750_
                                            (cons _args9741_ '())))
                                '()))))))
        (let* ((_g96089636_
                (lambda (_g96099633_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g96099633_)))
               (_g96079738_
                (lambda (_g96099639_)
                  (if (gx#stx-pair? _g96099639_)
                      (let ((_e96129641_ (gx#stx-e _g96099639_)))
                        (let ((_hd96139644_ (##car _e96129641_))
                              (_tl96149646_ (##cdr _e96129641_)))
                          (if (gx#stx-pair/null? _tl96149646_)
                              (if (fx>= (gx#stx-length _tl96149646_) '0)
                                  (let ((_g12911_
                                         (gx#syntax-split-splice
                                          _tl96149646_
                                          '0)))
                                    (begin
                                      (let ((_g12912_
                                             (if (##values? _g12911_)
                                                 (##vector-length _g12911_)
                                                 1)))
                                        (if (not (##fx= _g12912_ 2))
                                            (error "Context expects 2 values"
                                                   _g12912_)))
                                      (let ((_target96159649_
                                             (##vector-ref _g12911_ 0))
                                            (_tl96179651_
                                             (##vector-ref _g12911_ 1)))
                                        (if (gx#stx-null? _tl96179651_)
                                            (letrec ((_loop96189654_
                                                      (lambda (_hd96169657_
                                                               _body96229659_
                                                               _hd96239661_)
                                                        (if (gx#stx-pair?
                                                             _hd96169657_)
                                                            (let ((_e96199664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd96169657_)))
                      (let ((_lp-hd96209667_ (##car _e96199664_))
                            (_lp-tl96219669_ (##cdr _e96199664_)))
                        (if (gx#stx-pair? _lp-hd96209667_)
                            (let ((_e96269672_ (gx#stx-e _lp-hd96209667_)))
                              (let ((_hd96279675_ (##car _e96269672_))
                                    (_tl96289677_ (##cdr _e96269672_)))
                                (if (gx#stx-pair? _tl96289677_)
                                    (let ((_e96299680_
                                           (gx#stx-e _tl96289677_)))
                                      (let ((_hd96309683_ (##car _e96299680_))
                                            (_tl96319685_ (##cdr _e96299680_)))
                                        (if (gx#stx-null? _tl96319685_)
                                            (_loop96189654_
                                             _lp-tl96219669_
                                             (cons _hd96309683_ _body96229659_)
                                             (cons _hd96279675_ _hd96239661_))
                                            (_g96089636_ _g96099639_))))
                                    (_g96089636_ _g96099639_))))
                            (_g96089636_ _g96099639_))))
                    (let ((_body96249688_ (reverse _body96229659_))
                          (_hd96259690_ (reverse _hd96239661_)))
                      ((lambda (_L9693_ _L9694_)
                         (let ((_args9713_ (gxc#generate-runtime-temporary__0))
                               (_arglen9714_
                                (gxc#generate-runtime-temporary__0))
                               (_name9715_
                                (let ((_$e9710_
                                       (table-ref
                                        (gxc#current-compile-runtime-names)
                                        _stx9602_
                                        '#f)))
                                  (if _$e9710_
                                      _$e9710_
                                      ''case-lambda-dispatch))))
                           (cons 'lambda
                                 (cons _args9713_
                                       (cons (cons 'let
                                                   (cons (cons (cons _arglen9714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons 'length (cons _args9713_ '())) '()))
                       '())
                 (cons (cons 'cond
                             (foldr1 cons
                                     (cons (cons 'else
                                                 (cons (cons '##raise-wrong-number-of-arguments-exception
                                                             (cons _name9715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args9713_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (map (lambda (_g97169719_ _g97179721_)
                                            (_generate19606_
                                             _args9713_
                                             _arglen9714_
                                             _g97169719_
                                             _g97179721_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g97239726_
                                                             _g97249728_)
                                                      (cons _g97239726_
                                                            _g97249728_))
                                                    '()
                                                    _L9694_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g97309733_
                                                             _g97319735_)
                                                      (cons _g97309733_
                                                            _g97319735_))
                                                    '()
                                                    _L9693_)))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                       _body96249688_
                       _hd96259690_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop96189654_
                                               _target96159649_
                                               '()
                                               '()))
                                            (_g96089636_ _g96099639_)))))
                                  (_g96089636_ _g96099639_))
                              (_g96089636_ _g96099639_))))
                      (_g96089636_ _g96099639_)))))
          (_g96079738_ _stx9602_)))))
  (begin
    (define gxc#generate-runtime-let-values%__%
      (lambda (_stx8667_ _compiled-body?8668_)
        (letrec ((_generate-simple8670_
                  (lambda (_hd9589_ _body9590_)
                    (_coalesce-let*8671_
                     (gxc#generate-runtime-simple-let
                      'let
                      _hd9589_
                      _body9590_
                      _compiled-body?8668_))))
                 (_coalesce-let*8671_
                  (lambda (_code8973_)
                    (let* ((_g89789113_
                            (lambda (_g89799110_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g89799110_)))
                           (_g89779120_
                            (lambda (_g89799116_) ((lambda () _code8973_))))
                           (_g89769290_
                            (lambda (_g89799123_)
                              (if (gx#stx-pair? _g89799123_)
                                  (let ((_e90679125_ (gx#stx-e _g89799123_)))
                                    (let ((_hd90689128_ (##car _e90679125_))
                                          (_tl90699130_ (##cdr _e90679125_)))
                                      (if (gx#identifier? _hd90689128_)
                                          (if (gx#stx-eq? 'let _hd90689128_)
                                              (if (gx#stx-pair? _tl90699130_)
                                                  (let ((_e90709133_
                                                         (gx#stx-e
                                                          _tl90699130_)))
                                                    (let ((_hd90719136_
                                                           (##car _e90709133_))
                                                          (_tl90729138_
                                                           (##cdr _e90709133_)))
                                                      (if (gx#stx-pair?
                                                           _hd90719136_)
                                                          (let ((_e90739141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd90719136_)))
                    (let ((_hd90749144_ (##car _e90739141_))
                          (_tl90759146_ (##cdr _e90739141_)))
                      (if (gx#stx-pair? _hd90749144_)
                          (let ((_e90769149_ (gx#stx-e _hd90749144_)))
                            (let ((_hd90779152_ (##car _e90769149_))
                                  (_tl90789154_ (##cdr _e90769149_)))
                              (if (gx#stx-pair? _tl90789154_)
                                  (let ((_e90799157_ (gx#stx-e _tl90789154_)))
                                    (let ((_hd90809160_ (##car _e90799157_))
                                          (_tl90819162_ (##cdr _e90799157_)))
                                      (if (gx#stx-null? _tl90819162_)
                                          (if (gx#stx-null? _tl90759146_)
                                              (if (gx#stx-pair? _tl90729138_)
                                                  (let ((_e90829165_
                                                         (gx#stx-e
                                                          _tl90729138_)))
                                                    (let ((_hd90839168_
                                                           (##car _e90829165_))
                                                          (_tl90849170_
                                                           (##cdr _e90829165_)))
                                                      (if (gx#stx-pair?
                                                           _hd90839168_)
                                                          (let ((_e90859173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd90839168_)))
                    (let ((_hd90869176_ (##car _e90859173_))
                          (_tl90879178_ (##cdr _e90859173_)))
                      (if (gx#identifier? _hd90869176_)
                          (if (gx#stx-eq? 'let* _hd90869176_)
                              (if (gx#stx-pair? _tl90879178_)
                                  (let ((_e90889181_ (gx#stx-e _tl90879178_)))
                                    (let ((_hd90899184_ (##car _e90889181_))
                                          (_tl90909186_ (##cdr _e90889181_)))
                                      (if (gx#stx-pair/null? _hd90899184_)
                                          (if (fx>= (gx#stx-length
                                                     _hd90899184_)
                                                    '0)
                                              (let ((_g12913_
                                                     (gx#syntax-split-splice
                                                      _hd90899184_
                                                      '0)))
                                                (begin
                                                  (let ((_g12914_
                                                         (if (##values?
                                                              _g12913_)
                                                             (##vector-length
                                                              _g12913_)
                                                             1)))
                                                    (if (not (##fx= _g12914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g12914_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target90919189_
                                                         (##vector-ref
                                                          _g12913_
                                                          0))
                                                        (_tl90939191_
                                                         (##vector-ref
                                                          _g12913_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl90939191_)
                                                        (letrec ((_loop90949194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd90929197_ _bind90989199_)
                            (if (gx#stx-pair? _hd90929197_)
                                (let ((_e90959202_ (gx#stx-e _hd90929197_)))
                                  (let ((_lp-hd90969205_ (##car _e90959202_))
                                        (_lp-tl90979207_ (##cdr _e90959202_)))
                                    (_loop90949194_
                                     _lp-tl90979207_
                                     (cons _lp-hd90969205_ _bind90989199_))))
                                (let ((_bind90999210_
                                       (reverse _bind90989199_)))
                                  (if (gx#stx-pair/null? _tl90909186_)
                                      (if (fx>= (gx#stx-length _tl90909186_)
                                                '0)
                                          (let ((_g12915_
                                                 (gx#syntax-split-splice
                                                  _tl90909186_
                                                  '0)))
                                            (begin
                                              (let ((_g12916_
                                                     (if (##values? _g12915_)
                                                         (##vector-length
                                                          _g12915_)
                                                         1)))
                                                (if (not (##fx= _g12916_ 2))
                                                    (error "Context expects 2 values"
                                                           _g12916_)))
                                              (let ((_target91009213_
                                                     (##vector-ref _g12915_ 0))
                                                    (_tl91029215_
                                                     (##vector-ref
                                                      _g12915_
                                                      1)))
                                                (if (gx#stx-null? _tl91029215_)
                                                    (letrec ((_loop91039218_
                                                              (lambda (_hd91019221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body91079223_)
                        (if (gx#stx-pair? _hd91019221_)
                            (let ((_e91049226_ (gx#stx-e _hd91019221_)))
                              (let ((_lp-hd91059229_ (##car _e91049226_))
                                    (_lp-tl91069231_ (##cdr _e91049226_)))
                                (_loop91039218_
                                 _lp-tl91069231_
                                 (cons _lp-hd91059229_ _body91079223_))))
                            (let ((_body91089234_ (reverse _body91079223_)))
                              (if (gx#stx-null? _tl90849170_)
                                  ((lambda (_L9237_ _L9238_ _L9239_ _L9240_)
                                     (cons 'let*
                                           (cons (cons (cons _L9240_
                                                             (cons _L9239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (begin
                 '#!void
                 (foldr1 (lambda (_g92759278_ _g92769280_)
                           (cons _g92759278_ _g92769280_))
                         '()
                         _L9238_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g92829285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g92839287_)
                     (cons _g92829285_ _g92839287_))
                   '()
                   _L9237_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body91089234_
                                   _bind90999210_
                                   _hd90809160_
                                   _hd90779152_)
                                  (_g89779120_ _g89799123_)))))))
              (_loop91039218_ _target91009213_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g89779120_
                                                     _g89799123_)))))
                                          (_g89779120_ _g89799123_))
                                      (_g89779120_ _g89799123_)))))))
                  (_loop90949194_ _target90919189_ '()))
                (_g89779120_ _g89799123_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g89779120_ _g89799123_))
                                          (_g89779120_ _g89799123_))))
                                  (_g89779120_ _g89799123_))
                              (_g89779120_ _g89799123_))
                          (_g89779120_ _g89799123_))))
                  (_g89779120_ _g89799123_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89779120_ _g89799123_))
                                              (_g89779120_ _g89799123_))
                                          (_g89779120_ _g89799123_))))
                                  (_g89779120_ _g89799123_))))
                          (_g89779120_ _g89799123_))))
                  (_g89779120_ _g89799123_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89779120_ _g89799123_))
                                              (_g89779120_ _g89799123_))
                                          (_g89779120_ _g89799123_))))
                                  (_g89779120_ _g89799123_))))
                           (_g89759455_
                            (lambda (_g89799293_)
                              (if (gx#stx-pair? _g89799293_)
                                  (let ((_e90219295_ (gx#stx-e _g89799293_)))
                                    (let ((_hd90229298_ (##car _e90219295_))
                                          (_tl90239300_ (##cdr _e90219295_)))
                                      (if (gx#identifier? _hd90229298_)
                                          (if (gx#stx-eq? 'let _hd90229298_)
                                              (if (gx#stx-pair? _tl90239300_)
                                                  (let ((_e90249303_
                                                         (gx#stx-e
                                                          _tl90239300_)))
                                                    (let ((_hd90259306_
                                                           (##car _e90249303_))
                                                          (_tl90269308_
                                                           (##cdr _e90249303_)))
                                                      (if (gx#stx-pair?
                                                           _hd90259306_)
                                                          (let ((_e90279311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd90259306_)))
                    (let ((_hd90289314_ (##car _e90279311_))
                          (_tl90299316_ (##cdr _e90279311_)))
                      (if (gx#stx-pair? _hd90289314_)
                          (let ((_e90309319_ (gx#stx-e _hd90289314_)))
                            (let ((_hd90319322_ (##car _e90309319_))
                                  (_tl90329324_ (##cdr _e90309319_)))
                              (if (gx#stx-pair? _tl90329324_)
                                  (let ((_e90339327_ (gx#stx-e _tl90329324_)))
                                    (let ((_hd90349330_ (##car _e90339327_))
                                          (_tl90359332_ (##cdr _e90339327_)))
                                      (if (gx#stx-null? _tl90359332_)
                                          (if (gx#stx-null? _tl90299316_)
                                              (if (gx#stx-pair? _tl90269308_)
                                                  (let ((_e90369335_
                                                         (gx#stx-e
                                                          _tl90269308_)))
                                                    (let ((_hd90379338_
                                                           (##car _e90369335_))
                                                          (_tl90389340_
                                                           (##cdr _e90369335_)))
                                                      (if (gx#stx-pair?
                                                           _hd90379338_)
                                                          (let ((_e90399343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd90379338_)))
                    (let ((_hd90409346_ (##car _e90399343_))
                          (_tl90419348_ (##cdr _e90399343_)))
                      (if (gx#identifier? _hd90409346_)
                          (if (gx#stx-eq? 'let _hd90409346_)
                              (if (gx#stx-pair? _tl90419348_)
                                  (let ((_e90429351_ (gx#stx-e _tl90419348_)))
                                    (let ((_hd90439354_ (##car _e90429351_))
                                          (_tl90449356_ (##cdr _e90429351_)))
                                      (if (gx#stx-pair? _hd90439354_)
                                          (let ((_e90459359_
                                                 (gx#stx-e _hd90439354_)))
                                            (let ((_hd90469362_
                                                   (##car _e90459359_))
                                                  (_tl90479364_
                                                   (##cdr _e90459359_)))
                                              (if (gx#stx-pair? _hd90469362_)
                                                  (let ((_e90489367_
                                                         (gx#stx-e
                                                          _hd90469362_)))
                                                    (let ((_hd90499370_
                                                           (##car _e90489367_))
                                                          (_tl90509372_
                                                           (##cdr _e90489367_)))
                                                      (if (gx#stx-pair?
                                                           _tl90509372_)
                                                          (let ((_e90519375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl90509372_)))
                    (let ((_hd90529378_ (##car _e90519375_))
                          (_tl90539380_ (##cdr _e90519375_)))
                      (if (gx#stx-null? _tl90539380_)
                          (if (gx#stx-null? _tl90479364_)
                              (if (gx#stx-pair/null? _tl90449356_)
                                  (if (fx>= (gx#stx-length _tl90449356_) '0)
                                      (let ((_g12917_
                                             (gx#syntax-split-splice
                                              _tl90449356_
                                              '0)))
                                        (begin
                                          (let ((_g12918_
                                                 (if (##values? _g12917_)
                                                     (##vector-length _g12917_)
                                                     1)))
                                            (if (not (##fx= _g12918_ 2))
                                                (error "Context expects 2 values"
                                                       _g12918_)))
                                          (let ((_target90549383_
                                                 (##vector-ref _g12917_ 0))
                                                (_tl90569385_
                                                 (##vector-ref _g12917_ 1)))
                                            (if (gx#stx-null? _tl90569385_)
                                                (letrec ((_loop90579388_
                                                          (lambda (_hd90559391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body90619393_)
                    (if (gx#stx-pair? _hd90559391_)
                        (let ((_e90589396_ (gx#stx-e _hd90559391_)))
                          (let ((_lp-hd90599399_ (##car _e90589396_))
                                (_lp-tl90609401_ (##cdr _e90589396_)))
                            (_loop90579388_
                             _lp-tl90609401_
                             (cons _lp-hd90599399_ _body90619393_))))
                        (let ((_body90629404_ (reverse _body90619393_)))
                          (if (gx#stx-null? _tl90389340_)
                              ((lambda (_L9407_
                                        _L9408_
                                        _L9409_
                                        _L9410_
                                        _L9411_)
                                 (cons 'let*
                                       (cons (cons (cons _L9411_
                                                         (cons _L9410_ '()))
                                                   (cons (cons _L9409_
                                                               (cons _L9408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g94479450_
                                                                _g94489452_)
                                                         (cons _g94479450_
                                                               _g94489452_))
                                                       '()
                                                       _L9407_)))))
                               _body90629404_
                               _hd90529378_
                               _hd90499370_
                               _hd90349330_
                               _hd90319322_)
                              (_g89769290_ _g89799293_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop90579388_
                                                   _target90549383_
                                                   '()))
                                                (_g89769290_ _g89799293_)))))
                                      (_g89769290_ _g89799293_))
                                  (_g89769290_ _g89799293_))
                              (_g89769290_ _g89799293_))
                          (_g89769290_ _g89799293_))))
                  (_g89769290_ _g89799293_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89769290_ _g89799293_))))
                                          (_g89769290_ _g89799293_))))
                                  (_g89769290_ _g89799293_))
                              (_g89769290_ _g89799293_))
                          (_g89769290_ _g89799293_))))
                  (_g89769290_ _g89799293_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89769290_ _g89799293_))
                                              (_g89769290_ _g89799293_))
                                          (_g89769290_ _g89799293_))))
                                  (_g89769290_ _g89799293_))))
                          (_g89769290_ _g89799293_))))
                  (_g89769290_ _g89799293_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89769290_ _g89799293_))
                                              (_g89769290_ _g89799293_))
                                          (_g89769290_ _g89799293_))))
                                  (_g89769290_ _g89799293_))))
                           (_g89749586_
                            (lambda (_g89799458_)
                              (if (gx#stx-pair? _g89799458_)
                                  (let ((_e89839460_ (gx#stx-e _g89799458_)))
                                    (let ((_hd89849463_ (##car _e89839460_))
                                          (_tl89859465_ (##cdr _e89839460_)))
                                      (if (gx#identifier? _hd89849463_)
                                          (if (gx#stx-eq? 'let _hd89849463_)
                                              (if (gx#stx-pair? _tl89859465_)
                                                  (let ((_e89869468_
                                                         (gx#stx-e
                                                          _tl89859465_)))
                                                    (let ((_hd89879471_
                                                           (##car _e89869468_))
                                                          (_tl89889473_
                                                           (##cdr _e89869468_)))
                                                      (if (gx#stx-pair?
                                                           _hd89879471_)
                                                          (let ((_e89899476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd89879471_)))
                    (let ((_hd89909479_ (##car _e89899476_))
                          (_tl89919481_ (##cdr _e89899476_)))
                      (if (gx#stx-pair? _hd89909479_)
                          (let ((_e89929484_ (gx#stx-e _hd89909479_)))
                            (let ((_hd89939487_ (##car _e89929484_))
                                  (_tl89949489_ (##cdr _e89929484_)))
                              (if (gx#stx-pair? _tl89949489_)
                                  (let ((_e89959492_ (gx#stx-e _tl89949489_)))
                                    (let ((_hd89969495_ (##car _e89959492_))
                                          (_tl89979497_ (##cdr _e89959492_)))
                                      (if (gx#stx-null? _tl89979497_)
                                          (if (gx#stx-null? _tl89919481_)
                                              (if (gx#stx-pair? _tl89889473_)
                                                  (let ((_e89989500_
                                                         (gx#stx-e
                                                          _tl89889473_)))
                                                    (let ((_hd89999503_
                                                           (##car _e89989500_))
                                                          (_tl90009505_
                                                           (##cdr _e89989500_)))
                                                      (if (gx#stx-pair?
                                                           _hd89999503_)
                                                          (let ((_e90019508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd89999503_)))
                    (let ((_hd90029511_ (##car _e90019508_))
                          (_tl90039513_ (##cdr _e90019508_)))
                      (if (gx#identifier? _hd90029511_)
                          (if (gx#stx-eq? 'let _hd90029511_)
                              (if (gx#stx-pair? _tl90039513_)
                                  (let ((_e90049516_ (gx#stx-e _tl90039513_)))
                                    (let ((_hd90059519_ (##car _e90049516_))
                                          (_tl90069521_ (##cdr _e90049516_)))
                                      (if (gx#stx-null? _hd90059519_)
                                          (if (gx#stx-pair/null? _tl90069521_)
                                              (if (fx>= (gx#stx-length
                                                         _tl90069521_)
                                                        '0)
                                                  (let ((_g12919_
                                                         (gx#syntax-split-splice
                                                          _tl90069521_
                                                          '0)))
                                                    (begin
                                                      (let ((_g12920_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g12919_)
                         (##vector-length _g12919_)
                         1)))
                (if (not (##fx= _g12920_ 2))
                    (error "Context expects 2 values" _g12920_)))
              (let ((_target90079524_ (##vector-ref _g12919_ 0))
                    (_tl90099526_ (##vector-ref _g12919_ 1)))
                (if (gx#stx-null? _tl90099526_)
                    (letrec ((_loop90109529_
                              (lambda (_hd90089532_ _body90149534_)
                                (if (gx#stx-pair? _hd90089532_)
                                    (let ((_e90119537_
                                           (gx#stx-e _hd90089532_)))
                                      (let ((_lp-hd90129540_
                                             (##car _e90119537_))
                                            (_lp-tl90139542_
                                             (##cdr _e90119537_)))
                                        (_loop90109529_
                                         _lp-tl90139542_
                                         (cons _lp-hd90129540_
                                               _body90149534_))))
                                    (let ((_body90159545_
                                           (reverse _body90149534_)))
                                      (if (gx#stx-null? _tl90009505_)
                                          ((lambda (_L9548_ _L9549_ _L9550_)
                                             (cons 'let
                                                   (cons (cons (cons _L9550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L9549_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g95789581_ _g95799583_)
                             (cons _g95789581_ _g95799583_))
                           '()
                           _L9548_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _body90159545_
                                           _hd89969495_
                                           _hd89939487_)
                                          (_g89759455_ _g89799458_)))))))
                      (_loop90109529_ _target90079524_ '()))
                    (_g89759455_ _g89799458_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89759455_ _g89799458_))
                                              (_g89759455_ _g89799458_))
                                          (_g89759455_ _g89799458_))))
                                  (_g89759455_ _g89799458_))
                              (_g89759455_ _g89799458_))
                          (_g89759455_ _g89799458_))))
                  (_g89759455_ _g89799458_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89759455_ _g89799458_))
                                              (_g89759455_ _g89799458_))
                                          (_g89759455_ _g89799458_))))
                                  (_g89759455_ _g89799458_))))
                          (_g89759455_ _g89799458_))))
                  (_g89759455_ _g89799458_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89759455_ _g89799458_))
                                              (_g89759455_ _g89799458_))
                                          (_g89759455_ _g89799458_))))
                                  (_g89759455_ _g89799458_)))))
                      (_g89749586_ _code8973_))))
                 (_generate-values8672_
                  (lambda (_hd8786_ _body8787_)
                    (let _lp8789_ ((_rest8791_ _hd8786_)
                                   (_bind8792_ '())
                                   (_check8793_ '())
                                   (_post8794_ '()))
                      (let* ((_g87978808_
                              (lambda (_g87988805_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g87988805_)))
                             (_g87968822_
                              (lambda (_g87988811_)
                                ((lambda ()
                                   (let* ((_body8815_
                                           (if _compiled-body?8668_
                                               _body8787_
                                               (gxc#compile-e _body8787_)))
                                          (_body8817_
                                           (_generate-values-post8673_
                                            _post8794_
                                            _body8815_))
                                          (_body8819_
                                           (_generate-values-check8674_
                                            _check8793_
                                            _body8817_)))
                                     (cons 'let
                                           (cons (reverse _bind8792_)
                                                 (cons _body8819_ '()))))))))
                             (_g87958970_
                              (lambda (_g87988825_)
                                (if (gx#stx-pair? _g87988825_)
                                    (let ((_e88018827_ (gx#stx-e _g87988825_)))
                                      (let ((_hd88028830_ (##car _e88018827_))
                                            (_tl88038832_ (##cdr _e88018827_)))
                                        ((lambda (_L8835_ _L8836_)
                                           (let* ((_g88518876_
                                                   (lambda (_g88528873_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g88528873_)))
                                                  (_g88508920_
                                                   (lambda (_g88528879_)
                                                     (if (gx#stx-pair?
                                                          _g88528879_)
                                                         (let ((_e88668881_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g88528879_)))
                   (let ((_hd88678884_ (##car _e88668881_))
                         (_tl88688886_ (##cdr _e88668881_)))
                     (if (gx#stx-pair? _tl88688886_)
                         (let ((_e88698889_ (gx#stx-e _tl88688886_)))
                           (let ((_hd88708892_ (##car _e88698889_))
                                 (_tl88718894_ (##cdr _e88698889_)))
                             (if (gx#stx-null? _tl88718894_)
                                 ((lambda (_L8897_ _L8898_)
                                    (let* ((_vals8911_
                                            (gxc#generate-runtime-temporary__0))
                                           (_check-values8913_
                                            (gxc#generate-runtime-check-values
                                             _vals8911_
                                             _L8898_
                                             _L8897_))
                                           (_refs8915_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals8911_
                                             _L8898_))
                                           (_expr8917_
                                            (gxc#compile-e _L8897_)))
                                      (_lp8789_
                                       _L8835_
                                       (cons (cons _vals8911_
                                                   (cons _expr8917_ '()))
                                             _bind8792_)
                                       (cons _check-values8913_ _check8793_)
                                       (cons _refs8915_ _post8794_))))
                                  _hd88708892_
                                  _hd88678884_)
                                 (_g88518876_ _g88528879_))))
                         (_g88518876_ _g88528879_))))
                 (_g88518876_ _g88528879_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g88498967_
                                                   (lambda (_g88528923_)
                                                     (if (gx#stx-pair?
                                                          _g88528923_)
                                                         (let ((_e88558925_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g88528923_)))
                   (let ((_hd88568928_ (##car _e88558925_))
                         (_tl88578930_ (##cdr _e88558925_)))
                     (if (gx#stx-pair? _hd88568928_)
                         (let ((_e88588933_ (gx#stx-e _hd88568928_)))
                           (let ((_hd88598936_ (##car _e88588933_))
                                 (_tl88608938_ (##cdr _e88588933_)))
                             (if (gx#stx-null? _tl88608938_)
                                 (if (gx#stx-pair? _tl88578930_)
                                     (let ((_e88618941_
                                            (gx#stx-e _tl88578930_)))
                                       (let ((_hd88628944_ (##car _e88618941_))
                                             (_tl88638946_
                                              (##cdr _e88618941_)))
                                         (if (gx#stx-null? _tl88638946_)
                                             ((lambda (_L8949_ _L8950_)
                                                (let ((_eid8964_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L8950_))
                                                      (_expr8965_
                                                       (gxc#compile-e
                                                        _L8949_)))
                                                  (_lp8789_
                                                   _L8835_
                                                   (cons (cons _eid8964_
                                                               (cons _expr8965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind8792_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check8793_
                                                   _post8794_)))
                                              _hd88628944_
                                              _hd88598936_)
                                             (_g88508920_ _g88528923_))))
                                     (_g88508920_ _g88528923_))
                                 (_g88508920_ _g88528923_))))
                         (_g88508920_ _g88528923_))))
                 (_g88508920_ _g88528923_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g88498967_ _L8836_)))
                                         _tl88038832_
                                         _hd88028830_)))
                                    (_g87968822_ _g87988825_)))))
                        (_g87958970_ _rest8791_)))))
                 (_generate-values-post8673_
                  (lambda (_post8745_ _body8746_)
                    (let _lp8748_ ((_rest8750_ _post8745_)
                                   (_body8751_ _body8746_))
                      (let* ((_rest87528760_ _rest8750_)
                             (_else87548768_ (lambda () _body8751_))
                             (_K87568774_
                              (lambda (_rest8771_ _bind8772_)
                                (_lp8748_
                                 _rest8771_
                                 (cons 'let
                                       (cons _bind8772_
                                             (cons _body8751_ '())))))))
                        (if (##pair? _rest87528760_)
                            (let ((_hd87578777_ (##car _rest87528760_))
                                  (_tl87588779_ (##cdr _rest87528760_)))
                              (let* ((_bind8782_ _hd87578777_)
                                     (_rest8784_ _tl87588779_))
                                (_K87568774_ _rest8784_ _bind8782_)))
                            (_else87548768_))))))
                 (_generate-values-check8674_
                  (lambda (_check8742_ _body8743_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8743_ '())
                                  (reverse _check8742_))))))
          (let* ((_g86768693_
                  (lambda (_g86778690_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g86778690_)))
                 (_g86758739_
                  (lambda (_g86778696_)
                    (if (gx#stx-pair? _g86778696_)
                        (let ((_e86808698_ (gx#stx-e _g86778696_)))
                          (let ((_hd86818701_ (##car _e86808698_))
                                (_tl86828703_ (##cdr _e86808698_)))
                            (if (gx#stx-pair? _tl86828703_)
                                (let ((_e86838706_ (gx#stx-e _tl86828703_)))
                                  (let ((_hd86848709_ (##car _e86838706_))
                                        (_tl86858711_ (##cdr _e86838706_)))
                                    (if (gx#stx-pair? _tl86858711_)
                                        (let ((_e86868714_
                                               (gx#stx-e _tl86858711_)))
                                          (let ((_hd86878717_
                                                 (##car _e86868714_))
                                                (_tl86888719_
                                                 (##cdr _e86868714_)))
                                            (if (gx#stx-null? _tl86888719_)
                                                ((lambda (_L8722_ _L8723_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L8723_)
                                                       (_generate-simple8670_
                                                        _L8723_
                                                        _L8722_)
                                                       (_generate-values8672_
                                                        _L8723_
                                                        _L8722_)))
                                                 _hd86878717_
                                                 _hd86848709_)
                                                (_g86768693_ _g86778696_))))
                                        (_g86768693_ _g86778696_))))
                                (_g86768693_ _g86778696_))))
                        (_g86768693_ _g86778696_)))))
            (_g86758739_ _stx8667_)))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx9595_)
          (let ((_compiled-body?9597_ '#f))
            (gxc#generate-runtime-let-values%__%
             _stx9595_
             _compiled-body?9597_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g12922_
          (let ((_g12921_ (length _g12922_)))
            (cond ((##fx= _g12921_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g12922_))
                  ((##fx= _g12921_ 2)
                   (apply gxc#generate-runtime-let-values%__% _g12922_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g12922_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals8566_ _hd8567_)
      (let _lp8569_ ((_rest8571_ _hd8567_) (_k8572_ '0) (_r8573_ '()))
        (let* ((_g85788594_
                (lambda (_g85798591_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g85798591_)))
               (_g85778601_
                (lambda (_g85798597_) ((lambda () (reverse _r8573_)))))
               (_g85768617_
                (lambda (_g85798604_)
                  ((lambda (_L8606_)
                     (if (gx#identifier? _L8606_)
                         (foldl1 cons
                                 (cons (cons (gxc#generate-runtime-binding-id
                                              _L8606_)
                                             (cons (gxc#generate-runtime-values->list
                                                    _vals8566_
                                                    _k8572_)
                                                   '()))
                                       '())
                                 _r8573_)
                         (_g85778601_ _g85798604_)))
                   _g85798604_)))
               (_g85758641_
                (lambda (_g85798620_)
                  (if (gx#stx-pair? _g85798620_)
                      (let ((_e85868622_ (gx#stx-e _g85798620_)))
                        (let ((_hd85878625_ (##car _e85868622_))
                              (_tl85888627_ (##cdr _e85868622_)))
                          ((lambda (_L8630_ _L8631_)
                             (_lp8569_
                              _L8630_
                              (fx+ _k8572_ '1)
                              (cons (cons (gxc#generate-runtime-binding-id
                                           _L8631_)
                                          (cons (gxc#generate-runtime-values-ref
                                                 _vals8566_
                                                 _k8572_
                                                 _L8630_)
                                                '()))
                                    _r8573_)))
                           _tl85888627_
                           _hd85878625_)))
                      (_g85768617_ _g85798620_))))
               (_g85748663_
                (lambda (_g85798644_)
                  (if (gx#stx-pair? _g85798644_)
                      (let ((_e85818646_ (gx#stx-e _g85798644_)))
                        (let ((_hd85828649_ (##car _e85818646_))
                              (_tl85838651_ (##cdr _e85818646_)))
                          (if (gx#stx-datum? _hd85828649_)
                              (if (equal? (gx#stx-e _hd85828649_) '#f)
                                  ((lambda (_L8654_)
                                     (_lp8569_
                                      _L8654_
                                      (fx+ _k8572_ '1)
                                      _r8573_))
                                   _tl85838651_)
                                  (_g85758641_ _g85798644_))
                              (_g85758641_ _g85798644_))))
                      (_g85758641_ _g85798644_)))))
          (_g85748663_ _rest8571_)))))
  (begin
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_stx8248_ _compiled-body?8249_)
        (letrec ((_generate-simple8251_
                  (lambda (_hd8553_ _body8554_)
                    (gxc#generate-runtime-simple-let
                     'letrec
                     _hd8553_
                     _body8554_
                     _compiled-body?8249_)))
                 (_generate-values8252_
                  (lambda (_hd8332_ _body8333_)
                    (let _lp8335_ ((_rest8337_ _hd8332_)
                                   (_bind8338_ '())
                                   (_check8339_ '())
                                   (_post8340_ '()))
                      (let* ((_g83438354_
                              (lambda (_g83448351_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g83448351_)))
                             (_g83428368_
                              (lambda (_g83448357_)
                                ((lambda ()
                                   (let* ((_body8361_
                                           (if _compiled-body?8249_
                                               _body8333_
                                               (gxc#compile-e _body8333_)))
                                          (_body8363_
                                           (_generate-values-post8254_
                                            _post8340_
                                            _body8361_))
                                          (_body8365_
                                           (_generate-values-check8253_
                                            _check8339_
                                            _body8363_)))
                                     (cons 'letrec
                                           (cons (reverse _bind8338_)
                                                 (cons _body8365_ '()))))))))
                             (_g83418550_
                              (lambda (_g83448371_)
                                (if (gx#stx-pair? _g83448371_)
                                    (let ((_e83478373_ (gx#stx-e _g83448371_)))
                                      (let ((_hd83488376_ (##car _e83478373_))
                                            (_tl83498378_ (##cdr _e83478373_)))
                                        ((lambda (_L8381_ _L8382_)
                                           (let* ((_g83978422_
                                                   (lambda (_g83988419_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g83988419_)))
                                                  (_g83968500_
                                                   (lambda (_g83988425_)
                                                     (if (gx#stx-pair?
                                                          _g83988425_)
                                                         (let ((_e84128427_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g83988425_)))
                   (let ((_hd84138430_ (##car _e84128427_))
                         (_tl84148432_ (##cdr _e84128427_)))
                     (if (gx#stx-pair? _tl84148432_)
                         (let ((_e84158435_ (gx#stx-e _tl84148432_)))
                           (let ((_hd84168438_ (##car _e84158435_))
                                 (_tl84178440_ (##cdr _e84158435_)))
                             (if (gx#stx-null? _tl84178440_)
                                 ((lambda (_L8443_ _L8444_)
                                    (let* ((_vals8457_
                                            (gxc#generate-runtime-temporary__0))
                                           (_check-values8459_
                                            (gxc#generate-runtime-check-values
                                             _vals8457_
                                             _L8444_
                                             _L8443_))
                                           (_refs8461_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals8457_
                                             _L8444_))
                                           (_expr8463_
                                            (gxc#compile-e _L8443_)))
                                      (_lp8335_
                                       _L8381_
                                       (foldl1 cons
                                               (cons (cons _vals8457_
                                                           (cons _expr8463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind8338_)
                                               (map (lambda (_e84658467_)
                                                      (let* ((_g84698478_
                                                              _e84658467_)
                                                             (_E84718482_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g84698478_)))
                     (_K84728487_
                      (lambda (_eid8485_)
                        (cons _eid8485_ (cons '#!void '())))))
                (if (##pair? _g84698478_)
                    (let ((_hd84738490_ (##car _g84698478_))
                          (_tl84748492_ (##cdr _g84698478_)))
                      (let ((_eid8495_ _hd84738490_))
                        (if (##pair? _tl84748492_)
                            (let ((_tl84768497_ (##cdr _tl84748492_)))
                              (if (##null? _tl84768497_)
                                  (_K84728487_ _eid8495_)
                                  (_E84718482_)))
                            (_E84718482_))))
                    (_E84718482_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _refs8461_))
                                       (cons _check-values8459_ _check8339_)
                                       (foldl1 cons _refs8461_ _post8340_))))
                                  _hd84168438_
                                  _hd84138430_)
                                 (_g83978422_ _g83988425_))))
                         (_g83978422_ _g83988425_))))
                 (_g83978422_ _g83988425_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g83958547_
                                                   (lambda (_g83988503_)
                                                     (if (gx#stx-pair?
                                                          _g83988503_)
                                                         (let ((_e84018505_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g83988503_)))
                   (let ((_hd84028508_ (##car _e84018505_))
                         (_tl84038510_ (##cdr _e84018505_)))
                     (if (gx#stx-pair? _hd84028508_)
                         (let ((_e84048513_ (gx#stx-e _hd84028508_)))
                           (let ((_hd84058516_ (##car _e84048513_))
                                 (_tl84068518_ (##cdr _e84048513_)))
                             (if (gx#stx-null? _tl84068518_)
                                 (if (gx#stx-pair? _tl84038510_)
                                     (let ((_e84078521_
                                            (gx#stx-e _tl84038510_)))
                                       (let ((_hd84088524_ (##car _e84078521_))
                                             (_tl84098526_
                                              (##cdr _e84078521_)))
                                         (if (gx#stx-null? _tl84098526_)
                                             ((lambda (_L8529_ _L8530_)
                                                (let ((_eid8544_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L8530_))
                                                      (_expr8545_
                                                       (gxc#compile-e
                                                        _L8529_)))
                                                  (_lp8335_
                                                   _L8381_
                                                   (cons (cons _eid8544_
                                                               (cons _expr8545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind8338_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check8339_
                                                   _post8340_)))
                                              _hd84088524_
                                              _hd84058516_)
                                             (_g83968500_ _g83988503_))))
                                     (_g83968500_ _g83988503_))
                                 (_g83968500_ _g83988503_))))
                         (_g83968500_ _g83988503_))))
                 (_g83968500_ _g83988503_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g83958547_ _L8382_)))
                                         _tl83498378_
                                         _hd83488376_)))
                                    (_g83428368_ _g83448371_)))))
                        (_g83418550_ _rest8337_)))))
                 (_generate-values-check8253_
                  (lambda (_check8329_ _body8330_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8330_ '())
                                  (reverse _check8329_)))))
                 (_generate-values-post8254_
                  (lambda (_post8322_ _body8323_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8323_ '())
                                  (map (lambda (_g83248326_)
                                         (cons 'set! _g83248326_))
                                       (reverse _post8322_)))))))
          (let* ((_g82568273_
                  (lambda (_g82578270_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g82578270_)))
                 (_g82558319_
                  (lambda (_g82578276_)
                    (if (gx#stx-pair? _g82578276_)
                        (let ((_e82608278_ (gx#stx-e _g82578276_)))
                          (let ((_hd82618281_ (##car _e82608278_))
                                (_tl82628283_ (##cdr _e82608278_)))
                            (if (gx#stx-pair? _tl82628283_)
                                (let ((_e82638286_ (gx#stx-e _tl82628283_)))
                                  (let ((_hd82648289_ (##car _e82638286_))
                                        (_tl82658291_ (##cdr _e82638286_)))
                                    (if (gx#stx-pair? _tl82658291_)
                                        (let ((_e82668294_
                                               (gx#stx-e _tl82658291_)))
                                          (let ((_hd82678297_
                                                 (##car _e82668294_))
                                                (_tl82688299_
                                                 (##cdr _e82668294_)))
                                            (if (gx#stx-null? _tl82688299_)
                                                ((lambda (_L8302_ _L8303_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L8303_)
                                                       (_generate-simple8251_
                                                        _L8303_
                                                        _L8302_)
                                                       (_generate-values8252_
                                                        _L8303_
                                                        _L8302_)))
                                                 _hd82678297_
                                                 _hd82648289_)
                                                (_g82568273_ _g82578276_))))
                                        (_g82568273_ _g82578276_))))
                                (_g82568273_ _g82578276_))))
                        (_g82568273_ _g82578276_)))))
            (_g82558319_ _stx8248_)))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx8559_)
          (let ((_compiled-body?8561_ '#f))
            (gxc#generate-runtime-letrec-values%__%
             _stx8559_
             _compiled-body?8561_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g12924_
          (let ((_g12923_ (length _g12924_)))
            (cond ((##fx= _g12923_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g12924_))
                  ((##fx= _g12923_ 2)
                   (apply gxc#generate-runtime-letrec-values%__% _g12924_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g12924_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx7830_)
      (letrec ((_generate-values7832_
                (lambda (_hd8075_ _body8076_)
                  (let _lp8078_ ((_rest8080_ _hd8075_) (_bind8081_ '()))
                    (let* ((_rest80828090_ _rest8080_)
                           (_else80848101_
                            (lambda ()
                              (let ((_bind8098_ (reverse _bind8081_))
                                    (_body8099_ (gxc#compile-e _body8076_)))
                                (cons 'letrec*
                                      (cons _bind8098_
                                            (cons _body8099_ '()))))))
                           (_K80868235_
                            (lambda (_rest8104_ _hd-bind8105_)
                              (let* ((_g81088133_
                                      (lambda (_g81098130_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g81098130_)))
                                     (_g81078185_
                                      (lambda (_g81098136_)
                                        (if (gx#stx-pair? _g81098136_)
                                            (let ((_e81238138_
                                                   (gx#stx-e _g81098136_)))
                                              (let ((_hd81248141_
                                                     (##car _e81238138_))
                                                    (_tl81258143_
                                                     (##cdr _e81238138_)))
                                                (if (gx#stx-pair? _tl81258143_)
                                                    (let ((_e81268146_
                                                           (gx#stx-e
                                                            _tl81258143_)))
                                                      (let ((_hd81278149_
                                                             (##car _e81268146_))
                                                            (_tl81288151_
                                                             (##cdr _e81268146_)))
                                                        (if (gx#stx-null?
                                                             _tl81288151_)
                                                            ((lambda (_L8154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L8155_)
                       (let* ((_vals8174_ (gxc#generate-runtime-temporary__0))
                              (_tmp8176_ (gxc#generate-runtime-temporary__0))
                              (_check-values8178_
                               (gxc#generate-runtime-check-values
                                _tmp8176_
                                _L8155_
                                _L8154_))
                              (_refs8180_
                               (gxc#generate-runtime-let-values-bind
                                _vals8174_
                                _L8155_))
                              (_expr8182_ (gxc#compile-e _L8154_)))
                         (_lp8078_
                          _rest8104_
                          (foldl1 cons
                                  (cons (cons _vals8174_
                                              (cons (cons 'let
                                                          (cons (cons (cons _tmp8176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _expr8182_ '()))
                              '())
                        (cons _check-values8178_ (cons _tmp8176_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        _bind8081_)
                                  _refs8180_))))
                     _hd81278149_
                     _hd81248141_)
                    (_g81088133_ _g81098136_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g81088133_
                                                     _g81098136_))))
                                            (_g81088133_ _g81098136_))))
                                     (_g81068232_
                                      (lambda (_g81098188_)
                                        (if (gx#stx-pair? _g81098188_)
                                            (let ((_e81128190_
                                                   (gx#stx-e _g81098188_)))
                                              (let ((_hd81138193_
                                                     (##car _e81128190_))
                                                    (_tl81148195_
                                                     (##cdr _e81128190_)))
                                                (if (gx#stx-pair? _hd81138193_)
                                                    (let ((_e81158198_
                                                           (gx#stx-e
                                                            _hd81138193_)))
                                                      (let ((_hd81168201_
                                                             (##car _e81158198_))
                                                            (_tl81178203_
                                                             (##cdr _e81158198_)))
                                                        (if (gx#stx-null?
                                                             _tl81178203_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl81148195_)
                        (let ((_e81188206_ (gx#stx-e _tl81148195_)))
                          (let ((_hd81198209_ (##car _e81188206_))
                                (_tl81208211_ (##cdr _e81188206_)))
                            (if (gx#stx-null? _tl81208211_)
                                ((lambda (_L8214_ _L8215_)
                                   (let ((_eid8229_
                                          (gxc#generate-runtime-binding-id*
                                           _L8215_))
                                         (_expr8230_ (gxc#compile-e _L8214_)))
                                     (_lp8078_
                                      _rest8104_
                                      (cons (cons _eid8229_
                                                  (cons _expr8230_ '()))
                                            _bind8081_))))
                                 _hd81198209_
                                 _hd81168201_)
                                (_g81078185_ _g81098188_))))
                        (_g81078185_ _g81098188_))
                    (_g81078185_ _g81098188_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g81078185_
                                                     _g81098188_))))
                                            (_g81078185_ _g81098188_)))))
                                (_g81068232_ _hd-bind8105_)))))
                      (if (##pair? _rest80828090_)
                          (let ((_hd80878238_ (##car _rest80828090_))
                                (_tl80888240_ (##cdr _rest80828090_)))
                            (let* ((_hd-bind8243_ _hd80878238_)
                                   (_rest8245_ _tl80888240_))
                              (_K80868235_ _rest8245_ _hd-bind8243_)))
                          (_else80848101_))))))
               (_generate-letrec?7833_
                (lambda (_hd7965_)
                  (let _lp7967_ ((_rest7969_ _hd7965_))
                    (let* ((_rest79707978_ _rest7969_)
                           (_else79727986_ (lambda () '#t))
                           (_K79748063_
                            (lambda (_rest7989_ _hd-bind7990_)
                              (let* ((_g79928009_
                                      (lambda (_g79938006_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g79938006_)))
                                     (_g79918060_
                                      (lambda (_g79938012_)
                                        (if (gx#stx-pair? _g79938012_)
                                            (let ((_e79968014_
                                                   (gx#stx-e _g79938012_)))
                                              (let ((_hd79978017_
                                                     (##car _e79968014_))
                                                    (_tl79988019_
                                                     (##cdr _e79968014_)))
                                                (if (gx#stx-pair? _hd79978017_)
                                                    (let ((_e79998022_
                                                           (gx#stx-e
                                                            _hd79978017_)))
                                                      (let ((_hd80008025_
                                                             (##car _e79998022_))
                                                            (_tl80018027_
                                                             (##cdr _e79998022_)))
                                                        (if (gx#stx-null?
                                                             _tl80018027_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl79988019_)
                        (let ((_e80028030_ (gx#stx-e _tl79988019_)))
                          (let ((_hd80038033_ (##car _e80028030_))
                                (_tl80048035_ (##cdr _e80028030_)))
                            (if (gx#stx-null? _tl80048035_)
                                ((lambda (_L8038_ _L8039_)
                                   (if (_is-lambda-expr?7834_ _L8038_)
                                       (_lp7967_ _rest7989_)
                                       '#f))
                                 _hd80038033_
                                 _hd80008025_)
                                (_g79928009_ _g79938012_))))
                        (_g79928009_ _g79938012_))
                    (_g79928009_ _g79938012_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g79928009_
                                                     _g79938012_))))
                                            (_g79928009_ _g79938012_)))))
                                (_g79918060_ _hd-bind7990_)))))
                      (if (##pair? _rest79707978_)
                          (let ((_hd79758066_ (##car _rest79707978_))
                                (_tl79768068_ (##cdr _rest79707978_)))
                            (let* ((_hd-bind8071_ _hd79758066_)
                                   (_rest8073_ _tl79768068_))
                              (_K79748063_ _rest8073_ _hd-bind8071_)))
                          (_else79727986_))))))
               (_is-lambda-expr?7834_
                (lambda (_expr7902_)
                  (let* ((_g79057919_
                          (lambda (_g79067916_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g79067916_)))
                         (_g79047926_ (lambda (_g79067922_) ((lambda () '#f))))
                         (_g79037962_
                          (lambda (_g79067929_)
                            (if (gx#stx-pair? _g79067929_)
                                (let ((_e79097931_ (gx#stx-e _g79067929_)))
                                  (let ((_hd79107934_ (##car _e79097931_))
                                        (_tl79117936_ (##cdr _e79097931_)))
                                    (if (gx#identifier? _hd79107934_)
                                        (if (gx#stx-eq? '%#lambda _hd79107934_)
                                            (if (gx#stx-pair? _tl79117936_)
                                                (let ((_e79127939_
                                                       (gx#stx-e
                                                        _tl79117936_)))
                                                  (let ((_hd79137942_
                                                         (##car _e79127939_))
                                                        (_tl79147944_
                                                         (##cdr _e79127939_)))
                                                    ((lambda (_L7947_ _L7948_)
                                                       '#t)
                                                     _tl79147944_
                                                     _hd79137942_)))
                                                (_g79047926_ _g79067929_))
                                            (_g79047926_ _g79067929_))
                                        (_g79047926_ _g79067929_))))
                                (_g79047926_ _g79067929_)))))
                    (_g79037962_ _expr7902_)))))
        (let* ((_g78367853_
                (lambda (_g78377850_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g78377850_)))
               (_g78357899_
                (lambda (_g78377856_)
                  (if (gx#stx-pair? _g78377856_)
                      (let ((_e78407858_ (gx#stx-e _g78377856_)))
                        (let ((_hd78417861_ (##car _e78407858_))
                              (_tl78427863_ (##cdr _e78407858_)))
                          (if (gx#stx-pair? _tl78427863_)
                              (let ((_e78437866_ (gx#stx-e _tl78427863_)))
                                (let ((_hd78447869_ (##car _e78437866_))
                                      (_tl78457871_ (##cdr _e78437866_)))
                                  (if (gx#stx-pair? _tl78457871_)
                                      (let ((_e78467874_
                                             (gx#stx-e _tl78457871_)))
                                        (let ((_hd78477877_
                                               (##car _e78467874_))
                                              (_tl78487879_
                                               (##cdr _e78467874_)))
                                          (if (gx#stx-null? _tl78487879_)
                                              ((lambda (_L7882_ _L7883_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L7883_)
                                                     (if (_generate-letrec?7833_
                                                          _L7883_)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec
                                                          _L7883_
                                                          _L7882_
                                                          '#f)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec*
                                                          _L7883_
                                                          _L7882_
                                                          '#f))
                                                     (_generate-values7832_
                                                      _L7883_
                                                      _L7882_)))
                                               _hd78477877_
                                               _hd78447869_)
                                              (_g78367853_ _g78377856_))))
                                      (_g78367853_ _g78377856_))))
                              (_g78367853_ _g78377856_))))
                      (_g78367853_ _g78377856_)))))
          (_g78357899_ _stx7830_)))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd7723_)
      (let _lp7725_ ((_rest7727_ _hd7723_))
        (let* ((_g77317752_
                (lambda (_g77327749_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g77327749_)))
               (_g77307759_ (lambda (_g77327755_) ((lambda () '#f))))
               (_g77297766_
                (lambda (_g77327762_)
                  (if (gx#stx-null? _g77327762_)
                      ((lambda () '#t))
                      (_g77307759_ _g77327762_))))
               (_g77287827_
                (lambda (_g77327769_)
                  (if (gx#stx-pair? _g77327769_)
                      (let ((_e77367771_ (gx#stx-e _g77327769_)))
                        (let ((_hd77377774_ (##car _e77367771_))
                              (_tl77387776_ (##cdr _e77367771_)))
                          (if (gx#stx-pair? _hd77377774_)
                              (let ((_e77397779_ (gx#stx-e _hd77377774_)))
                                (let ((_hd77407782_ (##car _e77397779_))
                                      (_tl77417784_ (##cdr _e77397779_)))
                                  (if (gx#stx-pair? _hd77407782_)
                                      (let ((_e77427787_
                                             (gx#stx-e _hd77407782_)))
                                        (let ((_hd77437790_
                                               (##car _e77427787_))
                                              (_tl77447792_
                                               (##cdr _e77427787_)))
                                          (if (gx#stx-null? _tl77447792_)
                                              (if (gx#stx-pair? _tl77417784_)
                                                  (let ((_e77457795_
                                                         (gx#stx-e
                                                          _tl77417784_)))
                                                    (let ((_hd77467798_
                                                           (##car _e77457795_))
                                                          (_tl77477800_
                                                           (##cdr _e77457795_)))
                                                      (if (gx#stx-null?
                                                           _tl77477800_)
                                                          ((lambda (_L7803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L7804_
                            _L7805_)
                     (_lp7725_ _L7803_))
                   _tl77387776_
                   _hd77467798_
                   _hd77437790_)
                  (_g77297766_ _g77327769_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g77297766_ _g77327769_))
                                              (_g77297766_ _g77327769_))))
                                      (_g77297766_ _g77327769_))))
                              (_g77297766_ _g77327769_))))
                      (_g77297766_ _g77327769_)))))
          (_g77287827_ _rest7727_)))))
  (define gxc#generate-runtime-simple-let
    (lambda (_form7647_ _hd7648_ _body7649_ _compiled-body?7650_)
      (letrec ((_generate17652_
                (lambda (_bind7654_)
                  (let* ((_g76567673_
                          (lambda (_g76577670_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g76577670_)))
                         (_g76557720_
                          (lambda (_g76577676_)
                            (if (gx#stx-pair? _g76577676_)
                                (let ((_e76607678_ (gx#stx-e _g76577676_)))
                                  (let ((_hd76617681_ (##car _e76607678_))
                                        (_tl76627683_ (##cdr _e76607678_)))
                                    (if (gx#stx-pair? _hd76617681_)
                                        (let ((_e76637686_
                                               (gx#stx-e _hd76617681_)))
                                          (let ((_hd76647689_
                                                 (##car _e76637686_))
                                                (_tl76657691_
                                                 (##cdr _e76637686_)))
                                            (if (gx#stx-null? _tl76657691_)
                                                (if (gx#stx-pair? _tl76627683_)
                                                    (let ((_e76667694_
                                                           (gx#stx-e
                                                            _tl76627683_)))
                                                      (let ((_hd76677697_
                                                             (##car _e76667694_))
                                                            (_tl76687699_
                                                             (##cdr _e76667694_)))
                                                        (if (gx#stx-null?
                                                             _tl76687699_)
                                                            ((lambda (_L7702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L7703_)
                       (cons (gxc#generate-runtime-binding-id* _L7703_)
                             (cons (gxc#compile-e _L7702_) '())))
                     _hd76677697_
                     _hd76647689_)
                    (_g76567673_ _g76577676_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g76567673_ _g76577676_))
                                                (_g76567673_ _g76577676_))))
                                        (_g76567673_ _g76577676_))))
                                (_g76567673_ _g76577676_)))))
                    (_g76557720_ _bind7654_)))))
        (cons _form7647_
              (cons (map _generate17652_ _hd7648_)
                    (cons (if _compiled-body?7650_
                              _body7649_
                              (gxc#compile-e _body7649_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx7555_)
      (letrec ((_generate17557_
                (lambda (_datum7609_)
                  (if (let ((_$e7611_ (null? _datum7609_)))
                        (if _$e7611_
                            _$e7611_
                            (let ((_$e7614_ (interned-symbol? _datum7609_)))
                              (if _$e7614_
                                  _$e7614_
                                  (let ((_$e7617_
                                         (gx#self-quoting? _datum7609_)))
                                    (if _$e7617_
                                        _$e7617_
                                        (eof-object? _datum7609_)))))))
                      _datum7609_
                      (if (uninterned-symbol? _datum7609_)
                          (gxc#generate-runtime-gensym-reference__%
                           _datum7609_
                           '#t)
                          (if (pair? _datum7609_)
                              (cons (_generate17557_ (car _datum7609_))
                                    (_generate17557_ (cdr _datum7609_)))
                              (if (box? _datum7609_)
                                  (box (_generate17557_ (unbox _datum7609_)))
                                  (if (vector? _datum7609_)
                                      (vector-map _generate17557_ _datum7609_)
                                      (if (let ((_$e7620_
                                                 (s8vector? _datum7609_)))
                                            (if _$e7620_
                                                _$e7620_
                                                (let ((_$e7623_
                                                       (u8vector?
                                                        _datum7609_)))
                                                  (if _$e7623_
                                                      _$e7623_
                                                      (let ((_$e7626_
                                                             (s16vector?
                                                              _datum7609_)))
                                                        (if _$e7626_
                                                            _$e7626_
                                                            (let ((_$e7629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum7609_)))
                      (if _$e7629_
                          _$e7629_
                          (let ((_$e7632_ (s32vector? _datum7609_)))
                            (if _$e7632_
                                _$e7632_
                                (let ((_$e7635_ (u32vector? _datum7609_)))
                                  (if _$e7635_
                                      _$e7635_
                                      (let ((_$e7638_
                                             (s64vector? _datum7609_)))
                                        (if _$e7638_
                                            _$e7638_
                                            (let ((_$e7641_
                                                   (u64vector? _datum7609_)))
                                              (if _$e7641_
                                                  _$e7641_
                                                  (let ((_$e7644_
                                                         (f32vector?
                                                          _datum7609_)))
                                                    (if _$e7644_
                                                        _$e7644_
                                                        (f64vector?
                                                         _datum7609_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum7609_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx7555_))))))))))
        (let* ((_g75597572_
                (lambda (_g75607569_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g75607569_)))
               (_g75587606_
                (lambda (_g75607575_)
                  (if (gx#stx-pair? _g75607575_)
                      (let ((_e75627577_ (gx#stx-e _g75607575_)))
                        (let ((_hd75637580_ (##car _e75627577_))
                              (_tl75647582_ (##cdr _e75627577_)))
                          (if (gx#stx-pair? _tl75647582_)
                              (let ((_e75657585_ (gx#stx-e _tl75647582_)))
                                (let ((_hd75667588_ (##car _e75657585_))
                                      (_tl75677590_ (##cdr _e75657585_)))
                                  (if (gx#stx-null? _tl75677590_)
                                      ((lambda (_L7593_)
                                         (cons 'quote
                                               (cons (_generate17557_
                                                      (gx#stx-e _L7593_))
                                                     '())))
                                       _hd75667588_)
                                      (_g75597572_ _g75607575_))))
                              (_g75597572_ _g75607575_))))
                      (_g75597572_ _g75607575_)))))
          (_g75587606_ _stx7555_)))))
  (define gxc#generate-runtime-call%
    (lambda (_stx7248_)
      (let* ((_g72507264_
              (lambda (_g72517261_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g72517261_)))
             (_g72497552_
              (lambda (_g72517267_)
                (if (gx#stx-pair? _g72517267_)
                    (let ((_e72547269_ (gx#stx-e _g72517267_)))
                      (let ((_hd72557272_ (##car _e72547269_))
                            (_tl72567274_ (##cdr _e72547269_)))
                        (if (gx#stx-pair? _tl72567274_)
                            (let ((_e72577277_ (gx#stx-e _tl72567274_)))
                              (let ((_hd72587280_ (##car _e72577277_))
                                    (_tl72597282_ (##cdr _e72577277_)))
                                ((lambda (_L7285_ _L7286_)
                                   (let ((_rator7299_ (gxc#compile-e _L7286_))
                                         (_rands7300_
                                          (map gxc#compile-e _L7285_)))
                                     (let* ((_g73037355_
                                             (lambda (_g73047352_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g73047352_)))
                                            (_g73027362_
                                             (lambda (_g73047358_)
                                               ((lambda ()
                                                  (cons _rator7299_
                                                        _rands7300_)))))
                                            (_g73017549_
                                             (lambda (_g73047365_)
                                               (if (gx#stx-pair? _g73047365_)
                                                   (let ((_e73097367_
                                                          (gx#stx-e
                                                           _g73047365_)))
                                                     (let ((_hd73107370_
                                                            (##car _e73097367_))
                                                           (_tl73117372_
                                                            (##cdr _e73097367_)))
                                                       (if (gx#identifier?
                                                            _hd73107370_)
                                                           (if (gx#stx-eq?
                                                                'letrec
                                                                _hd73107370_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl73117372_)
                           (let ((_e73127375_ (gx#stx-e _tl73117372_)))
                             (let ((_hd73137378_ (##car _e73127375_))
                                   (_tl73147380_ (##cdr _e73127375_)))
                               (if (gx#stx-pair? _hd73137378_)
                                   (let ((_e73157383_ (gx#stx-e _hd73137378_)))
                                     (let ((_hd73167386_ (##car _e73157383_))
                                           (_tl73177388_ (##cdr _e73157383_)))
                                       (if (gx#stx-pair? _hd73167386_)
                                           (let ((_e73187391_
                                                  (gx#stx-e _hd73167386_)))
                                             (let ((_hd73197394_
                                                    (##car _e73187391_))
                                                   (_tl73207396_
                                                    (##cdr _e73187391_)))
                                               (if (gx#stx-pair? _tl73207396_)
                                                   (let ((_e73217399_
                                                          (gx#stx-e
                                                           _tl73207396_)))
                                                     (let ((_hd73227402_
                                                            (##car _e73217399_))
                                                           (_tl73237404_
                                                            (##cdr _e73217399_)))
                                                       (if (gx#stx-pair?
                                                            _hd73227402_)
                                                           (let ((_e73247407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd73227402_)))
                     (let ((_hd73257410_ (##car _e73247407_))
                           (_tl73267412_ (##cdr _e73247407_)))
                       (if (gx#identifier? _hd73257410_)
                           (if (gx#stx-eq? 'lambda _hd73257410_)
                               (if (gx#stx-pair? _tl73267412_)
                                   (let ((_e73277415_ (gx#stx-e _tl73267412_)))
                                     (let ((_hd73287418_ (##car _e73277415_))
                                           (_tl73297420_ (##cdr _e73277415_)))
                                       (if (gx#stx-pair/null? _hd73287418_)
                                           (if (fx>= (gx#stx-length
                                                      _hd73287418_)
                                                     '0)
                                               (let ((_g12925_
                                                      (gx#syntax-split-splice
                                                       _hd73287418_
                                                       '0)))
                                                 (begin
                                                   (let ((_g12926_
                                                          (if (##values?
                                                               _g12925_)
                                                              (##vector-length
                                                               _g12925_)
                                                              1)))
                                                     (if (not (##fx= _g12926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                 (error "Context expects 2 values" _g12926_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target73307423_
                                                          (##vector-ref
                                                           _g12925_
                                                           0))
                                                         (_tl73327425_
                                                          (##vector-ref
                                                           _g12925_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl73327425_)
                                                         (letrec ((_loop73337428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd73317431_ _arg73377433_)
                             (if (gx#stx-pair? _hd73317431_)
                                 (let ((_e73347436_ (gx#stx-e _hd73317431_)))
                                   (let ((_lp-hd73357439_ (##car _e73347436_))
                                         (_lp-tl73367441_ (##cdr _e73347436_)))
                                     (_loop73337428_
                                      _lp-tl73367441_
                                      (cons _lp-hd73357439_ _arg73377433_))))
                                 (let ((_arg73387444_ (reverse _arg73377433_)))
                                   (if (gx#stx-pair/null? _tl73297420_)
                                       (if (fx>= (gx#stx-length _tl73297420_)
                                                 '0)
                                           (let ((_g12927_
                                                  (gx#syntax-split-splice
                                                   _tl73297420_
                                                   '0)))
                                             (begin
                                               (let ((_g12928_
                                                      (if (##values? _g12927_)
                                                          (##vector-length
                                                           _g12927_)
                                                          1)))
                                                 (if (not (##fx= _g12928_ 2))
                                                     (error "Context expects 2 values"
                                                            _g12928_)))
                                               (let ((_target73397447_
                                                      (##vector-ref
                                                       _g12927_
                                                       0))
                                                     (_tl73417449_
                                                      (##vector-ref
                                                       _g12927_
                                                       1)))
                                                 (if (gx#stx-null?
                                                      _tl73417449_)
                                                     (letrec ((_loop73427452_
                                                               (lambda (_hd73407455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body73467457_)
                         (if (gx#stx-pair? _hd73407455_)
                             (let ((_e73437460_ (gx#stx-e _hd73407455_)))
                               (let ((_lp-hd73447463_ (##car _e73437460_))
                                     (_lp-tl73457465_ (##cdr _e73437460_)))
                                 (_loop73427452_
                                  _lp-tl73457465_
                                  (cons _lp-hd73447463_ _body73467457_))))
                             (let ((_body73477468_ (reverse _body73467457_)))
                               (if (gx#stx-null? _tl73237404_)
                                   (if (gx#stx-null? _tl73177388_)
                                       (if (gx#stx-pair? _tl73147380_)
                                           (let ((_e73487471_
                                                  (gx#stx-e _tl73147380_)))
                                             (let ((_hd73497474_
                                                    (##car _e73487471_))
                                                   (_tl73507476_
                                                    (##cdr _e73487471_)))
                                               (if (gx#stx-null? _tl73507476_)
                                                   ((lambda (_L7479_
                                                             _L7480_
                                                             _L7481_
                                                             _L7482_)
                                                      (if (eq? _L7482_ _L7479_)
                                                          (if (fx= (length _rands7300_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g75187521_ _g75197523_)
                                               (cons _g75187521_ _g75197523_))
                                             '()
                                             _L7481_))))
                      (let* ((_id7526_ _L7482_)
                             (_args7535_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g75277530_ _g75287532_)
                                          (cons _g75277530_ _g75287532_))
                                        '()
                                        _L7481_)))
                             (_body7544_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g75367539_ _g75377541_)
                                          (cons _g75367539_ _g75377541_))
                                        '()
                                        _L7480_)))
                             (_init7546_ (map list _args7535_ _rands7300_)))
                        (cons 'let
                              (cons _id7526_ (cons _init7546_ _body7544_))))
                      (gxc#raise-compile-error
                       '"Illegal loop application; arity mismatch"
                       _stx7248_))
                  (_g73027362_ _g73047365_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd73497474_
                                                    _body73477468_
                                                    _arg73387444_
                                                    _hd73197394_)
                                                   (_g73027362_ _g73047365_))))
                                           (_g73027362_ _g73047365_))
                                       (_g73027362_ _g73047365_))
                                   (_g73027362_ _g73047365_)))))))
               (_loop73427452_ _target73397447_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g73027362_
                                                      _g73047365_)))))
                                           (_g73027362_ _g73047365_))
                                       (_g73027362_ _g73047365_)))))))
                   (_loop73337428_ _target73307423_ '()))
                 (_g73027362_ _g73047365_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g73027362_ _g73047365_))
                                           (_g73027362_ _g73047365_))))
                                   (_g73027362_ _g73047365_))
                               (_g73027362_ _g73047365_))
                           (_g73027362_ _g73047365_))))
                   (_g73027362_ _g73047365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g73027362_ _g73047365_))))
                                           (_g73027362_ _g73047365_))))
                                   (_g73027362_ _g73047365_))))
                           (_g73027362_ _g73047365_))
                       (_g73027362_ _g73047365_))
                   (_g73027362_ _g73047365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g73027362_
                                                    _g73047365_)))))
                                       (_g73017549_ _rator7299_))))
                                 _tl72597282_
                                 _hd72587280_)))
                            (_g72507264_ _g72517267_))))
                    (_g72507264_ _g72517267_)))))
        (_g72497552_ _stx7248_))))
  (define gxc#generate-runtime-if%
    (lambda (_stx7210_)
      (let* ((_g72127222_
              (lambda (_g72137219_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g72137219_)))
             (_g72117245_
              (lambda (_g72137225_)
                (if (gx#stx-pair? _g72137225_)
                    (let ((_e72157227_ (gx#stx-e _g72137225_)))
                      (let ((_hd72167230_ (##car _e72157227_))
                            (_tl72177232_ (##cdr _e72157227_)))
                        ((lambda (_L7235_)
                           (cons 'if (map gxc#compile-e _L7235_)))
                         _tl72177232_)))
                    (_g72127222_ _g72137225_)))))
        (_g72117245_ _stx7210_))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx7159_)
      (let* ((_g71617174_
              (lambda (_g71627171_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g71627171_)))
             (_g71607207_
              (lambda (_g71627177_)
                (if (gx#stx-pair? _g71627177_)
                    (let ((_e71647179_ (gx#stx-e _g71627177_)))
                      (let ((_hd71657182_ (##car _e71647179_))
                            (_tl71667184_ (##cdr _e71647179_)))
                        (if (gx#stx-pair? _tl71667184_)
                            (let ((_e71677187_ (gx#stx-e _tl71667184_)))
                              (let ((_hd71687190_ (##car _e71677187_))
                                    (_tl71697192_ (##cdr _e71677187_)))
                                (if (gx#stx-null? _tl71697192_)
                                    ((lambda (_L7195_)
                                       (gxc#generate-runtime-binding-id
                                        _L7195_))
                                     _hd71687190_)
                                    (_g71617174_ _g71627177_))))
                            (_g71617174_ _g71627177_))))
                    (_g71617174_ _g71627177_)))))
        (_g71607207_ _stx7159_))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx7092_)
      (let* ((_g70947111_
              (lambda (_g70957108_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g70957108_)))
             (_g70937156_
              (lambda (_g70957114_)
                (if (gx#stx-pair? _g70957114_)
                    (let ((_e70987116_ (gx#stx-e _g70957114_)))
                      (let ((_hd70997119_ (##car _e70987116_))
                            (_tl71007121_ (##cdr _e70987116_)))
                        (if (gx#stx-pair? _tl71007121_)
                            (let ((_e71017124_ (gx#stx-e _tl71007121_)))
                              (let ((_hd71027127_ (##car _e71017124_))
                                    (_tl71037129_ (##cdr _e71017124_)))
                                (if (gx#stx-pair? _tl71037129_)
                                    (let ((_e71047132_
                                           (gx#stx-e _tl71037129_)))
                                      (let ((_hd71057135_ (##car _e71047132_))
                                            (_tl71067137_ (##cdr _e71047132_)))
                                        (if (gx#stx-null? _tl71067137_)
                                            ((lambda (_L7140_ _L7141_)
                                               (cons 'set!
                                                     (cons (gxc#generate-runtime-binding-id
                                                            _L7141_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7140_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd71057135_
                                             _hd71027127_)
                                            (_g70947111_ _g70957114_))))
                                    (_g70947111_ _g70957114_))))
                            (_g70947111_ _g70957114_))))
                    (_g70947111_ _g70957114_)))))
        (_g70937156_ _stx7092_))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx7025_)
      (let* ((_g70277044_
              (lambda (_g70287041_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g70287041_)))
             (_g70267089_
              (lambda (_g70287047_)
                (if (gx#stx-pair? _g70287047_)
                    (let ((_e70317049_ (gx#stx-e _g70287047_)))
                      (let ((_hd70327052_ (##car _e70317049_))
                            (_tl70337054_ (##cdr _e70317049_)))
                        (if (gx#stx-pair? _tl70337054_)
                            (let ((_e70347057_ (gx#stx-e _tl70337054_)))
                              (let ((_hd70357060_ (##car _e70347057_))
                                    (_tl70367062_ (##cdr _e70347057_)))
                                (if (gx#stx-pair? _tl70367062_)
                                    (let ((_e70377065_
                                           (gx#stx-e _tl70367062_)))
                                      (let ((_hd70387068_ (##car _e70377065_))
                                            (_tl70397070_ (##cdr _e70377065_)))
                                        (if (gx#stx-null? _tl70397070_)
                                            ((lambda (_L7073_ _L7074_)
                                               (cons '##structure-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L7073_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7074_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd70387068_
                                             _hd70357060_)
                                            (_g70277044_ _g70287047_))))
                                    (_g70277044_ _g70287047_))))
                            (_g70277044_ _g70287047_))))
                    (_g70277044_ _g70287047_)))))
        (_g70267089_ _stx7025_))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx6958_)
      (let* ((_g69606977_
              (lambda (_g69616974_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g69616974_)))
             (_g69597022_
              (lambda (_g69616980_)
                (if (gx#stx-pair? _g69616980_)
                    (let ((_e69646982_ (gx#stx-e _g69616980_)))
                      (let ((_hd69656985_ (##car _e69646982_))
                            (_tl69666987_ (##cdr _e69646982_)))
                        (if (gx#stx-pair? _tl69666987_)
                            (let ((_e69676990_ (gx#stx-e _tl69666987_)))
                              (let ((_hd69686993_ (##car _e69676990_))
                                    (_tl69696995_ (##cdr _e69676990_)))
                                (if (gx#stx-pair? _tl69696995_)
                                    (let ((_e69706998_
                                           (gx#stx-e _tl69696995_)))
                                      (let ((_hd69717001_ (##car _e69706998_))
                                            (_tl69727003_ (##cdr _e69706998_)))
                                        (if (gx#stx-null? _tl69727003_)
                                            ((lambda (_L7006_ _L7007_)
                                               (cons '##structure-direct-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L7006_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7007_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd69717001_
                                             _hd69686993_)
                                            (_g69606977_ _g69616980_))))
                                    (_g69606977_ _g69616980_))))
                            (_g69606977_ _g69616980_))))
                    (_g69606977_ _g69616980_)))))
        (_g69597022_ _stx6958_))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx6875_)
      (let* ((_g68776898_
              (lambda (_g68786895_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g68786895_)))
             (_g68766955_
              (lambda (_g68786901_)
                (if (gx#stx-pair? _g68786901_)
                    (let ((_e68826903_ (gx#stx-e _g68786901_)))
                      (let ((_hd68836906_ (##car _e68826903_))
                            (_tl68846908_ (##cdr _e68826903_)))
                        (if (gx#stx-pair? _tl68846908_)
                            (let ((_e68856911_ (gx#stx-e _tl68846908_)))
                              (let ((_hd68866914_ (##car _e68856911_))
                                    (_tl68876916_ (##cdr _e68856911_)))
                                (if (gx#stx-pair? _tl68876916_)
                                    (let ((_e68886919_
                                           (gx#stx-e _tl68876916_)))
                                      (let ((_hd68896922_ (##car _e68886919_))
                                            (_tl68906924_ (##cdr _e68886919_)))
                                        (if (gx#stx-pair? _tl68906924_)
                                            (let ((_e68916927_
                                                   (gx#stx-e _tl68906924_)))
                                              (let ((_hd68926930_
                                                     (##car _e68916927_))
                                                    (_tl68936932_
                                                     (##cdr _e68916927_)))
                                                (if (gx#stx-null? _tl68936932_)
                                                    ((lambda (_L6935_
                                                              _L6936_
                                                              _L6937_)
                                                       (cons '##structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6935_)
                           (cons (gxc#compile-e _L6936_)
                                 (cons (gxc#compile-e _L6937_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd68926930_
                                                     _hd68896922_
                                                     _hd68866914_)
                                                    (_g68776898_
                                                     _g68786901_))))
                                            (_g68776898_ _g68786901_))))
                                    (_g68776898_ _g68786901_))))
                            (_g68776898_ _g68786901_))))
                    (_g68776898_ _g68786901_)))))
        (_g68766955_ _stx6875_))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx6776_)
      (let* ((_g67786803_
              (lambda (_g67796800_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g67796800_)))
             (_g67776872_
              (lambda (_g67796806_)
                (if (gx#stx-pair? _g67796806_)
                    (let ((_e67846808_ (gx#stx-e _g67796806_)))
                      (let ((_hd67856811_ (##car _e67846808_))
                            (_tl67866813_ (##cdr _e67846808_)))
                        (if (gx#stx-pair? _tl67866813_)
                            (let ((_e67876816_ (gx#stx-e _tl67866813_)))
                              (let ((_hd67886819_ (##car _e67876816_))
                                    (_tl67896821_ (##cdr _e67876816_)))
                                (if (gx#stx-pair? _tl67896821_)
                                    (let ((_e67906824_
                                           (gx#stx-e _tl67896821_)))
                                      (let ((_hd67916827_ (##car _e67906824_))
                                            (_tl67926829_ (##cdr _e67906824_)))
                                        (if (gx#stx-pair? _tl67926829_)
                                            (let ((_e67936832_
                                                   (gx#stx-e _tl67926829_)))
                                              (let ((_hd67946835_
                                                     (##car _e67936832_))
                                                    (_tl67956837_
                                                     (##cdr _e67936832_)))
                                                (if (gx#stx-pair? _tl67956837_)
                                                    (let ((_e67966840_
                                                           (gx#stx-e
                                                            _tl67956837_)))
                                                      (let ((_hd67976843_
                                                             (##car _e67966840_))
                                                            (_tl67986845_
                                                             (##cdr _e67966840_)))
                                                        (if (gx#stx-null?
                                                             _tl67986845_)
                                                            ((lambda (_L6848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6849_
                              _L6850_
                              _L6851_)
                       (cons '##structure-set!
                             (cons (gxc#compile-e _L6849_)
                                   (cons (gxc#compile-e _L6848_)
                                         (cons (gxc#compile-e _L6850_)
                                               (cons (gxc#compile-e _L6851_)
                                                     (cons ''#f '())))))))
                     _hd67976843_
                     _hd67946835_
                     _hd67916827_
                     _hd67886819_)
                    (_g67786803_ _g67796806_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g67786803_
                                                     _g67796806_))))
                                            (_g67786803_ _g67796806_))))
                                    (_g67786803_ _g67796806_))))
                            (_g67786803_ _g67796806_))))
                    (_g67786803_ _g67796806_)))))
        (_g67776872_ _stx6776_))))
  (define gxc#generate-runtime-struct-direct-ref%
    (lambda (_stx6693_)
      (let* ((_g66956716_
              (lambda (_g66966713_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g66966713_)))
             (_g66946773_
              (lambda (_g66966719_)
                (if (gx#stx-pair? _g66966719_)
                    (let ((_e67006721_ (gx#stx-e _g66966719_)))
                      (let ((_hd67016724_ (##car _e67006721_))
                            (_tl67026726_ (##cdr _e67006721_)))
                        (if (gx#stx-pair? _tl67026726_)
                            (let ((_e67036729_ (gx#stx-e _tl67026726_)))
                              (let ((_hd67046732_ (##car _e67036729_))
                                    (_tl67056734_ (##cdr _e67036729_)))
                                (if (gx#stx-pair? _tl67056734_)
                                    (let ((_e67066737_
                                           (gx#stx-e _tl67056734_)))
                                      (let ((_hd67076740_ (##car _e67066737_))
                                            (_tl67086742_ (##cdr _e67066737_)))
                                        (if (gx#stx-pair? _tl67086742_)
                                            (let ((_e67096745_
                                                   (gx#stx-e _tl67086742_)))
                                              (let ((_hd67106748_
                                                     (##car _e67096745_))
                                                    (_tl67116750_
                                                     (##cdr _e67096745_)))
                                                (if (gx#stx-null? _tl67116750_)
                                                    ((lambda (_L6753_
                                                              _L6754_
                                                              _L6755_)
                                                       (cons '##direct-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6753_)
                           (cons (gxc#compile-e _L6754_)
                                 (cons (gxc#compile-e _L6755_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd67106748_
                                                     _hd67076740_
                                                     _hd67046732_)
                                                    (_g66956716_
                                                     _g66966719_))))
                                            (_g66956716_ _g66966719_))))
                                    (_g66956716_ _g66966719_))))
                            (_g66956716_ _g66966719_))))
                    (_g66956716_ _g66966719_)))))
        (_g66946773_ _stx6693_))))
  (define gxc#generate-runtime-struct-direct-setq%
    (lambda (_stx6594_)
      (let* ((_g65966621_
              (lambda (_g65976618_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g65976618_)))
             (_g65956690_
              (lambda (_g65976624_)
                (if (gx#stx-pair? _g65976624_)
                    (let ((_e66026626_ (gx#stx-e _g65976624_)))
                      (let ((_hd66036629_ (##car _e66026626_))
                            (_tl66046631_ (##cdr _e66026626_)))
                        (if (gx#stx-pair? _tl66046631_)
                            (let ((_e66056634_ (gx#stx-e _tl66046631_)))
                              (let ((_hd66066637_ (##car _e66056634_))
                                    (_tl66076639_ (##cdr _e66056634_)))
                                (if (gx#stx-pair? _tl66076639_)
                                    (let ((_e66086642_
                                           (gx#stx-e _tl66076639_)))
                                      (let ((_hd66096645_ (##car _e66086642_))
                                            (_tl66106647_ (##cdr _e66086642_)))
                                        (if (gx#stx-pair? _tl66106647_)
                                            (let ((_e66116650_
                                                   (gx#stx-e _tl66106647_)))
                                              (let ((_hd66126653_
                                                     (##car _e66116650_))
                                                    (_tl66136655_
                                                     (##cdr _e66116650_)))
                                                (if (gx#stx-pair? _tl66136655_)
                                                    (let ((_e66146658_
                                                           (gx#stx-e
                                                            _tl66136655_)))
                                                      (let ((_hd66156661_
                                                             (##car _e66146658_))
                                                            (_tl66166663_
                                                             (##cdr _e66146658_)))
                                                        (if (gx#stx-null?
                                                             _tl66166663_)
                                                            ((lambda (_L6666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6667_
                              _L6668_
                              _L6669_)
                       (cons '##direct-structure-set!
                             (cons (gxc#compile-e _L6667_)
                                   (cons (gxc#compile-e _L6666_)
                                         (cons (gxc#compile-e _L6668_)
                                               (cons (gxc#compile-e _L6669_)
                                                     (cons ''#f '())))))))
                     _hd66156661_
                     _hd66126653_
                     _hd66096645_
                     _hd66066637_)
                    (_g65966621_ _g65976624_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g65966621_
                                                     _g65976624_))))
                                            (_g65966621_ _g65976624_))))
                                    (_g65966621_ _g65976624_))))
                            (_g65966621_ _g65976624_))))
                    (_g65966621_ _g65976624_)))))
        (_g65956690_ _stx6594_))))
  (define gxc#generate-runtime-struct-unchecked-ref%
    (lambda (_stx6511_)
      (let* ((_g65136534_
              (lambda (_g65146531_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g65146531_)))
             (_g65126591_
              (lambda (_g65146537_)
                (if (gx#stx-pair? _g65146537_)
                    (let ((_e65186539_ (gx#stx-e _g65146537_)))
                      (let ((_hd65196542_ (##car _e65186539_))
                            (_tl65206544_ (##cdr _e65186539_)))
                        (if (gx#stx-pair? _tl65206544_)
                            (let ((_e65216547_ (gx#stx-e _tl65206544_)))
                              (let ((_hd65226550_ (##car _e65216547_))
                                    (_tl65236552_ (##cdr _e65216547_)))
                                (if (gx#stx-pair? _tl65236552_)
                                    (let ((_e65246555_
                                           (gx#stx-e _tl65236552_)))
                                      (let ((_hd65256558_ (##car _e65246555_))
                                            (_tl65266560_ (##cdr _e65246555_)))
                                        (if (gx#stx-pair? _tl65266560_)
                                            (let ((_e65276563_
                                                   (gx#stx-e _tl65266560_)))
                                              (let ((_hd65286566_
                                                     (##car _e65276563_))
                                                    (_tl65296568_
                                                     (##cdr _e65276563_)))
                                                (if (gx#stx-null? _tl65296568_)
                                                    ((lambda (_L6571_
                                                              _L6572_
                                                              _L6573_)
                                                       (cons '##unchecked-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6571_)
                           (cons (gxc#compile-e _L6572_)
                                 (cons (gxc#compile-e _L6573_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd65286566_
                                                     _hd65256558_
                                                     _hd65226550_)
                                                    (_g65136534_
                                                     _g65146537_))))
                                            (_g65136534_ _g65146537_))))
                                    (_g65136534_ _g65146537_))))
                            (_g65136534_ _g65146537_))))
                    (_g65136534_ _g65146537_)))))
        (_g65126591_ _stx6511_))))
  (define gxc#generate-runtime-struct-unchecked-setq%
    (lambda (_stx6412_)
      (let* ((_g64146439_
              (lambda (_g64156436_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g64156436_)))
             (_g64136508_
              (lambda (_g64156442_)
                (if (gx#stx-pair? _g64156442_)
                    (let ((_e64206444_ (gx#stx-e _g64156442_)))
                      (let ((_hd64216447_ (##car _e64206444_))
                            (_tl64226449_ (##cdr _e64206444_)))
                        (if (gx#stx-pair? _tl64226449_)
                            (let ((_e64236452_ (gx#stx-e _tl64226449_)))
                              (let ((_hd64246455_ (##car _e64236452_))
                                    (_tl64256457_ (##cdr _e64236452_)))
                                (if (gx#stx-pair? _tl64256457_)
                                    (let ((_e64266460_
                                           (gx#stx-e _tl64256457_)))
                                      (let ((_hd64276463_ (##car _e64266460_))
                                            (_tl64286465_ (##cdr _e64266460_)))
                                        (if (gx#stx-pair? _tl64286465_)
                                            (let ((_e64296468_
                                                   (gx#stx-e _tl64286465_)))
                                              (let ((_hd64306471_
                                                     (##car _e64296468_))
                                                    (_tl64316473_
                                                     (##cdr _e64296468_)))
                                                (if (gx#stx-pair? _tl64316473_)
                                                    (let ((_e64326476_
                                                           (gx#stx-e
                                                            _tl64316473_)))
                                                      (let ((_hd64336479_
                                                             (##car _e64326476_))
                                                            (_tl64346481_
                                                             (##cdr _e64326476_)))
                                                        (if (gx#stx-null?
                                                             _tl64346481_)
                                                            ((lambda (_L6484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6485_
                              _L6486_
                              _L6487_)
                       (cons '##unchecked-structure-set!
                             (cons (gxc#compile-e _L6485_)
                                   (cons (gxc#compile-e _L6484_)
                                         (cons (gxc#compile-e _L6486_)
                                               (cons (gxc#compile-e _L6487_)
                                                     (cons ''#f '())))))))
                     _hd64336479_
                     _hd64306471_
                     _hd64276463_
                     _hd64246455_)
                    (_g64146439_ _g64156442_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64146439_
                                                     _g64156442_))))
                                            (_g64146439_ _g64156442_))))
                                    (_g64146439_ _g64156442_))))
                            (_g64146439_ _g64156442_))))
                    (_g64146439_ _g64156442_)))))
        (_g64136508_ _stx6412_))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx6266_)
      (letrec ((_import-set-template6268_
                (lambda (_in6364_ _phi6365_)
                  (let ((_iphi6367_
                         (fx+ _phi6365_
                              (##direct-structure-ref
                               _in6364_
                               '2
                               gx#import-set::t
                               '#f)))
                        (_imports6368_
                         (##structure-ref
                          (##direct-structure-ref
                           _in6364_
                           '1
                           gx#import-set::t
                           '#f)
                          '8
                          gx#module-context::t
                          '#f)))
                    (let _lp6370_ ((_rest6372_ _imports6368_) (_r6373_ '()))
                      (let* ((_rest63746382_ _rest6372_)
                             (_else63766390_ (lambda () _r6373_))
                             (_K63786400_
                              (lambda (_rest6393_ _in6394_)
                                (if (##structure-instance-of?
                                     _in6394_
                                     'gx#module-context::t)
                                    (if (fxzero? _iphi6367_)
                                        (_lp6370_
                                         _rest6393_
                                         (cons _in6394_ _r6373_))
                                        (_lp6370_ _rest6393_ _r6373_))
                                    (if (##structure-direct-instance-of?
                                         _in6394_
                                         'gx#module-import::t)
                                        (let ((_iphi6396_
                                               (fx+ _phi6365_
                                                    (##direct-structure-ref
                                                     _in6394_
                                                     '3
                                                     gx#module-import::t
                                                     '#f))))
                                          (if (fxzero? _iphi6396_)
                                              (_lp6370_
                                               _rest6393_
                                               (cons (##direct-structure-ref
                                                      (##direct-structure-ref
                                                       _in6394_
                                                       '1
                                                       gx#module-import::t
                                                       '#f)
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _r6373_))
                                              (_lp6370_ _rest6393_ _r6373_)))
                                        (if (##structure-direct-instance-of?
                                             _in6394_
                                             'gx#import-set::t)
                                            (let ((_xphi6398_
                                                   (fx+ _iphi6367_
                                                        (##direct-structure-ref
                                                         _in6394_
                                                         '2
                                                         gx#import-set::t
                                                         '#f))))
                                              (if (fxzero? _xphi6398_)
                                                  (_lp6370_
                                                   _rest6393_
                                                   (cons (##direct-structure-ref
                                                          _in6394_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _r6373_))
                                                  (if (fxpositive? _xphi6398_)
                                                      (_lp6370_
                                                       _rest6393_
                                                       (foldl1 cons
                                                               _r6373_
                                                               (_import-set-template6268_
                                                                _in6394_
                                                                _iphi6367_)))
                                                      (_lp6370_
                                                       _rest6393_
                                                       _r6373_))))
                                            (_lp6370_ _rest6393_ _r6373_)))))))
                        (if (##pair? _rest63746382_)
                            (let ((_hd63796403_ (##car _rest63746382_))
                                  (_tl63806405_ (##cdr _rest63746382_)))
                              (let* ((_in6408_ _hd63796403_)
                                     (_rest6410_ _tl63806405_))
                                (_K63786400_ _rest6410_ _in6408_)))
                            (_else63766390_))))))))
        (let* ((_g62706280_
                (lambda (_g62716277_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g62716277_)))
               (_g62696361_
                (lambda (_g62716283_)
                  (if (gx#stx-pair? _g62716283_)
                      (let ((_e62736285_ (gx#stx-e _g62716283_)))
                        (let ((_hd62746288_ (##car _e62736285_))
                              (_tl62756290_ (##cdr _e62736285_)))
                          ((lambda (_L6293_)
                             (let ((_ht6304_ (make-hash-table-eq)))
                               (let _lp6306_ ((_rest6308_ _L6293_)
                                              (_loads6309_ '()))
                                 (letrec ((_K6311_ (lambda (_ctx6354_
                                                            _rest6355_)
                                                     (let ((_id6357_
                                                            (##structure-ref
                                                             _ctx6354_
                                                             '1
                                                             gx#expander-context::t
                                                             '#f)))
                                                       (if (table-ref
                                                            _ht6304_
                                                            _id6357_
                                                            '#f)
                                                           (_lp6306_
                                                            _rest6355_
                                                            _loads6309_)
                                                           (let ((_rt6359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (string-append
                           (gxc#module-id->path-string _id6357_)
                           '"__rt")))
                     (begin
                       (table-set! _ht6304_ _id6357_ _rt6359_)
                       (_lp6306_ _rest6355_ (cons _rt6359_ _loads6309_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_rest63126320_ _rest6308_)
                                          (_else63146332_
                                           (lambda ()
                                             (cons 'begin
                                                   (map (lambda (_g63276329_)
                                                          (list 'load-module
                                                                _g63276329_))
                                                        (reverse _loads6309_)))))
                                          (_K63166342_
                                           (lambda (_rest6335_ _in6336_)
                                             (if (##structure-instance-of?
                                                  _in6336_
                                                  'gx#module-context::t)
                                                 (_K6311_ _in6336_ _rest6335_)
                                                 (if (##structure-direct-instance-of?
                                                      _in6336_
                                                      'gx#module-import::t)
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in6336_
                           '3
                           gx#module-import::t
                           '#f))
                 (_K6311_ (##direct-structure-ref
                           (##direct-structure-ref
                            _in6336_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)
                          _rest6335_)
                 (_lp6306_ _rest6335_ _loads6309_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##structure-direct-instance-of?
                                                          _in6336_
                                                          'gx#import-set::t)
                                                         (let ((_phi6338_
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in6336_
                         '2
                         gx#import-set::t
                         '#f)))
                   (if (fxzero? _phi6338_)
                       (_K6311_ (##direct-structure-ref
                                 _in6336_
                                 '1
                                 gx#import-set::t
                                 '#f)
                                _rest6335_)
                       (if (fxpositive? _phi6338_)
                           (let ((_deps6340_
                                  (_import-set-template6268_ _in6336_ '0)))
                             (_lp6306_
                              (foldl1 cons _rest6335_ _deps6340_)
                              _loads6309_))
                           (_lp6306_ _rest6335_ _loads6309_))))
                 (gxc#raise-compile-error
                  '"Unexpected import"
                  _stx6266_
                  _in6336_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (##pair? _rest63126320_)
                                         (let ((_hd63176345_
                                                (##car _rest63126320_))
                                               (_tl63186347_
                                                (##cdr _rest63126320_)))
                                           (let* ((_in6350_ _hd63176345_)
                                                  (_rest6352_ _tl63186347_))
                                             (_K63166342_
                                              _rest6352_
                                              _in6350_)))
                                         (_else63146332_)))))))
                           _tl62756290_)))
                      (_g62706280_ _g62716283_)))))
          (_g62696361_ _stx6266_)))))
  (define gxc#generate-runtime-quote-syntax%
    (lambda (_stx6089_)
      (letrec ((_add-lift!6091_
                (lambda (_expr6264_)
                  (set-box!
                   (gxc#current-compile-lift)
                   (cons _expr6264_ (unbox (gxc#current-compile-lift))))))
               (_generate-simple6092_
                (lambda (_stxq6259_)
                  (let ((_gid6261_ (gxc#generate-runtime-temporary__% '#t))
                        (_qid6262_
                         (gxc#generate-runtime-identifier _stxq6259_)))
                    (begin
                      (_add-lift!6091_
                       (cons 'define
                             (cons _gid6261_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid6262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons (cons 'gx#current-expander-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons (cons 'quote (cons '() '())) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      _gid6261_))))
               (_generate-serialized6093_
                (lambda (_stxq6249_ _marks6250_)
                  (let* ((_mark-refs6252_
                          (map _generate-mark6094_ _marks6250_))
                         (_gid6254_ (gxc#generate-runtime-temporary__% '#t))
                         (_qid6256_
                          (gxc#generate-runtime-identifier _stxq6249_)))
                    (begin
                      (_add-lift!6091_
                       (cons 'define
                             (cons _gid6254_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid6256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons (cons 'gx#current-expander-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons (cons 'list _mark-refs6252_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      _gid6254_))))
               (_generate-mark6094_
                (lambda (_mark6235_)
                  (let ((_$e6237_
                         (table-ref
                          (gxc#current-compile-marks)
                          _mark6235_
                          '#f)))
                    (if _$e6237_
                        (values _$e6237_)
                        (let* ((_gid6240_
                                (gxc#generate-runtime-temporary__% '#t))
                               (_repr6242_ (_serialize-mark6095_ _mark6235_))
                               (_ctx6244_
                                (gx#core-context-top__1
                                 (##structure-ref
                                  _mark6235_
                                  '2
                                  gx#expander-mark::t
                                  '#f)))
                               (_ctx-ref6246_
                                (if (eq? _ctx6244_
                                         (gx#current-expander-context))
                                    (cons 'gx#current-expander-context '())
                                    (cons 'gx#import-module
                                          (cons (cons 'quote
                                                      (cons (_context-ref6096_
                                                             _ctx6244_)
                                                            '()))
                                                '())))))
                          (begin
                            (table-set!
                             (gxc#current-compile-marks)
                             _mark6235_
                             _gid6240_)
                            (_add-lift!6091_
                             (cons 'define
                                   (cons _gid6240_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _repr6242_ '()))
                   (cons _ctx-ref6246_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _gid6240_))))))
               (_serialize-mark6095_
                (lambda (_mark6182_)
                  (letrec ((_quote-e6184_
                            (lambda (_sym6233_)
                              (if (interned-symbol? _sym6233_)
                                  _sym6233_
                                  (gxc#generate-runtime-gensym-reference__0
                                   _sym6233_)))))
                    (let* ((_mark61856194_ _mark6182_)
                           (_E61876198_
                            (lambda ()
                              (error '"No clause matching" _mark61856194_)))
                           (_K61886210_
                            (lambda (_trace6201_
                                     _phi6202_
                                     _ctx6203_
                                     _subst6204_)
                              (let ((_subs6206_
                                     (if _subst6204_
                                         (table->list _subst6204_)
                                         '())))
                                (cons _phi6202_
                                      (map (lambda (_pair6208_)
                                             (cons (_quote-e6184_
                                                    (car _pair6208_))
                                                   (_quote-e6184_
                                                    (cdr _pair6208_))))
                                           _subs6206_))))))
                      (if (##structure-instance-of?
                           _mark61856194_
                           'gx#expander-mark::t)
                          (let* ((_e61896213_ (##vector-ref _mark61856194_ '1))
                                 (_subst6216_ _e61896213_)
                                 (_e61906218_ (##vector-ref _mark61856194_ '2))
                                 (_ctx6221_ _e61906218_)
                                 (_e61916223_ (##vector-ref _mark61856194_ '3))
                                 (_phi6226_ _e61916223_)
                                 (_e61926228_ (##vector-ref _mark61856194_ '4))
                                 (_trace6231_ _e61926228_))
                            (_K61886210_
                             _trace6231_
                             _phi6226_
                             _ctx6221_
                             _subst6216_))
                          (_E61876198_))))))
               (_context-ref6096_
                (lambda (_ctx6169_)
                  (if (##structure-instance-of?
                       (##structure-ref _ctx6169_ '3 gx#phi-context::t '#f)
                       'gx#module-context::t)
                      (let ((_ctx-ref6171_
                             (_context-ref-nested6098_ _ctx6169_))
                            (_ctx-origin6172_
                             (_context-ref-origin6097_ _ctx6169_))
                            (_origin6173_
                             (_context-ref-origin6097_
                              (gx#current-expander-context))))
                        (if (eq? _origin6173_ _ctx-origin6172_)
                            (let ((_ref6175_
                                   (_context-ref-nested6098_
                                    (gx#current-expander-context))))
                              (let _lp6177_ ((_ref6179_ (cdr _ref6175_))
                                             (_ctx-ref6180_
                                              (cdr _ctx-ref6171_)))
                                (if (if (pair? _ref6179_)
                                        (eq? (car _ref6179_)
                                             (car _ctx-ref6180_))
                                        '#f)
                                    (_lp6177_
                                     (cdr _ref6179_)
                                     (cdr _ctx-ref6180_))
                                    (cons '#f _ctx-ref6180_))))
                            _ctx-ref6171_))
                      (make-symbol
                       '":"
                       (##structure-ref
                        _ctx6169_
                        '1
                        gx#expander-context::t
                        '#f)))))
               (_context-ref-origin6097_
                (lambda (_ctx6161_)
                  (let _lp6163_ ((_ctx6165_ _ctx6161_))
                    (let ((_super6167_
                           (##structure-ref
                            _ctx6165_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super6167_
                           'gx#module-context::t)
                          (_lp6163_ _super6167_)
                          _ctx6165_)))))
               (_context-ref-nested6098_
                (lambda (_ctx6152_)
                  (let _lp6154_ ((_ctx6156_ _ctx6152_) (_r6157_ '()))
                    (let ((_super6159_
                           (##structure-ref
                            _ctx6156_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super6159_
                           'gx#module-context::t)
                          (_lp6154_
                           _super6159_
                           (cons (car (##structure-ref
                                       _ctx6156_
                                       '7
                                       gx#module-context::t
                                       '#f))
                                 _r6157_))
                          (cons (make-symbol
                                 '":"
                                 (##structure-ref
                                  _ctx6156_
                                  '1
                                  gx#expander-context::t
                                  '#f))
                                _r6157_)))))))
        (let* ((_g61006113_
                (lambda (_g61016110_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g61016110_)))
               (_g60996149_
                (lambda (_g61016116_)
                  (if (gx#stx-pair? _g61016116_)
                      (let ((_e61036118_ (gx#stx-e _g61016116_)))
                        (let ((_hd61046121_ (##car _e61036118_))
                              (_tl61056123_ (##cdr _e61036118_)))
                          (if (gx#stx-pair? _tl61056123_)
                              (let ((_e61066126_ (gx#stx-e _tl61056123_)))
                                (let ((_hd61076129_ (##car _e61066126_))
                                      (_tl61086131_ (##cdr _e61066126_)))
                                  (if (gx#stx-null? _tl61086131_)
                                      ((lambda (_L6134_)
                                         (if (gx#identifier? _L6134_)
                                             (let ((_marks6147_
                                                    (##direct-structure-ref
                                                     _L6134_
                                                     '4
                                                     gx#syntax-quote::t
                                                     '#f)))
                                               (if (null? _marks6147_)
                                                   (_generate-simple6092_
                                                    _L6134_)
                                                   (_generate-serialized6093_
                                                    _L6134_
                                                    _marks6147_)))
                                             (gxc#raise-compile-error
                                              '"Cannot quote non-identifier syntax"
                                              _L6134_)))
                                       _hd61076129_)
                                      (_g61006113_ _g61016116_))))
                              (_g61006113_ _g61016116_))))
                      (_g61006113_ _g61016116_)))))
          (_g60996149_ _stx6089_)))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx6022_)
      (let* ((_g60246041_
              (lambda (_g60256038_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g60256038_)))
             (_g60236086_
              (lambda (_g60256044_)
                (if (gx#stx-pair? _g60256044_)
                    (let ((_e60286046_ (gx#stx-e _g60256044_)))
                      (let ((_hd60296049_ (##car _e60286046_))
                            (_tl60306051_ (##cdr _e60286046_)))
                        (if (gx#stx-pair? _tl60306051_)
                            (let ((_e60316054_ (gx#stx-e _tl60306051_)))
                              (let ((_hd60326057_ (##car _e60316054_))
                                    (_tl60336059_ (##cdr _e60316054_)))
                                (if (gx#stx-pair? _tl60336059_)
                                    (let ((_e60346062_
                                           (gx#stx-e _tl60336059_)))
                                      (let ((_hd60356065_ (##car _e60346062_))
                                            (_tl60366067_ (##cdr _e60346062_)))
                                        (if (gx#stx-null? _tl60366067_)
                                            ((lambda (_L6070_ _L6071_)
                                               (cons 'define
                                                     (cons (gx#stx-e _L6071_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6070_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd60356065_
                                             _hd60326057_)
                                            (_g60246041_ _g60256044_))))
                                    (_g60246041_ _g60256044_))))
                            (_g60246041_ _g60256044_))))
                    (_g60246041_ _g60256044_)))))
        (_g60236086_ _stx6022_))))
  (define gxc#generate-meta-begin%
    (lambda (_stx5971_ _state5972_)
      (let* ((_g59745984_
              (lambda (_g59755981_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g59755981_)))
             (_g59736019_
              (lambda (_g59755987_)
                (if (gx#stx-pair? _g59755987_)
                    (let ((_e59775989_ (gx#stx-e _g59755987_)))
                      (let ((_hd59785992_ (##car _e59775989_))
                            (_tl59795994_ (##cdr _e59775989_)))
                        ((lambda (_L5997_)
                           (let* ((_c-body6011_
                                   (map (lambda (_g60066008_)
                                          (gxc#compile-e
                                           _g60066008_
                                           _state5972_))
                                        _L5997_))
                                  (_c-body6016_
                                   (filter (lambda (_$obj6013_)
                                             (not (eq? _$obj6013_ '#!void)))
                                           _c-body6011_)))
                             (cons '%#begin _c-body6016_)))
                         _tl59795994_)))
                    (_g59745984_ _g59755987_)))))
        (_g59736019_ _stx5971_))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx5879_ _state5880_)
      (let* ((_g58825892_
              (lambda (_g58835889_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g58835889_)))
             (_g58815968_
              (lambda (_g58835895_)
                (if (gx#stx-pair? _g58835895_)
                    (let ((_e58855897_ (gx#stx-e _g58835895_)))
                      (let ((_hd58865900_ (##car _e58855897_))
                            (_tl58875902_ (##cdr _e58855897_)))
                        ((lambda (_L5905_)
                           (let* ((_phi5915_
                                   (fx+ (gx#current-expander-phi) '1))
                                  (_block5917_
                                   (gxc#meta-state-begin-phi!
                                    _state5880_
                                    _phi5915_))
                                  (_compiled5920_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#apply-generate-meta-phi
                                       (cons (gx#datum->syntax__0 '#f '%#begin)
                                             _L5905_)
                                       _state5880_))
                                    gx#current-expander-phi
                                    _phi5915_)))
                             (let* ((_g59235933_
                                     (lambda (_g59245930_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g59245930_)))
                                    (_g59225965_
                                     (lambda (_g59245936_)
                                       (if (gx#stx-pair? _g59245936_)
                                           (let ((_e59265938_
                                                  (gx#stx-e _g59245936_)))
                                             (let ((_hd59275941_
                                                    (##car _e59265938_))
                                                   (_tl59285943_
                                                    (##cdr _e59265938_)))
                                               (if (gx#identifier?
                                                    _hd59275941_)
                                                   (if (gx#stx-eq?
                                                        '%#begin
                                                        _hd59275941_)
                                                       ((lambda (_L5946_)
                                                          (let ((_c-body5963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_$obj5960_)
                                   (not (eq? _$obj5960_ '#!void)))
                                 _L5946_)))
                    (if _block5917_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons '_gx#load-module
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons _block5917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _c-body5963_))
                        (if (null? _c-body5963_)
                            '#!void
                            (cons '%#begin-syntax _c-body5963_)))))
                _tl59285943_)
               (_g59235933_ _g59245936_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g59235933_ _g59245936_))))
                                           (_g59235933_ _g59245936_)))))
                               (_g59225965_ _compiled5920_))))
                         _tl58875902_)))
                    (_g58825892_ _g58835895_)))))
        (_g58815968_ _stx5879_))))
  (define gxc#generate-meta-module%
    (lambda (_stx5810_ _state5811_)
      (begin
        (gxc#meta-state-end-phi! _state5811_)
        (let* ((_g58135827_
                (lambda (_g58145824_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g58145824_)))
               (_g58125876_
                (lambda (_g58145830_)
                  (if (gx#stx-pair? _g58145830_)
                      (let ((_e58175832_ (gx#stx-e _g58145830_)))
                        (let ((_hd58185835_ (##car _e58175832_))
                              (_tl58195837_ (##cdr _e58175832_)))
                          (if (gx#stx-pair? _tl58195837_)
                              (let ((_e58205840_ (gx#stx-e _tl58195837_)))
                                (let ((_hd58215843_ (##car _e58205840_))
                                      (_tl58225845_ (##cdr _e58205840_)))
                                  ((lambda (_L5848_ _L5849_)
                                     (let ((_key5862_
                                            (gx#core-identifier-key _L5849_)))
                                       (begin
                                         (if (interned-symbol? _key5862_)
                                             '#!void
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx5810_
                                              _L5849_
                                              _key5862_))
                                         (let* ((_ctx5864_
                                                 (gx#syntax-local-e__0
                                                  _L5849_))
                                                (_code5867_
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (gxc#compile-e
                                                     (##structure-ref
                                                      _ctx5864_
                                                      '11
                                                      gx#module-context::t
                                                      '#f)
                                                     _state5811_))
                                                  gx#current-expander-context
                                                  _ctx5864_))
                                                (_rt5869_
                                                 (table-ref
                                                  (gxc#current-compile-runtime-sections)
                                                  _ctx5864_
                                                  '#f))
                                                (_loader5871_
                                                 (if _rt5869_
                                                     (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons '_gx#load-module '()))
                               (cons (cons '%#quote (cons _rt5869_ '())) '())))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                                (_modid5873_
                                                 (gx#stx-e _L5849_)))
                                           (begin
                                             (gxc#meta-state-end-phi!
                                              _state5811_)
                                             (cons '%#module
                                                   (cons _modid5873_
                                                         (cons _code5867_
                                                               _loader5871_))))))))
                                   _tl58225845_
                                   _hd58215843_)))
                              (_g58135827_ _g58145830_))))
                      (_g58135827_ _g58145830_)))))
          (_g58125876_ _stx5810_)))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx5800_ _context-chain5801_)
      (let _lp5803_ ((_ctx5805_ _ctx5800_) (_path5806_ '()))
        (let ((_super5808_
               (##structure-ref _ctx5805_ '3 gx#phi-context::t '#f)))
          (if (memq _super5808_ _context-chain5801_)
              (cons '#f
                    (cons (car (##structure-ref
                                _ctx5805_
                                '7
                                gx#module-context::t
                                '#f))
                          _path5806_))
              (if (##structure-instance-of? _super5808_ 'gx#module-context::t)
                  (_lp5803_
                   _super5808_
                   (cons (car (##structure-ref
                               _ctx5805_
                               '7
                               gx#module-context::t
                               '#f))
                         _path5806_))
                  (cons (make-symbol
                         '":"
                         (##structure-ref
                          _ctx5805_
                          '1
                          gx#expander-context::t
                          '#f))
                        _path5806_)))))))
  (define gxc#current-context-chain
    (lambda ()
      (let _lp5795_ ((_ctx5797_ (gx#current-expander-context)) (_r5798_ '()))
        (if (##structure-instance-of? _ctx5797_ 'gx#module-context::t)
            (_lp5795_
             (##structure-ref _ctx5797_ '3 gx#phi-context::t '#f)
             (cons _ctx5797_ _r5798_))
            _r5798_))))
  (define gxc#generate-meta-import%
    (lambda (_stx5564_ _state5565_)
      (letrec* ((_context-chain5567_ (gxc#current-context-chain))
                (_make-import-spec5568_
                 (lambda (_in5731_)
                   (let* ((_in57325744_ _in5731_)
                          (_E57345748_
                           (lambda ()
                             (error '"No clause matching" _in57325744_)))
                          (_K57355758_
                           (lambda (_phi5751_
                                    _name5752_
                                    _src-name5753_
                                    _src-phi5754_
                                    _src-key5755_
                                    _src-ctx5756_)
                             (cons _phi5751_
                                   (cons (gxc#generate-runtime-identifier-key
                                          _name5752_)
                                         (cons _src-phi5754_
                                               (cons (gxc#generate-runtime-identifier-key
                                                      _src-name5753_)
                                                     '())))))))
                     (if (##structure-direct-instance-of?
                          _in57325744_
                          'gx#module-import::t)
                         (let ((_e57365761_ (##vector-ref _in57325744_ '1)))
                           (if (##structure-direct-instance-of?
                                _e57365761_
                                'gx#module-export::t)
                               (let* ((_e57395764_
                                       (##vector-ref _e57365761_ '1))
                                      (_src-ctx5767_ _e57395764_)
                                      (_e57405769_
                                       (##vector-ref _e57365761_ '2))
                                      (_src-key5772_ _e57405769_)
                                      (_e57415774_
                                       (##vector-ref _e57365761_ '3))
                                      (_src-phi5777_ _e57415774_)
                                      (_e57425779_
                                       (##vector-ref _e57365761_ '4))
                                      (_src-name5782_ _e57425779_)
                                      (_e57375784_
                                       (##vector-ref _in57325744_ '2))
                                      (_name5787_ _e57375784_)
                                      (_e57385789_
                                       (##vector-ref _in57325744_ '3))
                                      (_phi5792_ _e57385789_))
                                 (_K57355758_
                                  _phi5792_
                                  _name5787_
                                  _src-name5782_
                                  _src-phi5777_
                                  _src-key5772_
                                  _src-ctx5767_))
                               (_E57345748_)))
                         (_E57345748_)))))
                (_make-import-path5569_
                 (lambda (_ctx5729_)
                   (gxc#generate-meta-import-path
                    _ctx5729_
                    _context-chain5567_)))
                (_make-import-spec-in5570_
                 (lambda (_ctx5726_ _in5727_)
                   (cons 'spec:
                         (cons (_make-import-path5569_ _ctx5726_)
                               (reverse _in5727_))))))
        (begin
          (gxc#meta-state-end-phi! _state5565_)
          (let* ((_g55725582_
                  (lambda (_g55735579_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g55735579_)))
                 (_g55715723_
                  (lambda (_g55735585_)
                    (if (gx#stx-pair? _g55735585_)
                        (let ((_e55755587_ (gx#stx-e _g55735585_)))
                          (let ((_hd55765590_ (##car _e55755587_))
                                (_tl55775592_ (##cdr _e55755587_)))
                            ((lambda (_L5595_)
                               (let _lp5606_ ((_rest5608_ _L5595_)
                                              (_current-src5609_ '#f)
                                              (_current-in5610_ '())
                                              (_r5611_ '()))
                                 (let* ((_rest56125620_ _rest5608_)
                                        (_else56145630_
                                         (lambda ()
                                           (let ((_r5628_ (if _current-src5609_
                                                              (cons (_make-import-spec-in5570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _current-src5609_
                             _current-in5610_)
                            _r5611_)
                      _r5611_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '%#import
                                                   (reverse _r5628_)))))
                                        (_K56165711_
                                         (lambda (_rest5633_ _in5634_)
                                           (if (##structure-direct-instance-of?
                                                _in5634_
                                                'gx#module-import::t)
                                               (let* ((_in56355642_ _in5634_)
                                                      (_E56375646_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _in56355642_)))
                                                      (_K56385651_
                                                       (lambda (_src-ctx5649_)
                                                         (if (eq? _current-src5609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-ctx5649_)
                     (_lp5606_
                      _rest5633_
                      _current-src5609_
                      (cons (_make-import-spec5568_ _in5634_) _current-in5610_)
                      _r5611_)
                     (if _current-src5609_
                         (_lp5606_
                          _rest5633_
                          _src-ctx5649_
                          (cons (_make-import-spec5568_ _in5634_) '())
                          (cons (_make-import-spec-in5570_
                                 _current-src5609_
                                 _current-in5610_)
                                _r5611_))
                         (_lp5606_
                          _rest5633_
                          _src-ctx5649_
                          (cons (_make-import-spec5568_ _in5634_) '())
                          _r5611_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##structure-direct-instance-of?
                                                      _in56355642_
                                                      'gx#module-import::t)
                                                     (let ((_e56395654_
                                                            (##vector-ref
                                                             _in56355642_
                                                             '1)))
                                                       (if (##structure-direct-instance-of?
                                                            _e56395654_
                                                            'gx#module-export::t)
                                                           (let* ((_e56405657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##vector-ref _e56395654_ '1))
                          (_src-ctx5660_ _e56405657_))
                     (_K56385651_ _src-ctx5660_))
                   (_E56375646_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E56375646_)))
                                               (if (##structure-direct-instance-of?
                                                    _in5634_
                                                    'gx#import-set::t)
                                                   (let* ((_phi5662_
                                                           (##direct-structure-ref
                                                            _in5634_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src5664_
                                                           (##direct-structure-ref
                                                            _in5634_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in5704_
                                                           (let* ((_g56655674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_make-import-path5569_ _src5664_))
                          (_E56685678_
                           (lambda ()
                             (error '"No clause matching" _g56655674_))))
                     (let ((_K56705694_ (lambda (_path5692_) _path5692_))
                           (_K56695684_
                            (lambda (_path5682_) (cons 'in: _path5682_))))
                       (if (##pair? _g56655674_)
                           (let ((_tl56725699_ (##cdr _g56655674_))
                                 (_hd56715697_ (##car _g56655674_)))
                             (if (##null? _tl56725699_)
                                 (let ((_path5702_ _hd56715697_))
                                   (_K56705694_ _path5702_))
                                 (let ((_path5687_ _g56655674_))
                                   (_K56695684_ _path5687_))))
                           (let ((_path5687_ _g56655674_))
                             (_K56695684_ _path5687_))))))
                  (_r5706_ (if _current-src5609_
                               (cons (_make-import-spec-in5570_
                                      _current-src5609_
                                      _current-in5610_)
                                     _r5611_)
                               _r5611_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lp5606_
                                                      _rest5633_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _phi5662_)
                                                                _src-in5704_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _phi5662_ (cons _src-in5704_ '()))))
                    _r5706_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##structure-instance-of?
                                                        _in5634_
                                                        'gx#module-context::t)
                                                       (let ((_r5709_ (if _current-src5609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (_make-import-spec-in5570_
                                         _current-src5609_
                                         _current-in5610_)
                                        _r5611_)
                                  _r5611_)))
                 (_lp5606_
                  _rest5633_
                  '#f
                  '()
                  (cons (cons 'runtime: (_make-import-path5569_ _in5634_))
                        _r5709_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (##pair? _rest56125620_)
                                       (let ((_hd56175714_
                                              (##car _rest56125620_))
                                             (_tl56185716_
                                              (##cdr _rest56125620_)))
                                         (let* ((_in5719_ _hd56175714_)
                                                (_rest5721_ _tl56185716_))
                                           (_K56165711_ _rest5721_ _in5719_)))
                                       (_else56145630_)))))
                             _tl55775592_)))
                        (_g55725582_ _g55735585_)))))
            (_g55715723_ _stx5564_))))))
  (define gxc#generate-meta-export%
    (lambda (_stx5374_ _state5375_)
      (letrec* ((_context-chain5377_ (gxc#current-context-chain))
                (_make-import-path5378_
                 (lambda (_ctx5562_)
                   (gxc#generate-meta-import-path
                    _ctx5562_
                    _context-chain5377_))))
        (let* ((_g53805390_
                (lambda (_g53815387_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g53815387_)))
               (_g53795559_
                (lambda (_g53815393_)
                  (if (gx#stx-pair? _g53815393_)
                      (let ((_e53835395_ (gx#stx-e _g53815393_)))
                        (let ((_hd53845398_ (##car _e53835395_))
                              (_tl53855400_ (##cdr _e53835395_)))
                          ((lambda (_L5403_)
                             (let _lp5414_ ((_rest5416_ _L5403_) (_r5417_ '()))
                               (let* ((_rest54185426_ _rest5416_)
                                      (_else54205434_
                                       (lambda ()
                                         (cons '%#export (reverse _r5417_))))
                                      (_K54225547_
                                       (lambda (_rest5437_ _out5438_)
                                         (let* ((_out54395452_ _out5438_)
                                                (_E54425456_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _out54395452_))))
                                           (let ((_K54465526_
                                                  (lambda (_name5522_
                                                           _phi5523_
                                                           _key5524_)
                                                    (_lp5414_
                                                     _rest5437_
                                                     (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _phi5523_
                               (cons (gxc#generate-runtime-identifier-key
                                      _key5524_)
                                     (cons (gxc#generate-runtime-identifier-key
                                            _name5522_)
                                           '()))))
                   _r5417_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K54435506_
                                                  (lambda (_phi5460_ _src5461_)
                                                    (let* ((_out5501_
                                                            (if _src5461_
                                                                (cons 'import:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let* ((_g54625471_
                                            (_make-import-path5378_ _src5461_))
                                           (_E54655475_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _g54625471_))))
                                      (let ((_K54675491_
                                             (lambda (_path5489_) _path5489_))
                                            (_K54665481_
                                             (lambda (_path5479_)
                                               (cons 'in: _path5479_))))
                                        (if (##pair? _g54625471_)
                                            (let ((_tl54695496_
                                                   (##cdr _g54625471_))
                                                  (_hd54685494_
                                                   (##car _g54625471_)))
                                              (if (##null? _tl54695496_)
                                                  (let ((_path5499_
                                                         _hd54685494_))
                                                    (_K54675491_ _path5499_))
                                                  (let ((_path5484_
                                                         _g54625471_))
                                                    (_K54665481_ _path5484_))))
                                            (let ((_path5484_ _g54625471_))
                                              (_K54665481_ _path5484_)))))
                                    '()))
                        '#t))
                   (_out5503_
                    (if (fxzero? _phi5460_)
                        _out5501_
                        (cons 'phi: (cons _phi5460_ (cons _out5501_ '()))))))
              (_lp5414_ _rest5437_ (cons _out5503_ _r5417_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_try-match54415519_
                                                    (lambda ()
                                                      (if (##structure-direct-instance-of?
                                                           _out54395452_
                                                           'gx#export-set::t)
                                                          (let* ((_e54445509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##vector-ref _out54395452_ '1))
                         (_e54455514_ (##vector-ref _out54395452_ '2)))
                    (let ((_src5512_ _e54445509_) (_phi5517_ _e54455514_))
                      (_K54435506_ _phi5517_ _src5512_)))
                  (_E54425456_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (##structure-direct-instance-of?
                                                    _out54395452_
                                                    'gx#module-export::t)
                                                   (let* ((_e54475529_
                                                           (##vector-ref
                                                            _out54395452_
                                                            '1))
                                                          (_e54485532_
                                                           (##vector-ref
                                                            _out54395452_
                                                            '2))
                                                          (_e54495537_
                                                           (##vector-ref
                                                            _out54395452_
                                                            '3))
                                                          (_e54505542_
                                                           (##vector-ref
                                                            _out54395452_
                                                            '4)))
                                                     (let ((_key5535_
                                                            _e54485532_)
                                                           (_phi5540_
                                                            _e54495537_)
                                                           (_name5545_
                                                            _e54505542_))
                                                       (_K54465526_
                                                        _name5545_
                                                        _phi5540_
                                                        _key5535_)))
                                                   (_try-match54415519_))))))))
                                 (if (##pair? _rest54185426_)
                                     (let ((_hd54235550_
                                            (##car _rest54185426_))
                                           (_tl54245552_
                                            (##cdr _rest54185426_)))
                                       (let* ((_out5555_ _hd54235550_)
                                              (_rest5557_ _tl54245552_))
                                         (_K54225547_ _rest5557_ _out5555_)))
                                     (_else54205434_)))))
                           _tl53855400_)))
                      (_g53805390_ _g53815393_)))))
          (_g53795559_ _stx5374_)))))
  (define gxc#generate-meta-provide%
    (lambda (_stx5335_ _state5336_)
      (begin
        (gxc#meta-state-end-phi! _state5336_)
        (let* ((_g53385348_
                (lambda (_g53395345_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g53395345_)))
               (_g53375371_
                (lambda (_g53395351_)
                  (if (gx#stx-pair? _g53395351_)
                      (let ((_e53415353_ (gx#stx-e _g53395351_)))
                        (let ((_hd53425356_ (##car _e53415353_))
                              (_tl53435358_ (##cdr _e53415353_)))
                          ((lambda (_L5361_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _L5361_)))
                           _tl53435358_)))
                      (_g53385348_ _g53395351_)))))
          (_g53375371_ _stx5335_)))))
  (define gxc#generate-meta-extern%
    (lambda (_stx5206_ _state5207_)
      (letrec ((_generate15209_
                (lambda (_id5330_ _eid5331_)
                  (let ((_eid5333_ (gx#stx-e _eid5331_)))
                    (begin
                      (if (interned-symbol? _eid5333_)
                          '#!void
                          (gxc#raise-compile-error
                           '"Cannot compile extern reference"
                           _stx5206_
                           _eid5333_))
                      (cons (gxc#generate-runtime-identifier _id5330_)
                            (cons _eid5333_ '())))))))
        (let* ((_g52115239_
                (lambda (_g52125236_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g52125236_)))
               (_g52105327_
                (lambda (_g52125242_)
                  (if (gx#stx-pair? _g52125242_)
                      (let ((_e52155244_ (gx#stx-e _g52125242_)))
                        (let ((_hd52165247_ (##car _e52155244_))
                              (_tl52175249_ (##cdr _e52155244_)))
                          (if (gx#stx-pair/null? _tl52175249_)
                              (if (fx>= (gx#stx-length _tl52175249_) '0)
                                  (let ((_g12929_
                                         (gx#syntax-split-splice
                                          _tl52175249_
                                          '0)))
                                    (begin
                                      (let ((_g12930_
                                             (if (##values? _g12929_)
                                                 (##vector-length _g12929_)
                                                 1)))
                                        (if (not (##fx= _g12930_ 2))
                                            (error "Context expects 2 values"
                                                   _g12930_)))
                                      (let ((_target52185252_
                                             (##vector-ref _g12929_ 0))
                                            (_tl52205254_
                                             (##vector-ref _g12929_ 1)))
                                        (if (gx#stx-null? _tl52205254_)
                                            (letrec ((_loop52215257_
                                                      (lambda (_hd52195260_
                                                               _eid52255262_
                                                               _id52265264_)
                                                        (if (gx#stx-pair?
                                                             _hd52195260_)
                                                            (let ((_e52225267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd52195260_)))
                      (let ((_lp-hd52235270_ (##car _e52225267_))
                            (_lp-tl52245272_ (##cdr _e52225267_)))
                        (if (gx#stx-pair? _lp-hd52235270_)
                            (let ((_e52295275_ (gx#stx-e _lp-hd52235270_)))
                              (let ((_hd52305278_ (##car _e52295275_))
                                    (_tl52315280_ (##cdr _e52295275_)))
                                (if (gx#stx-pair? _tl52315280_)
                                    (let ((_e52325283_
                                           (gx#stx-e _tl52315280_)))
                                      (let ((_hd52335286_ (##car _e52325283_))
                                            (_tl52345288_ (##cdr _e52325283_)))
                                        (if (gx#stx-null? _tl52345288_)
                                            (_loop52215257_
                                             _lp-tl52245272_
                                             (cons _hd52335286_ _eid52255262_)
                                             (cons _hd52305278_ _id52265264_))
                                            (_g52115239_ _g52125242_))))
                                    (_g52115239_ _g52125242_))))
                            (_g52115239_ _g52125242_))))
                    (let ((_eid52275291_ (reverse _eid52255262_))
                          (_id52285293_ (reverse _id52265264_)))
                      ((lambda (_L5296_ _L5297_)
                         (cons '%#extern
                               (map _generate15209_
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g53125315_ _g53135317_)
                                                (cons _g53125315_ _g53135317_))
                                              '()
                                              _L5297_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g53195322_ _g53205324_)
                                                (cons _g53195322_ _g53205324_))
                                              '()
                                              _L5296_)))))
                       _eid52275291_
                       _id52285293_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop52215257_
                                               _target52185252_
                                               '()
                                               '()))
                                            (_g52115239_ _g52125242_)))))
                                  (_g52115239_ _g52125242_))
                              (_g52115239_ _g52125242_))))
                      (_g52115239_ _g52125242_)))))
          (_g52105327_ _stx5206_)))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx5001_ _state5002_)
      (letrec ((_generate15004_
                (lambda (_id5201_)
                  (let ((_eid5203_ (gxc#generate-runtime-binding-id _id5201_))
                        (_ident5204_
                         (gxc#generate-runtime-identifier _id5201_)))
                    (cons '%#define-runtime
                          (cons _ident5204_ (cons _eid5203_ '()))))))
               (_generate*5005_
                (lambda (_all5169_)
                  (let* ((_all51705178_ _all5169_)
                         (_else51725186_ (lambda () (cons '%#begin _all5169_)))
                         (_K51745191_ (lambda (_one5189_) _one5189_)))
                    (if (##pair? _all51705178_)
                        (let ((_hd51755194_ (##car _all51705178_))
                              (_tl51765196_ (##cdr _all51705178_)))
                          (let ((_one5199_ _hd51755194_))
                            (if (##null? _tl51765196_)
                                (_K51745191_ _one5199_)
                                (_else51725186_))))
                        (_else51725186_))))))
        (let* ((_g50075024_
                (lambda (_g50085021_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g50085021_)))
               (_g50065166_
                (lambda (_g50085027_)
                  (if (gx#stx-pair? _g50085027_)
                      (let ((_e50115029_ (gx#stx-e _g50085027_)))
                        (let ((_hd50125032_ (##car _e50115029_))
                              (_tl50135034_ (##cdr _e50115029_)))
                          (if (gx#stx-pair? _tl50135034_)
                              (let ((_e50145037_ (gx#stx-e _tl50135034_)))
                                (let ((_hd50155040_ (##car _e50145037_))
                                      (_tl50165042_ (##cdr _e50145037_)))
                                  (if (gx#stx-pair? _tl50165042_)
                                      (let ((_e50175045_
                                             (gx#stx-e _tl50165042_)))
                                        (let ((_hd50185048_
                                               (##car _e50175045_))
                                              (_tl50195050_
                                               (##cdr _e50175045_)))
                                          (if (gx#stx-null? _tl50195050_)
                                              ((lambda (_L5053_ _L5054_)
                                                 (let _lp5070_ ((_rest5072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L5054_)
                        (_r5073_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g50785094_
                                                           (lambda (_g50795091_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g50795091_)))
                                                          (_g50775101_
                                                           (lambda (_g50795097_)
                                                             ((lambda ()
                                                                (_generate*5005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (reverse _r5073_))))))
                  (_g50765117_
                   (lambda (_g50795104_)
                     ((lambda (_L5106_)
                        (if (gx#identifier? _L5106_)
                            (_generate*5005_
                             (foldl1 cons
                                     (cons (_generate15004_ _L5106_) '())
                                     _r5073_))
                            (_g50775101_ _g50795104_)))
                      _g50795104_)))
                  (_g50755141_
                   (lambda (_g50795120_)
                     (if (gx#stx-pair? _g50795120_)
                         (let ((_e50865122_ (gx#stx-e _g50795120_)))
                           (let ((_hd50875125_ (##car _e50865122_))
                                 (_tl50885127_ (##cdr _e50865122_)))
                             ((lambda (_L5130_ _L5131_)
                                (_lp5070_
                                 _L5130_
                                 (cons (_generate15004_ _L5131_) _r5073_)))
                              _tl50885127_
                              _hd50875125_)))
                         (_g50765117_ _g50795120_))))
                  (_g50745163_
                   (lambda (_g50795144_)
                     (if (gx#stx-pair? _g50795144_)
                         (let ((_e50815146_ (gx#stx-e _g50795144_)))
                           (let ((_hd50825149_ (##car _e50815146_))
                                 (_tl50835151_ (##cdr _e50815146_)))
                             (if (gx#stx-datum? _hd50825149_)
                                 (if (equal? (gx#stx-e _hd50825149_) '#f)
                                     ((lambda (_L5154_)
                                        (_lp5070_ _L5154_ _r5073_))
                                      _tl50835151_)
                                     (_g50755141_ _g50795144_))
                                 (_g50755141_ _g50795144_))))
                         (_g50755141_ _g50795144_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g50745163_
                                                      _rest5072_))))
                                               _hd50185048_
                                               _hd50155040_)
                                              (_g50075024_ _g50085027_))))
                                      (_g50075024_ _g50085027_))))
                              (_g50075024_ _g50085027_))))
                      (_g50075024_ _g50085027_)))))
          (_g50065166_ _stx5001_)))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx4898_ _state4899_)
      (let* ((_g49014918_
              (lambda (_g49024915_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g49024915_)))
             (_g49004998_
              (lambda (_g49024921_)
                (if (gx#stx-pair? _g49024921_)
                    (let ((_e49054923_ (gx#stx-e _g49024921_)))
                      (let ((_hd49064926_ (##car _e49054923_))
                            (_tl49074928_ (##cdr _e49054923_)))
                        (if (gx#stx-pair? _tl49074928_)
                            (let ((_e49084931_ (gx#stx-e _tl49074928_)))
                              (let ((_hd49094934_ (##car _e49084931_))
                                    (_tl49104936_ (##cdr _e49084931_)))
                                (if (gx#stx-pair? _tl49104936_)
                                    (let ((_e49114939_
                                           (gx#stx-e _tl49104936_)))
                                      (let ((_hd49124942_ (##car _e49114939_))
                                            (_tl49134944_ (##cdr _e49114939_)))
                                        (if (gx#stx-null? _tl49134944_)
                                            ((lambda (_L4947_ _L4948_)
                                               (let* ((_eid4963_
                                                       (gxc#generate-runtime-binding-id
                                                        _L4948_))
                                                      (_phi4965_
                                                       (fx+ (gx#current-expander-phi)
                                                            '1))
                                                      (_block4967_
                                                       (gxc#meta-state-begin-phi!
                                                        _state4899_
                                                        _phi4965_)))
                                                 (begin
                                                   (let* ((_g49704977_
                                                           (lambda (_g49714974_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g49714974_)))
                                                          (_g49694995_
                                                           (lambda (_g49714980_)
                                                             ((lambda (_L4982_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#meta-state-add-phi!
                           _state4899_
                           _phi4965_
                           (cons (gx#datum->syntax__0 '#f '%#define-runtime)
                                 (cons _L4982_ (cons _L4947_ '()))))))
                      _g49714980_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g49694995_ _eid4963_))
                                                   (if _block4967_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons '_gx#load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _block4967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _L4948_)
                                             (cons _eid4963_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _L4948_)
                           (cons _eid4963_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd49124942_
                                             _hd49094934_)
                                            (_g49014918_ _g49024921_))))
                                    (_g49014918_ _g49024921_))))
                            (_g49014918_ _g49024921_))))
                    (_g49014918_ _g49024921_)))))
        (_g49004998_ _stx4898_))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx4830_ _state4831_)
      (let* ((_g48334850_
              (lambda (_g48344847_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g48344847_)))
             (_g48324895_
              (lambda (_g48344853_)
                (if (gx#stx-pair? _g48344853_)
                    (let ((_e48374855_ (gx#stx-e _g48344853_)))
                      (let ((_hd48384858_ (##car _e48374855_))
                            (_tl48394860_ (##cdr _e48374855_)))
                        (if (gx#stx-pair? _tl48394860_)
                            (let ((_e48404863_ (gx#stx-e _tl48394860_)))
                              (let ((_hd48414866_ (##car _e48404863_))
                                    (_tl48424868_ (##cdr _e48404863_)))
                                (if (gx#stx-pair? _tl48424868_)
                                    (let ((_e48434871_
                                           (gx#stx-e _tl48424868_)))
                                      (let ((_hd48444874_ (##car _e48434871_))
                                            (_tl48454876_ (##cdr _e48434871_)))
                                        (if (gx#stx-null? _tl48454876_)
                                            ((lambda (_L4879_ _L4880_)
                                               (cons '%#define-alias
                                                     (cons (gxc#generate-runtime-identifier
                                                            _L4880_)
                                                           (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L4879_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd48444874_
                                             _hd48414866_)
                                            (_g48334850_ _g48344853_))))
                                    (_g48334850_ _g48344853_))))
                            (_g48334850_ _g48344853_))))
                    (_g48334850_ _g48344853_)))))
        (_g48324895_ _stx4830_))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx4827_ _state4828_)
      (begin
        (gxc#meta-state-add-phi!
         _state4828_
         (gx#current-expander-phi)
         _stx4827_)
        (gxc#generate-meta-define-values% _stx4827_ _state4828_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx4824_ _state4825_)
      (begin
        (gxc#meta-state-add-phi!
         _state4825_
         (gx#current-expander-phi)
         _stx4824_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type
     'gxc#meta-state::t
     '#f
     '4
     'meta-state
     '()
     ':init!
     '(src n open blocks)))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args4821_
      (apply make-struct-instance gxc#meta-state::t _$args4821_)))
  (define gxc#meta-state-src (make-struct-field-accessor gxc#meta-state::t '0))
  (define gxc#meta-state-n (make-struct-field-accessor gxc#meta-state::t '1))
  (define gxc#meta-state-open
    (make-struct-field-accessor gxc#meta-state::t '2))
  (define gxc#meta-state-blocks
    (make-struct-field-accessor gxc#meta-state::t '3))
  (define gxc#meta-state-src-set!
    (make-struct-field-mutator gxc#meta-state::t '0))
  (define gxc#meta-state-n-set!
    (make-struct-field-mutator gxc#meta-state::t '1))
  (define gxc#meta-state-open-set!
    (make-struct-field-mutator gxc#meta-state::t '2))
  (define gxc#meta-state-blocks-set!
    (make-struct-field-mutator gxc#meta-state::t '3))
  (define gxc#meta-state:::init!
    (lambda (_self4818_ _ctx4819_)
      (if (##fx< '4 (##vector-length _self4818_))
          (begin
            (##vector-set!
             _self4818_
             '1
             (gxc#module-id->path-string
              (##structure-ref _ctx4819_ '1 gx#expander-context::t '#f)))
            (##vector-set! _self4818_ '2 '1)
            (##vector-set! _self4818_ '3 (make-hash-table-eq))
            (##vector-set! _self4818_ '4 '()))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self4818_))))
  (bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f)
  (define gxc#meta-state-block::t
    (make-struct-type
     'gxc#meta-state-block::t
     '#f
     '4
     'meta-state-block
     '()
     '#f
     '(ctx phi n code)))
  (define gxc#meta-state-block?
    (make-struct-predicate gxc#meta-state-block::t))
  (define gxc#make-meta-state-block
    (lambda _$args4693_
      (apply make-struct-instance gxc#meta-state-block::t _$args4693_)))
  (define gxc#meta-state-block-ctx
    (make-struct-field-accessor gxc#meta-state-block::t '0))
  (define gxc#meta-state-block-phi
    (make-struct-field-accessor gxc#meta-state-block::t '1))
  (define gxc#meta-state-block-n
    (make-struct-field-accessor gxc#meta-state-block::t '2))
  (define gxc#meta-state-block-code
    (make-struct-field-accessor gxc#meta-state-block::t '3))
  (define gxc#meta-state-block-ctx-set!
    (make-struct-field-mutator gxc#meta-state-block::t '0))
  (define gxc#meta-state-block-phi-set!
    (make-struct-field-mutator gxc#meta-state-block::t '1))
  (define gxc#meta-state-block-n-set!
    (make-struct-field-mutator gxc#meta-state-block::t '2))
  (define gxc#meta-state-block-code-set!
    (make-struct-field-mutator gxc#meta-state-block::t '3))
  (define gxc#meta-state-begin-phi!
    (lambda (_state4652_ _phi4653_)
      (let* ((_state46544662_ _state4652_)
             (_E46564666_
              (lambda () (error '"No clause matching" _state46544662_)))
             (_K46574675_
              (lambda (_open4669_ _n4670_ _src4671_)
                (if (table-ref _open4669_ _phi4653_ '#f)
                    '#f
                    (let ((_block-ref4673_
                           (string-append
                            _src4671_
                            '"__"
                            (number->string _n4670_))))
                      (begin
                        (##structure-set!
                         _state4652_
                         (fx+ _n4670_ '1)
                         '2
                         gxc#meta-state::t
                         '#f)
                        (table-set!
                         _open4669_
                         _phi4653_
                         (##structure
                          gxc#meta-state-block::t
                          (gx#current-expander-context)
                          _phi4653_
                          _n4670_
                          '()))
                        _block-ref4673_))))))
        (if (##structure-instance-of? _state46544662_ 'gxc#meta-state::t)
            (let* ((_e46584678_ (##vector-ref _state46544662_ '1))
                   (_src4681_ _e46584678_)
                   (_e46594683_ (##vector-ref _state46544662_ '2))
                   (_n4686_ _e46594683_)
                   (_e46604688_ (##vector-ref _state46544662_ '3))
                   (_open4691_ _e46604688_))
              (_K46574675_ _open4691_ _n4686_ _src4681_))
            (_E46564666_)))))
  (define gxc#meta-state-add-phi!
    (lambda (_state4646_ _phi4647_ _stx4648_)
      (let ((_block4650_
             (table-ref
              (##structure-ref _state4646_ '3 gxc#meta-state::t '#f)
              _phi4647_
              '#f)))
        (##structure-set!
         _block4650_
         (cons _stx4648_
               (##structure-ref _block4650_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state4641_)
      (begin
        (##structure-set!
         _state4641_
         (hash-fold
          (lambda (_g12931_ _block4643_ _r4644_) (cons _block4643_ _r4644_))
          (##structure-ref _state4641_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state4641_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state4641_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state4593_)
      (begin
        (gxc#meta-state-end-phi! _state4593_)
        (foldl1 (lambda (_block4595_ _r4596_)
                  (let* ((_block45974606_ _block4595_)
                         (_E45994610_
                          (lambda ()
                            (error '"No clause matching" _block45974606_)))
                         (_K46004618_
                          (lambda (_code4613_ _n4614_ _phi4615_ _ctx4616_)
                            (if (null? _code4613_)
                                _r4596_
                                (cons (cons _ctx4616_
                                            (cons _phi4615_
                                                  (cons _n4614_
                                                        (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (reverse _code4613_))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _r4596_)))))
                    (if (##structure-instance-of?
                         _block45974606_
                         'gxc#meta-state-block::t)
                        (let* ((_e46014621_ (##vector-ref _block45974606_ '1))
                               (_ctx4624_ _e46014621_)
                               (_e46024626_ (##vector-ref _block45974606_ '2))
                               (_phi4629_ _e46024626_)
                               (_e46034631_ (##vector-ref _block45974606_ '3))
                               (_n4634_ _e46034631_)
                               (_e46044636_ (##vector-ref _block45974606_ '4))
                               (_code4639_ _e46044636_))
                          (_K46004618_ _code4639_ _n4634_ _phi4629_ _ctx4624_))
                        (_E45994610_))))
                '()
                (##structure-ref _state4593_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx4589_)
      (let ((_ht4591_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx4589_ _ht4591_)
          _ht4591_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx4532_ _ht4533_)
      (let* ((_g45354548_
              (lambda (_g45364545_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g45364545_)))
             (_g45344586_
              (lambda (_g45364551_)
                (if (gx#stx-pair? _g45364551_)
                    (let ((_e45384553_ (gx#stx-e _g45364551_)))
                      (let ((_hd45394556_ (##car _e45384553_))
                            (_tl45404558_ (##cdr _e45384553_)))
                        (if (gx#stx-pair? _tl45404558_)
                            (let ((_e45414561_ (gx#stx-e _tl45404558_)))
                              (let ((_hd45424564_ (##car _e45414561_))
                                    (_tl45434566_ (##cdr _e45414561_)))
                                (if (gx#stx-null? _tl45434566_)
                                    ((lambda (_L4569_)
                                       (let* ((_bind4581_
                                               (gx#resolve-identifier__0
                                                _L4569_))
                                              (_eid4583_
                                               (if _bind4581_
                                                   (##structure-ref
                                                    _bind4581_
                                                    '1
                                                    gx#binding::t
                                                    '#f)
                                                   (gx#stx-e _L4569_))))
                                         (table-set!
                                          _ht4533_
                                          _eid4583_
                                          _eid4583_)))
                                     _hd45424564_)
                                    (_g45354548_ _g45364551_))))
                            (_g45354548_ _g45364551_))))
                    (_g45354548_ _g45364551_)))))
        (_g45344586_ _stx4532_))))
  (define gxc#collect-refs-setq%
    (lambda (_stx4459_ _ht4460_)
      (let* ((_g44624479_
              (lambda (_g44634476_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g44634476_)))
             (_g44614529_
              (lambda (_g44634482_)
                (if (gx#stx-pair? _g44634482_)
                    (let ((_e44664484_ (gx#stx-e _g44634482_)))
                      (let ((_hd44674487_ (##car _e44664484_))
                            (_tl44684489_ (##cdr _e44664484_)))
                        (if (gx#stx-pair? _tl44684489_)
                            (let ((_e44694492_ (gx#stx-e _tl44684489_)))
                              (let ((_hd44704495_ (##car _e44694492_))
                                    (_tl44714497_ (##cdr _e44694492_)))
                                (if (gx#stx-pair? _tl44714497_)
                                    (let ((_e44724500_
                                           (gx#stx-e _tl44714497_)))
                                      (let ((_hd44734503_ (##car _e44724500_))
                                            (_tl44744505_ (##cdr _e44724500_)))
                                        (if (gx#stx-null? _tl44744505_)
                                            ((lambda (_L4508_ _L4509_)
                                               (let* ((_bind4524_
                                                       (gx#resolve-identifier__0
                                                        _L4509_))
                                                      (_eid4526_
                                                       (if _bind4524_
                                                           (##structure-ref
                                                            _bind4524_
                                                            '1
                                                            gx#binding::t
                                                            '#f)
                                                           (gx#stx-e
                                                            _L4509_))))
                                                 (begin
                                                   (table-set!
                                                    _ht4460_
                                                    _eid4526_
                                                    _eid4526_)
                                                   (gxc#compile-e
                                                    _L4508_
                                                    _ht4460_))))
                                             _hd44734503_
                                             _hd44704495_)
                                            (_g44624479_ _g44634482_))))
                                    (_g44624479_ _g44634482_))))
                            (_g44624479_ _g44634482_))))
                    (_g44624479_ _g44634482_)))))
        (_g44614529_ _stx4459_))))
  (define gxc#find-runtime-begin%
    (lambda (_stx4421_)
      (let* ((_g44234433_
              (lambda (_g44244430_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g44244430_)))
             (_g44224456_
              (lambda (_g44244436_)
                (if (gx#stx-pair? _g44244436_)
                    (let ((_e44264438_ (gx#stx-e _g44244436_)))
                      (let ((_hd44274441_ (##car _e44264438_))
                            (_tl44284443_ (##cdr _e44264438_)))
                        ((lambda (_L4446_) (ormap1 gxc#compile-e _L4446_))
                         _tl44284443_)))
                    (_g44234433_ _g44244436_)))))
        (_g44224456_ _stx4421_))))
  (define gxc#find-lambda-expression-begin%
    (lambda (_stx4383_)
      (let* ((_g43854395_
              (lambda (_g43864392_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g43864392_)))
             (_g43844418_
              (lambda (_g43864398_)
                (if (gx#stx-pair? _g43864398_)
                    (let ((_e43884400_ (gx#stx-e _g43864398_)))
                      (let ((_hd43894403_ (##car _e43884400_))
                            (_tl43904405_ (##cdr _e43884400_)))
                        ((lambda (_L4408_) (gxc#compile-e (last _L4408_)))
                         _tl43904405_)))
                    (_g43854395_ _g43864398_)))))
        (_g43844418_ _stx4383_))))
  (define gxc#find-lambda-expression-begin-annotation%
    (lambda (_stx4316_)
      (let* ((_g43184335_
              (lambda (_g43194332_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g43194332_)))
             (_g43174380_
              (lambda (_g43194338_)
                (if (gx#stx-pair? _g43194338_)
                    (let ((_e43224340_ (gx#stx-e _g43194338_)))
                      (let ((_hd43234343_ (##car _e43224340_))
                            (_tl43244345_ (##cdr _e43224340_)))
                        (if (gx#stx-pair? _tl43244345_)
                            (let ((_e43254348_ (gx#stx-e _tl43244345_)))
                              (let ((_hd43264351_ (##car _e43254348_))
                                    (_tl43274353_ (##cdr _e43254348_)))
                                (if (gx#stx-pair? _tl43274353_)
                                    (let ((_e43284356_
                                           (gx#stx-e _tl43274353_)))
                                      (let ((_hd43294359_ (##car _e43284356_))
                                            (_tl43304361_ (##cdr _e43284356_)))
                                        (if (gx#stx-null? _tl43304361_)
                                            ((lambda (_L4364_ _L4365_)
                                               (gxc#compile-e _L4364_))
                                             _hd43294359_
                                             _hd43264351_)
                                            (_g43184335_ _g43194338_))))
                                    (_g43184335_ _g43194338_))))
                            (_g43184335_ _g43194338_))))
                    (_g43184335_ _g43194338_)))))
        (_g43174380_ _stx4316_))))
  (define gxc#find-lambda-expression-let-values%
    (lambda (_stx4249_)
      (let* ((_g42514268_
              (lambda (_g42524265_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g42524265_)))
             (_g42504313_
              (lambda (_g42524271_)
                (if (gx#stx-pair? _g42524271_)
                    (let ((_e42554273_ (gx#stx-e _g42524271_)))
                      (let ((_hd42564276_ (##car _e42554273_))
                            (_tl42574278_ (##cdr _e42554273_)))
                        (if (gx#stx-pair? _tl42574278_)
                            (let ((_e42584281_ (gx#stx-e _tl42574278_)))
                              (let ((_hd42594284_ (##car _e42584281_))
                                    (_tl42604286_ (##cdr _e42584281_)))
                                (if (gx#stx-pair? _tl42604286_)
                                    (let ((_e42614289_
                                           (gx#stx-e _tl42604286_)))
                                      (let ((_hd42624292_ (##car _e42614289_))
                                            (_tl42634294_ (##cdr _e42614289_)))
                                        (if (gx#stx-null? _tl42634294_)
                                            ((lambda (_L4297_ _L4298_)
                                               (gxc#compile-e _L4297_))
                                             _hd42624292_
                                             _hd42594284_)
                                            (_g42514268_ _g42524271_))))
                                    (_g42514268_ _g42524271_))))
                            (_g42514268_ _g42524271_))))
                    (_g42514268_ _g42524271_)))))
        (_g42504313_ _stx4249_))))
  (define gxc#count-values-single% (lambda (_stx4247_) '1))
  (define gxc#count-values-begin%
    (lambda (_stx4165_)
      (let* ((_g41674186_
              (lambda (_g41684183_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g41684183_)))
             (_g41664244_
              (lambda (_g41684189_)
                (if (gx#stx-pair? _g41684189_)
                    (let ((_e41704191_ (gx#stx-e _g41684189_)))
                      (let ((_hd41714194_ (##car _e41704191_))
                            (_tl41724196_ (##cdr _e41704191_)))
                        (if (gx#stx-pair/null? _tl41724196_)
                            (if (fx>= (gx#stx-length _tl41724196_) '0)
                                (let ((_g12932_
                                       (gx#syntax-split-splice
                                        _tl41724196_
                                        '0)))
                                  (begin
                                    (let ((_g12933_
                                           (if (##values? _g12932_)
                                               (##vector-length _g12932_)
                                               1)))
                                      (if (not (##fx= _g12933_ 2))
                                          (error "Context expects 2 values"
                                                 _g12933_)))
                                    (let ((_target41734199_
                                           (##vector-ref _g12932_ 0))
                                          (_tl41754201_
                                           (##vector-ref _g12932_ 1)))
                                      (if (gx#stx-null? _tl41754201_)
                                          (letrec ((_loop41764204_
                                                    (lambda (_hd41744207_
                                                             _expr41804209_)
                                                      (if (gx#stx-pair?
                                                           _hd41744207_)
                                                          (let ((_e41774212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd41744207_)))
                    (let ((_lp-hd41784215_ (##car _e41774212_))
                          (_lp-tl41794217_ (##cdr _e41774212_)))
                      (_loop41764204_
                       _lp-tl41794217_
                       (cons _lp-hd41784215_ _expr41804209_))))
                  (let ((_expr41814220_ (reverse _expr41804209_)))
                    ((lambda (_L4223_)
                       (gxc#compile-e
                        (last (begin
                                '#!void
                                (foldr1 (lambda (_g42364239_ _g42374241_)
                                          (cons _g42364239_ _g42374241_))
                                        '()
                                        _L4223_)))))
                     _expr41814220_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop41764204_
                                             _target41734199_
                                             '()))
                                          (_g41674186_ _g41684189_)))))
                                (_g41674186_ _g41684189_))
                            (_g41674186_ _g41684189_))))
                    (_g41674186_ _g41684189_)))))
        (_g41664244_ _stx4165_))))
  (define gxc#count-values-begin-annotation%
    (lambda (_stx4098_)
      (let* ((_g41004117_
              (lambda (_g41014114_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g41014114_)))
             (_g40994162_
              (lambda (_g41014120_)
                (if (gx#stx-pair? _g41014120_)
                    (let ((_e41044122_ (gx#stx-e _g41014120_)))
                      (let ((_hd41054125_ (##car _e41044122_))
                            (_tl41064127_ (##cdr _e41044122_)))
                        (if (gx#stx-pair? _tl41064127_)
                            (let ((_e41074130_ (gx#stx-e _tl41064127_)))
                              (let ((_hd41084133_ (##car _e41074130_))
                                    (_tl41094135_ (##cdr _e41074130_)))
                                (if (gx#stx-pair? _tl41094135_)
                                    (let ((_e41104138_
                                           (gx#stx-e _tl41094135_)))
                                      (let ((_hd41114141_ (##car _e41104138_))
                                            (_tl41124143_ (##cdr _e41104138_)))
                                        (if (gx#stx-null? _tl41124143_)
                                            ((lambda (_L4146_ _L4147_)
                                               (gxc#compile-e _L4146_))
                                             _hd41114141_
                                             _hd41084133_)
                                            (_g41004117_ _g41014120_))))
                                    (_g41004117_ _g41014120_))))
                            (_g41004117_ _g41014120_))))
                    (_g41004117_ _g41014120_)))))
        (_g40994162_ _stx4098_))))
  (define gxc#count-values-let-values%
    (lambda (_stx4031_)
      (let* ((_g40334050_
              (lambda (_g40344047_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g40344047_)))
             (_g40324095_
              (lambda (_g40344053_)
                (if (gx#stx-pair? _g40344053_)
                    (let ((_e40374055_ (gx#stx-e _g40344053_)))
                      (let ((_hd40384058_ (##car _e40374055_))
                            (_tl40394060_ (##cdr _e40374055_)))
                        (if (gx#stx-pair? _tl40394060_)
                            (let ((_e40404063_ (gx#stx-e _tl40394060_)))
                              (let ((_hd40414066_ (##car _e40404063_))
                                    (_tl40424068_ (##cdr _e40404063_)))
                                (if (gx#stx-pair? _tl40424068_)
                                    (let ((_e40434071_
                                           (gx#stx-e _tl40424068_)))
                                      (let ((_hd40444074_ (##car _e40434071_))
                                            (_tl40454076_ (##cdr _e40434071_)))
                                        (if (gx#stx-null? _tl40454076_)
                                            ((lambda (_L4079_ _L4080_)
                                               (gxc#compile-e _L4079_))
                                             _hd40444074_
                                             _hd40414066_)
                                            (_g40334050_ _g40344053_))))
                                    (_g40334050_ _g40344053_))))
                            (_g40334050_ _g40344053_))))
                    (_g40334050_ _g40344053_)))))
        (_g40324095_ _stx4031_))))
  (define gxc#count-values-call%
    (lambda (_stx3898_)
      (let* ((_g39013930_
              (lambda (_g39023927_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g39023927_)))
             (_g39003937_ (lambda (_g39023933_) ((lambda () '#f))))
             (_g38994028_
              (lambda (_g39023940_)
                (if (gx#stx-pair? _g39023940_)
                    (let ((_e39053942_ (gx#stx-e _g39023940_)))
                      (let ((_hd39063945_ (##car _e39053942_))
                            (_tl39073947_ (##cdr _e39053942_)))
                        (if (gx#stx-pair? _tl39073947_)
                            (let ((_e39083950_ (gx#stx-e _tl39073947_)))
                              (let ((_hd39093953_ (##car _e39083950_))
                                    (_tl39103955_ (##cdr _e39083950_)))
                                (if (gx#stx-pair? _hd39093953_)
                                    (let ((_e39113958_
                                           (gx#stx-e _hd39093953_)))
                                      (let ((_hd39123961_ (##car _e39113958_))
                                            (_tl39133963_ (##cdr _e39113958_)))
                                        (if (gx#identifier? _hd39123961_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd39123961_)
                                                (if (gx#stx-pair? _tl39133963_)
                                                    (let ((_e39143966_
                                                           (gx#stx-e
                                                            _tl39133963_)))
                                                      (let ((_hd39153969_
                                                             (##car _e39143966_))
                                                            (_tl39163971_
                                                             (##cdr _e39143966_)))
                                                        (if (gx#stx-null?
                                                             _tl39163971_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl39103955_)
                        (if (fx>= (gx#stx-length _tl39103955_) '0)
                            (let ((_g12934_
                                   (gx#syntax-split-splice _tl39103955_ '0)))
                              (begin
                                (let ((_g12935_
                                       (if (##values? _g12934_)
                                           (##vector-length _g12934_)
                                           1)))
                                  (if (not (##fx= _g12935_ 2))
                                      (error "Context expects 2 values"
                                             _g12935_)))
                                (let ((_target39173974_
                                       (##vector-ref _g12934_ 0))
                                      (_tl39193976_ (##vector-ref _g12934_ 1)))
                                  (if (gx#stx-null? _tl39193976_)
                                      (letrec ((_loop39203979_
                                                (lambda (_hd39183982_
                                                         _rand39243984_)
                                                  (if (gx#stx-pair?
                                                       _hd39183982_)
                                                      (let ((_e39213987_
                                                             (gx#stx-e
                                                              _hd39183982_)))
                                                        (let ((_lp-hd39223990_
                                                               (##car _e39213987_))
                                                              (_lp-tl39233992_
                                                               (##cdr _e39213987_)))
                                                          (_loop39203979_
                                                           _lp-tl39233992_
                                                           (cons _lp-hd39223990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rand39243984_))))
              (let ((_rand39253995_ (reverse _rand39243984_)))
                ((lambda (_L3998_ _L3999_)
                   (if (gx#free-identifier=? _L3999_ 'values)
                       (length (begin
                                 '#!void
                                 (foldr1 (lambda (_g40204023_ _g40214025_)
                                           (cons _g40204023_ _g40214025_))
                                         '()
                                         _L3998_)))
                       (_g39003937_ _g39023940_)))
                 _rand39253995_
                 _hd39153969_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop39203979_ _target39173974_ '()))
                                      (_g39003937_ _g39023940_)))))
                            (_g39003937_ _g39023940_))
                        (_g39003937_ _g39023940_))
                    (_g39003937_ _g39023940_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g39003937_ _g39023940_))
                                                (_g39003937_ _g39023940_))
                                            (_g39003937_ _g39023940_))))
                                    (_g39003937_ _g39023940_))))
                            (_g39003937_ _g39023940_))))
                    (_g39003937_ _g39023940_)))))
        (_g38994028_ _stx3898_))))
  (define gxc#count-values-if%
    (lambda (_stx3802_)
      (let* ((_g38043825_
              (lambda (_g38053822_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g38053822_)))
             (_g38033895_
              (lambda (_g38053828_)
                (if (gx#stx-pair? _g38053828_)
                    (let ((_e38093830_ (gx#stx-e _g38053828_)))
                      (let ((_hd38103833_ (##car _e38093830_))
                            (_tl38113835_ (##cdr _e38093830_)))
                        (if (gx#stx-pair? _tl38113835_)
                            (let ((_e38123838_ (gx#stx-e _tl38113835_)))
                              (let ((_hd38133841_ (##car _e38123838_))
                                    (_tl38143843_ (##cdr _e38123838_)))
                                (if (gx#stx-pair? _tl38143843_)
                                    (let ((_e38153846_
                                           (gx#stx-e _tl38143843_)))
                                      (let ((_hd38163849_ (##car _e38153846_))
                                            (_tl38173851_ (##cdr _e38153846_)))
                                        (if (gx#stx-pair? _tl38173851_)
                                            (let ((_e38183854_
                                                   (gx#stx-e _tl38173851_)))
                                              (let ((_hd38193857_
                                                     (##car _e38183854_))
                                                    (_tl38203859_
                                                     (##cdr _e38183854_)))
                                                (if (gx#stx-null? _tl38203859_)
                                                    ((lambda (_L3862_
                                                              _L3863_
                                                              _L3864_)
                                                       (let ((_c138813883_
                                                              (gxc#compile-e
                                                               _L3863_)))
                                                         (if _c138813883_
                                                             (let* ((_c13886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _c138813883_)
                            (_c238873889_ (gxc#compile-e _L3862_)))
                       (if _c238873889_
                           (let ((_c23892_ _c238873889_))
                             (if (fx= _c13886_ _c23892_) _c13886_ '#f))
                           '#f))
                     '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd38193857_
                                                     _hd38163849_
                                                     _hd38133841_)
                                                    (_g38043825_
                                                     _g38053828_))))
                                            (_g38043825_ _g38053828_))))
                                    (_g38043825_ _g38053828_))))
                            (_g38043825_ _g38053828_))))
                    (_g38043825_ _g38053828_)))))
        (_g38033895_ _stx3802_)))))
