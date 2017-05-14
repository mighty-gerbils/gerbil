(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx9830_ . _args9831_)
      (let ((_g98339843_
             (lambda (_g98349840_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g98349840_))))
        (let ((_g98329871_
               (lambda (_g98349846_)
                 (if (gx#stx-pair? _g98349846_)
                     (let ((_e98369848_ (gx#stx-e _g98349846_)))
                       (let ((_hd98379851_ (##car _e98369848_))
                             (_tl98389853_ (##cdr _e98369848_)))
                         ((lambda (_L9856_)
                            (let ((_$e9866_
                                   (table-ref
                                    (gxc#current-compile-methods)
                                    (gx#stx-e _L9856_)
                                    '#f)))
                              (if _$e9866_
                                  ((lambda (_method9869_)
                                     (apply _method9869_ _stx9830_ _args9831_))
                                   _$e9866_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile; missing method"
                                   _stx9830_
                                   _L9856_))))
                          _hd98379851_)))
                     (_g98339843_ _g98349846_)))))
          (_g98329871_ _stx9830_)))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl9827_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl9827_ '%#lambda void)
           (table-set! _tbl9827_ '%#case-lambda void)
           (table-set! _tbl9827_ '%#let-values void)
           (table-set! _tbl9827_ '%#letrec-values void)
           (table-set! _tbl9827_ '%#letrec*-values void)
           (table-set! _tbl9827_ '%#quote void)
           (table-set! _tbl9827_ '%#quote-syntax void)
           (table-set! _tbl9827_ '%#call void)
           (table-set! _tbl9827_ '%#if void)
           (table-set! _tbl9827_ '%#ref void)
           (table-set! _tbl9827_ '%#set! void)
           (table-set! _tbl9827_ '%#struct-instance? void)
           (table-set! _tbl9827_ '%#struct-direct-instance? void)
           (table-set! _tbl9827_ '%#struct-ref void)
           (table-set! _tbl9827_ '%#struct-set! void)
           _tbl9827_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl9823_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl9823_ '%#begin void)
           (table-set! _tbl9823_ '%#begin-syntax void)
           (table-set! _tbl9823_ '%#begin-foreign void)
           (table-set! _tbl9823_ '%#module void)
           (table-set! _tbl9823_ '%#import void)
           (table-set! _tbl9823_ '%#export void)
           (table-set! _tbl9823_ '%#provide void)
           (table-set! _tbl9823_ '%#extern void)
           (table-set! _tbl9823_ '%#define-values void)
           (table-set! _tbl9823_ '%#define-syntax void)
           (table-set! _tbl9823_ '%#define-alias void)
           (table-set! _tbl9823_ '%#declare void)
           _tbl9823_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl9819_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9819_ (force gxc#&void-special-form))
           (hash-copy! _tbl9819_ (force gxc#&void-expression))
           _tbl9819_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl9815_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9815_ (force gxc#&void-expression))
           (hash-copy! _tbl9815_ (force gxc#&void-special-form))
           (table-set! _tbl9815_ '%#begin gxc#collect-begin%)
           (table-set! _tbl9815_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl9815_ '%#module gxc#collect-module%)
           (table-set!
            _tbl9815_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl9815_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl9815_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx9808_ . _args9810_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9808_ _args9810_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl9805_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9805_ (force gxc#&void))
           (table-set! _tbl9805_ '%#begin gxc#collect-begin%)
           (table-set! _tbl9805_ '%#module gxc#lift-modules-module%)
           _tbl9805_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx9798_ . _args9800_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9798_ _args9800_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl9795_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl9795_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl9795_ '%#begin-syntax false)
           (table-set! _tbl9795_ '%#begin-foreign true)
           (table-set! _tbl9795_ '%#module false)
           (table-set! _tbl9795_ '%#import false)
           (table-set! _tbl9795_ '%#export false)
           (table-set! _tbl9795_ '%#provide false)
           (table-set! _tbl9795_ '%#extern false)
           (table-set! _tbl9795_ '%#define-values true)
           (table-set! _tbl9795_ '%#define-syntax false)
           (table-set! _tbl9795_ '%#define-alias false)
           (table-set! _tbl9795_ '%#declare false)
           (table-set! _tbl9795_ '%#lambda true)
           (table-set! _tbl9795_ '%#case-lambda true)
           (table-set! _tbl9795_ '%#let-values true)
           (table-set! _tbl9795_ '%#letrec-values true)
           (table-set! _tbl9795_ '%#letrec*-values true)
           (table-set! _tbl9795_ '%#quote true)
           (table-set! _tbl9795_ '%#call true)
           (table-set! _tbl9795_ '%#if true)
           (table-set! _tbl9795_ '%#ref true)
           (table-set! _tbl9795_ '%#set! true)
           (table-set! _tbl9795_ '%#struct-instance? true)
           (table-set! _tbl9795_ '%#struct-direct-instance? true)
           (table-set! _tbl9795_ '%#struct-ref true)
           (table-set! _tbl9795_ '%#struct-set! true)
           _tbl9795_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx9788_ . _args9790_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9788_ _args9790_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl9785_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl9785_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl9785_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl9785_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set! _tbl9785_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl9785_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl9785_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl9785_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl9785_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl9785_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl9785_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl9785_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl9785_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl9785_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl9785_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl9785_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl9785_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl9785_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl9785_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl9785_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl9785_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl9785_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl9785_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl9785_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl9785_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl9785_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl9785_ '%#struct-set! gxc#generate-runtime-empty)
           _tbl9785_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl9781_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9781_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl9781_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl9781_ '%#import gxc#generate-runtime-loader-import%)
           _tbl9781_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx9774_ . _args9776_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9774_ _args9776_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl9771_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9771_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl9771_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl9771_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl9771_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl9771_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl9771_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl9771_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl9771_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl9771_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl9771_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl9771_ '%#quote gxc#generate-runtime-quote%)
           (table-set! _tbl9771_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl9771_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl9771_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl9771_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl9771_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl9771_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl9771_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl9771_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           _tbl9771_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx9764_ . _args9766_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9764_ _args9766_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl9761_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9761_ (force gxc#&generate-runtime))
           (table-set!
            _tbl9761_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (table-set!
            _tbl9761_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl9761_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx9754_ . _args9756_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9754_ _args9756_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl9751_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl9751_ '%#begin gxc#collect-begin%)
           (table-set! _tbl9751_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl9751_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl9751_ '%#let-values gxc#collect-body-let-values%)
           (table-set! _tbl9751_ '%#letrec-values gxc#collect-body-let-values%)
           (table-set!
            _tbl9751_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl9751_ '%#quote void)
           (table-set! _tbl9751_ '%#quote-syntax void)
           (table-set! _tbl9751_ '%#call gxc#collect-operands)
           (table-set! _tbl9751_ '%#if gxc#collect-operands)
           (table-set! _tbl9751_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl9751_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl9751_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl9751_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl9751_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl9751_ '%#struct-set! gxc#collect-operands)
           _tbl9751_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx9744_ . _args9746_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9744_ _args9746_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl9741_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9741_ (force gxc#&void-expression))
           (table-set! _tbl9741_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl9741_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl9741_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl9741_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl9741_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl9741_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl9741_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl9741_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl9741_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl9741_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl9741_ '%#begin-foreign void)
           (table-set! _tbl9741_ '%#declare void)
           _tbl9741_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx9734_ . _args9736_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9734_ _args9736_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl9731_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl9731_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl9731_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl9731_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl9731_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl9731_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set! _tbl9731_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl9731_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl9731_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl9731_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl9731_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl9731_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl9731_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl9731_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl9731_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl9731_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl9731_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl9731_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl9731_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl9731_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl9731_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set! _tbl9731_ '%#declare void)
           _tbl9731_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx9724_ . _args9726_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9724_ _args9726_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx9681_ . _args9682_)
      (let ((_g96849694_
             (lambda (_g96859691_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g96859691_))))
        (let ((_g96839721_
               (lambda (_g96859697_)
                 (if (gx#stx-pair? _g96859697_)
                     (let ((_e96879699_ (gx#stx-e _g96859697_)))
                       (let ((_hd96889702_ (##car _e96879699_))
                             (_tl96899704_ (##cdr _e96879699_)))
                         ((lambda (_L9707_)
                            (for-each
                             (lambda (_g97169718_)
                               (apply gxc#compile-e _g97169718_ _args9682_))
                             (gx#stx-e _L9707_)))
                          _tl96899704_)))
                     (_g96849694_ _g96859697_)))))
          (_g96839721_ _stx9681_)))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx9637_ . _args9638_)
      (let ((_g96409650_
             (lambda (_g96419647_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g96419647_))))
        (let ((_g96399678_
               (lambda (_g96419653_)
                 (if (gx#stx-pair? _g96419653_)
                     (let ((_e96439655_ (gx#stx-e _g96419653_)))
                       (let ((_hd96449658_ (##car _e96439655_))
                             (_tl96459660_ (##cdr _e96439655_)))
                         ((lambda (_L9663_)
                            (call-with-parameters
                             (lambda ()
                               (for-each
                                (lambda (_g96739675_)
                                  (apply gxc#compile-e _g96739675_ _args9638_))
                                (gx#stx-e _L9663_)))
                             gx#current-expander-phi
                             (fx+ (gx#current-expander-phi) '1)))
                          _tl96459660_)))
                     (_g96409650_ _g96419653_)))))
          (_g96399678_ _stx9637_)))))
  (define gxc#collect-module%
    (lambda (_stx9579_ . _args9580_)
      (let ((_g95829596_
             (lambda (_g95839593_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g95839593_))))
        (let ((_g95819634_
               (lambda (_g95839599_)
                 (if (gx#stx-pair? _g95839599_)
                     (let ((_e95869601_ (gx#stx-e _g95839599_)))
                       (let ((_hd95879604_ (##car _e95869601_))
                             (_tl95889606_ (##cdr _e95869601_)))
                         (if (gx#stx-pair? _tl95889606_)
                             (let ((_e95899609_ (gx#stx-e _tl95889606_)))
                               (let ((_hd95909612_ (##car _e95899609_))
                                     (_tl95919614_ (##cdr _e95899609_)))
                                 ((lambda (_L9617_ _L9618_)
                                    (let ((_ctx9631_
                                           (gx#syntax-local-e__0 _L9618_)))
                                      (call-with-parameters
                                       (lambda ()
                                         (apply gxc#compile-e
                                                (##structure-ref
                                                 _ctx9631_
                                                 '11
                                                 gx#module-context::t
                                                 '#f)
                                                _args9580_))
                                       gx#current-expander-context
                                       _ctx9631_)))
                                  _tl95919614_
                                  _hd95909612_)))
                             (_g95829596_ _g95839599_))))
                     (_g95829596_ _g95839599_)))))
          (_g95819634_ _stx9579_)))))
  (define gxc#collect-body-lambda%
    (lambda (_stx9511_ . _args9512_)
      (let ((_g95149531_
             (lambda (_g95159528_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g95159528_))))
        (let ((_g95139576_
               (lambda (_g95159534_)
                 (if (gx#stx-pair? _g95159534_)
                     (let ((_e95189536_ (gx#stx-e _g95159534_)))
                       (let ((_hd95199539_ (##car _e95189536_))
                             (_tl95209541_ (##cdr _e95189536_)))
                         (if (gx#stx-pair? _tl95209541_)
                             (let ((_e95219544_ (gx#stx-e _tl95209541_)))
                               (let ((_hd95229547_ (##car _e95219544_))
                                     (_tl95239549_ (##cdr _e95219544_)))
                                 (if (gx#stx-pair? _tl95239549_)
                                     (let ((_e95249552_
                                            (gx#stx-e _tl95239549_)))
                                       (let ((_hd95259555_ (##car _e95249552_))
                                             (_tl95269557_
                                              (##cdr _e95249552_)))
                                         (if (gx#stx-null? _tl95269557_)
                                             ((lambda (_L9560_ _L9561_)
                                                (apply gxc#compile-e
                                                       _L9560_
                                                       _args9512_))
                                              _hd95259555_
                                              _hd95229547_)
                                             (_g95149531_ _g95159534_))))
                                     (_g95149531_ _g95159534_))))
                             (_g95149531_ _g95159534_))))
                     (_g95149531_ _g95159534_)))))
          (_g95139576_ _stx9511_)))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx9393_ . _args9394_)
      (let ((_g93969424_
             (lambda (_g93979421_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g93979421_))))
        (let ((_g93959508_
               (lambda (_g93979427_)
                 (if (gx#stx-pair? _g93979427_)
                     (let ((_e94009429_ (gx#stx-e _g93979427_)))
                       (let ((_hd94019432_ (##car _e94009429_))
                             (_tl94029434_ (##cdr _e94009429_)))
                         (if (gx#stx-pair/null? _tl94029434_)
                             (if (fx>= (gx#stx-length _tl94029434_) '0)
                                 (let ((_g9873_ (gx#syntax-split-splice
                                                 _tl94029434_
                                                 '0)))
                                   (begin
                                     (let ((_g9874_ (values-count _g9873_)))
                                       (if (not (fx= _g9874_ 2))
                                           (error "Context expects 2 values"
                                                  _g9874_)))
                                     (let ((_target94039437_
                                            (values-ref _g9873_ 0))
                                           (_tl94059439_
                                            (values-ref _g9873_ 1)))
                                       (if (gx#stx-null? _tl94059439_)
                                           (letrec ((_loop94069442_
                                                     (lambda (_hd94049445_
                                                              _body94109447_
                                                              _hd94119449_)
                                                       (if (gx#stx-pair?
                                                            _hd94049445_)
                                                           (let ((_e94079452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd94049445_)))
                     (let ((_lp-hd94089455_ (##car _e94079452_))
                           (_lp-tl94099457_ (##cdr _e94079452_)))
                       (if (gx#stx-pair? _lp-hd94089455_)
                           (let ((_e94149460_ (gx#stx-e _lp-hd94089455_)))
                             (let ((_hd94159463_ (##car _e94149460_))
                                   (_tl94169465_ (##cdr _e94149460_)))
                               (if (gx#stx-pair? _tl94169465_)
                                   (let ((_e94179468_ (gx#stx-e _tl94169465_)))
                                     (let ((_hd94189471_ (##car _e94179468_))
                                           (_tl94199473_ (##cdr _e94179468_)))
                                       (if (gx#stx-null? _tl94199473_)
                                           (_loop94069442_
                                            _lp-tl94099457_
                                            (cons _hd94189471_ _body94109447_)
                                            (cons _hd94159463_ _hd94119449_))
                                           (_g93969424_ _g93979427_))))
                                   (_g93969424_ _g93979427_))))
                           (_g93969424_ _g93979427_))))
                   (let ((_body94129476_ (reverse _body94109447_))
                         (_hd94139478_ (reverse _hd94119449_)))
                     ((lambda (_L9481_ _L9482_)
                        (for-each
                         (lambda (_g94969498_)
                           (apply gxc#compile-e _g94969498_ _args9394_))
                         (begin
                           '#!void
                           (foldr1 (lambda (_g95009503_ _g95019505_)
                                     (cons _g95009503_ _g95019505_))
                                   '()
                                   _L9481_))))
                      _body94129476_
                      _hd94139478_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop94069442_
                                              _target94039437_
                                              '()
                                              '()))
                                           (_g93969424_ _g93979427_)))))
                                 (_g93969424_ _g93979427_))
                             (_g93969424_ _g93979427_))))
                     (_g93969424_ _g93979427_)))))
          (_g93959508_ _stx9393_)))))
  (define gxc#collect-body-let-values%
    (lambda (_stx9246_ . _args9247_)
      (let ((_g92499284_
             (lambda (_g92509281_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g92509281_))))
        (let ((_g92489390_
               (lambda (_g92509287_)
                 (if (gx#stx-pair? _g92509287_)
                     (let ((_e92549289_ (gx#stx-e _g92509287_)))
                       (let ((_hd92559292_ (##car _e92549289_))
                             (_tl92569294_ (##cdr _e92549289_)))
                         (if (gx#stx-pair? _tl92569294_)
                             (let ((_e92579297_ (gx#stx-e _tl92569294_)))
                               (let ((_hd92589300_ (##car _e92579297_))
                                     (_tl92599302_ (##cdr _e92579297_)))
                                 (if (gx#stx-pair/null? _hd92589300_)
                                     (if (fx>= (gx#stx-length _hd92589300_) '0)
                                         (let ((_g9875_ (gx#syntax-split-splice
                                                         _hd92589300_
                                                         '0)))
                                           (begin
                                             (let ((_g9876_ (values-count
                                                             _g9875_)))
                                               (if (not (fx= _g9876_ 2))
                                                   (error "Context expects 2 values"
                                                          _g9876_)))
                                             (let ((_target92609305_
                                                    (values-ref _g9875_ 0))
                                                   (_tl92629307_
                                                    (values-ref _g9875_ 1)))
                                               (if (gx#stx-null? _tl92629307_)
                                                   (letrec ((_loop92639310_
                                                             (lambda (_hd92619313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr92679315_
                              _hd92689317_)
                       (if (gx#stx-pair? _hd92619313_)
                           (let ((_e92649320_ (gx#stx-e _hd92619313_)))
                             (let ((_lp-hd92659323_ (##car _e92649320_))
                                   (_lp-tl92669325_ (##cdr _e92649320_)))
                               (if (gx#stx-pair? _lp-hd92659323_)
                                   (let ((_e92719328_
                                          (gx#stx-e _lp-hd92659323_)))
                                     (let ((_hd92729331_ (##car _e92719328_))
                                           (_tl92739333_ (##cdr _e92719328_)))
                                       (if (gx#stx-pair? _tl92739333_)
                                           (let ((_e92749336_
                                                  (gx#stx-e _tl92739333_)))
                                             (let ((_hd92759339_
                                                    (##car _e92749336_))
                                                   (_tl92769341_
                                                    (##cdr _e92749336_)))
                                               (if (gx#stx-null? _tl92769341_)
                                                   (_loop92639310_
                                                    _lp-tl92669325_
                                                    (cons _hd92759339_
                                                          _expr92679315_)
                                                    (cons _hd92729331_
                                                          _hd92689317_))
                                                   (_g92499284_ _g92509287_))))
                                           (_g92499284_ _g92509287_))))
                                   (_g92499284_ _g92509287_))))
                           (let ((_expr92699344_ (reverse _expr92679315_))
                                 (_hd92709346_ (reverse _hd92689317_)))
                             (if (gx#stx-pair? _tl92599302_)
                                 (let ((_e92779349_ (gx#stx-e _tl92599302_)))
                                   (let ((_hd92789352_ (##car _e92779349_))
                                         (_tl92799354_ (##cdr _e92779349_)))
                                     (if (gx#stx-null? _tl92799354_)
                                         ((lambda (_L9357_ _L9358_ _L9359_)
                                            (for-each
                                             (lambda (_g93789380_)
                                               (apply gxc#compile-e
                                                      _g93789380_
                                                      _args9247_))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g93829385_
                                                                _g93839387_)
                                                         (cons _g93829385_
                                                               _g93839387_))
                                                       (cons _L9357_ '())
                                                       _L9358_))))
                                          _hd92789352_
                                          _expr92699344_
                                          _hd92709346_)
                                         (_g92499284_ _g92509287_))))
                                 (_g92499284_ _g92509287_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop92639310_
                                                      _target92609305_
                                                      '()
                                                      '()))
                                                   (_g92499284_
                                                    _g92509287_)))))
                                         (_g92499284_ _g92509287_))
                                     (_g92499284_ _g92509287_))))
                             (_g92499284_ _g92509287_))))
                     (_g92499284_ _g92509287_)))))
          (_g92489390_ _stx9246_)))))
  (define gxc#collect-body-setq%
    (lambda (_stx9178_ . _args9179_)
      (let ((_g91819198_
             (lambda (_g91829195_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g91829195_))))
        (let ((_g91809243_
               (lambda (_g91829201_)
                 (if (gx#stx-pair? _g91829201_)
                     (let ((_e91859203_ (gx#stx-e _g91829201_)))
                       (let ((_hd91869206_ (##car _e91859203_))
                             (_tl91879208_ (##cdr _e91859203_)))
                         (if (gx#stx-pair? _tl91879208_)
                             (let ((_e91889211_ (gx#stx-e _tl91879208_)))
                               (let ((_hd91899214_ (##car _e91889211_))
                                     (_tl91909216_ (##cdr _e91889211_)))
                                 (if (gx#stx-pair? _tl91909216_)
                                     (let ((_e91919219_
                                            (gx#stx-e _tl91909216_)))
                                       (let ((_hd91929222_ (##car _e91919219_))
                                             (_tl91939224_
                                              (##cdr _e91919219_)))
                                         (if (gx#stx-null? _tl91939224_)
                                             ((lambda (_L9227_ _L9228_)
                                                (apply gxc#compile-e
                                                       _L9227_
                                                       _args9179_))
                                              _hd91929222_
                                              _hd91899214_)
                                             (_g91819198_ _g91829201_))))
                                     (_g91819198_ _g91829201_))))
                             (_g91819198_ _g91829201_))))
                     (_g91819198_ _g91829201_)))))
          (_g91809243_ _stx9178_)))))
  (define gxc#collect-operands
    (lambda (_stx9091_ . _args9092_)
      (let ((_g90949113_
             (lambda (_g90959110_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g90959110_))))
        (let ((_g90939175_
               (lambda (_g90959116_)
                 (if (gx#stx-pair? _g90959116_)
                     (let ((_e90979118_ (gx#stx-e _g90959116_)))
                       (let ((_hd90989121_ (##car _e90979118_))
                             (_tl90999123_ (##cdr _e90979118_)))
                         (if (gx#stx-pair/null? _tl90999123_)
                             (if (fx>= (gx#stx-length _tl90999123_) '0)
                                 (let ((_g9877_ (gx#syntax-split-splice
                                                 _tl90999123_
                                                 '0)))
                                   (begin
                                     (let ((_g9878_ (values-count _g9877_)))
                                       (if (not (fx= _g9878_ 2))
                                           (error "Context expects 2 values"
                                                  _g9878_)))
                                     (let ((_target91009126_
                                            (values-ref _g9877_ 0))
                                           (_tl91029128_
                                            (values-ref _g9877_ 1)))
                                       (if (gx#stx-null? _tl91029128_)
                                           (letrec ((_loop91039131_
                                                     (lambda (_hd91019134_
                                                              _rands91079136_)
                                                       (if (gx#stx-pair?
                                                            _hd91019134_)
                                                           (let ((_e91049139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd91019134_)))
                     (let ((_lp-hd91059142_ (##car _e91049139_))
                           (_lp-tl91069144_ (##cdr _e91049139_)))
                       (_loop91039131_
                        _lp-tl91069144_
                        (cons _lp-hd91059142_ _rands91079136_))))
                   (let ((_rands91089147_ (reverse _rands91079136_)))
                     ((lambda (_L9150_)
                        (for-each
                         (lambda (_g91639165_)
                           (apply gxc#compile-e _g91639165_ _args9092_))
                         (begin
                           '#!void
                           (foldr1 (lambda (_g91679170_ _g91689172_)
                                     (cons _g91679170_ _g91689172_))
                                   '()
                                   _L9150_))))
                      _rands91089147_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop91039131_
                                              _target91009126_
                                              '()))
                                           (_g90949113_ _g90959116_)))))
                                 (_g90949113_ _g90959116_))
                             (_g90949113_ _g90959116_))))
                     (_g90949113_ _g90959116_)))))
          (_g90939175_ _stx9091_)))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx9022_)
      (let ((_g90249041_
             (lambda (_g90259038_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g90259038_))))
        (let ((_g90239088_
               (lambda (_g90259044_)
                 (if (gx#stx-pair? _g90259044_)
                     (let ((_e90289046_ (gx#stx-e _g90259044_)))
                       (let ((_hd90299049_ (##car _e90289046_))
                             (_tl90309051_ (##cdr _e90289046_)))
                         (if (gx#stx-pair? _tl90309051_)
                             (let ((_e90319054_ (gx#stx-e _tl90309051_)))
                               (let ((_hd90329057_ (##car _e90319054_))
                                     (_tl90339059_ (##cdr _e90319054_)))
                                 (if (gx#stx-pair? _tl90339059_)
                                     (let ((_e90349062_
                                            (gx#stx-e _tl90339059_)))
                                       (let ((_hd90359065_ (##car _e90349062_))
                                             (_tl90369067_
                                              (##cdr _e90349062_)))
                                         (if (gx#stx-null? _tl90369067_)
                                             ((lambda (_L9070_ _L9071_)
                                                (gx#stx-for-each1
                                                 (lambda (_bind9086_)
                                                   (if (gx#identifier?
                                                        _bind9086_)
                                                       (gxc#add-module-binding!
                                                        _bind9086_
                                                        '#f)
                                                       '#!void))
                                                 _L9071_))
                                              _hd90359065_
                                              _hd90329057_)
                                             (_g90249041_ _g90259044_))))
                                     (_g90249041_ _g90259044_))))
                             (_g90249041_ _g90259044_))))
                     (_g90249041_ _g90259044_)))))
          (_g90239088_ _stx9022_)))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx8955_)
      (let ((_g89578974_
             (lambda (_g89588971_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g89588971_))))
        (let ((_g89569019_
               (lambda (_g89588977_)
                 (if (gx#stx-pair? _g89588977_)
                     (let ((_e89618979_ (gx#stx-e _g89588977_)))
                       (let ((_hd89628982_ (##car _e89618979_))
                             (_tl89638984_ (##cdr _e89618979_)))
                         (if (gx#stx-pair? _tl89638984_)
                             (let ((_e89648987_ (gx#stx-e _tl89638984_)))
                               (let ((_hd89658990_ (##car _e89648987_))
                                     (_tl89668992_ (##cdr _e89648987_)))
                                 (if (gx#stx-pair? _tl89668992_)
                                     (let ((_e89678995_
                                            (gx#stx-e _tl89668992_)))
                                       (let ((_hd89688998_ (##car _e89678995_))
                                             (_tl89699000_
                                              (##cdr _e89678995_)))
                                         (if (gx#stx-null? _tl89699000_)
                                             ((lambda (_L9003_ _L9004_)
                                                (gxc#add-module-binding!
                                                 _L9004_
                                                 '#t))
                                              _hd89688998_
                                              _hd89658990_)
                                             (_g89578974_ _g89588977_))))
                                     (_g89578974_ _g89588977_))))
                             (_g89578974_ _g89588977_))))
                     (_g89578974_ _g89588977_)))))
          (_g89569019_ _stx8955_)))))
  (define gxc#lift-modules-module%
    (lambda (_stx8897_ _modules8898_)
      (let ((_g89008914_
             (lambda (_g89018911_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g89018911_))))
        (let ((_g88998952_
               (lambda (_g89018917_)
                 (if (gx#stx-pair? _g89018917_)
                     (let ((_e89048919_ (gx#stx-e _g89018917_)))
                       (let ((_hd89058922_ (##car _e89048919_))
                             (_tl89068924_ (##cdr _e89048919_)))
                         (if (gx#stx-pair? _tl89068924_)
                             (let ((_e89078927_ (gx#stx-e _tl89068924_)))
                               (let ((_hd89088930_ (##car _e89078927_))
                                     (_tl89098932_ (##cdr _e89078927_)))
                                 ((lambda (_L8935_ _L8936_)
                                    (let ((_ctx8949_
                                           (gx#syntax-local-e__0 _L8936_)))
                                      (begin
                                        (set-box!
                                         _modules8898_
                                         (cons _ctx8949_
                                               (unbox _modules8898_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gxc#compile-e
                                            (##structure-ref
                                             _ctx8949_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            _modules8898_))
                                         gx#current-expander-context
                                         _ctx8949_))))
                                  _tl89098932_
                                  _hd89088930_)))
                             (_g89008914_ _g89018917_))))
                     (_g89008914_ _g89018917_)))))
          (_g88998952_ _stx8897_)))))
  (define gxc#add-module-binding!
    (lambda (_id8891_ _syntax?8892_)
      (let ((_eid8894_
             (##structure-ref
              (gx#resolve-identifier__0 _id8891_)
              '1
              gx#binding::t
              '#f))
            (_ht8895_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid8894_)
            '#!void
            (table-set!
             _ht8895_
             _eid8894_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid8894_)
              _syntax?8892_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id8872_)
      (let ((_bind8874_ (gx#resolve-identifier__0 _id8872_)))
        (if _bind8874_
            (let ((_eid8876_ (##structure-ref _bind8874_ '1 gx#binding::t '#f))
                  (_ht8877_
                   (##structure-ref
                    (gxc#current-compile-symbol-table)
                    '2
                    gxc#symbol-table::t
                    '#f)))
              (if (interned-symbol? _eid8876_)
                  _eid8876_
                  (let ((_$e8879_ (table-ref _ht8877_ _eid8876_ '#f)))
                    (if _$e8879_
                        (values _$e8879_)
                        (if (##structure-instance-of?
                             _bind8874_
                             'gx#local-binding::t)
                            (let ((_gid8882_
                                   (gxc#generate-runtime-gensym-reference__0
                                    _eid8876_)))
                              (begin
                                (table-set! _ht8877_ _eid8876_ _gid8882_)
                                _gid8882_))
                            (if (##structure-instance-of?
                                 _bind8874_
                                 'gx#module-binding::t)
                                (let ((_gid8889_
                                       (let ((_$e8884_
                                              (##structure-ref
                                               (##structure-ref
                                                _bind8874_
                                                '4
                                                gx#module-binding::t
                                                '#f)
                                               '6
                                               gx#module-context::t
                                               '#f)))
                                         (if _$e8884_
                                             ((lambda (_ns8887_)
                                                (make-symbol
                                                 _ns8887_
                                                 '"#"
                                                 _eid8876_))
                                              _$e8884_)
                                             (gxc#generate-runtime-gensym-reference__0
                                              _eid8876_)))))
                                  (begin
                                    (table-set! _ht8877_ _eid8876_ _gid8889_)
                                    _gid8889_))
                                (gxc#raise-compile-error
                                 '"Cannot compile reference to uninterned binding"
                                 _id8872_
                                 _eid8876_
                                 _bind8874_)))))))
            (if (interned-symbol? (gx#stx-e _id8872_))
                (gx#stx-e _id8872_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id8872_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id8870_)
      (if (gx#identifier? _id8870_)
          (gxc#generate-runtime-binding-id _id8870_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__opt-lambda8848
      (lambda (_sym8850_ _quote?8851_)
        (let ((_ht8853_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '1
                gxc#symbol-table::t
                '#f)))
          (let ((_$e8855_ (table-ref _ht8853_ _sym8850_ '#f)))
            (if _$e8855_
                (values _$e8855_)
                (let ((_g8858_ (if _quote?8851_
                                   (make-symbol
                                    '"__"
                                    _sym8850_
                                    '"__"
                                    (gxc#current-compile-timestamp))
                                   (make-symbol '"_" _sym8850_ '"_"))))
                  (begin (table-set! _ht8853_ _sym8850_ _g8858_) _g8858_)))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym8863_)
          (let ((_quote?8865_ '#f))
            (gxc#generate-runtime-gensym-reference__opt-lambda8848
             _sym8863_
             _quote?8865_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g9880_
          (let ((_g9879_ (length _g9880_)))
            (cond ((fx= _g9879_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g9880_))
                  ((fx= _g9879_ 2)
                   (apply gxc#generate-runtime-gensym-reference__opt-lambda8848
                          _g9880_))
                  (else (error "No clause matching arguments" _g9880_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id8847_)
      (gxc#generate-runtime-identifier-key (gx#core-identifier-key _id8847_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key8809_)
      (if (interned-symbol? _key8809_)
          _key8809_
          (if (uninterned-symbol? _key8809_)
              (gxc#generate-runtime-gensym-reference__0 _key8809_)
              (let ((_key88108817_ _key8809_))
                (let ((_E88128821_
                       (lambda ()
                         (error '"No clause matching" _key88108817_))))
                  (let ((_K88138835_
                         (lambda (_mark8824_ _eid8825_)
                           (let ((_$e8827_
                                  (##structure-ref
                                   _mark8824_
                                   '1
                                   gx#expander-mark::t
                                   '#f)))
                             (if _$e8827_
                                 ((lambda (_ht8830_)
                                    (let ((_$e8832_
                                           (table-ref _ht8830_ _eid8825_ '#f)))
                                      (if _$e8832_
                                          (values _$e8832_)
                                          (gxc#generate-runtime-identifier-key
                                           _eid8825_))))
                                  _$e8827_)
                                 (gxc#generate-runtime-identifier-key
                                  _eid8825_))))))
                    (if (##pair? _key88108817_)
                        (let ((_hd88148838_ (##car _key88108817_))
                              (_tl88158840_ (##cdr _key88108817_)))
                          (let ((_eid8843_ _hd88148838_))
                            (let ((_mark8845_ _tl88158840_))
                              (_K88138835_ _mark8845_ _eid8843_))))
                        (_E88128821_)))))))))
  (begin
    (define gxc#generate-runtime-temporary__opt-lambda8794
      (lambda (_top8796_)
        (if _top8796_
            (let ((_ns8798_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi8799_ (gx#current-expander-phi)))
              (if (fxpositive? _phi8799_)
                  (make-symbol
                   _ns8798_
                   '"["
                   (number->string _phi8799_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns8798_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top8805_ '#f))
            (gxc#generate-runtime-temporary__opt-lambda8794 _top8805_))))
      (define gxc#generate-runtime-temporary
        (lambda _g9882_
          (let ((_g9881_ (length _g9882_)))
            (cond ((fx= _g9881_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g9882_))
                  ((fx= _g9881_ 1)
                   (apply gxc#generate-runtime-temporary__opt-lambda8794
                          _g9882_))
                  (else (error "No clause matching arguments" _g9882_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx8793_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx8713_)
      (let ((_g87158725_
             (lambda (_g87168722_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g87168722_))))
        (let ((_g87148790_
               (lambda (_g87168728_)
                 (if (gx#stx-pair? _g87168728_)
                     (let ((_e87188730_ (gx#stx-e _g87168728_)))
                       (let ((_hd87198733_ (##car _e87188730_))
                             (_tl87208735_ (##cdr _e87188730_)))
                         ((lambda (_L8738_)
                            (let ((_body8748_
                                   (gx#stx-map1 gxc#compile-e _L8738_)))
                              (let ((_body8787_
                                     (filter (lambda (_stx8750_)
                                               (let ((_g87538762_
                                                      (lambda (_g87548759_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g87548759_))))
                                                 (let ((_g87528769_
                                                        (lambda (_g87548765_)
                                                          ((lambda () '#t)))))
                                                   (let ((_g87518784_
                                                          (lambda (_g87548772_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g87548772_)
                        (let ((_e87558774_ (gx#stx-e _g87548772_)))
                          (let ((_hd87568777_ (##car _e87558774_))
                                (_tl87578779_ (##cdr _e87558774_)))
                            (if (gx#identifier? _hd87568777_)
                                (if (gx#stx-eq? 'begin _hd87568777_)
                                    (if (gx#stx-null? _tl87578779_)
                                        ((lambda () '#f))
                                        (_g87528769_ _g87548772_))
                                    (_g87528769_ _g87548772_))
                                (_g87528769_ _g87548772_))))
                        (_g87528769_ _g87548772_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g87518784_
                                                      _stx8750_)))))
                                             _body8748_)))
                                (let ()
                                  (if (fx= (length _body8787_) '1)
                                      (car _body8787_)
                                      (cons 'begin _body8787_))))))
                          _tl87208735_)))
                     (_g87158725_ _g87168728_)))))
          (_g87148790_ _stx8713_)))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx8675_)
      (let ((_g86778687_
             (lambda (_g86788684_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g86788684_))))
        (let ((_g86768710_
               (lambda (_g86788690_)
                 (if (gx#stx-pair? _g86788690_)
                     (let ((_e86808692_ (gx#stx-e _g86788690_)))
                       (let ((_hd86818695_ (##car _e86808692_))
                             (_tl86828697_ (##cdr _e86808692_)))
                         ((lambda (_L8700_)
                            (cons 'begin (gx#syntax->datum _L8700_)))
                          _tl86828697_)))
                     (_g86778687_ _g86788690_)))))
          (_g86768710_ _stx8675_)))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx8637_)
      (let ((_g86398649_
             (lambda (_g86408646_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g86408646_))))
        (let ((_g86388672_
               (lambda (_g86408652_)
                 (if (gx#stx-pair? _g86408652_)
                     (let ((_e86428654_ (gx#stx-e _g86408652_)))
                       (let ((_hd86438657_ (##car _e86428654_))
                             (_tl86448659_ (##cdr _e86428654_)))
                         ((lambda (_L8662_)
                            (cons 'declare (map gx#syntax->datum _L8662_)))
                          _tl86448659_)))
                     (_g86398649_ _g86408652_)))))
          (_g86388672_ _stx8637_)))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx8401_)
      (let ((_g84038420_
             (lambda (_g84048417_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g84048417_))))
        (let ((_g84028634_
               (lambda (_g84048423_)
                 (if (gx#stx-pair? _g84048423_)
                     (let ((_e84078425_ (gx#stx-e _g84048423_)))
                       (let ((_hd84088428_ (##car _e84078425_))
                             (_tl84098430_ (##cdr _e84078425_)))
                         (if (gx#stx-pair? _tl84098430_)
                             (let ((_e84108433_ (gx#stx-e _tl84098430_)))
                               (let ((_hd84118436_ (##car _e84108433_))
                                     (_tl84128438_ (##cdr _e84108433_)))
                                 (if (gx#stx-pair? _tl84128438_)
                                     (let ((_e84138441_
                                            (gx#stx-e _tl84128438_)))
                                       (let ((_hd84148444_ (##car _e84138441_))
                                             (_tl84158446_
                                              (##cdr _e84138441_)))
                                         (if (gx#stx-null? _tl84158446_)
                                             ((lambda (_L8449_ _L8450_)
                                                (let ((_g84678480_
                                                       (lambda (_g84688477_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g84688477_))))
                                                  (let ((_g84668594_
                                                         (lambda (_g84688483_)
                                                           ((lambda ()
                                                              (let ((_tmp8487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gxc#generate-runtime-temporary__opt-lambda8794
                              '#t)))
                        (let ((_body8591_
                               ((letrec ((_lp8489_
                                          (lambda (_rest8491_ _k8492_ _r8493_)
                                            (let ((_g84988514_
                                                   (lambda (_g84998511_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g84998511_))))
                                              (let ((_g84978521_
                                                     (lambda (_g84998517_)
                                                       ((lambda ()
                                                          (reverse _r8493_))))))
                                                (let ((_g84968542_
                                                       (lambda (_g84998524_)
                                                         ((lambda (_L8526_)
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L8526_)
                        (foldl1 cons
                                (cons (cons 'define
                                            (cons (gxc#generate-runtime-binding-id
                                                   _L8526_)
                                                  (cons (cons 'values->list
                                                              (cons _tmp8487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _k8492_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())
                                _r8493_)
                        (_g84978521_ _g84998524_)))
                  _g84998524_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g84958566_
                                                         (lambda (_g84998545_)
                                                           (if (gx#stx-pair?
                                                                _g84998545_)
                                                               (let ((_e85068547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _g84998545_)))
                         (let ((_hd85078550_ (##car _e85068547_))
                               (_tl85088552_ (##cdr _e85068547_)))
                           ((lambda (_L8555_ _L8556_)
                              (_lp8489_
                               _L8555_
                               (fx+ _k8492_ '1)
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L8556_)
                                                 (cons (cons 'values-ref
                                                             (cons _tmp8487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k8492_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _r8493_)))
                            _tl85088552_
                            _hd85078550_)))
                       (_g84968542_ _g84998545_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g84948588_
                                                           (lambda (_g84998569_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g84998569_)
                         (let ((_e85018571_ (gx#stx-e _g84998569_)))
                           (let ((_hd85028574_ (##car _e85018571_))
                                 (_tl85038576_ (##cdr _e85018571_)))
                             (if (gx#stx-datum? _hd85028574_)
                                 (if (equal? (gx#stx-e _hd85028574_) '#f)
                                     ((lambda (_L8579_)
                                        (_lp8489_
                                         _L8579_
                                         (fx+ _k8492_ '1)
                                         _r8493_))
                                      _tl85038576_)
                                     (_g84958566_ _g84998569_))
                                 (_g84958566_ _g84998569_))))
                         (_g84958566_ _g84998569_)))))
              (_g84948588_ _rest8491_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp8489_)
                                _L8450_
                                '0
                                '())))
                          (let ()
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons _tmp8487_
                                                    (cons (gxc#compile-e
                                                           _L8449_)
                                                          '())))
                                        (cons (gxc#generate-runtime-check-values
                                               _tmp8487_
                                               _L8450_)
                                              _body8591_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g84658616_
                                                           (lambda (_g84688597_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g84688597_)
                         (let ((_e84738599_ (gx#stx-e _g84688597_)))
                           (let ((_hd84748602_ (##car _e84738599_))
                                 (_tl84758604_ (##cdr _e84738599_)))
                             (if (gx#stx-null? _tl84758604_)
                                 ((lambda (_L8607_)
                                    (cons 'define
                                          (cons (gxc#generate-runtime-binding-id
                                                 _L8607_)
                                                (cons (gxc#compile-e _L8449_)
                                                      '()))))
                                  _hd84748602_)
                                 (_g84668594_ _g84688597_))))
                         (_g84668594_ _g84688597_)))))
              (let ((_g84648631_
                     (lambda (_g84688619_)
                       (if (gx#stx-pair? _g84688619_)
                           (let ((_e84698621_ (gx#stx-e _g84688619_)))
                             (let ((_hd84708624_ (##car _e84698621_))
                                   (_tl84718626_ (##cdr _e84698621_)))
                               (if (gx#stx-datum? _hd84708624_)
                                   (if (equal? (gx#stx-e _hd84708624_) '#f)
                                       (if (gx#stx-null? _tl84718626_)
                                           ((lambda ()
                                              (gxc#compile-e _L8449_)))
                                           (_g84658616_ _g84688619_))
                                       (_g84658616_ _g84688619_))
                                   (_g84658616_ _g84688619_))))
                           (_g84658616_ _g84688619_)))))
                (_g84648631_ _L8450_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd84148444_
                                              _hd84118436_)
                                             (_g84038420_ _g84048423_))))
                                     (_g84038420_ _g84048423_))))
                             (_g84038420_ _g84048423_))))
                     (_g84038420_ _g84048423_)))))
          (_g84028634_ _stx8401_)))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals8389_ _hd8390_)
      (let ((_len8392_ (gx#stx-length _hd8390_)))
        (let ((_cmp8394_ (if (gx#stx-list? _hd8390_) 'fx= 'fx>=)))
          (let ((_errmsg8396_
                 (string-append
                  (if (gx#stx-list? _hd8390_)
                      '"Context expects "
                      '"Context expects at least ")
                  (number->string _len8392_)
                  '" values")))
            (let ((_count8398_ (gxc#generate-runtime-temporary__0)))
              (let ()
                (if (if (not (gx#stx-list? _hd8390_)) (fx= _len8392_ '0) '#f)
                    '#!void
                    (cons 'let
                          (cons (cons (cons _count8398_
                                            (cons (cons 'values-count
                                                        (cons _vals8389_ '()))
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (cons _cmp8394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count8398_ (cons _len8392_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _errmsg8396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count8398_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx8322_)
      (let ((_g83248341_
             (lambda (_g83258338_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g83258338_))))
        (let ((_g83238386_
               (lambda (_g83258344_)
                 (if (gx#stx-pair? _g83258344_)
                     (let ((_e83288346_ (gx#stx-e _g83258344_)))
                       (let ((_hd83298349_ (##car _e83288346_))
                             (_tl83308351_ (##cdr _e83288346_)))
                         (if (gx#stx-pair? _tl83308351_)
                             (let ((_e83318354_ (gx#stx-e _tl83308351_)))
                               (let ((_hd83328357_ (##car _e83318354_))
                                     (_tl83338359_ (##cdr _e83318354_)))
                                 (if (gx#stx-pair? _tl83338359_)
                                     (let ((_e83348362_
                                            (gx#stx-e _tl83338359_)))
                                       (let ((_hd83358365_ (##car _e83348362_))
                                             (_tl83368367_
                                              (##cdr _e83348362_)))
                                         (if (gx#stx-null? _tl83368367_)
                                             ((lambda (_L8370_ _L8371_)
                                                (cons 'lambda
                                                      (cons (gxc#generate-runtime-lambda-head
                                                             _L8371_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L8370_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd83358365_
                                              _hd83328357_)
                                             (_g83248341_ _g83258344_))))
                                     (_g83248341_ _g83258344_))))
                             (_g83248341_ _g83258344_))))
                     (_g83248341_ _g83258344_)))))
          (_g83238386_ _stx8322_)))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd8320_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd8320_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx6857_)
      (let ((_runtime-identifier=?6859_
             (lambda (_id-stx8311_ _sym8312_)
               (let ((_bind83138315_ (gx#resolve-identifier__0 _id-stx8311_)))
                 (if _bind83138315_
                     (let ((_bind8318_ _bind83138315_))
                       (eq? (##structure-ref _bind8318_ '1 gx#binding::t '#f)
                            _sym8312_))
                     '#f)))))
        (let ((_dispatch-case?6860_
               (lambda (_hd7541_ _body7542_)
                 (let ((_form7544_ (cons _hd7541_ (cons _body7542_ '()))))
                   (let ((_g75497706_
                          (lambda (_g75507703_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g75507703_))))
                     (let ((_g75487713_
                            (lambda (_g75507709_) ((lambda () '#f)))))
                       (let ((_g75477854_
                              (lambda (_g75507716_)
                                (if (gx#stx-pair? _g75507716_)
                                    (let ((_e76667718_ (gx#stx-e _g75507716_)))
                                      (let ((_hd76677721_ (##car _e76667718_))
                                            (_tl76687723_ (##cdr _e76667718_)))
                                        (if (gx#stx-pair? _tl76687723_)
                                            (let ((_e76697726_
                                                   (gx#stx-e _tl76687723_)))
                                              (let ((_hd76707729_
                                                     (##car _e76697726_))
                                                    (_tl76717731_
                                                     (##cdr _e76697726_)))
                                                (if (gx#stx-pair? _hd76707729_)
                                                    (let ((_e76727734_
                                                           (gx#stx-e
                                                            _hd76707729_)))
                                                      (let ((_hd76737737_
                                                             (##car _e76727734_))
                                                            (_tl76747739_
                                                             (##cdr _e76727734_)))
                                                        (if (gx#identifier?
                                                             _hd76737737_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd76737737_)
                        (if (gx#stx-pair? _tl76747739_)
                            (let ((_e76757742_ (gx#stx-e _tl76747739_)))
                              (let ((_hd76767745_ (##car _e76757742_))
                                    (_tl76777747_ (##cdr _e76757742_)))
                                (if (gx#stx-pair? _hd76767745_)
                                    (let ((_e76787750_
                                           (gx#stx-e _hd76767745_)))
                                      (let ((_hd76797753_ (##car _e76787750_))
                                            (_tl76807755_ (##cdr _e76787750_)))
                                        (if (gx#identifier? _hd76797753_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd76797753_)
                                                (if (gx#stx-pair? _tl76807755_)
                                                    (let ((_e76817758_
                                                           (gx#stx-e
                                                            _tl76807755_)))
                                                      (let ((_hd76827761_
                                                             (##car _e76817758_))
                                                            (_tl76837763_
                                                             (##cdr _e76817758_)))
                                                        (if (gx#stx-null?
                                                             _tl76837763_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl76777747_)
                        (let ((_e76847766_ (gx#stx-e _tl76777747_)))
                          (let ((_hd76857769_ (##car _e76847766_))
                                (_tl76867771_ (##cdr _e76847766_)))
                            (if (gx#stx-pair? _hd76857769_)
                                (let ((_e76877774_ (gx#stx-e _hd76857769_)))
                                  (let ((_hd76887777_ (##car _e76877774_))
                                        (_tl76897779_ (##cdr _e76877774_)))
                                    (if (gx#identifier? _hd76887777_)
                                        (if (gx#stx-eq? '%#ref _hd76887777_)
                                            (if (gx#stx-pair? _tl76897779_)
                                                (let ((_e76907782_
                                                       (gx#stx-e
                                                        _tl76897779_)))
                                                  (let ((_hd76917785_
                                                         (##car _e76907782_))
                                                        (_tl76927787_
                                                         (##cdr _e76907782_)))
                                                    (if (gx#stx-null?
                                                         _tl76927787_)
                                                        (if (gx#stx-pair?
                                                             _tl76867771_)
                                                            (let ((_e76937790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl76867771_)))
                      (let ((_hd76947793_ (##car _e76937790_))
                            (_tl76957795_ (##cdr _e76937790_)))
                        (if (gx#stx-pair? _hd76947793_)
                            (let ((_e76967798_ (gx#stx-e _hd76947793_)))
                              (let ((_hd76977801_ (##car _e76967798_))
                                    (_tl76987803_ (##cdr _e76967798_)))
                                (if (gx#identifier? _hd76977801_)
                                    (if (gx#stx-eq? '%#ref _hd76977801_)
                                        (if (gx#stx-pair? _tl76987803_)
                                            (let ((_e76997806_
                                                   (gx#stx-e _tl76987803_)))
                                              (let ((_hd77007809_
                                                     (##car _e76997806_))
                                                    (_tl77017811_
                                                     (##cdr _e76997806_)))
                                                (if (gx#stx-null? _tl77017811_)
                                                    (if (gx#stx-null?
                                                         _tl76957795_)
                                                        (if (gx#stx-null?
                                                             _tl76717731_)
                                                            ((lambda (_L7814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L7815_
                              _L7816_
                              _L7817_)
                       (if (if (gx#identifier? _L7817_)
                               (if (_runtime-identifier=?6859_ _L7816_ 'apply)
                                   (if (gx#free-identifier=? _L7817_ _L7814_)
                                       (not (gx#free-identifier=?
                                             _L7815_
                                             _L7817_))
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g75487713_ _g75507716_)))
                     _hd77007809_
                     _hd76917785_
                     _hd76827761_
                     _hd76677721_)
                    (_g75487713_ _g75507716_))
                (_g75487713_ _g75507716_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g75487713_
                                                     _g75507716_))))
                                            (_g75487713_ _g75507716_))
                                        (_g75487713_ _g75507716_))
                                    (_g75487713_ _g75507716_))))
                            (_g75487713_ _g75507716_))))
                    (_g75487713_ _g75507716_))
                (_g75487713_ _g75507716_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g75487713_ _g75507716_))
                                            (_g75487713_ _g75507716_))
                                        (_g75487713_ _g75507716_))))
                                (_g75487713_ _g75507716_))))
                        (_g75487713_ _g75507716_))
                    (_g75487713_ _g75507716_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g75487713_ _g75507716_))
                                                (_g75487713_ _g75507716_))
                                            (_g75487713_ _g75507716_))))
                                    (_g75487713_ _g75507716_))))
                            (_g75487713_ _g75507716_))
                        (_g75487713_ _g75507716_))
                    (_g75487713_ _g75507716_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g75487713_
                                                     _g75507716_))))
                                            (_g75487713_ _g75507716_))))
                                    (_g75487713_ _g75507716_)))))
                         (let ((_g75468114_
                                (lambda (_g75507857_)
                                  (if (gx#stx-pair? _g75507857_)
                                      (let ((_e76027859_
                                             (gx#stx-e _g75507857_)))
                                        (let ((_hd76037862_
                                               (##car _e76027859_))
                                              (_tl76047864_
                                               (##cdr _e76027859_)))
                                          (if (gx#stx-pair/null? _hd76037862_)
                                              (if (fx>= (gx#stx-length
                                                         _hd76037862_)
                                                        '0)
                                                  (let ((_g9891_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd76037862_
                          '0)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g9892_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g9891_)))
                (if (not (fx= _g9892_ 2))
                    (error "Context expects 2 values" _g9892_)))
              (let ((_target76057867_ (values-ref _g9891_ 0))
                    (_tl76077869_ (values-ref _g9891_ 1)))
                (letrec ((_loop76087872_
                          (lambda (_hd76067875_ _arg76127877_)
                            (if (gx#stx-pair? _hd76067875_)
                                (let ((_e76097880_ (gx#stx-e _hd76067875_)))
                                  (let ((_lp-hd76107883_ (##car _e76097880_))
                                        (_lp-tl76117885_ (##cdr _e76097880_)))
                                    (_loop76087872_
                                     _lp-tl76117885_
                                     (cons _lp-hd76107883_ _arg76127877_))))
                                (let ((_arg76137888_ (reverse _arg76127877_)))
                                  (if (gx#stx-pair? _tl76047864_)
                                      (let ((_e76147891_
                                             (gx#stx-e _tl76047864_)))
                                        (let ((_hd76157894_
                                               (##car _e76147891_))
                                              (_tl76167896_
                                               (##cdr _e76147891_)))
                                          (if (gx#stx-pair? _hd76157894_)
                                              (let ((_e76177899_
                                                     (gx#stx-e _hd76157894_)))
                                                (let ((_hd76187902_
                                                       (##car _e76177899_))
                                                      (_tl76197904_
                                                       (##cdr _e76177899_)))
                                                  (if (gx#identifier?
                                                       _hd76187902_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd76187902_)
                                                          (if (gx#stx-pair?
                                                               _tl76197904_)
                                                              (let ((_e76207907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl76197904_)))
                        (let ((_hd76217910_ (##car _e76207907_))
                              (_tl76227912_ (##cdr _e76207907_)))
                          (if (gx#stx-pair? _hd76217910_)
                              (let ((_e76237915_ (gx#stx-e _hd76217910_)))
                                (let ((_hd76247918_ (##car _e76237915_))
                                      (_tl76257920_ (##cdr _e76237915_)))
                                  (if (gx#identifier? _hd76247918_)
                                      (if (gx#stx-eq? '%#ref _hd76247918_)
                                          (if (gx#stx-pair? _tl76257920_)
                                              (let ((_e76267923_
                                                     (gx#stx-e _tl76257920_)))
                                                (let ((_hd76277926_
                                                       (##car _e76267923_))
                                                      (_tl76287928_
                                                       (##cdr _e76267923_)))
                                                  (if (gx#stx-null?
                                                       _tl76287928_)
                                                      (if (gx#stx-pair?
                                                           _tl76227912_)
                                                          (let ((_e76297931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl76227912_)))
                    (let ((_hd76307934_ (##car _e76297931_))
                          (_tl76317936_ (##cdr _e76297931_)))
                      (if (gx#stx-pair? _hd76307934_)
                          (let ((_e76327939_ (gx#stx-e _hd76307934_)))
                            (let ((_hd76337942_ (##car _e76327939_))
                                  (_tl76347944_ (##cdr _e76327939_)))
                              (if (gx#identifier? _hd76337942_)
                                  (if (gx#stx-eq? '%#ref _hd76337942_)
                                      (if (gx#stx-pair? _tl76347944_)
                                          (let ((_e76357947_
                                                 (gx#stx-e _tl76347944_)))
                                            (let ((_hd76367950_
                                                   (##car _e76357947_))
                                                  (_tl76377952_
                                                   (##cdr _e76357947_)))
                                              (if (gx#stx-null? _tl76377952_)
                                                  (if (gx#stx-pair/null?
                                                       _tl76317936_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl76317936_)
                        '1)
                  (let ((_g9893_ (gx#syntax-split-splice _tl76317936_ '1)))
                    (begin
                      (let ((_g9894_ (values-count _g9893_)))
                        (if (not (fx= _g9894_ 2))
                            (error "Context expects 2 values" _g9894_)))
                      (let ((_target76387955_ (values-ref _g9893_ 0))
                            (_tl76407957_ (values-ref _g9893_ 1)))
                        (if (gx#stx-pair? _tl76407957_)
                            (let ((_e76477960_ (gx#stx-e _tl76407957_)))
                              (let ((_hd76487963_ (##car _e76477960_))
                                    (_tl76497965_ (##cdr _e76477960_)))
                                (if (gx#stx-pair? _hd76487963_)
                                    (let ((_e76507968_
                                           (gx#stx-e _hd76487963_)))
                                      (let ((_hd76517971_ (##car _e76507968_))
                                            (_tl76527973_ (##cdr _e76507968_)))
                                        (if (gx#identifier? _hd76517971_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd76517971_)
                                                (if (gx#stx-pair? _tl76527973_)
                                                    (let ((_e76537976_
                                                           (gx#stx-e
                                                            _tl76527973_)))
                                                      (let ((_hd76547979_
                                                             (##car _e76537976_))
                                                            (_tl76557981_
                                                             (##cdr _e76537976_)))
                                                        (if (gx#stx-null?
                                                             _tl76557981_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl76497965_)
                        (letrec ((_loop76417984_
                                  (lambda (_hd76397987_ _xarg76457989_)
                                    (if (gx#stx-pair? _hd76397987_)
                                        (let ((_e76427992_
                                               (gx#stx-e _hd76397987_)))
                                          (let ((_lp-hd76437995_
                                                 (##car _e76427992_))
                                                (_lp-tl76447997_
                                                 (##cdr _e76427992_)))
                                            (if (gx#stx-pair? _lp-hd76437995_)
                                                (let ((_e76568000_
                                                       (gx#stx-e
                                                        _lp-hd76437995_)))
                                                  (let ((_hd76578003_
                                                         (##car _e76568000_))
                                                        (_tl76588005_
                                                         (##cdr _e76568000_)))
                                                    (if (gx#identifier?
                                                         _hd76578003_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd76578003_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl76588005_)
                        (let ((_e76598008_ (gx#stx-e _tl76588005_)))
                          (let ((_hd76608011_ (##car _e76598008_))
                                (_tl76618013_ (##cdr _e76598008_)))
                            (if (gx#stx-null? _tl76618013_)
                                (_loop76417984_
                                 _lp-tl76447997_
                                 (cons _hd76608011_ _xarg76457989_))
                                (_g75477854_ _g75507857_))))
                        (_g75477854_ _g75507857_))
                    (_g75477854_ _g75507857_))
                (_g75477854_ _g75507857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g75477854_ _g75507857_))))
                                        (let ((_xarg76468016_
                                               (reverse _xarg76457989_)))
                                          (if (gx#stx-null? _tl76167896_)
                                              ((lambda (_L8019_
                                                        _L8020_
                                                        _L8021_
                                                        _L8022_
                                                        _L8023_
                                                        _L8024_)
                                                 (if (if (gx#identifier-list?
                                                          (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g80678070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g80688072_)
                              (cons _g80678070_ _g80688072_))
                            '()
                            _L8024_)))
                 (if (gx#identifier? _L8023_)
                     (if (_runtime-identifier=?6859_ _L8022_ 'apply)
                         (if (fx= (length (begin
                                            '#!void
                                            (foldr1 (lambda (_g80748077_
                                                             _g80758079_)
                                                      (cons _g80748077_
                                                            _g80758079_))
                                                    '()
                                                    _L8024_)))
                                  (length (begin
                                            '#!void
                                            (foldr1 (lambda (_g80818084_
                                                             _g80828086_)
                                                      (cons _g80818084_
                                                            _g80828086_))
                                                    '()
                                                    _L8020_))))
                             (if (andmap gx#free-identifier=?
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g80888091_
                                                            _g80898093_)
                                                     (cons _g80888091_
                                                           _g80898093_))
                                                   '()
                                                   _L8024_))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g80958098_
                                                            _g80968100_)
                                                     (cons _g80958098_
                                                           _g80968100_))
                                                   '()
                                                   _L8020_)))
                                 (if (gx#free-identifier=? _L8023_ _L8019_)
                                     (not (find (lambda (_g81028104_)
                                                  (gx#free-identifier=?
                                                   _g81028104_
                                                   _L8021_))
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g81068109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g81078111_)
                    (cons _g81068109_ _g81078111_))
                  (cons _L8023_ '())
                  _L8024_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '#f)
                                 '#f)
                             '#f)
                         '#f)
                     '#f)
                 '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t
                                                     (_g75477854_
                                                      _g75507857_)))
                                               _hd76547979_
                                               _xarg76468016_
                                               _hd76367950_
                                               _hd76277926_
                                               _tl76077869_
                                               _arg76137888_)
                                              (_g75477854_ _g75507857_)))))))
                          (_loop76417984_ _target76387955_ '()))
                        (_g75477854_ _g75507857_))
                    (_g75477854_ _g75507857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g75477854_ _g75507857_))
                                                (_g75477854_ _g75507857_))
                                            (_g75477854_ _g75507857_))))
                                    (_g75477854_ _g75507857_))))
                            (_g75477854_ _g75507857_)))))
                  (_g75477854_ _g75507857_))
              (_g75477854_ _g75507857_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g75477854_ _g75507857_))))
                                          (_g75477854_ _g75507857_))
                                      (_g75477854_ _g75507857_))
                                  (_g75477854_ _g75507857_))))
                          (_g75477854_ _g75507857_))))
                  (_g75477854_ _g75507857_))
              (_g75477854_ _g75507857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g75477854_ _g75507857_))
                                          (_g75477854_ _g75507857_))
                                      (_g75477854_ _g75507857_))))
                              (_g75477854_ _g75507857_))))
                      (_g75477854_ _g75507857_))
                  (_g75477854_ _g75507857_))
              (_g75477854_ _g75507857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g75477854_ _g75507857_))))
                                      (_g75477854_ _g75507857_)))))))
                  (_loop76087872_ _target76057867_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g75477854_ _g75507857_))
                                              (_g75477854_ _g75507857_))))
                                      (_g75477854_ _g75507857_)))))
                           (let ((_g75458308_
                                  (lambda (_g75508117_)
                                    (if (gx#stx-pair? _g75508117_)
                                        (let ((_e75548119_
                                               (gx#stx-e _g75508117_)))
                                          (let ((_hd75558122_
                                                 (##car _e75548119_))
                                                (_tl75568124_
                                                 (##cdr _e75548119_)))
                                            (if (gx#stx-pair/null?
                                                 _hd75558122_)
                                                (if (fx>= (gx#stx-length
                                                           _hd75558122_)
                                                          '0)
                                                    (let ((_g9895_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd75558122_
                            '0)))
              (begin
                (let ((_g9896_ (values-count _g9895_)))
                  (if (not (fx= _g9896_ 2))
                      (error "Context expects 2 values" _g9896_)))
                (let ((_target75578127_ (values-ref _g9895_ 0))
                      (_tl75598129_ (values-ref _g9895_ 1)))
                  (if (gx#stx-null? _tl75598129_)
                      (letrec ((_loop75608132_
                                (lambda (_hd75588135_ _arg75648137_)
                                  (if (gx#stx-pair? _hd75588135_)
                                      (let ((_e75618140_
                                             (gx#stx-e _hd75588135_)))
                                        (let ((_lp-hd75628143_
                                               (##car _e75618140_))
                                              (_lp-tl75638145_
                                               (##cdr _e75618140_)))
                                          (_loop75608132_
                                           _lp-tl75638145_
                                           (cons _lp-hd75628143_
                                                 _arg75648137_))))
                                      (let ((_arg75658148_
                                             (reverse _arg75648137_)))
                                        (if (gx#stx-pair? _tl75568124_)
                                            (let ((_e75668151_
                                                   (gx#stx-e _tl75568124_)))
                                              (let ((_hd75678154_
                                                     (##car _e75668151_))
                                                    (_tl75688156_
                                                     (##cdr _e75668151_)))
                                                (if (gx#stx-pair? _hd75678154_)
                                                    (let ((_e75698159_
                                                           (gx#stx-e
                                                            _hd75678154_)))
                                                      (let ((_hd75708162_
                                                             (##car _e75698159_))
                                                            (_tl75718164_
                                                             (##cdr _e75698159_)))
                                                        (if (gx#identifier?
                                                             _hd75708162_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd75708162_)
                        (if (gx#stx-pair? _tl75718164_)
                            (let ((_e75728167_ (gx#stx-e _tl75718164_)))
                              (let ((_hd75738170_ (##car _e75728167_))
                                    (_tl75748172_ (##cdr _e75728167_)))
                                (if (gx#stx-pair? _hd75738170_)
                                    (let ((_e75758175_
                                           (gx#stx-e _hd75738170_)))
                                      (let ((_hd75768178_ (##car _e75758175_))
                                            (_tl75778180_ (##cdr _e75758175_)))
                                        (if (gx#identifier? _hd75768178_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd75768178_)
                                                (if (gx#stx-pair? _tl75778180_)
                                                    (let ((_e75788183_
                                                           (gx#stx-e
                                                            _tl75778180_)))
                                                      (let ((_hd75798186_
                                                             (##car _e75788183_))
                                                            (_tl75808188_
                                                             (##cdr _e75788183_)))
                                                        (if (gx#stx-null?
                                                             _tl75808188_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl75748172_)
                        (if (fx>= (gx#stx-length _tl75748172_) '0)
                            (let ((_g9897_ (gx#syntax-split-splice
                                            _tl75748172_
                                            '0)))
                              (begin
                                (let ((_g9898_ (values-count _g9897_)))
                                  (if (not (fx= _g9898_ 2))
                                      (error "Context expects 2 values"
                                             _g9898_)))
                                (let ((_target75818191_ (values-ref _g9897_ 0))
                                      (_tl75838193_ (values-ref _g9897_ 1)))
                                  (if (gx#stx-null? _tl75838193_)
                                      (letrec ((_loop75848196_
                                                (lambda (_hd75828199_
                                                         _xarg75888201_)
                                                  (if (gx#stx-pair?
                                                       _hd75828199_)
                                                      (let ((_e75858204_
                                                             (gx#stx-e
                                                              _hd75828199_)))
                                                        (let ((_lp-hd75868207_
                                                               (##car _e75858204_))
                                                              (_lp-tl75878209_
                                                               (##cdr _e75858204_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd75868207_)
                                                              (let ((_e75908212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd75868207_)))
                        (let ((_hd75918215_ (##car _e75908212_))
                              (_tl75928217_ (##cdr _e75908212_)))
                          (if (gx#identifier? _hd75918215_)
                              (if (gx#stx-eq? '%#ref _hd75918215_)
                                  (if (gx#stx-pair? _tl75928217_)
                                      (let ((_e75938220_
                                             (gx#stx-e _tl75928217_)))
                                        (let ((_hd75948223_
                                               (##car _e75938220_))
                                              (_tl75958225_
                                               (##cdr _e75938220_)))
                                          (if (gx#stx-null? _tl75958225_)
                                              (_loop75848196_
                                               _lp-tl75878209_
                                               (cons _hd75948223_
                                                     _xarg75888201_))
                                              (_g75468114_ _g75508117_))))
                                      (_g75468114_ _g75508117_))
                                  (_g75468114_ _g75508117_))
                              (_g75468114_ _g75508117_))))
                      (_g75468114_ _g75508117_))))
              (let ((_xarg75898228_ (reverse _xarg75888201_)))
                (if (gx#stx-null? _tl75688156_)
                    ((lambda (_L8231_ _L8232_ _L8233_)
                       (if (if (gx#identifier-list?
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g82618264_ _g82628266_)
                                            (cons _g82618264_ _g82628266_))
                                          '()
                                          _L8233_)))
                               (if (fx= (length (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g82688271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g82698273_)
                    (cons _g82688271_ _g82698273_))
                  '()
                  _L8233_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (length (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g82758278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g82768280_)
                    (cons _g82758278_ _g82768280_))
                  '()
                  _L8231_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (andmap gx#free-identifier=?
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g82828285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g82838287_)
                   (cons _g82828285_ _g82838287_))
                 '()
                 _L8233_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g82898292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g82908294_)
                   (cons _g82898292_ _g82908294_))
                 '()
                 _L8231_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (not (find (lambda (_g82968298_)
                                                    (gx#free-identifier=?
                                                     _g82968298_
                                                     _L8232_))
                                                  (begin
                                                    '#!void
                                                    (foldr1 (lambda (_g83008303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g83018305_)
                      (cons _g83008303_ _g83018305_))
                    '()
                    _L8233_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g75468114_ _g75508117_)))
                     _xarg75898228_
                     _hd75798186_
                     _arg75658148_)
                    (_g75468114_ _g75508117_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop75848196_ _target75818191_ '()))
                                      (_g75468114_ _g75508117_)))))
                            (_g75468114_ _g75508117_))
                        (_g75468114_ _g75508117_))
                    (_g75468114_ _g75508117_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g75468114_ _g75508117_))
                                                (_g75468114_ _g75508117_))
                                            (_g75468114_ _g75508117_))))
                                    (_g75468114_ _g75508117_))))
                            (_g75468114_ _g75508117_))
                        (_g75468114_ _g75508117_))
                    (_g75468114_ _g75508117_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g75468114_
                                                     _g75508117_))))
                                            (_g75468114_ _g75508117_)))))))
                        (_loop75608132_ _target75578127_ '()))
                      (_g75468114_ _g75508117_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g75468114_ _g75508117_))
                                                (_g75468114_ _g75508117_))))
                                        (_g75468114_ _g75508117_)))))
                             (_g75458308_ _form7544_))))))))))
          (let ((_dispatch-case-e6861_
                 (lambda (_hd7005_ _body7006_)
                   (let ((_form7008_ (cons _hd7005_ (cons _body7006_ '()))))
                     (let ((_g70127136_
                            (lambda (_g70137133_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g70137133_))))
                       (let ((_g70117254_
                              (lambda (_g70137139_)
                                (if (gx#stx-pair? _g70137139_)
                                    (let ((_e71027141_ (gx#stx-e _g70137139_)))
                                      (let ((_hd71037144_ (##car _e71027141_))
                                            (_tl71047146_ (##cdr _e71027141_)))
                                        (if (gx#stx-pair? _tl71047146_)
                                            (let ((_e71057149_
                                                   (gx#stx-e _tl71047146_)))
                                              (let ((_hd71067152_
                                                     (##car _e71057149_))
                                                    (_tl71077154_
                                                     (##cdr _e71057149_)))
                                                (if (gx#stx-pair? _hd71067152_)
                                                    (let ((_e71087157_
                                                           (gx#stx-e
                                                            _hd71067152_)))
                                                      (let ((_hd71097160_
                                                             (##car _e71087157_))
                                                            (_tl71107162_
                                                             (##cdr _e71087157_)))
                                                        (if (gx#identifier?
                                                             _hd71097160_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd71097160_)
                        (if (gx#stx-pair? _tl71107162_)
                            (let ((_e71117165_ (gx#stx-e _tl71107162_)))
                              (let ((_hd71127168_ (##car _e71117165_))
                                    (_tl71137170_ (##cdr _e71117165_)))
                                (if (gx#stx-pair? _hd71127168_)
                                    (let ((_e71147173_
                                           (gx#stx-e _hd71127168_)))
                                      (let ((_hd71157176_ (##car _e71147173_))
                                            (_tl71167178_ (##cdr _e71147173_)))
                                        (if (gx#identifier? _hd71157176_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd71157176_)
                                                (if (gx#stx-pair? _tl71167178_)
                                                    (let ((_e71177181_
                                                           (gx#stx-e
                                                            _tl71167178_)))
                                                      (let ((_hd71187184_
                                                             (##car _e71177181_))
                                                            (_tl71197186_
                                                             (##cdr _e71177181_)))
                                                        (if (gx#stx-null?
                                                             _tl71197186_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl71137170_)
                        (let ((_e71207189_ (gx#stx-e _tl71137170_)))
                          (let ((_hd71217192_ (##car _e71207189_))
                                (_tl71227194_ (##cdr _e71207189_)))
                            (if (gx#stx-pair? _hd71217192_)
                                (let ((_e71237197_ (gx#stx-e _hd71217192_)))
                                  (let ((_hd71247200_ (##car _e71237197_))
                                        (_tl71257202_ (##cdr _e71237197_)))
                                    (if (gx#identifier? _hd71247200_)
                                        (if (gx#stx-eq? '%#ref _hd71247200_)
                                            (if (gx#stx-pair? _tl71257202_)
                                                (let ((_e71267205_
                                                       (gx#stx-e
                                                        _tl71257202_)))
                                                  (let ((_hd71277208_
                                                         (##car _e71267205_))
                                                        (_tl71287210_
                                                         (##cdr _e71267205_)))
                                                    (if (gx#stx-null?
                                                         _tl71287210_)
                                                        (if (gx#stx-pair?
                                                             _tl71227194_)
                                                            (let ((_e71297213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl71227194_)))
                      (let ((_hd71307216_ (##car _e71297213_))
                            (_tl71317218_ (##cdr _e71297213_)))
                        (if (gx#stx-null? _tl71317218_)
                            (if (gx#stx-null? _tl71077154_)
                                ((lambda (_L7221_ _L7222_ _L7223_)
                                   (gxc#compile-e
                                    (cons (gx#datum->syntax__0 '#f '%#ref)
                                          (cons _L7221_ '()))))
                                 _hd71277208_
                                 _hd71187184_
                                 _hd71037144_)
                                (_g70127136_ _g70137139_))
                            (_g70127136_ _g70137139_))))
                    (_g70127136_ _g70137139_))
                (_g70127136_ _g70137139_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g70127136_ _g70137139_))
                                            (_g70127136_ _g70137139_))
                                        (_g70127136_ _g70137139_))))
                                (_g70127136_ _g70137139_))))
                        (_g70127136_ _g70137139_))
                    (_g70127136_ _g70137139_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g70127136_ _g70137139_))
                                                (_g70127136_ _g70137139_))
                                            (_g70127136_ _g70137139_))))
                                    (_g70127136_ _g70137139_))))
                            (_g70127136_ _g70137139_))
                        (_g70127136_ _g70137139_))
                    (_g70127136_ _g70137139_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g70127136_
                                                     _g70137139_))))
                                            (_g70127136_ _g70137139_))))
                                    (_g70127136_ _g70137139_)))))
                         (let ((_g70107390_
                                (lambda (_g70137257_)
                                  (if (gx#stx-pair? _g70137257_)
                                      (let ((_e70637259_
                                             (gx#stx-e _g70137257_)))
                                        (let ((_hd70647262_
                                               (##car _e70637259_))
                                              (_tl70657264_
                                               (##cdr _e70637259_)))
                                          (if (gx#stx-pair/null? _hd70647262_)
                                              (if (fx>= (gx#stx-length
                                                         _hd70647262_)
                                                        '0)
                                                  (let ((_g9885_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd70647262_
                          '0)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g9886_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g9885_)))
                (if (not (fx= _g9886_ 2))
                    (error "Context expects 2 values" _g9886_)))
              (let ((_target70667267_ (values-ref _g9885_ 0))
                    (_tl70687269_ (values-ref _g9885_ 1)))
                (letrec ((_loop70697272_
                          (lambda (_hd70677275_ _arg70737277_)
                            (if (gx#stx-pair? _hd70677275_)
                                (let ((_e70707280_ (gx#stx-e _hd70677275_)))
                                  (let ((_lp-hd70717283_ (##car _e70707280_))
                                        (_lp-tl70727285_ (##cdr _e70707280_)))
                                    (_loop70697272_
                                     _lp-tl70727285_
                                     (cons _lp-hd70717283_ _arg70737277_))))
                                (let ((_arg70747288_ (reverse _arg70737277_)))
                                  (if (gx#stx-pair? _tl70657264_)
                                      (let ((_e70757291_
                                             (gx#stx-e _tl70657264_)))
                                        (let ((_hd70767294_
                                               (##car _e70757291_))
                                              (_tl70777296_
                                               (##cdr _e70757291_)))
                                          (if (gx#stx-pair? _hd70767294_)
                                              (let ((_e70787299_
                                                     (gx#stx-e _hd70767294_)))
                                                (let ((_hd70797302_
                                                       (##car _e70787299_))
                                                      (_tl70807304_
                                                       (##cdr _e70787299_)))
                                                  (if (gx#identifier?
                                                       _hd70797302_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd70797302_)
                                                          (if (gx#stx-pair?
                                                               _tl70807304_)
                                                              (let ((_e70817307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl70807304_)))
                        (let ((_hd70827310_ (##car _e70817307_))
                              (_tl70837312_ (##cdr _e70817307_)))
                          (if (gx#stx-pair? _hd70827310_)
                              (let ((_e70847315_ (gx#stx-e _hd70827310_)))
                                (let ((_hd70857318_ (##car _e70847315_))
                                      (_tl70867320_ (##cdr _e70847315_)))
                                  (if (gx#identifier? _hd70857318_)
                                      (if (gx#stx-eq? '%#ref _hd70857318_)
                                          (if (gx#stx-pair? _tl70867320_)
                                              (let ((_e70877323_
                                                     (gx#stx-e _tl70867320_)))
                                                (let ((_hd70887326_
                                                       (##car _e70877323_))
                                                      (_tl70897328_
                                                       (##cdr _e70877323_)))
                                                  (if (gx#stx-null?
                                                       _tl70897328_)
                                                      (if (gx#stx-pair?
                                                           _tl70837312_)
                                                          (let ((_e70907331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl70837312_)))
                    (let ((_hd70917334_ (##car _e70907331_))
                          (_tl70927336_ (##cdr _e70907331_)))
                      (if (gx#stx-pair? _hd70917334_)
                          (let ((_e70937339_ (gx#stx-e _hd70917334_)))
                            (let ((_hd70947342_ (##car _e70937339_))
                                  (_tl70957344_ (##cdr _e70937339_)))
                              (if (gx#identifier? _hd70947342_)
                                  (if (gx#stx-eq? '%#ref _hd70947342_)
                                      (if (gx#stx-pair? _tl70957344_)
                                          (let ((_e70967347_
                                                 (gx#stx-e _tl70957344_)))
                                            (let ((_hd70977350_
                                                   (##car _e70967347_))
                                                  (_tl70987352_
                                                   (##cdr _e70967347_)))
                                              (if (gx#stx-null? _tl70987352_)
                                                  (if (gx#stx-null?
                                                       _tl70777296_)
                                                      ((lambda (_L7355_
                                                                _L7356_
                                                                _L7357_
                                                                _L7358_)
                                                         (gxc#compile-e
                                                          (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '%#ref)
                        (cons _L7355_ '()))))
               _hd70977350_
               _hd70887326_
               _tl70687269_
               _arg70747288_)
              (_g70117254_ _g70137257_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g70117254_ _g70137257_))))
                                          (_g70117254_ _g70137257_))
                                      (_g70117254_ _g70137257_))
                                  (_g70117254_ _g70137257_))))
                          (_g70117254_ _g70137257_))))
                  (_g70117254_ _g70137257_))
              (_g70117254_ _g70137257_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g70117254_ _g70137257_))
                                          (_g70117254_ _g70137257_))
                                      (_g70117254_ _g70137257_))))
                              (_g70117254_ _g70137257_))))
                      (_g70117254_ _g70137257_))
                  (_g70117254_ _g70137257_))
              (_g70117254_ _g70137257_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g70117254_ _g70137257_))))
                                      (_g70117254_ _g70137257_)))))))
                  (_loop70697272_ _target70667267_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g70117254_ _g70137257_))
                                              (_g70117254_ _g70137257_))))
                                      (_g70117254_ _g70137257_)))))
                           (let ((_g70097538_
                                  (lambda (_g70137393_)
                                    (if (gx#stx-pair? _g70137393_)
                                        (let ((_e70177395_
                                               (gx#stx-e _g70137393_)))
                                          (let ((_hd70187398_
                                                 (##car _e70177395_))
                                                (_tl70197400_
                                                 (##cdr _e70177395_)))
                                            (if (gx#stx-pair/null?
                                                 _hd70187398_)
                                                (if (fx>= (gx#stx-length
                                                           _hd70187398_)
                                                          '0)
                                                    (let ((_g9887_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd70187398_
                            '0)))
              (begin
                (let ((_g9888_ (values-count _g9887_)))
                  (if (not (fx= _g9888_ 2))
                      (error "Context expects 2 values" _g9888_)))
                (let ((_target70207403_ (values-ref _g9887_ 0))
                      (_tl70227405_ (values-ref _g9887_ 1)))
                  (if (gx#stx-null? _tl70227405_)
                      (letrec ((_loop70237408_
                                (lambda (_hd70217411_ _arg70277413_)
                                  (if (gx#stx-pair? _hd70217411_)
                                      (let ((_e70247416_
                                             (gx#stx-e _hd70217411_)))
                                        (let ((_lp-hd70257419_
                                               (##car _e70247416_))
                                              (_lp-tl70267421_
                                               (##cdr _e70247416_)))
                                          (_loop70237408_
                                           _lp-tl70267421_
                                           (cons _lp-hd70257419_
                                                 _arg70277413_))))
                                      (let ((_arg70287424_
                                             (reverse _arg70277413_)))
                                        (if (gx#stx-pair? _tl70197400_)
                                            (let ((_e70297427_
                                                   (gx#stx-e _tl70197400_)))
                                              (let ((_hd70307430_
                                                     (##car _e70297427_))
                                                    (_tl70317432_
                                                     (##cdr _e70297427_)))
                                                (if (gx#stx-pair? _hd70307430_)
                                                    (let ((_e70327435_
                                                           (gx#stx-e
                                                            _hd70307430_)))
                                                      (let ((_hd70337438_
                                                             (##car _e70327435_))
                                                            (_tl70347440_
                                                             (##cdr _e70327435_)))
                                                        (if (gx#identifier?
                                                             _hd70337438_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd70337438_)
                        (if (gx#stx-pair? _tl70347440_)
                            (let ((_e70357443_ (gx#stx-e _tl70347440_)))
                              (let ((_hd70367446_ (##car _e70357443_))
                                    (_tl70377448_ (##cdr _e70357443_)))
                                (if (gx#stx-pair? _hd70367446_)
                                    (let ((_e70387451_
                                           (gx#stx-e _hd70367446_)))
                                      (let ((_hd70397454_ (##car _e70387451_))
                                            (_tl70407456_ (##cdr _e70387451_)))
                                        (if (gx#identifier? _hd70397454_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd70397454_)
                                                (if (gx#stx-pair? _tl70407456_)
                                                    (let ((_e70417459_
                                                           (gx#stx-e
                                                            _tl70407456_)))
                                                      (let ((_hd70427462_
                                                             (##car _e70417459_))
                                                            (_tl70437464_
                                                             (##cdr _e70417459_)))
                                                        (if (gx#stx-null?
                                                             _tl70437464_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl70377448_)
                        (if (fx>= (gx#stx-length _tl70377448_) '0)
                            (let ((_g9889_ (gx#syntax-split-splice
                                            _tl70377448_
                                            '0)))
                              (begin
                                (let ((_g9890_ (values-count _g9889_)))
                                  (if (not (fx= _g9890_ 2))
                                      (error "Context expects 2 values"
                                             _g9890_)))
                                (let ((_target70447467_ (values-ref _g9889_ 0))
                                      (_tl70467469_ (values-ref _g9889_ 1)))
                                  (if (gx#stx-null? _tl70467469_)
                                      (letrec ((_loop70477472_
                                                (lambda (_hd70457475_
                                                         _xarg70517477_)
                                                  (if (gx#stx-pair?
                                                       _hd70457475_)
                                                      (let ((_e70487480_
                                                             (gx#stx-e
                                                              _hd70457475_)))
                                                        (let ((_lp-hd70497483_
                                                               (##car _e70487480_))
                                                              (_lp-tl70507485_
                                                               (##cdr _e70487480_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd70497483_)
                                                              (let ((_e70537488_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd70497483_)))
                        (let ((_hd70547491_ (##car _e70537488_))
                              (_tl70557493_ (##cdr _e70537488_)))
                          (if (gx#identifier? _hd70547491_)
                              (if (gx#stx-eq? '%#ref _hd70547491_)
                                  (if (gx#stx-pair? _tl70557493_)
                                      (let ((_e70567496_
                                             (gx#stx-e _tl70557493_)))
                                        (let ((_hd70577499_
                                               (##car _e70567496_))
                                              (_tl70587501_
                                               (##cdr _e70567496_)))
                                          (if (gx#stx-null? _tl70587501_)
                                              (_loop70477472_
                                               _lp-tl70507485_
                                               (cons _hd70577499_
                                                     _xarg70517477_))
                                              (_g70107390_ _g70137393_))))
                                      (_g70107390_ _g70137393_))
                                  (_g70107390_ _g70137393_))
                              (_g70107390_ _g70137393_))))
                      (_g70107390_ _g70137393_))))
              (let ((_xarg70527504_ (reverse _xarg70517477_)))
                (if (gx#stx-null? _tl70317432_)
                    ((lambda (_L7507_ _L7508_ _L7509_)
                       (gxc#compile-e
                        (cons (gx#datum->syntax__0 '#f '%#ref)
                              (cons _L7508_ '()))))
                     _xarg70527504_
                     _hd70427462_
                     _arg70287424_)
                    (_g70107390_ _g70137393_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop70477472_ _target70447467_ '()))
                                      (_g70107390_ _g70137393_)))))
                            (_g70107390_ _g70137393_))
                        (_g70107390_ _g70137393_))
                    (_g70107390_ _g70137393_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g70107390_ _g70137393_))
                                                (_g70107390_ _g70137393_))
                                            (_g70107390_ _g70137393_))))
                                    (_g70107390_ _g70137393_))))
                            (_g70107390_ _g70137393_))
                        (_g70107390_ _g70137393_))
                    (_g70107390_ _g70137393_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g70107390_
                                                     _g70137393_))))
                                            (_g70107390_ _g70137393_)))))))
                        (_loop70237408_ _target70207403_ '()))
                      (_g70107390_ _g70137393_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g70107390_ _g70137393_))
                                                (_g70107390_ _g70137393_))))
                                        (_g70107390_ _g70137393_)))))
                             (_g70097538_ _form7008_)))))))))
            (let ((_generate16862_
                   (lambda (_args6993_ _arglen6994_ _hd6995_ _body6996_)
                     (let ((_len6998_ (gx#stx-length _hd6995_)))
                       (let ((_condition7000_
                              (if (gx#stx-list? _hd6995_)
                                  (cons 'fx=
                                        (cons _arglen6994_
                                              (cons _len6998_ '())))
                                  (if (> _len6998_ '0)
                                      (cons 'fx>=
                                            (cons _arglen6994_
                                                  (cons _len6998_ '())))
                                      '#t))))
                         (let ((_dispatch7002_
                                (if (_dispatch-case?6860_ _hd6995_ _body6996_)
                                    (_dispatch-case-e6861_ _hd6995_ _body6996_)
                                    (cons 'lambda
                                          (cons (gxc#generate-runtime-lambda-head
                                                 _hd6995_)
                                                (cons (gxc#compile-e
                                                       _body6996_)
                                                      '()))))))
                           (let ()
                             (cons _condition7000_
                                   (cons (cons 'apply
                                               (cons _dispatch7002_
                                                     (cons _args6993_ '())))
                                         '())))))))))
              (let ((_g68646892_
                     (lambda (_g68656889_)
                       (gx#raise-syntax-error '#f '"Bad syntax" _g68656889_))))
                (let ((_g68636990_
                       (lambda (_g68656895_)
                         (if (gx#stx-pair? _g68656895_)
                             (let ((_e68686897_ (gx#stx-e _g68656895_)))
                               (let ((_hd68696900_ (##car _e68686897_))
                                     (_tl68706902_ (##cdr _e68686897_)))
                                 (if (gx#stx-pair/null? _tl68706902_)
                                     (if (fx>= (gx#stx-length _tl68706902_) '0)
                                         (let ((_g9883_ (gx#syntax-split-splice
                                                         _tl68706902_
                                                         '0)))
                                           (begin
                                             (let ((_g9884_ (values-count
                                                             _g9883_)))
                                               (if (not (fx= _g9884_ 2))
                                                   (error "Context expects 2 values"
                                                          _g9884_)))
                                             (let ((_target68716905_
                                                    (values-ref _g9883_ 0))
                                                   (_tl68736907_
                                                    (values-ref _g9883_ 1)))
                                               (if (gx#stx-null? _tl68736907_)
                                                   (letrec ((_loop68746910_
                                                             (lambda (_hd68726913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body68786915_
                              _hd68796917_)
                       (if (gx#stx-pair? _hd68726913_)
                           (let ((_e68756920_ (gx#stx-e _hd68726913_)))
                             (let ((_lp-hd68766923_ (##car _e68756920_))
                                   (_lp-tl68776925_ (##cdr _e68756920_)))
                               (if (gx#stx-pair? _lp-hd68766923_)
                                   (let ((_e68826928_
                                          (gx#stx-e _lp-hd68766923_)))
                                     (let ((_hd68836931_ (##car _e68826928_))
                                           (_tl68846933_ (##cdr _e68826928_)))
                                       (if (gx#stx-pair? _tl68846933_)
                                           (let ((_e68856936_
                                                  (gx#stx-e _tl68846933_)))
                                             (let ((_hd68866939_
                                                    (##car _e68856936_))
                                                   (_tl68876941_
                                                    (##cdr _e68856936_)))
                                               (if (gx#stx-null? _tl68876941_)
                                                   (_loop68746910_
                                                    _lp-tl68776925_
                                                    (cons _hd68866939_
                                                          _body68786915_)
                                                    (cons _hd68836931_
                                                          _hd68796917_))
                                                   (_g68646892_ _g68656895_))))
                                           (_g68646892_ _g68656895_))))
                                   (_g68646892_ _g68656895_))))
                           (let ((_body68806944_ (reverse _body68786915_))
                                 (_hd68816946_ (reverse _hd68796917_)))
                             ((lambda (_L6949_ _L6950_)
                                (let ((_args6966_
                                       (gxc#generate-runtime-temporary__0))
                                      (_arglen6967_
                                       (gxc#generate-runtime-temporary__0)))
                                  (cons 'lambda
                                        (cons _args6966_
                                              (cons (cons 'let
                                                          (cons (cons (cons _arglen6967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons 'length (cons _args6966_ '()))
                                          '()))
                              '())
                        (cons (cons 'cond
                                    (foldr1 cons
                                            (cons (cons 'else
                                                        (cons (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons '"No clause matching arguments"
                                  (cons _args6966_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (map (lambda (_g69686971_
                                                          _g69696973_)
                                                   (_generate16862_
                                                    _args6966_
                                                    _arglen6967_
                                                    _g69686971_
                                                    _g69696973_))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g69756978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g69766980_)
                     (cons _g69756978_ _g69766980_))
                   '()
                   _L6950_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g69826985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g69836987_)
                     (cons _g69826985_ _g69836987_))
                   '()
                   _L6949_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              _body68806944_
                              _hd68816946_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop68746910_
                                                      _target68716905_
                                                      '()
                                                      '()))
                                                   (_g68646892_
                                                    _g68656895_)))))
                                         (_g68646892_ _g68656895_))
                                     (_g68646892_ _g68656895_))))
                             (_g68646892_ _g68656895_)))))
                  (_g68636990_ _stx6857_)))))))))
  (begin
    (define gxc#generate-runtime-let-values%__opt-lambda6537
      (lambda (_stx6539_ _compiled-body?6540_)
        (let ((_generate-simple6542_
               (lambda (_hd6844_ _body6845_)
                 (gxc#generate-runtime-simple-let
                  'let
                  _hd6844_
                  _body6845_
                  _compiled-body?6540_))))
          (let ((_generate-values-post6544_
                 (lambda (_post6616_ _body6617_)
                   ((letrec ((_lp6619_
                              (lambda (_rest6621_ _body6622_)
                                (let ((_rest66236631_ _rest6621_))
                                  (let ((_E66266635_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest66236631_))))
                                    (let ((_else66256639_
                                           (lambda () _body6622_)))
                                      (let ((_K66276645_
                                             (lambda (_rest6642_ _bind6643_)
                                               (_lp6619_
                                                _rest6642_
                                                (cons 'let
                                                      (cons _bind6643_
                                                            (cons _body6622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _rest66236631_)
                                            (let ((_hd66286648_
                                                   (##car _rest66236631_))
                                                  (_tl66296650_
                                                   (##cdr _rest66236631_)))
                                              (let ((_bind6653_ _hd66286648_))
                                                (let ((_rest6655_
                                                       _tl66296650_))
                                                  (_K66276645_
                                                   _rest6655_
                                                   _bind6653_))))
                                            (_else66256639_)))))))))
                      _lp6619_)
                    _post6616_
                    _body6617_))))
            (let ((_generate-values-check6545_
                   (lambda (_check6613_ _body6614_)
                     (cons 'begin
                           (foldr1 cons
                                   (cons _body6614_ '())
                                   (reverse _check6613_))))))
              (let ((_generate-values6543_
                     (lambda (_hd6657_ _body6658_)
                       ((letrec ((_lp6660_
                                  (lambda (_rest6662_
                                           _bind6663_
                                           _check6664_
                                           _post6665_)
                                    (let ((_g66686679_
                                           (lambda (_g66696676_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g66696676_))))
                                      (let ((_g66676693_
                                             (lambda (_g66696682_)
                                               ((lambda ()
                                                  (let ((_body6686_
                                                         (if _compiled-body?6540_
                                                             _body6658_
                                                             (gxc#compile-e
                                                              _body6658_))))
                                                    (let ((_body6688_
                                                           (_generate-values-post6544_
                                                            _post6665_
                                                            _body6686_)))
                                                      (let ((_body6690_
                                                             (_generate-values-check6545_
                                                              _check6664_
                                                              _body6688_)))
                                                        (let ()
                                                          (cons 'let
                                                                (cons (reverse _bind6663_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body6690_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g66666841_
                                               (lambda (_g66696696_)
                                                 (if (gx#stx-pair? _g66696696_)
                                                     (let ((_e66726698_
                                                            (gx#stx-e
                                                             _g66696696_)))
                                                       (let ((_hd66736701_
                                                              (##car _e66726698_))
                                                             (_tl66746703_
                                                              (##cdr _e66726698_)))
                                                         ((lambda (_L6706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L6707_)
                    (let ((_g67226747_
                           (lambda (_g67236744_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g67236744_))))
                      (let ((_g67216791_
                             (lambda (_g67236750_)
                               (if (gx#stx-pair? _g67236750_)
                                   (let ((_e67376752_ (gx#stx-e _g67236750_)))
                                     (let ((_hd67386755_ (##car _e67376752_))
                                           (_tl67396757_ (##cdr _e67376752_)))
                                       (if (gx#stx-pair? _tl67396757_)
                                           (let ((_e67406760_
                                                  (gx#stx-e _tl67396757_)))
                                             (let ((_hd67416763_
                                                    (##car _e67406760_))
                                                   (_tl67426765_
                                                    (##cdr _e67406760_)))
                                               (if (gx#stx-null? _tl67426765_)
                                                   ((lambda (_L6768_ _L6769_)
                                                      (let ((_vals6782_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr6784_
                                                               (gxc#compile-e
                                                                _L6768_)))
                                                          (let ((_check-values6786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals6782_
                          _L6769_)))
                    (let ((_refs6788_
                           (gxc#generate-runtime-let-values-bind
                            _vals6782_
                            _L6769_)))
                      (let ()
                        (_lp6660_
                         _L6706_
                         (cons (cons _vals6782_ (cons _expr6784_ '()))
                               _bind6663_)
                         (cons _check-values6786_ _check6664_)
                         (cons _refs6788_ _post6665_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd67416763_
                                                    _hd67386755_)
                                                   (_g67226747_ _g67236750_))))
                                           (_g67226747_ _g67236750_))))
                                   (_g67226747_ _g67236750_)))))
                        (let ((_g67206838_
                               (lambda (_g67236794_)
                                 (if (gx#stx-pair? _g67236794_)
                                     (let ((_e67266796_
                                            (gx#stx-e _g67236794_)))
                                       (let ((_hd67276799_ (##car _e67266796_))
                                             (_tl67286801_
                                              (##cdr _e67266796_)))
                                         (if (gx#stx-pair? _hd67276799_)
                                             (let ((_e67296804_
                                                    (gx#stx-e _hd67276799_)))
                                               (let ((_hd67306807_
                                                      (##car _e67296804_))
                                                     (_tl67316809_
                                                      (##cdr _e67296804_)))
                                                 (if (gx#stx-null?
                                                      _tl67316809_)
                                                     (if (gx#stx-pair?
                                                          _tl67286801_)
                                                         (let ((_e67326812_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl67286801_)))
                   (let ((_hd67336815_ (##car _e67326812_))
                         (_tl67346817_ (##cdr _e67326812_)))
                     (if (gx#stx-null? _tl67346817_)
                         ((lambda (_L6820_ _L6821_)
                            (let ((_eid6835_
                                   (gxc#generate-runtime-binding-id* _L6821_))
                                  (_expr6836_ (gxc#compile-e _L6820_)))
                              (_lp6660_
                               _L6706_
                               (cons (cons _eid6835_ (cons _expr6836_ '()))
                                     _bind6663_)
                               _check6664_
                               _post6665_)))
                          _hd67336815_
                          _hd67306807_)
                         (_g67216791_ _g67236794_))))
                 (_g67216791_ _g67236794_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g67216791_
                                                      _g67236794_))))
                                             (_g67216791_ _g67236794_))))
                                     (_g67216791_ _g67236794_)))))
                          (_g67206838_ _L6707_)))))
                  _tl66746703_
                  _hd66736701_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g66676693_
                                                      _g66696696_)))))
                                          (_g66666841_ _rest6662_)))))))
                          _lp6660_)
                        _hd6657_
                        '()
                        '()
                        '()))))
                (let ((_g65476564_
                       (lambda (_g65486561_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g65486561_))))
                  (let ((_g65466610_
                         (lambda (_g65486567_)
                           (if (gx#stx-pair? _g65486567_)
                               (let ((_e65516569_ (gx#stx-e _g65486567_)))
                                 (let ((_hd65526572_ (##car _e65516569_))
                                       (_tl65536574_ (##cdr _e65516569_)))
                                   (if (gx#stx-pair? _tl65536574_)
                                       (let ((_e65546577_
                                              (gx#stx-e _tl65536574_)))
                                         (let ((_hd65556580_
                                                (##car _e65546577_))
                                               (_tl65566582_
                                                (##cdr _e65546577_)))
                                           (if (gx#stx-pair? _tl65566582_)
                                               (let ((_e65576585_
                                                      (gx#stx-e _tl65566582_)))
                                                 (let ((_hd65586588_
                                                        (##car _e65576585_))
                                                       (_tl65596590_
                                                        (##cdr _e65576585_)))
                                                   (if (gx#stx-null?
                                                        _tl65596590_)
                                                       ((lambda (_L6593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6594_)
                  (if (gxc#generate-runtime-simple-let? _L6594_)
                      (_generate-simple6542_ _L6594_ _L6593_)
                      (_generate-values6543_ _L6594_ _L6593_)))
                _hd65586588_
                _hd65556580_)
               (_g65476564_ _g65486567_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g65476564_ _g65486567_))))
                                       (_g65476564_ _g65486567_))))
                               (_g65476564_ _g65486567_)))))
                    (_g65466610_ _stx6539_)))))))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx6850_)
          (let ((_compiled-body?6852_ '#f))
            (gxc#generate-runtime-let-values%__opt-lambda6537
             _stx6850_
             _compiled-body?6852_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g9900_
          (let ((_g9899_ (length _g9900_)))
            (cond ((fx= _g9899_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g9900_))
                  ((fx= _g9899_ 2)
                   (apply gxc#generate-runtime-let-values%__opt-lambda6537
                          _g9900_))
                  (else (error "No clause matching arguments" _g9900_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals6438_ _hd6439_)
      ((letrec ((_lp6441_
                 (lambda (_rest6443_ _k6444_ _r6445_)
                   (let ((_g64506466_
                          (lambda (_g64516463_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g64516463_))))
                     (let ((_g64496473_
                            (lambda (_g64516469_)
                              ((lambda () (reverse _r6445_))))))
                       (let ((_g64486489_
                              (lambda (_g64516476_)
                                ((lambda (_L6478_)
                                   (if (gx#identifier? _L6478_)
                                       (foldl1 cons
                                               (cons (cons (gxc#generate-runtime-binding-id
                                                            _L6478_)
                                                           (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _vals6438_ (cons _k6444_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               _r6445_)
                                       (_g64496473_ _g64516476_)))
                                 _g64516476_))))
                         (let ((_g64476513_
                                (lambda (_g64516492_)
                                  (if (gx#stx-pair? _g64516492_)
                                      (let ((_e64586494_
                                             (gx#stx-e _g64516492_)))
                                        (let ((_hd64596497_
                                               (##car _e64586494_))
                                              (_tl64606499_
                                               (##cdr _e64586494_)))
                                          ((lambda (_L6502_ _L6503_)
                                             (_lp6441_
                                              _L6502_
                                              (fx+ _k6444_ '1)
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L6503_)
                                                          (cons (cons 'values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals6438_ (cons _k6444_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _r6445_)))
                                           _tl64606499_
                                           _hd64596497_)))
                                      (_g64486489_ _g64516492_)))))
                           (let ((_g64466535_
                                  (lambda (_g64516516_)
                                    (if (gx#stx-pair? _g64516516_)
                                        (let ((_e64536518_
                                               (gx#stx-e _g64516516_)))
                                          (let ((_hd64546521_
                                                 (##car _e64536518_))
                                                (_tl64556523_
                                                 (##cdr _e64536518_)))
                                            (if (gx#stx-datum? _hd64546521_)
                                                (if (equal? (gx#stx-e
                                                             _hd64546521_)
                                                            '#f)
                                                    ((lambda (_L6526_)
                                                       (_lp6441_
                                                        _L6526_
                                                        (fx+ _k6444_ '1)
                                                        _r6445_))
                                                     _tl64556523_)
                                                    (_g64476513_ _g64516516_))
                                                (_g64476513_ _g64516516_))))
                                        (_g64476513_ _g64516516_)))))
                             (_g64466535_ _rest6443_)))))))))
         _lp6441_)
       _hd6439_
       '0
       '())))
  (begin
    (define gxc#generate-runtime-letrec-values%__opt-lambda6116
      (lambda (_stx6118_ _compiled-body?6119_)
        (let ((_generate-simple6121_
               (lambda (_hd6425_ _body6426_)
                 (gxc#generate-runtime-simple-let
                  'letrec
                  _hd6425_
                  _body6426_
                  _compiled-body?6119_))))
          (let ((_generate-values-check6123_
                 (lambda (_check6199_ _body6200_)
                   (cons 'begin
                         (foldr1 cons
                                 (cons _body6200_ '())
                                 (reverse _check6199_))))))
            (let ((_generate-values-post6124_
                   (lambda (_post6192_ _body6193_)
                     (cons 'begin
                           (foldr1 cons
                                   (cons _body6193_ '())
                                   (map (lambda (_g61946196_)
                                          (cons 'set! _g61946196_))
                                        (reverse _post6192_)))))))
              (let ((_generate-values6122_
                     (lambda (_hd6202_ _body6203_)
                       ((letrec ((_lp6205_
                                  (lambda (_rest6207_
                                           _bind6208_
                                           _check6209_
                                           _post6210_)
                                    (let ((_g62136224_
                                           (lambda (_g62146221_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g62146221_))))
                                      (let ((_g62126238_
                                             (lambda (_g62146227_)
                                               ((lambda ()
                                                  (let ((_body6231_
                                                         (if _compiled-body?6119_
                                                             _body6203_
                                                             (gxc#compile-e
                                                              _body6203_))))
                                                    (let ((_body6233_
                                                           (_generate-values-post6124_
                                                            _post6210_
                                                            _body6231_)))
                                                      (let ((_body6235_
                                                             (_generate-values-check6123_
                                                              _check6209_
                                                              _body6233_)))
                                                        (let ()
                                                          (cons 'letrec
                                                                (cons (reverse _bind6208_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body6235_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g62116422_
                                               (lambda (_g62146241_)
                                                 (if (gx#stx-pair? _g62146241_)
                                                     (let ((_e62176243_
                                                            (gx#stx-e
                                                             _g62146241_)))
                                                       (let ((_hd62186246_
                                                              (##car _e62176243_))
                                                             (_tl62196248_
                                                              (##cdr _e62176243_)))
                                                         ((lambda (_L6251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L6252_)
                    (let ((_g62676292_
                           (lambda (_g62686289_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g62686289_))))
                      (let ((_g62666372_
                             (lambda (_g62686295_)
                               (if (gx#stx-pair? _g62686295_)
                                   (let ((_e62826297_ (gx#stx-e _g62686295_)))
                                     (let ((_hd62836300_ (##car _e62826297_))
                                           (_tl62846302_ (##cdr _e62826297_)))
                                       (if (gx#stx-pair? _tl62846302_)
                                           (let ((_e62856305_
                                                  (gx#stx-e _tl62846302_)))
                                             (let ((_hd62866308_
                                                    (##car _e62856305_))
                                                   (_tl62876310_
                                                    (##cdr _e62856305_)))
                                               (if (gx#stx-null? _tl62876310_)
                                                   ((lambda (_L6313_ _L6314_)
                                                      (let ((_vals6327_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr6329_
                                                               (gxc#compile-e
                                                                _L6313_)))
                                                          (let ((_check-values6331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals6327_
                          _L6314_)))
                    (let ((_refs6333_
                           (gxc#generate-runtime-let-values-bind
                            _vals6327_
                            _L6314_)))
                      (let ()
                        (_lp6205_
                         _L6251_
                         (foldl1 cons
                                 (cons (cons _vals6327_ (cons _expr6329_ '()))
                                       _bind6208_)
                                 (map (lambda (_e63356337_)
                                        (let ((_g63396348_ _e63356337_))
                                          (let ((_E63416352_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _g63396348_))))
                                            (let ((_K63426357_
                                                   (lambda (_eid6355_)
                                                     (cons _eid6355_
                                                           (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _g63396348_)
                                                  (let ((_hd63436360_
                                                         (##car _g63396348_))
                                                        (_tl63446362_
                                                         (##cdr _g63396348_)))
                                                    (let ((_eid6365_
                                                           _hd63436360_))
                                                      (if (##pair? _tl63446362_)
                                                          (let ((_hd63456367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _tl63446362_))
                        (_tl63466369_ (##cdr _tl63446362_)))
                    (if (##null? _tl63466369_)
                        (_K63426357_ _eid6365_)
                        (_E63416352_)))
                  (_E63416352_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E63416352_))))))
                                      _refs6333_))
                         (cons _check-values6331_ _check6209_)
                         (foldl1 cons _refs6333_ _post6210_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd62866308_
                                                    _hd62836300_)
                                                   (_g62676292_ _g62686295_))))
                                           (_g62676292_ _g62686295_))))
                                   (_g62676292_ _g62686295_)))))
                        (let ((_g62656419_
                               (lambda (_g62686375_)
                                 (if (gx#stx-pair? _g62686375_)
                                     (let ((_e62716377_
                                            (gx#stx-e _g62686375_)))
                                       (let ((_hd62726380_ (##car _e62716377_))
                                             (_tl62736382_
                                              (##cdr _e62716377_)))
                                         (if (gx#stx-pair? _hd62726380_)
                                             (let ((_e62746385_
                                                    (gx#stx-e _hd62726380_)))
                                               (let ((_hd62756388_
                                                      (##car _e62746385_))
                                                     (_tl62766390_
                                                      (##cdr _e62746385_)))
                                                 (if (gx#stx-null?
                                                      _tl62766390_)
                                                     (if (gx#stx-pair?
                                                          _tl62736382_)
                                                         (let ((_e62776393_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl62736382_)))
                   (let ((_hd62786396_ (##car _e62776393_))
                         (_tl62796398_ (##cdr _e62776393_)))
                     (if (gx#stx-null? _tl62796398_)
                         ((lambda (_L6401_ _L6402_)
                            (let ((_eid6416_
                                   (gxc#generate-runtime-binding-id* _L6402_))
                                  (_expr6417_ (gxc#compile-e _L6401_)))
                              (_lp6205_
                               _L6251_
                               (cons (cons _eid6416_ (cons _expr6417_ '()))
                                     _bind6208_)
                               _check6209_
                               _post6210_)))
                          _hd62786396_
                          _hd62756388_)
                         (_g62666372_ _g62686375_))))
                 (_g62666372_ _g62686375_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g62666372_
                                                      _g62686375_))))
                                             (_g62666372_ _g62686375_))))
                                     (_g62666372_ _g62686375_)))))
                          (_g62656419_ _L6252_)))))
                  _tl62196248_
                  _hd62186246_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g62126238_
                                                      _g62146241_)))))
                                          (_g62116422_ _rest6207_)))))))
                          _lp6205_)
                        _hd6202_
                        '()
                        '()
                        '()))))
                (let ((_g61266143_
                       (lambda (_g61276140_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g61276140_))))
                  (let ((_g61256189_
                         (lambda (_g61276146_)
                           (if (gx#stx-pair? _g61276146_)
                               (let ((_e61306148_ (gx#stx-e _g61276146_)))
                                 (let ((_hd61316151_ (##car _e61306148_))
                                       (_tl61326153_ (##cdr _e61306148_)))
                                   (if (gx#stx-pair? _tl61326153_)
                                       (let ((_e61336156_
                                              (gx#stx-e _tl61326153_)))
                                         (let ((_hd61346159_
                                                (##car _e61336156_))
                                               (_tl61356161_
                                                (##cdr _e61336156_)))
                                           (if (gx#stx-pair? _tl61356161_)
                                               (let ((_e61366164_
                                                      (gx#stx-e _tl61356161_)))
                                                 (let ((_hd61376167_
                                                        (##car _e61366164_))
                                                       (_tl61386169_
                                                        (##cdr _e61366164_)))
                                                   (if (gx#stx-null?
                                                        _tl61386169_)
                                                       ((lambda (_L6172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6173_)
                  (if (gxc#generate-runtime-simple-let? _L6173_)
                      (_generate-simple6121_ _L6173_ _L6172_)
                      (_generate-values6122_ _L6173_ _L6172_)))
                _hd61376167_
                _hd61346159_)
               (_g61266143_ _g61276146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g61266143_ _g61276146_))))
                                       (_g61266143_ _g61276146_))))
                               (_g61266143_ _g61276146_)))))
                    (_g61256189_ _stx6118_)))))))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx6431_)
          (let ((_compiled-body?6433_ '#f))
            (gxc#generate-runtime-letrec-values%__opt-lambda6116
             _stx6431_
             _compiled-body?6433_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g9902_
          (let ((_g9901_ (length _g9902_)))
            (cond ((fx= _g9901_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g9902_))
                  ((fx= _g9901_ 2)
                   (apply gxc#generate-runtime-letrec-values%__opt-lambda6116
                          _g9902_))
                  (else (error "No clause matching arguments" _g9902_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx5237_)
      (let ((_collect-closures5240_
             (lambda (_forms6058_)
               (map (lambda (_e60596061_)
                      (let ((_g60636072_ _e60596061_))
                        (let ((_E60656076_
                               (lambda ()
                                 (error '"No clause matching" _g60636072_))))
                          (let ((_K60666081_
                                 (lambda (_expr6079_)
                                   (gxc#collect-expression-refs _expr6079_))))
                            (if (##pair? _g60636072_)
                                (let ((_hd60676084_ (##car _g60636072_))
                                      (_tl60686086_ (##cdr _g60636072_)))
                                  (if (##pair? _tl60686086_)
                                      (let ((_hd60696089_ (##car _tl60686086_))
                                            (_tl60706091_
                                             (##cdr _tl60686086_)))
                                        (let ((_expr6094_ _hd60696089_))
                                          (if (##null? _tl60706091_)
                                              (_K60666081_ _expr6094_)
                                              (_E60656076_))))
                                      (_E60656076_)))
                                (_E60656076_))))))
                    _forms6058_))))
        (let ((_collect-bindings5241_
               (lambda (_forms5982_)
                 (map (lambda (_e59835985_)
                        (let ((_g59875996_ _e59835985_))
                          (let ((_E59896000_
                                 (lambda ()
                                   (error '"No clause matching" _g59875996_))))
                            (let ((_K59906043_
                                   (lambda (_bind6003_)
                                     ((letrec ((_lp6005_
                                                (lambda (_rest6007_ _r6008_)
                                                  (let ((_rest60096017_
                                                         _rest6007_))
                                                    (let ((_E60126021_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest60096017_))))
              (let ((_else60116025_
                     (lambda ()
                       (if (gx#identifier? _rest6007_)
                           (cons _rest6007_ _r6008_)
                           _r6008_))))
                (let ((_K60136031_
                       (lambda (_rest6028_ _id6029_)
                         (if (gx#identifier? _id6029_)
                             (_lp6005_
                              _rest6028_
                              (cons (##structure-ref
                                     (gx#resolve-identifier__0 _id6029_)
                                     '1
                                     gx#binding::t
                                     '#f)
                                    _r6008_))
                             (_lp6005_ _rest6028_ _r6008_)))))
                  (if (##pair? _rest60096017_)
                      (let ((_hd60146034_ (##car _rest60096017_))
                            (_tl60156036_ (##cdr _rest60096017_)))
                        (let ((_id6039_ _hd60146034_))
                          (let ((_rest6041_ _tl60156036_))
                            (_K60136031_ _rest6041_ _id6039_))))
                      (_else60116025_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp6005_)
                                      _bind6003_
                                      '()))))
                              (if (##pair? _g59875996_)
                                  (let ((_hd59916046_ (##car _g59875996_))
                                        (_tl59926048_ (##cdr _g59875996_)))
                                    (let ((_bind6051_ _hd59916046_))
                                      (if (##pair? _tl59926048_)
                                          (let ((_hd59936053_
                                                 (##car _tl59926048_))
                                                (_tl59946055_
                                                 (##cdr _tl59926048_)))
                                            (if (##null? _tl59946055_)
                                                (_K59906043_ _bind6051_)
                                                (_E59896000_)))
                                          (_E59896000_))))
                                  (_E59896000_))))))
                      _forms5982_))))
          (let ((_closure-reference?5245_
                 (lambda (_closure5534_ _bindings5535_)
                   (ormap1 (lambda (_g55365538_)
                             (table-ref _closure5534_ _g55365538_ '#f))
                           _bindings5535_))))
            (let ((_is-effect-expr?5247_
                   (lambda (_expr5445_)
                     (let ((_g54475457_
                            (lambda (_g54485454_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g54485454_))))
                       (let ((_g54465480_
                              (lambda (_g54485460_)
                                (if (gx#stx-pair? _g54485460_)
                                    (let ((_e54505462_ (gx#stx-e _g54485460_)))
                                      (let ((_hd54515465_ (##car _e54505462_))
                                            (_tl54525467_ (##cdr _e54505462_)))
                                        ((lambda (_L5470_)
                                           (not (memq (gx#stx-e _L5470_)
                                                      '(%#lambda
                                                        %#case-lambda
                                                        %#quote
                                                        %#quote-syntax
                                                        %#ref))))
                                         _hd54515465_)))
                                    (_g54475457_ _g54485460_)))))
                         (_g54465480_ _expr5445_))))))
              (let ((_is-lambda-expr?5248_
                     (lambda (_expr5407_)
                       (let ((_g54095419_
                              (lambda (_g54105416_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g54105416_))))
                         (let ((_g54085442_
                                (lambda (_g54105422_)
                                  (if (gx#stx-pair? _g54105422_)
                                      (let ((_e54125424_
                                             (gx#stx-e _g54105422_)))
                                        (let ((_hd54135427_
                                               (##car _e54125424_))
                                              (_tl54145429_
                                               (##cdr _e54125424_)))
                                          ((lambda (_L5432_)
                                             (memq (gx#stx-e _L5432_)
                                                   '(%#lambda %#case-lambda)))
                                           _hd54135427_)))
                                      (_g54095419_ _g54105422_)))))
                           (_g54085442_ _expr5407_))))))
                (let ((_lift-rec5244_
                       (lambda (_forms5541_)
                         ((letrec ((_lp5543_
                                    (lambda (_rest5545_
                                             _pre5546_
                                             _bind5547_
                                             _init5548_)
                                      (let ((_rest55495557_ _rest5545_))
                                        (let ((_E55525561_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _rest55495557_))))
                                          (let ((_else55515565_
                                                 (lambda ()
                                                   (values (reverse _pre5546_)
                                                           (reverse _bind5547_)
                                                           (reverse _init5548_)))))
                                            (let ((_K55535756_
                                                   (lambda (_rest5568_
                                                            _bind-hd5569_)
                                                     (let ((_g55735608_
                                                            (lambda (_g55745605_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g55745605_))))
                                                       (let ((_g55725665_
                                                              (lambda (_g55745611_)
                                                                (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g55745611_)
                            (let ((_e55985613_ (gx#stx-e _g55745611_)))
                              (let ((_hd55995616_ (##car _e55985613_))
                                    (_tl56005618_ (##cdr _e55985613_)))
                                (if (gx#stx-pair? _tl56005618_)
                                    (let ((_e56015621_
                                           (gx#stx-e _tl56005618_)))
                                      (let ((_hd56025624_ (##car _e56015621_))
                                            (_tl56035626_ (##cdr _e56015621_)))
                                        (if (gx#stx-null? _tl56035626_)
                                            ((lambda (_L5629_ _L5630_)
                                               (let ((_vals5649_
                                                      (gxc#generate-runtime-temporary__0)))
                                                 (let ((_expr5651_
                                                        (gxc#compile-e
                                                         _L5629_)))
                                                   (let ((_check-values5653_
                                                          (gxc#generate-runtime-check-values
                                                           _vals5649_
                                                           _L5630_)))
                                                     (let ((_refs5655_
                                                            (gxc#generate-runtime-let-values-bind
                                                             _vals5649_
                                                             _L5630_)))
                                                       (let ()
                                                         (_lp5543_
                                                          _rest5568_
                                                          (foldl1 (lambda (_ref5658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _r5659_)
                            (cons (cons (car _ref5658_) (cons '#!void '()))
                                  _r5659_))
                          _pre5546_
                          _refs5655_)
                  _bind5547_
                  (cons (cons 'let
                              (cons (cons (cons _vals5649_
                                                (cons _expr5651_ '()))
                                          '())
                                    (cons _check-values5653_
                                          (cons (map (lambda (_g56605662_)
                                                       (cons 'set!
                                                             _g56605662_))
                                                     _refs5655_)
                                                '()))))
                        _init5548_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd56025624_
                                             _hd55995616_)
                                            (_g55735608_ _g55745611_))))
                                    (_g55735608_ _g55745611_))))
                            (_g55735608_ _g55745611_)))))
                 (let ((_g55715711_
                        (lambda (_g55745668_)
                          (if (gx#stx-pair? _g55745668_)
                              (let ((_e55875670_ (gx#stx-e _g55745668_)))
                                (let ((_hd55885673_ (##car _e55875670_))
                                      (_tl55895675_ (##cdr _e55875670_)))
                                  (if (gx#stx-pair? _hd55885673_)
                                      (let ((_e55905678_
                                             (gx#stx-e _hd55885673_)))
                                        (let ((_hd55915681_
                                               (##car _e55905678_))
                                              (_tl55925683_
                                               (##cdr _e55905678_)))
                                          (if (gx#stx-null? _tl55925683_)
                                              (if (gx#stx-pair? _tl55895675_)
                                                  (let ((_e55935686_
                                                         (gx#stx-e
                                                          _tl55895675_)))
                                                    (let ((_hd55945689_
                                                           (##car _e55935686_))
                                                          (_tl55955691_
                                                           (##cdr _e55935686_)))
                                                      (if (gx#stx-null?
                                                           _tl55955691_)
                                                          ((lambda (_L5694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5695_)
                     (let ((_eid5709_
                            (gxc#generate-runtime-binding-id _L5695_)))
                       (if (_is-lambda-expr?5248_ _L5694_)
                           (_lp5543_
                            _rest5568_
                            _pre5546_
                            (cons (cons _eid5709_
                                        (cons (gxc#compile-e _L5694_) '()))
                                  _bind5547_)
                            _init5548_)
                           (_lp5543_
                            _rest5568_
                            (cons (cons _eid5709_ (cons '#!void '()))
                                  _pre5546_)
                            _bind5547_
                            (cons (cons 'set!
                                        (cons _eid5709_
                                              (cons (gxc#compile-e _L5694_)
                                                    '())))
                                  _init5548_)))))
                   _hd55945689_
                   _hd55915681_)
                  (_g55725665_ _g55745668_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g55725665_ _g55745668_))
                                              (_g55725665_ _g55745668_))))
                                      (_g55725665_ _g55745668_))))
                              (_g55725665_ _g55745668_)))))
                   (let ((_g55705753_
                          (lambda (_g55745714_)
                            (if (gx#stx-pair? _g55745714_)
                                (let ((_e55765716_ (gx#stx-e _g55745714_)))
                                  (let ((_hd55775719_ (##car _e55765716_))
                                        (_tl55785721_ (##cdr _e55765716_)))
                                    (if (gx#stx-pair? _hd55775719_)
                                        (let ((_e55795724_
                                               (gx#stx-e _hd55775719_)))
                                          (let ((_hd55805727_
                                                 (##car _e55795724_))
                                                (_tl55815729_
                                                 (##cdr _e55795724_)))
                                            (if (gx#stx-datum? _hd55805727_)
                                                (if (equal? (gx#stx-e
                                                             _hd55805727_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl55815729_)
                                                        (if (gx#stx-pair?
                                                             _tl55785721_)
                                                            (let ((_e55825732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl55785721_)))
                      (let ((_hd55835735_ (##car _e55825732_))
                            (_tl55845737_ (##cdr _e55825732_)))
                        (if (gx#stx-null? _tl55845737_)
                            ((lambda (_L5740_)
                               (_lp5543_
                                _rest5568_
                                _pre5546_
                                _bind5547_
                                (cons (gxc#compile-e _L5740_) _init5548_)))
                             _hd55835735_)
                            (_g55715711_ _g55745714_))))
                    (_g55715711_ _g55745714_))
                (_g55715711_ _g55745714_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g55715711_ _g55745714_))
                                                (_g55715711_ _g55745714_))))
                                        (_g55715711_ _g55745714_))))
                                (_g55715711_ _g55745714_)))))
                     (_g55705753_ _bind-hd5569_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _rest55495557_)
                                                  (let ((_hd55545759_
                                                         (##car _rest55495557_))
                                                        (_tl55555761_
                                                         (##cdr _rest55495557_)))
                                                    (let ((_bind-hd5764_
                                                           _hd55545759_))
                                                      (let ((_rest5766_
                                                             _tl55555761_))
                                                        (_K55535756_
                                                         _rest5766_
                                                         _bind-hd5764_))))
                                                  (_else55515565_)))))))))
                            _lp5543_)
                          _forms5541_
                          '()
                          '()
                          '()))))
                  (let ((_is-effect-bind?5246_
                         (lambda (_hd-bind5483_)
                           (let ((_g54855498_
                                  (lambda (_g54865495_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g54865495_))))
                             (let ((_g54845531_
                                    (lambda (_g54865501_)
                                      (if (gx#stx-pair? _g54865501_)
                                          (let ((_e54885503_
                                                 (gx#stx-e _g54865501_)))
                                            (let ((_hd54895506_
                                                   (##car _e54885503_))
                                                  (_tl54905508_
                                                   (##cdr _e54885503_)))
                                              (if (gx#stx-pair? _tl54905508_)
                                                  (let ((_e54915511_
                                                         (gx#stx-e
                                                          _tl54905508_)))
                                                    (let ((_hd54925514_
                                                           (##car _e54915511_))
                                                          (_tl54935516_
                                                           (##cdr _e54915511_)))
                                                      (if (gx#stx-null?
                                                           _tl54935516_)
                                                          ((lambda (_L5519_)
                                                             (_is-effect-expr?5247_
                                                              _L5519_))
                                                           _hd54925514_)
                                                          (_g54855498_
                                                           _g54865501_))))
                                                  (_g54855498_ _g54865501_))))
                                          (_g54855498_ _g54865501_)))))
                               (_g54845531_ _hd-bind5483_))))))
                    (let ((_lift-pre5242_
                           (lambda (_hd5875_ _bindings5876_ _closures5877_)
                             ((letrec ((_lp5879_
                                        (lambda (_rest-forms5881_
                                                 _rest-bindings5882_
                                                 _rest-closures5883_
                                                 _post-forms5884_
                                                 _post-bindings5885_
                                                 _post-closures5886_
                                                 _pre-forms5887_
                                                 _lifted?5888_)
                                          (let ((_rest-forms58895905_
                                                 _rest-forms5881_)
                                                (_rest-bindings58905907_
                                                 _rest-bindings5882_)
                                                (_rest-closures58915909_
                                                 _rest-closures5883_))
                                            (let ((_E58945913_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _rest-forms58895905_
                                                            _rest-bindings58905907_
                                                            _rest-closures58915909_))))
                                              (let ((_else58935917_
                                                     (lambda ()
                                                       (if _lifted?5888_
                                                           (_lp5879_
                                                            (reverse _post-forms5884_)
                                                            (reverse _post-bindings5885_)
                                                            (reverse _post-closures5886_)
                                                            '()
                                                            '()
                                                            '()
                                                            _pre-forms5887_
                                                            '#f)
                                                           (values (reverse _pre-forms5887_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _post-forms5884_)
                           (reverse _post-bindings5885_)
                           (reverse _post-closures5886_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_K58955970_
                                                       (lambda (_rest-forms5920_
                                                                _form5921_)
                                                         (let ((_K58965958_
                                                                (lambda (_rest-bindings5923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bindings5924_)
                          (let ((_K58975946_
                                 (lambda (_rest-closures5926_ _closure5927_)
                                   (if (let ((_$e5929_
                                              (_closure-reference?5245_
                                               _closure5927_
                                               _bindings5924_)))
                                         (if _$e5929_
                                             _$e5929_
                                             (let ((_$e5936_
                                                    (ormap1 (lambda (_g59315933_)
                                                              (_closure-reference?5245_
                                                               _closure5927_
                                                               _g59315933_))
                                                            _rest-bindings5923_)))
                                               (if _$e5936_
                                                   _$e5936_
                                                   (let ((_$e5943_
                                                          (ormap1 (lambda (_g59385940_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (_closure-reference?5245_
                             _closure5927_
                             _g59385940_))
                          _post-bindings5885_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e5943_
                                                         _$e5943_
                                                         (if (_is-effect-bind?5246_
                                                              _form5921_)
                                                             (find _is-effect-bind?5246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _post-forms5884_)
                     '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_lp5879_
                                        _rest-forms5920_
                                        _rest-bindings5923_
                                        _rest-closures5926_
                                        (cons _form5921_ _post-forms5884_)
                                        (cons _bindings5924_
                                              _post-bindings5885_)
                                        (cons _closure5927_
                                              _post-closures5886_)
                                        _pre-forms5887_
                                        _lifted?5888_)
                                       (_lp5879_
                                        _rest-forms5920_
                                        _rest-bindings5923_
                                        _rest-closures5926_
                                        _post-forms5884_
                                        _post-bindings5885_
                                        _post-closures5886_
                                        (cons _form5921_ _pre-forms5887_)
                                        '#t)))))
                            (if (##pair? _rest-closures58915909_)
                                (let ((_hd58985949_
                                       (##car _rest-closures58915909_))
                                      (_tl58995951_
                                       (##cdr _rest-closures58915909_)))
                                  (let ((_closure5954_ _hd58985949_))
                                    (let ((_rest-closures5956_ _tl58995951_))
                                      (_K58975946_
                                       _rest-closures5956_
                                       _closure5954_))))
                                (_else58935917_))))))
                   (if (##pair? _rest-bindings58905907_)
                       (let ((_hd59005961_ (##car _rest-bindings58905907_))
                             (_tl59015963_ (##cdr _rest-bindings58905907_)))
                         (let ((_bindings5966_ _hd59005961_))
                           (let ((_rest-bindings5968_ _tl59015963_))
                             (_K58965958_
                              _rest-bindings5968_
                              _bindings5966_))))
                       (_else58935917_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _rest-forms58895905_)
                                                      (let ((_hd59025973_
                                                             (##car _rest-forms58895905_))
                                                            (_tl59035975_
                                                             (##cdr _rest-forms58895905_)))
                                                        (let ((_form5978_
                                                               _hd59025973_))
                                                          (let ((_rest-forms5980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl59035975_))
                    (_K58955970_ _rest-forms5980_ _form5978_))))
              (_else58935917_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _lp5879_)
                              _hd5875_
                              _bindings5876_
                              _closures5877_
                              '()
                              '()
                              '()
                              '()
                              '#f))))
                      (let ((_lift-post5243_
                             (lambda (_hd5768_ _bindings5769_ _closures5770_)
                               ((letrec ((_lp5772_
                                          (lambda (_rest-forms5774_
                                                   _rest-bindings5775_
                                                   _rest-closures5776_
                                                   _pre-forms5777_
                                                   _pre-bindings5778_
                                                   _pre-closures5779_
                                                   _post-forms5780_
                                                   _lifted?5781_)
                                            (let ((_rest-forms57825798_
                                                   _rest-forms5774_)
                                                  (_rest-bindings57835800_
                                                   _rest-bindings5775_)
                                                  (_rest-closures57845802_
                                                   _rest-closures5776_))
                                              (let ((_E57875806_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _rest-forms57825798_
                                                              _rest-bindings57835800_
                                                              _rest-closures57845802_))))
                                                (let ((_else57865810_
                                                       (lambda ()
                                                         (if _lifted?5781_
                                                             (_lp5772_
                                                              (reverse _pre-forms5777_)
                                                              (reverse _pre-bindings5778_)
                                                              (reverse _pre-closures5779_)
                                                              '()
                                                              '()
                                                              '()
                                                              _post-forms5780_
                                                              '#f)
                                                             (values _post-forms5780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-forms5777_
                             _pre-bindings5778_
                             _pre-closures5779_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_K57885863_
                                                         (lambda (_rest-forms5813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _form5814_)
                   (let ((_K57895851_
                          (lambda (_rest-bindings5816_ _bindings5817_)
                            (let ((_K57905839_
                                   (lambda (_rest-closures5819_ _closure5820_)
                                     (if (let ((_$e5822_
                                                (_closure-reference?5245_
                                                 _closure5820_
                                                 _bindings5817_)))
                                           (if _$e5822_
                                               _$e5822_
                                               (let ((_$e5829_
                                                      (ormap1 (lambda (_g58245826_)
                                                                (_closure-reference?5245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g58245826_
                         _bindings5817_))
                      _rest-closures5819_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e5829_
                                                     _$e5829_
                                                     (let ((_$e5836_
                                                            (ormap1 (lambda (_g58315833_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_closure-reference?5245_
                               _g58315833_
                               _bindings5817_))
                            _pre-closures5779_)))
               (if _$e5836_
                   _$e5836_
                   (if (_is-effect-bind?5246_ _form5814_)
                       (find _is-effect-bind?5246_ _pre-forms5777_)
                       '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_lp5772_
                                          _rest-forms5813_
                                          _rest-bindings5816_
                                          _rest-closures5819_
                                          (cons _form5814_ _pre-forms5777_)
                                          (cons _bindings5817_
                                                _pre-bindings5778_)
                                          (cons _closure5820_
                                                _pre-closures5779_)
                                          _post-forms5780_
                                          _lifted?5781_)
                                         (_lp5772_
                                          _rest-forms5813_
                                          _rest-bindings5816_
                                          _rest-closures5819_
                                          _pre-forms5777_
                                          _pre-bindings5778_
                                          _pre-closures5779_
                                          (cons _form5814_ _post-forms5780_)
                                          '#t)))))
                              (if (##pair? _rest-closures57845802_)
                                  (let ((_hd57915842_
                                         (##car _rest-closures57845802_))
                                        (_tl57925844_
                                         (##cdr _rest-closures57845802_)))
                                    (let ((_closure5847_ _hd57915842_))
                                      (let ((_rest-closures5849_ _tl57925844_))
                                        (_K57905839_
                                         _rest-closures5849_
                                         _closure5847_))))
                                  (_else57865810_))))))
                     (if (##pair? _rest-bindings57835800_)
                         (let ((_hd57935854_ (##car _rest-bindings57835800_))
                               (_tl57945856_ (##cdr _rest-bindings57835800_)))
                           (let ((_bindings5859_ _hd57935854_))
                             (let ((_rest-bindings5861_ _tl57945856_))
                               (_K57895851_
                                _rest-bindings5861_
                                _bindings5859_))))
                         (_else57865810_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (##pair? _rest-forms57825798_)
                                                        (let ((_hd57955866_
                                                               (##car _rest-forms57825798_))
                                                              (_tl57965868_
                                                               (##cdr _rest-forms57825798_)))
                                                          (let ((_form5871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd57955866_))
                    (let ((_rest-forms5873_ _tl57965868_))
                      (_K57885863_ _rest-forms5873_ _form5871_))))
                (_else57865810_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp5772_)
                                (reverse _hd5768_)
                                (reverse _bindings5769_)
                                (reverse _closures5770_)
                                '()
                                '()
                                '()
                                '()
                                '#f))))
                        (let ((_linearize5239_
                               (lambda (_forms6096_)
                                 (let ((_closures6098_
                                        (_collect-closures5240_ _forms6096_)))
                                   (let ((_bindings6100_
                                          (_collect-bindings5241_
                                           _forms6096_)))
                                     (let ((_g9905_ (_lift-pre5242_
                                                     _forms6096_
                                                     _bindings6100_
                                                     _closures6098_)))
                                       (begin
                                         (let ((_g9906_ (values-count
                                                         _g9905_)))
                                           (if (not (fx= _g9906_ 4))
                                               (error "Context expects 4 values"
                                                      _g9906_)))
                                         (let ((_pre-bind6102_
                                                (values-ref _g9905_ 0))
                                               (_forms6103_
                                                (values-ref _g9905_ 1))
                                               (_bindings6104_
                                                (values-ref _g9905_ 2))
                                               (_closures6105_
                                                (values-ref _g9905_ 3)))
                                           (let ((_g9907_ (_lift-post5243_
                                                           _forms6103_
                                                           _bindings6104_
                                                           _closures6105_)))
                                             (begin
                                               (let ((_g9908_ (values-count
                                                               _g9907_)))
                                                 (if (not (fx= _g9908_ 4))
                                                     (error "Context expects 4 values"
                                                            _g9908_)))
                                               (let ((_post-bind6107_
                                                      (values-ref _g9907_ 0))
                                                     (_forms6108_
                                                      (values-ref _g9907_ 1))
                                                     (_bindings6109_
                                                      (values-ref _g9907_ 2))
                                                     (_closures6110_
                                                      (values-ref _g9907_ 3)))
                                                 (let ((_g9909_ (_lift-rec5244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _forms6108_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     (let ((_g9910_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g9909_)))
               (if (not (fx= _g9910_ 3))
                   (error "Context expects 3 values" _g9910_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_rec-pre6112_
                                                            (values-ref
                                                             _g9909_
                                                             0))
                                                           (_rec-bind6113_
                                                            (values-ref
                                                             _g9909_
                                                             1))
                                                           (_rec-init6114_
                                                            (values-ref
                                                             _g9909_
                                                             2)))
                                                       (let ()
                                                         (values _pre-bind6102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rec-pre6112_
                         _rec-bind6113_
                         _rec-init6114_
                         _post-bind6107_))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (letrec ((_generate-let*5249_
                                    (lambda (_hd5336_ _body5337_)
                                      (let ((_hd53385346_ _hd5336_))
                                        (let ((_E53415350_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _hd53385346_))))
                                          (let ((_else53405354_
                                                 (lambda () _body5337_)))
                                            (let ((_K53425395_
                                                   (lambda (_rest5357_
                                                            _bind5358_)
                                                     (let ((_bind53595368_
                                                            _bind5358_))
                                                       (let ((_E53615372_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind53595368_))))
                 (let ((_K53625378_
                        (lambda (_expr5375_ _hd5376_)
                          (if (gx#stx-ormap gx#identifier? _hd5376_)
                              (gxc#generate-runtime-let-values%__opt-lambda6537
                               (cons '%#let-values
                                     (cons (cons _bind5358_ '())
                                           (cons (_generate-let*5249_
                                                  _rest5357_
                                                  _body5337_)
                                                 '())))
                               '#t)
                              (cons 'begin
                                    (cons (gxc#compile-e _expr5375_)
                                          (cons (_generate-let*5249_
                                                 _rest5357_
                                                 _body5337_)
                                                '())))))))
                   (if (##pair? _bind53595368_)
                       (let ((_hd53635381_ (##car _bind53595368_))
                             (_tl53645383_ (##cdr _bind53595368_)))
                         (let ((_hd5386_ _hd53635381_))
                           (if (##pair? _tl53645383_)
                               (let ((_hd53655388_ (##car _tl53645383_))
                                     (_tl53665390_ (##cdr _tl53645383_)))
                                 (let ((_expr5393_ _hd53655388_))
                                   (if (##null? _tl53665390_)
                                       (_K53625378_ _expr5393_ _hd5386_)
                                       (_E53615372_))))
                               (_E53615372_))))
                       (_E53615372_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _hd53385346_)
                                                  (let ((_hd53435398_
                                                         (##car _hd53385346_))
                                                        (_tl53445400_
                                                         (##cdr _hd53385346_)))
                                                    (let ((_bind5403_
                                                           _hd53435398_))
                                                      (let ((_rest5405_
                                                             _tl53445400_))
                                                        (_K53425395_
                                                         _rest5405_
                                                         _bind5403_))))
                                                  (_else53405354_)))))))))
                            (let ((_g52515268_
                                   (lambda (_g52525265_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g52525265_))))
                              (let ((_g52505333_
                                     (lambda (_g52525271_)
                                       (if (gx#stx-pair? _g52525271_)
                                           (let ((_e52555273_
                                                  (gx#stx-e _g52525271_)))
                                             (let ((_hd52565276_
                                                    (##car _e52555273_))
                                                   (_tl52575278_
                                                    (##cdr _e52555273_)))
                                               (if (gx#stx-pair? _tl52575278_)
                                                   (let ((_e52585281_
                                                          (gx#stx-e
                                                           _tl52575278_)))
                                                     (let ((_hd52595284_
                                                            (##car _e52585281_))
                                                           (_tl52605286_
                                                            (##cdr _e52585281_)))
                                                       (if (gx#stx-pair?
                                                            _tl52605286_)
                                                           (let ((_e52615289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl52605286_)))
                     (let ((_hd52625292_ (##car _e52615289_))
                           (_tl52635294_ (##cdr _e52615289_)))
                       (if (gx#stx-null? _tl52635294_)
                           ((lambda (_L5297_ _L5298_)
                              (let ((_g9903_ (_linearize5239_ _L5298_)))
                                (begin
                                  (let ((_g9904_ (values-count _g9903_)))
                                    (if (not (fx= _g9904_ 5))
                                        (error "Context expects 5 values"
                                               _g9904_)))
                                  (let ((_pre5314_ (values-ref _g9903_ 0))
                                        (_rec-pre5315_ (values-ref _g9903_ 1))
                                        (_rec-bind5316_ (values-ref _g9903_ 2))
                                        (_rec-init5317_ (values-ref _g9903_ 3))
                                        (_post5318_ (values-ref _g9903_ 4)))
                                    (let ((_body5320_ (gxc#compile-e _L5297_)))
                                      (let ((_body5322_
                                             (if (null? _post5318_)
                                                 _body5320_
                                                 (_generate-let*5249_
                                                  _post5318_
                                                  _body5320_))))
                                        (let ((_body5324_
                                               (if (null? _rec-init5317_)
                                                   _body5322_
                                                   (cons 'begin
                                                         (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body5322_ '())
                         _rec-init5317_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_body5326_
                                                 (if (null? _rec-bind5316_)
                                                     _body5324_
                                                     (cons 'letrec
                                                           (cons _rec-bind5316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body5324_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_body5328_
                                                   (if (null? _rec-pre5315_)
                                                       _body5326_
                                                       (cons 'let
                                                             (cons _rec-pre5315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body5326_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_body5330_
                                                     (if (null? _pre5314_)
                                                         _body5328_
                                                         (_generate-let*5249_
                                                          _pre5314_
                                                          _body5328_))))
                                                (let () _body5330_)))))))))))
                            _hd52625292_
                            _hd52595284_)
                           (_g52515268_ _g52525271_))))
                   (_g52515268_ _g52525271_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g52515268_ _g52525271_))))
                                           (_g52515268_ _g52525271_)))))
                                (_g52505333_ _stx5237_))))))))))))))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd5130_)
      ((letrec ((_lp5132_
                 (lambda (_rest5134_)
                   (let ((_g51385159_
                          (lambda (_g51395156_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g51395156_))))
                     (let ((_g51375166_
                            (lambda (_g51395162_) ((lambda () '#f)))))
                       (let ((_g51365173_
                              (lambda (_g51395169_)
                                (if (gx#stx-null? _g51395169_)
                                    ((lambda () '#t))
                                    (_g51375166_ _g51395169_)))))
                         (let ((_g51355234_
                                (lambda (_g51395176_)
                                  (if (gx#stx-pair? _g51395176_)
                                      (let ((_e51435178_
                                             (gx#stx-e _g51395176_)))
                                        (let ((_hd51445181_
                                               (##car _e51435178_))
                                              (_tl51455183_
                                               (##cdr _e51435178_)))
                                          (if (gx#stx-pair? _hd51445181_)
                                              (let ((_e51465186_
                                                     (gx#stx-e _hd51445181_)))
                                                (let ((_hd51475189_
                                                       (##car _e51465186_))
                                                      (_tl51485191_
                                                       (##cdr _e51465186_)))
                                                  (if (gx#stx-pair?
                                                       _hd51475189_)
                                                      (let ((_e51495194_
                                                             (gx#stx-e
                                                              _hd51475189_)))
                                                        (let ((_hd51505197_
                                                               (##car _e51495194_))
                                                              (_tl51515199_
                                                               (##cdr _e51495194_)))
                                                          (if (gx#stx-null?
                                                               _tl51515199_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl51485191_)
                          (let ((_e51525202_ (gx#stx-e _tl51485191_)))
                            (let ((_hd51535205_ (##car _e51525202_))
                                  (_tl51545207_ (##cdr _e51525202_)))
                              (if (gx#stx-null? _tl51545207_)
                                  ((lambda (_L5210_ _L5211_ _L5212_)
                                     (_lp5132_ _L5210_))
                                   _tl51455183_
                                   _hd51535205_
                                   _hd51505197_)
                                  (_g51365173_ _g51395176_))))
                          (_g51365173_ _g51395176_))
                      (_g51365173_ _g51395176_))))
              (_g51365173_ _g51395176_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g51365173_ _g51395176_))))
                                      (_g51365173_ _g51395176_)))))
                           (_g51355234_ _rest5134_))))))))
         _lp5132_)
       _hd5130_)))
  (define gxc#generate-runtime-simple-let
    (lambda (_form5054_ _hd5055_ _body5056_ _compiled-body?5057_)
      (let ((_generate15059_
             (lambda (_bind5061_)
               (let ((_g50635080_
                      (lambda (_g50645077_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g50645077_))))
                 (let ((_g50625127_
                        (lambda (_g50645083_)
                          (if (gx#stx-pair? _g50645083_)
                              (let ((_e50675085_ (gx#stx-e _g50645083_)))
                                (let ((_hd50685088_ (##car _e50675085_))
                                      (_tl50695090_ (##cdr _e50675085_)))
                                  (if (gx#stx-pair? _hd50685088_)
                                      (let ((_e50705093_
                                             (gx#stx-e _hd50685088_)))
                                        (let ((_hd50715096_
                                               (##car _e50705093_))
                                              (_tl50725098_
                                               (##cdr _e50705093_)))
                                          (if (gx#stx-null? _tl50725098_)
                                              (if (gx#stx-pair? _tl50695090_)
                                                  (let ((_e50735101_
                                                         (gx#stx-e
                                                          _tl50695090_)))
                                                    (let ((_hd50745104_
                                                           (##car _e50735101_))
                                                          (_tl50755106_
                                                           (##cdr _e50735101_)))
                                                      (if (gx#stx-null?
                                                           _tl50755106_)
                                                          ((lambda (_L5109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5110_)
                     (cons (gxc#generate-runtime-binding-id* _L5110_)
                           (cons (gxc#compile-e _L5109_) '())))
                   _hd50745104_
                   _hd50715096_)
                  (_g50635080_ _g50645083_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g50635080_ _g50645083_))
                                              (_g50635080_ _g50645083_))))
                                      (_g50635080_ _g50645083_))))
                              (_g50635080_ _g50645083_)))))
                   (_g50625127_ _bind5061_))))))
        (cons _form5054_
              (cons (map _generate15059_ _hd5055_)
                    (cons (if _compiled-body?5057_
                              _body5056_
                              (gxc#compile-e _body5056_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx4965_)
      (letrec ((_generate14967_
                (lambda (_datum5019_)
                  (if (let ((_$e5021_ (null? _datum5019_)))
                        (if _$e5021_
                            _$e5021_
                            (let ((_$e5024_ (interned-symbol? _datum5019_)))
                              (if _$e5024_
                                  _$e5024_
                                  (gx#self-quoting? _datum5019_)))))
                      _datum5019_
                      (if (uninterned-symbol? _datum5019_)
                          (gxc#generate-runtime-gensym-reference__opt-lambda8848
                           _datum5019_
                           '#t)
                          (if (pair? _datum5019_)
                              (cons (_generate14967_ (car _datum5019_))
                                    (_generate14967_ (cdr _datum5019_)))
                              (if (box? _datum5019_)
                                  (box (_generate14967_ (unbox _datum5019_)))
                                  (if (vector? _datum5019_)
                                      (vector-map _generate14967_ _datum5019_)
                                      (if (let ((_$e5027_
                                                 (s8vector? _datum5019_)))
                                            (if _$e5027_
                                                _$e5027_
                                                (let ((_$e5030_
                                                       (u8vector?
                                                        _datum5019_)))
                                                  (if _$e5030_
                                                      _$e5030_
                                                      (let ((_$e5033_
                                                             (s16vector?
                                                              _datum5019_)))
                                                        (if _$e5033_
                                                            _$e5033_
                                                            (let ((_$e5036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum5019_)))
                      (if _$e5036_
                          _$e5036_
                          (let ((_$e5039_ (s32vector? _datum5019_)))
                            (if _$e5039_
                                _$e5039_
                                (let ((_$e5042_ (u32vector? _datum5019_)))
                                  (if _$e5042_
                                      _$e5042_
                                      (let ((_$e5045_
                                             (s64vector? _datum5019_)))
                                        (if _$e5045_
                                            _$e5045_
                                            (let ((_$e5048_
                                                   (u64vector? _datum5019_)))
                                              (if _$e5048_
                                                  _$e5048_
                                                  (let ((_$e5051_
                                                         (f32vector?
                                                          _datum5019_)))
                                                    (if _$e5051_
                                                        _$e5051_
                                                        (f64vector?
                                                         _datum5019_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum5019_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx4965_))))))))))
        (let ((_g49694982_
               (lambda (_g49704979_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g49704979_))))
          (let ((_g49685016_
                 (lambda (_g49704985_)
                   (if (gx#stx-pair? _g49704985_)
                       (let ((_e49724987_ (gx#stx-e _g49704985_)))
                         (let ((_hd49734990_ (##car _e49724987_))
                               (_tl49744992_ (##cdr _e49724987_)))
                           (if (gx#stx-pair? _tl49744992_)
                               (let ((_e49754995_ (gx#stx-e _tl49744992_)))
                                 (let ((_hd49764998_ (##car _e49754995_))
                                       (_tl49775000_ (##cdr _e49754995_)))
                                   (if (gx#stx-null? _tl49775000_)
                                       ((lambda (_L5003_)
                                          (cons 'quote
                                                (cons (_generate14967_
                                                       (gx#stx-e _L5003_))
                                                      '())))
                                        _hd49764998_)
                                       (_g49694982_ _g49704985_))))
                               (_g49694982_ _g49704985_))))
                       (_g49694982_ _g49704985_)))))
            (_g49685016_ _stx4965_))))))
  (define gxc#generate-runtime-call%
    (lambda (_stx4927_)
      (let ((_g49294939_
             (lambda (_g49304936_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g49304936_))))
        (let ((_g49284962_
               (lambda (_g49304942_)
                 (if (gx#stx-pair? _g49304942_)
                     (let ((_e49324944_ (gx#stx-e _g49304942_)))
                       (let ((_hd49334947_ (##car _e49324944_))
                             (_tl49344949_ (##cdr _e49324944_)))
                         ((lambda (_L4952_) (map gxc#compile-e _L4952_))
                          _tl49344949_)))
                     (_g49294939_ _g49304942_)))))
          (_g49284962_ _stx4927_)))))
  (define gxc#generate-runtime-if%
    (lambda (_stx4889_)
      (let ((_g48914901_
             (lambda (_g48924898_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g48924898_))))
        (let ((_g48904924_
               (lambda (_g48924904_)
                 (if (gx#stx-pair? _g48924904_)
                     (let ((_e48944906_ (gx#stx-e _g48924904_)))
                       (let ((_hd48954909_ (##car _e48944906_))
                             (_tl48964911_ (##cdr _e48944906_)))
                         ((lambda (_L4914_)
                            (cons 'if (map gxc#compile-e _L4914_)))
                          _tl48964911_)))
                     (_g48914901_ _g48924904_)))))
          (_g48904924_ _stx4889_)))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx4838_)
      (let ((_g48404853_
             (lambda (_g48414850_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g48414850_))))
        (let ((_g48394886_
               (lambda (_g48414856_)
                 (if (gx#stx-pair? _g48414856_)
                     (let ((_e48434858_ (gx#stx-e _g48414856_)))
                       (let ((_hd48444861_ (##car _e48434858_))
                             (_tl48454863_ (##cdr _e48434858_)))
                         (if (gx#stx-pair? _tl48454863_)
                             (let ((_e48464866_ (gx#stx-e _tl48454863_)))
                               (let ((_hd48474869_ (##car _e48464866_))
                                     (_tl48484871_ (##cdr _e48464866_)))
                                 (if (gx#stx-null? _tl48484871_)
                                     ((lambda (_L4874_)
                                        (gxc#generate-runtime-binding-id
                                         _L4874_))
                                      _hd48474869_)
                                     (_g48404853_ _g48414856_))))
                             (_g48404853_ _g48414856_))))
                     (_g48404853_ _g48414856_)))))
          (_g48394886_ _stx4838_)))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx4771_)
      (let ((_g47734790_
             (lambda (_g47744787_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g47744787_))))
        (let ((_g47724835_
               (lambda (_g47744793_)
                 (if (gx#stx-pair? _g47744793_)
                     (let ((_e47774795_ (gx#stx-e _g47744793_)))
                       (let ((_hd47784798_ (##car _e47774795_))
                             (_tl47794800_ (##cdr _e47774795_)))
                         (if (gx#stx-pair? _tl47794800_)
                             (let ((_e47804803_ (gx#stx-e _tl47794800_)))
                               (let ((_hd47814806_ (##car _e47804803_))
                                     (_tl47824808_ (##cdr _e47804803_)))
                                 (if (gx#stx-pair? _tl47824808_)
                                     (let ((_e47834811_
                                            (gx#stx-e _tl47824808_)))
                                       (let ((_hd47844814_ (##car _e47834811_))
                                             (_tl47854816_
                                              (##cdr _e47834811_)))
                                         (if (gx#stx-null? _tl47854816_)
                                             ((lambda (_L4819_ _L4820_)
                                                (cons 'set!
                                                      (cons (gxc#generate-runtime-binding-id
                                                             _L4820_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4819_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd47844814_
                                              _hd47814806_)
                                             (_g47734790_ _g47744793_))))
                                     (_g47734790_ _g47744793_))))
                             (_g47734790_ _g47744793_))))
                     (_g47734790_ _g47744793_)))))
          (_g47724835_ _stx4771_)))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx4704_)
      (let ((_g47064723_
             (lambda (_g47074720_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g47074720_))))
        (let ((_g47054768_
               (lambda (_g47074726_)
                 (if (gx#stx-pair? _g47074726_)
                     (let ((_e47104728_ (gx#stx-e _g47074726_)))
                       (let ((_hd47114731_ (##car _e47104728_))
                             (_tl47124733_ (##cdr _e47104728_)))
                         (if (gx#stx-pair? _tl47124733_)
                             (let ((_e47134736_ (gx#stx-e _tl47124733_)))
                               (let ((_hd47144739_ (##car _e47134736_))
                                     (_tl47154741_ (##cdr _e47134736_)))
                                 (if (gx#stx-pair? _tl47154741_)
                                     (let ((_e47164744_
                                            (gx#stx-e _tl47154741_)))
                                       (let ((_hd47174747_ (##car _e47164744_))
                                             (_tl47184749_
                                              (##cdr _e47164744_)))
                                         (if (gx#stx-null? _tl47184749_)
                                             ((lambda (_L4752_ _L4753_)
                                                (cons '##structure-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L4752_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4753_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd47174747_
                                              _hd47144739_)
                                             (_g47064723_ _g47074726_))))
                                     (_g47064723_ _g47074726_))))
                             (_g47064723_ _g47074726_))))
                     (_g47064723_ _g47074726_)))))
          (_g47054768_ _stx4704_)))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx4637_)
      (let ((_g46394656_
             (lambda (_g46404653_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g46404653_))))
        (let ((_g46384701_
               (lambda (_g46404659_)
                 (if (gx#stx-pair? _g46404659_)
                     (let ((_e46434661_ (gx#stx-e _g46404659_)))
                       (let ((_hd46444664_ (##car _e46434661_))
                             (_tl46454666_ (##cdr _e46434661_)))
                         (if (gx#stx-pair? _tl46454666_)
                             (let ((_e46464669_ (gx#stx-e _tl46454666_)))
                               (let ((_hd46474672_ (##car _e46464669_))
                                     (_tl46484674_ (##cdr _e46464669_)))
                                 (if (gx#stx-pair? _tl46484674_)
                                     (let ((_e46494677_
                                            (gx#stx-e _tl46484674_)))
                                       (let ((_hd46504680_ (##car _e46494677_))
                                             (_tl46514682_
                                              (##cdr _e46494677_)))
                                         (if (gx#stx-null? _tl46514682_)
                                             ((lambda (_L4685_ _L4686_)
                                                (cons '##structure-direct-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L4685_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4686_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd46504680_
                                              _hd46474672_)
                                             (_g46394656_ _g46404659_))))
                                     (_g46394656_ _g46404659_))))
                             (_g46394656_ _g46404659_))))
                     (_g46394656_ _g46404659_)))))
          (_g46384701_ _stx4637_)))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx4554_)
      (let ((_g45564577_
             (lambda (_g45574574_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g45574574_))))
        (let ((_g45554634_
               (lambda (_g45574580_)
                 (if (gx#stx-pair? _g45574580_)
                     (let ((_e45614582_ (gx#stx-e _g45574580_)))
                       (let ((_hd45624585_ (##car _e45614582_))
                             (_tl45634587_ (##cdr _e45614582_)))
                         (if (gx#stx-pair? _tl45634587_)
                             (let ((_e45644590_ (gx#stx-e _tl45634587_)))
                               (let ((_hd45654593_ (##car _e45644590_))
                                     (_tl45664595_ (##cdr _e45644590_)))
                                 (if (gx#stx-pair? _tl45664595_)
                                     (let ((_e45674598_
                                            (gx#stx-e _tl45664595_)))
                                       (let ((_hd45684601_ (##car _e45674598_))
                                             (_tl45694603_
                                              (##cdr _e45674598_)))
                                         (if (gx#stx-pair? _tl45694603_)
                                             (let ((_e45704606_
                                                    (gx#stx-e _tl45694603_)))
                                               (let ((_hd45714609_
                                                      (##car _e45704606_))
                                                     (_tl45724611_
                                                      (##cdr _e45704606_)))
                                                 (if (gx#stx-null?
                                                      _tl45724611_)
                                                     ((lambda (_L4614_
                                                               _L4615_
                                                               _L4616_)
                                                        (cons '##structure-ref
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L4614_)
                            (cons (gxc#compile-e _L4615_)
                                  (cons (gxc#compile-e _L4616_)
                                        (cons ''#f '()))))))
              _hd45714609_
              _hd45684601_
              _hd45654593_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g45564577_
                                                      _g45574580_))))
                                             (_g45564577_ _g45574580_))))
                                     (_g45564577_ _g45574580_))))
                             (_g45564577_ _g45574580_))))
                     (_g45564577_ _g45574580_)))))
          (_g45554634_ _stx4554_)))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx4455_)
      (let ((_g44574482_
             (lambda (_g44584479_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g44584479_))))
        (let ((_g44564551_
               (lambda (_g44584485_)
                 (if (gx#stx-pair? _g44584485_)
                     (let ((_e44634487_ (gx#stx-e _g44584485_)))
                       (let ((_hd44644490_ (##car _e44634487_))
                             (_tl44654492_ (##cdr _e44634487_)))
                         (if (gx#stx-pair? _tl44654492_)
                             (let ((_e44664495_ (gx#stx-e _tl44654492_)))
                               (let ((_hd44674498_ (##car _e44664495_))
                                     (_tl44684500_ (##cdr _e44664495_)))
                                 (if (gx#stx-pair? _tl44684500_)
                                     (let ((_e44694503_
                                            (gx#stx-e _tl44684500_)))
                                       (let ((_hd44704506_ (##car _e44694503_))
                                             (_tl44714508_
                                              (##cdr _e44694503_)))
                                         (if (gx#stx-pair? _tl44714508_)
                                             (let ((_e44724511_
                                                    (gx#stx-e _tl44714508_)))
                                               (let ((_hd44734514_
                                                      (##car _e44724511_))
                                                     (_tl44744516_
                                                      (##cdr _e44724511_)))
                                                 (if (gx#stx-pair?
                                                      _tl44744516_)
                                                     (let ((_e44754519_
                                                            (gx#stx-e
                                                             _tl44744516_)))
                                                       (let ((_hd44764522_
                                                              (##car _e44754519_))
                                                             (_tl44774524_
                                                              (##cdr _e44754519_)))
                                                         (if (gx#stx-null?
                                                              _tl44774524_)
                                                             ((lambda (_L4527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L4528_
                               _L4529_
                               _L4530_)
                        (cons '##structure-set!
                              (cons (gxc#compile-e _L4528_)
                                    (cons (gxc#compile-e _L4527_)
                                          (cons (gxc#compile-e _L4529_)
                                                (cons (gxc#compile-e _L4530_)
                                                      (cons ''#f '())))))))
                      _hd44764522_
                      _hd44734514_
                      _hd44704506_
                      _hd44674498_)
                     (_g44574482_ _g44584485_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g44574482_
                                                      _g44584485_))))
                                             (_g44574482_ _g44584485_))))
                                     (_g44574482_ _g44584485_))))
                             (_g44574482_ _g44584485_))))
                     (_g44574482_ _g44584485_)))))
          (_g44564551_ _stx4455_)))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx4364_)
      (let ((_g43664376_
             (lambda (_g43674373_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g43674373_))))
        (let ((_g43654452_
               (lambda (_g43674379_)
                 (if (gx#stx-pair? _g43674379_)
                     (let ((_e43694381_ (gx#stx-e _g43674379_)))
                       (let ((_hd43704384_ (##car _e43694381_))
                             (_tl43714386_ (##cdr _e43694381_)))
                         ((lambda (_L4389_)
                            (let ((_ht4399_ (make-hash-table-eq)))
                              ((letrec ((_lp4401_
                                         (lambda (_rest4403_ _loads4404_)
                                           (let ((_K4406_ (lambda (_ctx4445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest4446_)
                    (let ((_id4448_
                           (##structure-ref
                            _ctx4445_
                            '1
                            gx#expander-context::t
                            '#f)))
                      (if (table-ref _ht4399_ _id4448_ '#f)
                          (_lp4401_ _rest4446_ _loads4404_)
                          (let ((_rt4450_
                                 (string-append
                                  (symbol->string _id4448_)
                                  '"__rt")))
                            (begin
                              (table-set! _ht4399_ _id4448_ _rt4450_)
                              (_lp4401_
                               _rest4446_
                               (cons _rt4450_ _loads4404_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_rest44074415_ _rest4403_))
                                               (let ((_E44104419_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest44074415_))))
                                                 (let ((_else44094427_
                                                        (lambda ()
                                                          (cons 'begin
                                                                (map (lambda (_g44224424_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (list 'load-module _g44224424_))
                             (reverse _loads4404_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K44114433_
                                                          (lambda (_rest4430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in4431_)
                    (if (##structure-instance-of?
                         _in4431_
                         'gx#module-context::t)
                        (_K4406_ _in4431_ _rest4430_)
                        (if (##structure-direct-instance-of?
                             _in4431_
                             'gx#module-import::t)
                            (if (fxpositive?
                                 (##structure-ref
                                  _in4431_
                                  '3
                                  gx#module-import::t
                                  '#f))
                                (_lp4401_ _rest4430_ _loads4404_)
                                (_K4406_ (##structure-ref
                                          (##structure-ref
                                           _in4431_
                                           '1
                                           gx#module-import::t
                                           '#f)
                                          '1
                                          gx#module-export::t
                                          '#f)
                                         _rest4430_))
                            (if (##structure-direct-instance-of?
                                 _in4431_
                                 'gx#import-set::t)
                                (if (fxpositive?
                                     (##structure-ref
                                      _in4431_
                                      '2
                                      gx#import-set::t
                                      '#f))
                                    (_lp4401_ _rest4430_ _loads4404_)
                                    (_K4406_ (##structure-ref
                                              _in4431_
                                              '1
                                              gx#import-set::t
                                              '#f)
                                             _rest4430_))
                                (gxc#raise-compile-error
                                 '"Unexpected import"
                                 _stx4364_
                                 _in4431_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest44074415_)
                                                         (let ((_hd44124436_
                                                                (##car _rest44074415_))
                                                               (_tl44134438_
                                                                (##cdr _rest44074415_)))
                                                           (let ((_in4441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd44124436_))
                     (let ((_rest4443_ _tl44134438_))
                       (_K44114433_ _rest4443_ _in4441_))))
                 (_else44094427_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp4401_)
                               _L4389_
                               '())))
                          _tl43714386_)))
                     (_g43664376_ _g43674379_)))))
          (_g43654452_ _stx4364_)))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx4305_)
      (let ((_generate-quote4307_
             (lambda (_q4362_)
               (if (gx#identifier? _q4362_)
                   (gxc#generate-runtime-identifier _q4362_)
                   (gxc#raise-compile-error
                    '"Cannot quote non-identifier syntax"
                    _stx4305_
                    _q4362_)))))
        (let ((_g43094322_
               (lambda (_g43104319_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g43104319_))))
          (let ((_g43084359_
                 (lambda (_g43104325_)
                   (if (gx#stx-pair? _g43104325_)
                       (let ((_e43124327_ (gx#stx-e _g43104325_)))
                         (let ((_hd43134330_ (##car _e43124327_))
                               (_tl43144332_ (##cdr _e43124327_)))
                           (if (gx#stx-pair? _tl43144332_)
                               (let ((_e43154335_ (gx#stx-e _tl43144332_)))
                                 (let ((_hd43164338_ (##car _e43154335_))
                                       (_tl43174340_ (##cdr _e43154335_)))
                                   (if (gx#stx-null? _tl43174340_)
                                       ((lambda (_L4343_)
                                          (let ((_gid4356_
                                                 (gxc#generate-runtime-temporary__opt-lambda8794
                                                  '#t))
                                                (_quote-e4357_
                                                 (_generate-quote4307_
                                                  _L4343_)))
                                            (begin
                                              (set-box!
                                               (gxc#current-compile-lift)
                                               (cons (cons 'define
                                                           (cons _gid4356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'gx#core-quote-syntax
                                     (cons (cons 'quote
                                                 (cons _quote-e4357_ '()))
                                           '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (unbox (gxc#current-compile-lift))))
                                              _gid4356_)))
                                        _hd43164338_)
                                       (_g43094322_ _g43104325_))))
                               (_g43094322_ _g43104325_))))
                       (_g43094322_ _g43104325_)))))
            (_g43084359_ _stx4305_))))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx4238_)
      (let ((_g42404257_
             (lambda (_g42414254_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g42414254_))))
        (let ((_g42394302_
               (lambda (_g42414260_)
                 (if (gx#stx-pair? _g42414260_)
                     (let ((_e42444262_ (gx#stx-e _g42414260_)))
                       (let ((_hd42454265_ (##car _e42444262_))
                             (_tl42464267_ (##cdr _e42444262_)))
                         (if (gx#stx-pair? _tl42464267_)
                             (let ((_e42474270_ (gx#stx-e _tl42464267_)))
                               (let ((_hd42484273_ (##car _e42474270_))
                                     (_tl42494275_ (##cdr _e42474270_)))
                                 (if (gx#stx-pair? _tl42494275_)
                                     (let ((_e42504278_
                                            (gx#stx-e _tl42494275_)))
                                       (let ((_hd42514281_ (##car _e42504278_))
                                             (_tl42524283_
                                              (##cdr _e42504278_)))
                                         (if (gx#stx-null? _tl42524283_)
                                             ((lambda (_L4286_ _L4287_)
                                                (cons 'define
                                                      (cons (gx#stx-e _L4287_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4286_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd42514281_
                                              _hd42484273_)
                                             (_g42404257_ _g42414260_))))
                                     (_g42404257_ _g42414260_))))
                             (_g42404257_ _g42414260_))))
                     (_g42404257_ _g42414260_)))))
          (_g42394302_ _stx4238_)))))
  (define gxc#generate-meta-begin%
    (lambda (_stx4187_ _state4188_)
      (let ((_g41904200_
             (lambda (_g41914197_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g41914197_))))
        (let ((_g41894235_
               (lambda (_g41914203_)
                 (if (gx#stx-pair? _g41914203_)
                     (let ((_e41934205_ (gx#stx-e _g41914203_)))
                       (let ((_hd41944208_ (##car _e41934205_))
                             (_tl41954210_ (##cdr _e41934205_)))
                         ((lambda (_L4213_)
                            (let ((_c-body4227_
                                   (map (lambda (_g42224224_)
                                          (gxc#compile-e
                                           _g42224224_
                                           _state4188_))
                                        _L4213_)))
                              (let ((_c-body4232_
                                     (filter (lambda (_$obj4229_)
                                               (not (eq? _$obj4229_ '#!void)))
                                             _c-body4227_)))
                                (let () (cons '%#begin _c-body4232_)))))
                          _tl41954210_)))
                     (_g41904200_ _g41914203_)))))
          (_g41894235_ _stx4187_)))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx4095_ _state4096_)
      (let ((_g40984108_
             (lambda (_g40994105_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g40994105_))))
        (let ((_g40974184_
               (lambda (_g40994111_)
                 (if (gx#stx-pair? _g40994111_)
                     (let ((_e41014113_ (gx#stx-e _g40994111_)))
                       (let ((_hd41024116_ (##car _e41014113_))
                             (_tl41034118_ (##cdr _e41014113_)))
                         ((lambda (_L4121_)
                            (let ((_phi4131_
                                   (fx+ (gx#current-expander-phi) '1)))
                              (let ((_block4133_
                                     (gxc#meta-state-begin-phi!
                                      _state4096_
                                      _phi4131_)))
                                (let ((_compiled4136_
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#apply-generate-meta-phi
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin)
                                                 _L4121_)
                                           _state4096_))
                                        gx#current-expander-phi
                                        _phi4131_)))
                                  (let ()
                                    (let ((_g41394149_
                                           (lambda (_g41404146_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g41404146_))))
                                      (let ((_g41384181_
                                             (lambda (_g41404152_)
                                               (if (gx#stx-pair? _g41404152_)
                                                   (let ((_e41424154_
                                                          (gx#stx-e
                                                           _g41404152_)))
                                                     (let ((_hd41434157_
                                                            (##car _e41424154_))
                                                           (_tl41444159_
                                                            (##cdr _e41424154_)))
                                                       (if (gx#identifier?
                                                            _hd41434157_)
                                                           (if (gx#stx-eq?
                                                                '%#begin
                                                                _hd41434157_)
                                                               ((lambda (_L4162_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_c-body4179_
                                 (filter (lambda (_$obj4176_)
                                           (not (eq? _$obj4176_ '#!void)))
                                         _L4162_)))
                            (if _block4133_
                                (cons '%#begin-syntax
                                      (cons (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons _block4133_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _c-body4179_))
                                (if (null? _c-body4179_)
                                    '#!void
                                    (cons '%#begin-syntax _c-body4179_)))))
                        _tl41444159_)
                       (_g41394149_ _g41404152_))
                   (_g41394149_ _g41404152_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g41394149_
                                                    _g41404152_)))))
                                        (_g41384181_ _compiled4136_))))))))
                          _tl41034118_)))
                     (_g40984108_ _g40994111_)))))
          (_g40974184_ _stx4095_)))))
  (define gxc#generate-meta-module%
    (lambda (_stx4026_ _state4027_)
      (begin
        (gxc#meta-state-end-phi! _state4027_)
        (let ((_g40294043_
               (lambda (_g40304040_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g40304040_))))
          (let ((_g40284092_
                 (lambda (_g40304046_)
                   (if (gx#stx-pair? _g40304046_)
                       (let ((_e40334048_ (gx#stx-e _g40304046_)))
                         (let ((_hd40344051_ (##car _e40334048_))
                               (_tl40354053_ (##cdr _e40334048_)))
                           (if (gx#stx-pair? _tl40354053_)
                               (let ((_e40364056_ (gx#stx-e _tl40354053_)))
                                 (let ((_hd40374059_ (##car _e40364056_))
                                       (_tl40384061_ (##cdr _e40364056_)))
                                   ((lambda (_L4064_ _L4065_)
                                      (let ((_key4078_
                                             (gx#core-identifier-key _L4065_)))
                                        (begin
                                          (if (interned-symbol? _key4078_)
                                              '#!void
                                              (gxc#raise-compile-error
                                               '"Cannot compile module with uninterned id"
                                               _stx4026_
                                               _L4065_
                                               _key4078_))
                                          (let ((_ctx4080_
                                                 (gx#syntax-local-e__0
                                                  _L4065_)))
                                            (let ((_code4083_
                                                   (call-with-parameters
                                                    (lambda ()
                                                      (gxc#compile-e
                                                       (##structure-ref
                                                        _ctx4080_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       _state4027_))
                                                    gx#current-expander-context
                                                    _ctx4080_)))
                                              (let ((_rt4085_
                                                     (table-ref
                                                      (gxc#current-compile-runtime-sections)
                                                      _ctx4080_
                                                      '#f)))
                                                (let ((_loader4087_
                                                       (if _rt4085_
                                                           (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons '%#ref (cons '_gx#load-module '()))
                                     (cons (cons '%#quote (cons _rt4085_ '()))
                                           '())))
                         '())
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_modid4089_
                                                         (gx#stx-e _L4065_)))
                                                    (let ()
                                                      (begin
                                                        (gxc#meta-state-end-phi!
                                                         _state4027_)
                                                        (cons '%#module
                                                              (cons _modid4089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _code4083_ _loader4087_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl40384061_
                                    _hd40374059_)))
                               (_g40294043_ _g40304046_))))
                       (_g40294043_ _g40304046_)))))
            (_g40284092_ _stx4026_))))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx4016_ _context-chain4017_)
      ((letrec ((_lp4019_
                 (lambda (_ctx4021_ _path4022_)
                   (let ((_super4024_
                          (##structure-ref
                           _ctx4021_
                           '3
                           gx#phi-context::t
                           '#f)))
                     (if (memq _super4024_ _context-chain4017_)
                         (cons* '#f
                                (car (##structure-ref
                                      _ctx4021_
                                      '7
                                      gx#module-context::t
                                      '#f))
                                _path4022_)
                         (if (##structure-instance-of?
                              _super4024_
                              'gx#module-context::t)
                             (_lp4019_
                              _super4024_
                              (cons (car (##structure-ref
                                          _ctx4021_
                                          '7
                                          gx#module-context::t
                                          '#f))
                                    _path4022_))
                             (cons (make-symbol
                                    '":"
                                    (##structure-ref
                                     _ctx4021_
                                     '1
                                     gx#expander-context::t
                                     '#f))
                                   _path4022_)))))))
         _lp4019_)
       _ctx4016_
       '())))
  (define gxc#current-context-chain
    (lambda ()
      ((letrec ((_lp4011_
                 (lambda (_ctx4013_ _r4014_)
                   (if (##structure-instance-of?
                        _ctx4013_
                        'gx#module-context::t)
                       (_lp4011_
                        (##structure-ref _ctx4013_ '3 gx#phi-context::t '#f)
                        (cons _ctx4013_ _r4014_))
                       _r4014_))))
         _lp4011_)
       (gx#current-expander-context)
       '())))
  (define gxc#generate-meta-import%
    (lambda (_stx3780_ _state3781_)
      (let ((_context-chain3783_ (gxc#current-context-chain)))
        (let ((_make-import-spec3784_
               (lambda (_in3947_)
                 (let ((_in39483960_ _in3947_))
                   (let ((_E39503964_
                          (lambda ()
                            (error '"No clause matching" _in39483960_))))
                     (let ((_K39513974_
                            (lambda (_phi3967_
                                     _name3968_
                                     _src-name3969_
                                     _src-phi3970_
                                     _src-key3971_
                                     _src-ctx3972_)
                              (cons _phi3967_
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name3968_)
                                          (cons _src-phi3970_
                                                (cons (gxc#generate-runtime-identifier-key
                                                       _src-name3969_)
                                                      '())))))))
                       (if (direct-struct-instance?
                            gx#module-import::t
                            _in39483960_)
                           (let ((_e39523977_ (##vector-ref _in39483960_ '1)))
                             (if (direct-struct-instance?
                                  gx#module-export::t
                                  _e39523977_)
                                 (let ((_e39553980_
                                        (##vector-ref _e39523977_ '1)))
                                   (let ((_src-ctx3983_ _e39553980_))
                                     (let ((_e39563985_
                                            (##vector-ref _e39523977_ '2)))
                                       (let ((_src-key3988_ _e39563985_))
                                         (let ((_e39573990_
                                                (##vector-ref _e39523977_ '3)))
                                           (let ((_src-phi3993_ _e39573990_))
                                             (let ((_e39583995_
                                                    (##vector-ref
                                                     _e39523977_
                                                     '4)))
                                               (let ((_src-name3998_
                                                      _e39583995_))
                                                 (let ((_e39534000_
                                                        (##vector-ref
                                                         _in39483960_
                                                         '2)))
                                                   (let ((_name4003_
                                                          _e39534000_))
                                                     (let ((_e39544005_
                                                            (##vector-ref
                                                             _in39483960_
                                                             '3)))
                                                       (let ((_phi4008_
                                                              _e39544005_))
                                                         (_K39513974_
                                                          _phi4008_
                                                          _name4003_
                                                          _src-name3998_
                                                          _src-phi3993_
                                                          _src-key3988_
                                                          _src-ctx3983_)))))))))))))
                                 (_E39503964_)))
                           (_E39503964_))))))))
          (let ((_make-import-path3785_
                 (lambda (_ctx3945_)
                   (gxc#generate-meta-import-path
                    _ctx3945_
                    _context-chain3783_))))
            (let ((_make-import-spec-in3786_
                   (lambda (_ctx3942_ _in3943_)
                     (cons 'spec:
                           (cons (_make-import-path3785_ _ctx3942_)
                                 (reverse _in3943_))))))
              (begin
                (gxc#meta-state-end-phi! _state3781_)
                (let ((_g37883798_
                       (lambda (_g37893795_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g37893795_))))
                  (let ((_g37873939_
                         (lambda (_g37893801_)
                           (if (gx#stx-pair? _g37893801_)
                               (let ((_e37913803_ (gx#stx-e _g37893801_)))
                                 (let ((_hd37923806_ (##car _e37913803_))
                                       (_tl37933808_ (##cdr _e37913803_)))
                                   ((lambda (_L3811_)
                                      ((letrec ((_lp3822_
                                                 (lambda (_rest3824_
                                                          _current-src3825_
                                                          _current-in3826_
                                                          _r3827_)
                                                   (let ((_rest38283836_
                                                          _rest3824_))
                                                     (let ((_E38313840_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _rest38283836_))))
               (let ((_else38303846_
                      (lambda ()
                        (let ((_r3844_ (if _current-src3825_
                                           (cons (_make-import-spec-in3786_
                                                  _current-src3825_
                                                  _current-in3826_)
                                                 _r3827_)
                                           _r3827_)))
                          (cons '%#import (reverse _r3844_))))))
                 (let ((_K38323927_
                        (lambda (_rest3849_ _in3850_)
                          (if (##structure-direct-instance-of?
                               _in3850_
                               'gx#module-import::t)
                              (let ((_in38513858_ _in3850_))
                                (let ((_E38533862_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _in38513858_))))
                                  (let ((_K38543867_
                                         (lambda (_src-ctx3865_)
                                           (if (eq? _current-src3825_
                                                    _src-ctx3865_)
                                               (_lp3822_
                                                _rest3849_
                                                _current-src3825_
                                                (cons (_make-import-spec3784_
                                                       _in3850_)
                                                      _current-in3826_)
                                                _r3827_)
                                               (if _current-src3825_
                                                   (_lp3822_
                                                    _rest3849_
                                                    _src-ctx3865_
                                                    (cons (_make-import-spec3784_
                                                           _in3850_)
                                                          '())
                                                    (cons (_make-import-spec-in3786_
                                                           _current-src3825_
                                                           _current-in3826_)
                                                          _r3827_))
                                                   (_lp3822_
                                                    _rest3849_
                                                    _src-ctx3865_
                                                    (cons (_make-import-spec3784_
                                                           _in3850_)
                                                          '())
                                                    _r3827_))))))
                                    (if (direct-struct-instance?
                                         gx#module-import::t
                                         _in38513858_)
                                        (let ((_e38553870_
                                               (##vector-ref _in38513858_ '1)))
                                          (if (direct-struct-instance?
                                               gx#module-export::t
                                               _e38553870_)
                                              (let ((_e38563873_
                                                     (##vector-ref
                                                      _e38553870_
                                                      '1)))
                                                (let ((_src-ctx3876_
                                                       _e38563873_))
                                                  (_K38543867_ _src-ctx3876_)))
                                              (_E38533862_)))
                                        (_E38533862_)))))
                              (if (##structure-direct-instance-of?
                                   _in3850_
                                   'gx#import-set::t)
                                  (let ((_phi3878_
                                         (##structure-ref
                                          _in3850_
                                          '2
                                          gx#import-set::t
                                          '#f)))
                                    (let ((_src3880_
                                           (##structure-ref
                                            _in3850_
                                            '1
                                            gx#import-set::t
                                            '#f)))
                                      (let ((_src-in3920_
                                             (let ((_g38813890_
                                                    (_make-import-path3785_
                                                     _src3880_)))
                                               (let ((_E38843894_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _g38813890_))))
                                                 (let ((_try-match38833905_
                                                        (lambda ()
                                                          (let ((_K38853900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_path3898_) (cons 'in: _path3898_))))
                    (let ((_path3903_ _g38813890_))
                      (_K38853900_ _path3903_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K38863910_
                                                          (lambda (_path3908_)
                                                            _path3908_)))
                                                     (if (##pair? _g38813890_)
                                                         (let ((_hd38873913_
                                                                (##car _g38813890_))
                                                               (_tl38883915_
                                                                (##cdr _g38813890_)))
                                                           (let ((_path3918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd38873913_))
                     (if (##null? _tl38883915_)
                         (_K38863910_ _path3918_)
                         (_try-match38833905_))))
                 (_try-match38833905_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_r3922_ (if _current-src3825_
                                                           (cons (_make-import-spec-in3786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _current-src3825_
                          _current-in3826_)
                         _r3827_)
                   _r3827_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (_lp3822_
                                             _rest3849_
                                             '#f
                                             '()
                                             (cons (if (fxzero? _phi3878_)
                                                       _src-in3920_
                                                       (cons 'phi:
                                                             (cons _phi3878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _src-in3920_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r3922_)))))))
                                  (if (##structure-instance-of?
                                       _in3850_
                                       'gx#module-context::t)
                                      (let ((_r3925_ (if _current-src3825_
                                                         (cons (_make-import-spec-in3786_
                                                                _current-src3825_
                                                                _current-in3826_)
                                                               _r3827_)
                                                         _r3827_)))
                                        (_lp3822_
                                         _rest3849_
                                         '#f
                                         '()
                                         (cons (cons 'runtime:
                                                     (_make-import-path3785_
                                                      _in3850_))
                                               _r3925_)))
                                      '#!void))))))
                   (if (##pair? _rest38283836_)
                       (let ((_hd38333930_ (##car _rest38283836_))
                             (_tl38343932_ (##cdr _rest38283836_)))
                         (let ((_in3935_ _hd38333930_))
                           (let ((_rest3937_ _tl38343932_))
                             (_K38323927_ _rest3937_ _in3935_))))
                       (_else38303846_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _lp3822_)
                                       _L3811_
                                       '#f
                                       '()
                                       '()))
                                    _tl37933808_)))
                               (_g37883798_ _g37893801_)))))
                    (_g37873939_ _stx3780_))))))))))
  (define gxc#generate-meta-export%
    (lambda (_stx3590_ _state3591_)
      (let ((_context-chain3593_ (gxc#current-context-chain)))
        (let ((_make-import-path3594_
               (lambda (_ctx3778_)
                 (gxc#generate-meta-import-path
                  _ctx3778_
                  _context-chain3593_))))
          (let ((_g35963606_
                 (lambda (_g35973603_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g35973603_))))
            (let ((_g35953775_
                   (lambda (_g35973609_)
                     (if (gx#stx-pair? _g35973609_)
                         (let ((_e35993611_ (gx#stx-e _g35973609_)))
                           (let ((_hd36003614_ (##car _e35993611_))
                                 (_tl36013616_ (##cdr _e35993611_)))
                             ((lambda (_L3619_)
                                ((letrec ((_lp3630_
                                           (lambda (_rest3632_ _r3633_)
                                             (let ((_rest36343642_ _rest3632_))
                                               (let ((_E36373646_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest36343642_))))
                                                 (let ((_else36363650_
                                                        (lambda ()
                                                          (cons '%#export
                                                                (reverse _r3633_)))))
                                                   (let ((_K36383763_
                                                          (lambda (_rest3653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out3654_)
                    (let ((_out36553668_ _out3654_))
                      (let ((_E36583672_
                             (lambda ()
                               (error '"No clause matching" _out36553668_))))
                        (let ((_try-match36573735_
                               (lambda ()
                                 (let ((_K36593722_
                                        (lambda (_phi3676_ _src3677_)
                                          (let ((_out3717_
                                                 (if _src3677_
                                                     (cons 'import:
                                                           (cons (let ((_g36783687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (_make-import-path3594_ _src3677_)))
                           (let ((_E36813691_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g36783687_))))
                             (let ((_try-match36803702_
                                    (lambda ()
                                      (let ((_K36823697_
                                             (lambda (_path3695_)
                                               (cons 'in: _path3695_))))
                                        (let ((_path3700_ _g36783687_))
                                          (_K36823697_ _path3700_))))))
                               (let ((_K36833707_
                                      (lambda (_path3705_) _path3705_)))
                                 (if (##pair? _g36783687_)
                                     (let ((_hd36843710_ (##car _g36783687_))
                                           (_tl36853712_ (##cdr _g36783687_)))
                                       (let ((_path3715_ _hd36843710_))
                                         (if (##null? _tl36853712_)
                                             (_K36833707_ _path3715_)
                                             (_try-match36803702_))))
                                     (_try-match36803702_))))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t)))
                                            (let ((_out3719_
                                                   (if (fxzero? _phi3676_)
                                                       _out3717_
                                                       (cons 'phi:
                                                             (cons _phi3676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _out3717_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (_lp3630_
                                                 _rest3653_
                                                 (cons _out3719_
                                                       _r3633_))))))))
                                   (if (direct-struct-instance?
                                        gx#export-set::t
                                        _out36553668_)
                                       (let ((_e36603725_
                                              (##vector-ref _out36553668_ '1)))
                                         (let ((_src3728_ _e36603725_))
                                           (let ((_e36613730_
                                                  (##vector-ref
                                                   _out36553668_
                                                   '2)))
                                             (let ((_phi3733_ _e36613730_))
                                               (_K36593722_
                                                _phi3733_
                                                _src3728_)))))
                                       (_E36583672_))))))
                          (let ((_K36623742_
                                 (lambda (_name3738_ _phi3739_ _key3740_)
                                   (_lp3630_
                                    _rest3653_
                                    (cons (cons 'spec:
                                                (cons _phi3739_
                                                      (cons (gxc#generate-runtime-identifier-key
                                                             _key3740_)
                                                            (cons (gxc#generate-runtime-identifier-key
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _name3738_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _r3633_)))))
                            (if (direct-struct-instance?
                                 gx#module-export::t
                                 _out36553668_)
                                (let ((_e36633745_
                                       (##vector-ref _out36553668_ '1)))
                                  (let ((_e36643748_
                                         (##vector-ref _out36553668_ '2)))
                                    (let ((_key3751_ _e36643748_))
                                      (let ((_e36653753_
                                             (##vector-ref _out36553668_ '3)))
                                        (let ((_phi3756_ _e36653753_))
                                          (let ((_e36663758_
                                                 (##vector-ref
                                                  _out36553668_
                                                  '4)))
                                            (let ((_name3761_ _e36663758_))
                                              (_K36623742_
                                               _name3761_
                                               _phi3756_
                                               _key3751_))))))))
                                (_try-match36573735_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest36343642_)
                                                         (let ((_hd36393766_
                                                                (##car _rest36343642_))
                                                               (_tl36403768_
                                                                (##cdr _rest36343642_)))
                                                           (let ((_out3771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd36393766_))
                     (let ((_rest3773_ _tl36403768_))
                       (_K36383763_ _rest3773_ _out3771_))))
                 (_else36363650_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp3630_)
                                 _L3619_
                                 '()))
                              _tl36013616_)))
                         (_g35963606_ _g35973609_)))))
              (_g35953775_ _stx3590_)))))))
  (define gxc#generate-meta-provide%
    (lambda (_stx3551_ _state3552_)
      (begin
        (gxc#meta-state-end-phi! _state3552_)
        (let ((_g35543564_
               (lambda (_g35553561_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g35553561_))))
          (let ((_g35533587_
                 (lambda (_g35553567_)
                   (if (gx#stx-pair? _g35553567_)
                       (let ((_e35573569_ (gx#stx-e _g35553567_)))
                         (let ((_hd35583572_ (##car _e35573569_))
                               (_tl35593574_ (##cdr _e35573569_)))
                           ((lambda (_L3577_)
                              (cons '%#provide
                                    (map gxc#generate-runtime-identifier
                                         _L3577_)))
                            _tl35593574_)))
                       (_g35543564_ _g35553567_)))))
            (_g35533587_ _stx3551_))))))
  (define gxc#generate-meta-extern%
    (lambda (_stx3422_ _state3423_)
      (let ((_generate13425_
             (lambda (_id3546_ _eid3547_)
               (let ((_eid3549_ (gx#stx-e _eid3547_)))
                 (begin
                   (if (interned-symbol? _eid3549_)
                       '#!void
                       (gxc#raise-compile-error
                        '"Cannot compile extern reference"
                        _stx3422_
                        _eid3549_))
                   (cons (gxc#generate-runtime-identifier _id3546_)
                         (cons _eid3549_ '())))))))
        (let ((_g34273455_
               (lambda (_g34283452_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g34283452_))))
          (let ((_g34263543_
                 (lambda (_g34283458_)
                   (if (gx#stx-pair? _g34283458_)
                       (let ((_e34313460_ (gx#stx-e _g34283458_)))
                         (let ((_hd34323463_ (##car _e34313460_))
                               (_tl34333465_ (##cdr _e34313460_)))
                           (if (gx#stx-pair/null? _tl34333465_)
                               (if (fx>= (gx#stx-length _tl34333465_) '0)
                                   (let ((_g9911_ (gx#syntax-split-splice
                                                   _tl34333465_
                                                   '0)))
                                     (begin
                                       (let ((_g9912_ (values-count _g9911_)))
                                         (if (not (fx= _g9912_ 2))
                                             (error "Context expects 2 values"
                                                    _g9912_)))
                                       (let ((_target34343468_
                                              (values-ref _g9911_ 0))
                                             (_tl34363470_
                                              (values-ref _g9911_ 1)))
                                         (if (gx#stx-null? _tl34363470_)
                                             (letrec ((_loop34373473_
                                                       (lambda (_hd34353476_
                                                                _eid34413478_
                                                                _id34423480_)
                                                         (if (gx#stx-pair?
                                                              _hd34353476_)
                                                             (let ((_e34383483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd34353476_)))
                       (let ((_lp-hd34393486_ (##car _e34383483_))
                             (_lp-tl34403488_ (##cdr _e34383483_)))
                         (if (gx#stx-pair? _lp-hd34393486_)
                             (let ((_e34453491_ (gx#stx-e _lp-hd34393486_)))
                               (let ((_hd34463494_ (##car _e34453491_))
                                     (_tl34473496_ (##cdr _e34453491_)))
                                 (if (gx#stx-pair? _tl34473496_)
                                     (let ((_e34483499_
                                            (gx#stx-e _tl34473496_)))
                                       (let ((_hd34493502_ (##car _e34483499_))
                                             (_tl34503504_
                                              (##cdr _e34483499_)))
                                         (if (gx#stx-null? _tl34503504_)
                                             (_loop34373473_
                                              _lp-tl34403488_
                                              (cons _hd34493502_ _eid34413478_)
                                              (cons _hd34463494_ _id34423480_))
                                             (_g34273455_ _g34283458_))))
                                     (_g34273455_ _g34283458_))))
                             (_g34273455_ _g34283458_))))
                     (let ((_eid34433507_ (reverse _eid34413478_))
                           (_id34443509_ (reverse _id34423480_)))
                       ((lambda (_L3512_ _L3513_)
                          (cons '%#extern
                                (map _generate13425_
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g35283531_
                                                        _g35293533_)
                                                 (cons _g35283531_
                                                       _g35293533_))
                                               '()
                                               _L3513_))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g35353538_
                                                        _g35363540_)
                                                 (cons _g35353538_
                                                       _g35363540_))
                                               '()
                                               _L3512_)))))
                        _eid34433507_
                        _id34443509_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop34373473_
                                                _target34343468_
                                                '()
                                                '()))
                                             (_g34273455_ _g34283458_)))))
                                   (_g34273455_ _g34283458_))
                               (_g34273455_ _g34283458_))))
                       (_g34273455_ _g34283458_)))))
            (_g34263543_ _stx3422_))))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx3217_ _state3218_)
      (let ((_generate13220_
             (lambda (_id3417_)
               (let ((_eid3419_ (gxc#generate-runtime-binding-id _id3417_))
                     (_ident3420_ (gxc#generate-runtime-identifier _id3417_)))
                 (cons '%#define-runtime
                       (cons _ident3420_ (cons _eid3419_ '())))))))
        (let ((_generate*3221_
               (lambda (_all3385_)
                 (let ((_all33863394_ _all3385_))
                   (let ((_E33893398_
                          (lambda ()
                            (error '"No clause matching" _all33863394_))))
                     (let ((_else33883402_
                            (lambda () (cons '%#begin _all3385_))))
                       (let ((_K33903407_ (lambda (_one3405_) _one3405_)))
                         (if (##pair? _all33863394_)
                             (let ((_hd33913410_ (##car _all33863394_))
                                   (_tl33923412_ (##cdr _all33863394_)))
                               (let ((_one3415_ _hd33913410_))
                                 (if (##null? _tl33923412_)
                                     (_K33903407_ _one3415_)
                                     (_else33883402_))))
                             (_else33883402_)))))))))
          (let ((_g32233240_
                 (lambda (_g32243237_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g32243237_))))
            (let ((_g32223382_
                   (lambda (_g32243243_)
                     (if (gx#stx-pair? _g32243243_)
                         (let ((_e32273245_ (gx#stx-e _g32243243_)))
                           (let ((_hd32283248_ (##car _e32273245_))
                                 (_tl32293250_ (##cdr _e32273245_)))
                             (if (gx#stx-pair? _tl32293250_)
                                 (let ((_e32303253_ (gx#stx-e _tl32293250_)))
                                   (let ((_hd32313256_ (##car _e32303253_))
                                         (_tl32323258_ (##cdr _e32303253_)))
                                     (if (gx#stx-pair? _tl32323258_)
                                         (let ((_e32333261_
                                                (gx#stx-e _tl32323258_)))
                                           (let ((_hd32343264_
                                                  (##car _e32333261_))
                                                 (_tl32353266_
                                                  (##cdr _e32333261_)))
                                             (if (gx#stx-null? _tl32353266_)
                                                 ((lambda (_L3269_ _L3270_)
                                                    ((letrec ((_lp3286_
                                                               (lambda (_rest3288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _r3289_)
                         (let ((_g32943310_
                                (lambda (_g32953307_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g32953307_))))
                           (let ((_g32933317_
                                  (lambda (_g32953313_)
                                    ((lambda ()
                                       (_generate*3221_ (reverse _r3289_)))))))
                             (let ((_g32923333_
                                    (lambda (_g32953320_)
                                      ((lambda (_L3322_)
                                         (if (gx#identifier? _L3322_)
                                             (_generate*3221_
                                              (foldl1 cons
                                                      (cons (_generate13220_
                                                             _L3322_)
                                                            '())
                                                      _r3289_))
                                             (_g32933317_ _g32953320_)))
                                       _g32953320_))))
                               (let ((_g32913357_
                                      (lambda (_g32953336_)
                                        (if (gx#stx-pair? _g32953336_)
                                            (let ((_e33023338_
                                                   (gx#stx-e _g32953336_)))
                                              (let ((_hd33033341_
                                                     (##car _e33023338_))
                                                    (_tl33043343_
                                                     (##cdr _e33023338_)))
                                                ((lambda (_L3346_ _L3347_)
                                                   (_lp3286_
                                                    _L3346_
                                                    (cons (_generate13220_
                                                           _L3347_)
                                                          _r3289_)))
                                                 _tl33043343_
                                                 _hd33033341_)))
                                            (_g32923333_ _g32953336_)))))
                                 (let ((_g32903379_
                                        (lambda (_g32953360_)
                                          (if (gx#stx-pair? _g32953360_)
                                              (let ((_e32973362_
                                                     (gx#stx-e _g32953360_)))
                                                (let ((_hd32983365_
                                                       (##car _e32973362_))
                                                      (_tl32993367_
                                                       (##cdr _e32973362_)))
                                                  (if (gx#stx-datum?
                                                       _hd32983365_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd32983365_)
                          '#f)
                  ((lambda (_L3370_) (_lp3286_ _L3370_ _r3289_)) _tl32993367_)
                  (_g32913357_ _g32953360_))
              (_g32913357_ _g32953360_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g32913357_ _g32953360_)))))
                                   (_g32903379_ _rest3288_)))))))))
               _lp3286_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _L3270_
                                                     '()))
                                                  _hd32343264_
                                                  _hd32313256_)
                                                 (_g32233240_ _g32243243_))))
                                         (_g32233240_ _g32243243_))))
                                 (_g32233240_ _g32243243_))))
                         (_g32233240_ _g32243243_)))))
              (_g32223382_ _stx3217_)))))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx3114_ _state3115_)
      (let ((_g31173134_
             (lambda (_g31183131_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g31183131_))))
        (let ((_g31163214_
               (lambda (_g31183137_)
                 (if (gx#stx-pair? _g31183137_)
                     (let ((_e31213139_ (gx#stx-e _g31183137_)))
                       (let ((_hd31223142_ (##car _e31213139_))
                             (_tl31233144_ (##cdr _e31213139_)))
                         (if (gx#stx-pair? _tl31233144_)
                             (let ((_e31243147_ (gx#stx-e _tl31233144_)))
                               (let ((_hd31253150_ (##car _e31243147_))
                                     (_tl31263152_ (##cdr _e31243147_)))
                                 (if (gx#stx-pair? _tl31263152_)
                                     (let ((_e31273155_
                                            (gx#stx-e _tl31263152_)))
                                       (let ((_hd31283158_ (##car _e31273155_))
                                             (_tl31293160_
                                              (##cdr _e31273155_)))
                                         (if (gx#stx-null? _tl31293160_)
                                             ((lambda (_L3163_ _L3164_)
                                                (let ((_eid3179_
                                                       (gxc#generate-runtime-binding-id
                                                        _L3164_)))
                                                  (let ((_phi3181_
                                                         (fx+ (gx#current-expander-phi)
                                                              '1)))
                                                    (let ((_block3183_
                                                           (gxc#meta-state-begin-phi!
                                                            _state3115_
                                                            _phi3181_)))
                                                      (let ()
                                                        (begin
                                                          (let ((_g31863193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g31873190_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g31873190_))))
                    (let ((_g31853211_
                           (lambda (_g31873196_)
                             ((lambda (_L3198_)
                                (let ()
                                  (gxc#meta-state-add-phi!
                                   _state3115_
                                   _phi3181_
                                   (cons (gx#datum->syntax__0
                                          '#f
                                          '%#define-runtime)
                                         (cons _L3198_ (cons _L3163_ '()))))))
                              _g31873196_))))
                      (_g31853211_ _eid3179_)))
                  (if _block3183_
                      (cons '%#begin
                            (cons (cons '%#begin-syntax
                                        (cons (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote (cons _block3183_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons '%#define-syntax
                                              (cons (gxc#generate-runtime-identifier
                                                     _L3164_)
                                                    (cons _eid3179_ '())))
                                        '())))
                      (cons '%#define-syntax
                            (cons (gxc#generate-runtime-identifier _L3164_)
                                  (cons _eid3179_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd31283158_
                                              _hd31253150_)
                                             (_g31173134_ _g31183137_))))
                                     (_g31173134_ _g31183137_))))
                             (_g31173134_ _g31183137_))))
                     (_g31173134_ _g31183137_)))))
          (_g31163214_ _stx3114_)))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx3046_ _state3047_)
      (let ((_g30493066_
             (lambda (_g30503063_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g30503063_))))
        (let ((_g30483111_
               (lambda (_g30503069_)
                 (if (gx#stx-pair? _g30503069_)
                     (let ((_e30533071_ (gx#stx-e _g30503069_)))
                       (let ((_hd30543074_ (##car _e30533071_))
                             (_tl30553076_ (##cdr _e30533071_)))
                         (if (gx#stx-pair? _tl30553076_)
                             (let ((_e30563079_ (gx#stx-e _tl30553076_)))
                               (let ((_hd30573082_ (##car _e30563079_))
                                     (_tl30583084_ (##cdr _e30563079_)))
                                 (if (gx#stx-pair? _tl30583084_)
                                     (let ((_e30593087_
                                            (gx#stx-e _tl30583084_)))
                                       (let ((_hd30603090_ (##car _e30593087_))
                                             (_tl30613092_
                                              (##cdr _e30593087_)))
                                         (if (gx#stx-null? _tl30613092_)
                                             ((lambda (_L3095_ _L3096_)
                                                (cons '%#define-alias
                                                      (cons (gxc#generate-runtime-identifier
                                                             _L3096_)
                                                            (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3095_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd30603090_
                                              _hd30573082_)
                                             (_g30493066_ _g30503069_))))
                                     (_g30493066_ _g30503069_))))
                             (_g30493066_ _g30503069_))))
                     (_g30493066_ _g30503069_)))))
          (_g30483111_ _stx3046_)))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx3043_ _state3044_)
      (begin
        (gxc#meta-state-add-phi!
         _state3044_
         (gx#current-expander-phi)
         _stx3043_)
        (gxc#generate-meta-define-values% _stx3043_ _state3044_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx3040_ _state3041_)
      (begin
        (gxc#meta-state-add-phi!
         _state3041_
         (gx#current-expander-phi)
         _stx3040_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type 'gxc#meta-state::t '#f '4 'meta-state '() ':init!))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args3037_
      (apply make-struct-instance gxc#meta-state::t _$args3037_)))
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
    (lambda (_self3034_ _ctx3035_)
      (direct-struct-instance-init!
       _self3034_
       (symbol->string
        (##structure-ref _ctx3035_ '1 gx#expander-context::t '#f))
       '1
       (make-hash-table-eq)
       '())))
  (bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f)
  (define gxc#meta-state-block::t
    (make-struct-type
     'gxc#meta-state-block::t
     '#f
     '4
     'meta-state-block
     '()
     '#f))
  (define gxc#meta-state-block?
    (make-struct-predicate gxc#meta-state-block::t))
  (define gxc#make-meta-state-block
    (lambda _$args3031_
      (apply make-struct-instance gxc#meta-state-block::t _$args3031_)))
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
    (lambda (_state2990_ _phi2991_)
      (let ((_state29923000_ _state2990_))
        (let ((_E29943004_
               (lambda () (error '"No clause matching" _state29923000_))))
          (let ((_K29953013_
                 (lambda (_open3007_ _n3008_ _src3009_)
                   (if (table-ref _open3007_ _phi2991_ '#f)
                       '#f
                       (let ((_block-ref3011_
                              (string-append
                               _src3009_
                               '"__"
                               (number->string _n3008_))))
                         (begin
                           (##structure-set!
                            _state2990_
                            (fx+ _n3008_ '1)
                            '2
                            gxc#meta-state::t
                            '#f)
                           (table-set!
                            _open3007_
                            _phi2991_
                            (##structure
                             gxc#meta-state-block::t
                             (gx#current-expander-context)
                             _phi2991_
                             _n3008_
                             '()))
                           _block-ref3011_))))))
            (if (struct-instance? gxc#meta-state::t _state29923000_)
                (let ((_e29963016_ (##vector-ref _state29923000_ '1)))
                  (let ((_src3019_ _e29963016_))
                    (let ((_e29973021_ (##vector-ref _state29923000_ '2)))
                      (let ((_n3024_ _e29973021_))
                        (let ((_e29983026_ (##vector-ref _state29923000_ '3)))
                          (let ((_open3029_ _e29983026_))
                            (_K29953013_ _open3029_ _n3024_ _src3019_)))))))
                (_E29943004_)))))))
  (define gxc#meta-state-add-phi!
    (lambda (_state2984_ _phi2985_ _stx2986_)
      (let ((_block2988_
             (table-ref
              (##structure-ref _state2984_ '3 gxc#meta-state::t '#f)
              _phi2985_
              '#f)))
        (##structure-set!
         _block2988_
         (cons _stx2986_
               (##structure-ref _block2988_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state2979_)
      (begin
        (##structure-set!
         _state2979_
         (hash-fold
          (lambda (_g9913_ _block2981_ _r2982_) (cons _block2981_ _r2982_))
          (##structure-ref _state2979_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state2979_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state2979_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state2931_)
      (begin
        (gxc#meta-state-end-phi! _state2931_)
        (foldl1 (lambda (_block2933_ _r2934_)
                  (let ((_block29352944_ _block2933_))
                    (let ((_E29372948_
                           (lambda ()
                             (error '"No clause matching" _block29352944_))))
                      (let ((_K29382956_
                             (lambda (_code2951_ _n2952_ _phi2953_ _ctx2954_)
                               (if (null? _code2951_)
                                   _r2934_
                                   (cons (cons _ctx2954_
                                               (cons _phi2953_
                                                     (cons _n2952_
                                                           (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (reverse _code2951_))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _r2934_)))))
                        (if (struct-instance?
                             gxc#meta-state-block::t
                             _block29352944_)
                            (let ((_e29392959_
                                   (##vector-ref _block29352944_ '1)))
                              (let ((_ctx2962_ _e29392959_))
                                (let ((_e29402964_
                                       (##vector-ref _block29352944_ '2)))
                                  (let ((_phi2967_ _e29402964_))
                                    (let ((_e29412969_
                                           (##vector-ref _block29352944_ '3)))
                                      (let ((_n2972_ _e29412969_))
                                        (let ((_e29422974_
                                               (##vector-ref
                                                _block29352944_
                                                '4)))
                                          (let ((_code2977_ _e29422974_))
                                            (_K29382956_
                                             _code2977_
                                             _n2972_
                                             _phi2967_
                                             _ctx2962_)))))))))
                            (_E29372948_))))))
                '()
                (##structure-ref _state2931_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx2927_)
      (let ((_ht2929_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx2927_ _ht2929_)
          _ht2929_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx2870_ _ht2871_)
      (let ((_g28732886_
             (lambda (_g28742883_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g28742883_))))
        (let ((_g28722924_
               (lambda (_g28742889_)
                 (if (gx#stx-pair? _g28742889_)
                     (let ((_e28762891_ (gx#stx-e _g28742889_)))
                       (let ((_hd28772894_ (##car _e28762891_))
                             (_tl28782896_ (##cdr _e28762891_)))
                         (if (gx#stx-pair? _tl28782896_)
                             (let ((_e28792899_ (gx#stx-e _tl28782896_)))
                               (let ((_hd28802902_ (##car _e28792899_))
                                     (_tl28812904_ (##cdr _e28792899_)))
                                 (if (gx#stx-null? _tl28812904_)
                                     ((lambda (_L2907_)
                                        (let ((_bind2919_
                                               (gx#resolve-identifier__0
                                                _L2907_)))
                                          (let ((_eid2921_
                                                 (if _bind2919_
                                                     (##structure-ref
                                                      _bind2919_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (gx#stx-e _L2907_))))
                                            (let ()
                                              (table-set!
                                               _ht2871_
                                               _eid2921_
                                               _eid2921_)))))
                                      _hd28802902_)
                                     (_g28732886_ _g28742889_))))
                             (_g28732886_ _g28742889_))))
                     (_g28732886_ _g28742889_)))))
          (_g28722924_ _stx2870_)))))
  (define gxc#collect-refs-setq%
    (lambda (_stx2797_ _ht2798_)
      (let ((_g28002817_
             (lambda (_g28012814_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g28012814_))))
        (let ((_g27992867_
               (lambda (_g28012820_)
                 (if (gx#stx-pair? _g28012820_)
                     (let ((_e28042822_ (gx#stx-e _g28012820_)))
                       (let ((_hd28052825_ (##car _e28042822_))
                             (_tl28062827_ (##cdr _e28042822_)))
                         (if (gx#stx-pair? _tl28062827_)
                             (let ((_e28072830_ (gx#stx-e _tl28062827_)))
                               (let ((_hd28082833_ (##car _e28072830_))
                                     (_tl28092835_ (##cdr _e28072830_)))
                                 (if (gx#stx-pair? _tl28092835_)
                                     (let ((_e28102838_
                                            (gx#stx-e _tl28092835_)))
                                       (let ((_hd28112841_ (##car _e28102838_))
                                             (_tl28122843_
                                              (##cdr _e28102838_)))
                                         (if (gx#stx-null? _tl28122843_)
                                             ((lambda (_L2846_ _L2847_)
                                                (let ((_bind2862_
                                                       (gx#resolve-identifier__0
                                                        _L2847_)))
                                                  (let ((_eid2864_
                                                         (if _bind2862_
                                                             (##structure-ref
                                                              _bind2862_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (gx#stx-e
                                                              _L2847_))))
                                                    (let ()
                                                      (begin
                                                        (table-set!
                                                         _ht2798_
                                                         _eid2864_
                                                         _eid2864_)
                                                        (gxc#compile-e
                                                         _L2846_
                                                         _ht2798_))))))
                                              _hd28112841_
                                              _hd28082833_)
                                             (_g28002817_ _g28012820_))))
                                     (_g28002817_ _g28012820_))))
                             (_g28002817_ _g28012820_))))
                     (_g28002817_ _g28012820_)))))
          (_g27992867_ _stx2797_)))))
  (define gxc#find-runtime-begin%
    (lambda (_stx2759_)
      (let ((_g27612771_
             (lambda (_g27622768_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g27622768_))))
        (let ((_g27602794_
               (lambda (_g27622774_)
                 (if (gx#stx-pair? _g27622774_)
                     (let ((_e27642776_ (gx#stx-e _g27622774_)))
                       (let ((_hd27652779_ (##car _e27642776_))
                             (_tl27662781_ (##cdr _e27642776_)))
                         ((lambda (_L2784_) (ormap1 gxc#compile-e _L2784_))
                          _tl27662781_)))
                     (_g27612771_ _g27622774_)))))
          (_g27602794_ _stx2759_))))))
