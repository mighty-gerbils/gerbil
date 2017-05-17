(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx9923_ . _args9924_)
      (let ((_g99269936_
             (lambda (_g99279933_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g99279933_))))
        (let ((_g99259964_
               (lambda (_g99279939_)
                 (if (gx#stx-pair? _g99279939_)
                     (let ((_e99299941_ (gx#stx-e _g99279939_)))
                       (let ((_hd99309944_ (##car _e99299941_))
                             (_tl99319946_ (##cdr _e99299941_)))
                         ((lambda (_L9949_)
                            (let ((_$e9959_
                                   (table-ref
                                    (gxc#current-compile-methods)
                                    (gx#stx-e _L9949_)
                                    '#f)))
                              (if _$e9959_
                                  ((lambda (_method9962_)
                                     (apply _method9962_ _stx9923_ _args9924_))
                                   _$e9959_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile; missing method"
                                   _stx9923_
                                   _L9949_))))
                          _hd99309944_)))
                     (_g99269936_ _g99279939_)))))
          (_g99259964_ _stx9923_)))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl9920_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl9920_ '%#lambda void)
           (table-set! _tbl9920_ '%#case-lambda void)
           (table-set! _tbl9920_ '%#let-values void)
           (table-set! _tbl9920_ '%#letrec-values void)
           (table-set! _tbl9920_ '%#letrec*-values void)
           (table-set! _tbl9920_ '%#quote void)
           (table-set! _tbl9920_ '%#quote-syntax void)
           (table-set! _tbl9920_ '%#call void)
           (table-set! _tbl9920_ '%#if void)
           (table-set! _tbl9920_ '%#ref void)
           (table-set! _tbl9920_ '%#set! void)
           (table-set! _tbl9920_ '%#struct-instance? void)
           (table-set! _tbl9920_ '%#struct-direct-instance? void)
           (table-set! _tbl9920_ '%#struct-ref void)
           (table-set! _tbl9920_ '%#struct-set! void)
           _tbl9920_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl9916_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl9916_ '%#begin void)
           (table-set! _tbl9916_ '%#begin-syntax void)
           (table-set! _tbl9916_ '%#begin-foreign void)
           (table-set! _tbl9916_ '%#module void)
           (table-set! _tbl9916_ '%#import void)
           (table-set! _tbl9916_ '%#export void)
           (table-set! _tbl9916_ '%#provide void)
           (table-set! _tbl9916_ '%#extern void)
           (table-set! _tbl9916_ '%#define-values void)
           (table-set! _tbl9916_ '%#define-syntax void)
           (table-set! _tbl9916_ '%#define-alias void)
           (table-set! _tbl9916_ '%#declare void)
           _tbl9916_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl9912_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9912_ (force gxc#&void-special-form))
           (hash-copy! _tbl9912_ (force gxc#&void-expression))
           _tbl9912_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl9908_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9908_ (force gxc#&void-expression))
           (hash-copy! _tbl9908_ (force gxc#&void-special-form))
           (table-set! _tbl9908_ '%#begin gxc#collect-begin%)
           (table-set! _tbl9908_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl9908_ '%#module gxc#collect-module%)
           (table-set!
            _tbl9908_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl9908_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl9908_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx9901_ . _args9903_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9901_ _args9903_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl9898_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9898_ (force gxc#&void))
           (table-set! _tbl9898_ '%#begin gxc#collect-begin%)
           (table-set! _tbl9898_ '%#module gxc#lift-modules-module%)
           _tbl9898_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx9891_ . _args9893_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9891_ _args9893_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl9888_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl9888_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl9888_ '%#begin-syntax false)
           (table-set! _tbl9888_ '%#begin-foreign true)
           (table-set! _tbl9888_ '%#module false)
           (table-set! _tbl9888_ '%#import false)
           (table-set! _tbl9888_ '%#export false)
           (table-set! _tbl9888_ '%#provide false)
           (table-set! _tbl9888_ '%#extern false)
           (table-set! _tbl9888_ '%#define-values true)
           (table-set! _tbl9888_ '%#define-syntax false)
           (table-set! _tbl9888_ '%#define-alias false)
           (table-set! _tbl9888_ '%#declare false)
           (table-set! _tbl9888_ '%#lambda true)
           (table-set! _tbl9888_ '%#case-lambda true)
           (table-set! _tbl9888_ '%#let-values true)
           (table-set! _tbl9888_ '%#letrec-values true)
           (table-set! _tbl9888_ '%#letrec*-values true)
           (table-set! _tbl9888_ '%#quote true)
           (table-set! _tbl9888_ '%#call true)
           (table-set! _tbl9888_ '%#if true)
           (table-set! _tbl9888_ '%#ref true)
           (table-set! _tbl9888_ '%#set! true)
           (table-set! _tbl9888_ '%#struct-instance? true)
           (table-set! _tbl9888_ '%#struct-direct-instance? true)
           (table-set! _tbl9888_ '%#struct-ref true)
           (table-set! _tbl9888_ '%#struct-set! true)
           _tbl9888_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx9881_ . _args9883_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9881_ _args9883_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl9878_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl9878_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl9878_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl9878_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set! _tbl9878_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl9878_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl9878_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl9878_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl9878_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl9878_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl9878_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl9878_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl9878_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl9878_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl9878_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl9878_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl9878_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl9878_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl9878_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl9878_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl9878_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl9878_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl9878_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl9878_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl9878_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl9878_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl9878_ '%#struct-set! gxc#generate-runtime-empty)
           _tbl9878_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl9874_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9874_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl9874_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl9874_ '%#import gxc#generate-runtime-loader-import%)
           _tbl9874_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx9867_ . _args9869_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9867_ _args9869_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl9864_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9864_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl9864_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl9864_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl9864_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl9864_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl9864_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl9864_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl9864_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl9864_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl9864_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl9864_ '%#quote gxc#generate-runtime-quote%)
           (table-set! _tbl9864_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl9864_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl9864_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl9864_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl9864_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl9864_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl9864_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl9864_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           _tbl9864_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx9857_ . _args9859_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9857_ _args9859_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl9854_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9854_ (force gxc#&generate-runtime))
           (table-set!
            _tbl9854_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (table-set!
            _tbl9854_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl9854_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx9847_ . _args9849_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9847_ _args9849_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl9844_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl9844_ '%#begin gxc#collect-begin%)
           (table-set! _tbl9844_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl9844_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl9844_ '%#let-values gxc#collect-body-let-values%)
           (table-set! _tbl9844_ '%#letrec-values gxc#collect-body-let-values%)
           (table-set!
            _tbl9844_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl9844_ '%#quote void)
           (table-set! _tbl9844_ '%#quote-syntax void)
           (table-set! _tbl9844_ '%#call gxc#collect-operands)
           (table-set! _tbl9844_ '%#if gxc#collect-operands)
           (table-set! _tbl9844_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl9844_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl9844_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl9844_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl9844_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl9844_ '%#struct-set! gxc#collect-operands)
           _tbl9844_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx9837_ . _args9839_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9837_ _args9839_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl9834_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9834_ (force gxc#&void-expression))
           (table-set! _tbl9834_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl9834_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl9834_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl9834_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl9834_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl9834_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl9834_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl9834_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl9834_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl9834_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl9834_ '%#begin-foreign void)
           (table-set! _tbl9834_ '%#declare void)
           _tbl9834_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx9827_ . _args9829_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9827_ _args9829_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl9824_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl9824_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl9824_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl9824_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl9824_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl9824_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set! _tbl9824_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl9824_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl9824_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl9824_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl9824_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl9824_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl9824_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl9824_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl9824_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl9824_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl9824_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl9824_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl9824_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl9824_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl9824_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set! _tbl9824_ '%#declare void)
           _tbl9824_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx9817_ . _args9819_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9817_ _args9819_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx9774_ . _args9775_)
      (let ((_g97779787_
             (lambda (_g97789784_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g97789784_))))
        (let ((_g97769814_
               (lambda (_g97789790_)
                 (if (gx#stx-pair? _g97789790_)
                     (let ((_e97809792_ (gx#stx-e _g97789790_)))
                       (let ((_hd97819795_ (##car _e97809792_))
                             (_tl97829797_ (##cdr _e97809792_)))
                         ((lambda (_L9800_)
                            (for-each
                             (lambda (_g98099811_)
                               (apply gxc#compile-e _g98099811_ _args9775_))
                             (gx#stx-e _L9800_)))
                          _tl97829797_)))
                     (_g97779787_ _g97789790_)))))
          (_g97769814_ _stx9774_)))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx9730_ . _args9731_)
      (let ((_g97339743_
             (lambda (_g97349740_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g97349740_))))
        (let ((_g97329771_
               (lambda (_g97349746_)
                 (if (gx#stx-pair? _g97349746_)
                     (let ((_e97369748_ (gx#stx-e _g97349746_)))
                       (let ((_hd97379751_ (##car _e97369748_))
                             (_tl97389753_ (##cdr _e97369748_)))
                         ((lambda (_L9756_)
                            (call-with-parameters
                             (lambda ()
                               (for-each
                                (lambda (_g97669768_)
                                  (apply gxc#compile-e _g97669768_ _args9731_))
                                (gx#stx-e _L9756_)))
                             gx#current-expander-phi
                             (fx+ (gx#current-expander-phi) '1)))
                          _tl97389753_)))
                     (_g97339743_ _g97349746_)))))
          (_g97329771_ _stx9730_)))))
  (define gxc#collect-module%
    (lambda (_stx9672_ . _args9673_)
      (let ((_g96759689_
             (lambda (_g96769686_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g96769686_))))
        (let ((_g96749727_
               (lambda (_g96769692_)
                 (if (gx#stx-pair? _g96769692_)
                     (let ((_e96799694_ (gx#stx-e _g96769692_)))
                       (let ((_hd96809697_ (##car _e96799694_))
                             (_tl96819699_ (##cdr _e96799694_)))
                         (if (gx#stx-pair? _tl96819699_)
                             (let ((_e96829702_ (gx#stx-e _tl96819699_)))
                               (let ((_hd96839705_ (##car _e96829702_))
                                     (_tl96849707_ (##cdr _e96829702_)))
                                 ((lambda (_L9710_ _L9711_)
                                    (let ((_ctx9724_
                                           (gx#syntax-local-e__0 _L9711_)))
                                      (call-with-parameters
                                       (lambda ()
                                         (apply gxc#compile-e
                                                (##structure-ref
                                                 _ctx9724_
                                                 '11
                                                 gx#module-context::t
                                                 '#f)
                                                _args9673_))
                                       gx#current-expander-context
                                       _ctx9724_)))
                                  _tl96849707_
                                  _hd96839705_)))
                             (_g96759689_ _g96769692_))))
                     (_g96759689_ _g96769692_)))))
          (_g96749727_ _stx9672_)))))
  (define gxc#collect-body-lambda%
    (lambda (_stx9604_ . _args9605_)
      (let ((_g96079624_
             (lambda (_g96089621_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g96089621_))))
        (let ((_g96069669_
               (lambda (_g96089627_)
                 (if (gx#stx-pair? _g96089627_)
                     (let ((_e96119629_ (gx#stx-e _g96089627_)))
                       (let ((_hd96129632_ (##car _e96119629_))
                             (_tl96139634_ (##cdr _e96119629_)))
                         (if (gx#stx-pair? _tl96139634_)
                             (let ((_e96149637_ (gx#stx-e _tl96139634_)))
                               (let ((_hd96159640_ (##car _e96149637_))
                                     (_tl96169642_ (##cdr _e96149637_)))
                                 (if (gx#stx-pair? _tl96169642_)
                                     (let ((_e96179645_
                                            (gx#stx-e _tl96169642_)))
                                       (let ((_hd96189648_ (##car _e96179645_))
                                             (_tl96199650_
                                              (##cdr _e96179645_)))
                                         (if (gx#stx-null? _tl96199650_)
                                             ((lambda (_L9653_ _L9654_)
                                                (apply gxc#compile-e
                                                       _L9653_
                                                       _args9605_))
                                              _hd96189648_
                                              _hd96159640_)
                                             (_g96079624_ _g96089627_))))
                                     (_g96079624_ _g96089627_))))
                             (_g96079624_ _g96089627_))))
                     (_g96079624_ _g96089627_)))))
          (_g96069669_ _stx9604_)))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx9486_ . _args9487_)
      (let ((_g94899517_
             (lambda (_g94909514_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g94909514_))))
        (let ((_g94889601_
               (lambda (_g94909520_)
                 (if (gx#stx-pair? _g94909520_)
                     (let ((_e94939522_ (gx#stx-e _g94909520_)))
                       (let ((_hd94949525_ (##car _e94939522_))
                             (_tl94959527_ (##cdr _e94939522_)))
                         (if (gx#stx-pair/null? _tl94959527_)
                             (if (fx>= (gx#stx-length _tl94959527_) '0)
                                 (let ((_g9966_ (gx#syntax-split-splice
                                                 _tl94959527_
                                                 '0)))
                                   (begin
                                     (let ((_g9967_ (values-count _g9966_)))
                                       (if (not (fx= _g9967_ 2))
                                           (error "Context expects 2 values"
                                                  _g9967_)))
                                     (let ((_target94969530_
                                            (values-ref _g9966_ 0))
                                           (_tl94989532_
                                            (values-ref _g9966_ 1)))
                                       (if (gx#stx-null? _tl94989532_)
                                           (letrec ((_loop94999535_
                                                     (lambda (_hd94979538_
                                                              _body95039540_
                                                              _hd95049542_)
                                                       (if (gx#stx-pair?
                                                            _hd94979538_)
                                                           (let ((_e95009545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd94979538_)))
                     (let ((_lp-hd95019548_ (##car _e95009545_))
                           (_lp-tl95029550_ (##cdr _e95009545_)))
                       (if (gx#stx-pair? _lp-hd95019548_)
                           (let ((_e95079553_ (gx#stx-e _lp-hd95019548_)))
                             (let ((_hd95089556_ (##car _e95079553_))
                                   (_tl95099558_ (##cdr _e95079553_)))
                               (if (gx#stx-pair? _tl95099558_)
                                   (let ((_e95109561_ (gx#stx-e _tl95099558_)))
                                     (let ((_hd95119564_ (##car _e95109561_))
                                           (_tl95129566_ (##cdr _e95109561_)))
                                       (if (gx#stx-null? _tl95129566_)
                                           (_loop94999535_
                                            _lp-tl95029550_
                                            (cons _hd95119564_ _body95039540_)
                                            (cons _hd95089556_ _hd95049542_))
                                           (_g94899517_ _g94909520_))))
                                   (_g94899517_ _g94909520_))))
                           (_g94899517_ _g94909520_))))
                   (let ((_body95059569_ (reverse _body95039540_))
                         (_hd95069571_ (reverse _hd95049542_)))
                     ((lambda (_L9574_ _L9575_)
                        (for-each
                         (lambda (_g95899591_)
                           (apply gxc#compile-e _g95899591_ _args9487_))
                         (begin
                           '#!void
                           (foldr1 (lambda (_g95939596_ _g95949598_)
                                     (cons _g95939596_ _g95949598_))
                                   '()
                                   _L9574_))))
                      _body95059569_
                      _hd95069571_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop94999535_
                                              _target94969530_
                                              '()
                                              '()))
                                           (_g94899517_ _g94909520_)))))
                                 (_g94899517_ _g94909520_))
                             (_g94899517_ _g94909520_))))
                     (_g94899517_ _g94909520_)))))
          (_g94889601_ _stx9486_)))))
  (define gxc#collect-body-let-values%
    (lambda (_stx9339_ . _args9340_)
      (let ((_g93429377_
             (lambda (_g93439374_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g93439374_))))
        (let ((_g93419483_
               (lambda (_g93439380_)
                 (if (gx#stx-pair? _g93439380_)
                     (let ((_e93479382_ (gx#stx-e _g93439380_)))
                       (let ((_hd93489385_ (##car _e93479382_))
                             (_tl93499387_ (##cdr _e93479382_)))
                         (if (gx#stx-pair? _tl93499387_)
                             (let ((_e93509390_ (gx#stx-e _tl93499387_)))
                               (let ((_hd93519393_ (##car _e93509390_))
                                     (_tl93529395_ (##cdr _e93509390_)))
                                 (if (gx#stx-pair/null? _hd93519393_)
                                     (if (fx>= (gx#stx-length _hd93519393_) '0)
                                         (let ((_g9968_ (gx#syntax-split-splice
                                                         _hd93519393_
                                                         '0)))
                                           (begin
                                             (let ((_g9969_ (values-count
                                                             _g9968_)))
                                               (if (not (fx= _g9969_ 2))
                                                   (error "Context expects 2 values"
                                                          _g9969_)))
                                             (let ((_target93539398_
                                                    (values-ref _g9968_ 0))
                                                   (_tl93559400_
                                                    (values-ref _g9968_ 1)))
                                               (if (gx#stx-null? _tl93559400_)
                                                   (letrec ((_loop93569403_
                                                             (lambda (_hd93549406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr93609408_
                              _hd93619410_)
                       (if (gx#stx-pair? _hd93549406_)
                           (let ((_e93579413_ (gx#stx-e _hd93549406_)))
                             (let ((_lp-hd93589416_ (##car _e93579413_))
                                   (_lp-tl93599418_ (##cdr _e93579413_)))
                               (if (gx#stx-pair? _lp-hd93589416_)
                                   (let ((_e93649421_
                                          (gx#stx-e _lp-hd93589416_)))
                                     (let ((_hd93659424_ (##car _e93649421_))
                                           (_tl93669426_ (##cdr _e93649421_)))
                                       (if (gx#stx-pair? _tl93669426_)
                                           (let ((_e93679429_
                                                  (gx#stx-e _tl93669426_)))
                                             (let ((_hd93689432_
                                                    (##car _e93679429_))
                                                   (_tl93699434_
                                                    (##cdr _e93679429_)))
                                               (if (gx#stx-null? _tl93699434_)
                                                   (_loop93569403_
                                                    _lp-tl93599418_
                                                    (cons _hd93689432_
                                                          _expr93609408_)
                                                    (cons _hd93659424_
                                                          _hd93619410_))
                                                   (_g93429377_ _g93439380_))))
                                           (_g93429377_ _g93439380_))))
                                   (_g93429377_ _g93439380_))))
                           (let ((_expr93629437_ (reverse _expr93609408_))
                                 (_hd93639439_ (reverse _hd93619410_)))
                             (if (gx#stx-pair? _tl93529395_)
                                 (let ((_e93709442_ (gx#stx-e _tl93529395_)))
                                   (let ((_hd93719445_ (##car _e93709442_))
                                         (_tl93729447_ (##cdr _e93709442_)))
                                     (if (gx#stx-null? _tl93729447_)
                                         ((lambda (_L9450_ _L9451_ _L9452_)
                                            (for-each
                                             (lambda (_g94719473_)
                                               (apply gxc#compile-e
                                                      _g94719473_
                                                      _args9340_))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g94759478_
                                                                _g94769480_)
                                                         (cons _g94759478_
                                                               _g94769480_))
                                                       (cons _L9450_ '())
                                                       _L9451_))))
                                          _hd93719445_
                                          _expr93629437_
                                          _hd93639439_)
                                         (_g93429377_ _g93439380_))))
                                 (_g93429377_ _g93439380_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop93569403_
                                                      _target93539398_
                                                      '()
                                                      '()))
                                                   (_g93429377_
                                                    _g93439380_)))))
                                         (_g93429377_ _g93439380_))
                                     (_g93429377_ _g93439380_))))
                             (_g93429377_ _g93439380_))))
                     (_g93429377_ _g93439380_)))))
          (_g93419483_ _stx9339_)))))
  (define gxc#collect-body-setq%
    (lambda (_stx9271_ . _args9272_)
      (let ((_g92749291_
             (lambda (_g92759288_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g92759288_))))
        (let ((_g92739336_
               (lambda (_g92759294_)
                 (if (gx#stx-pair? _g92759294_)
                     (let ((_e92789296_ (gx#stx-e _g92759294_)))
                       (let ((_hd92799299_ (##car _e92789296_))
                             (_tl92809301_ (##cdr _e92789296_)))
                         (if (gx#stx-pair? _tl92809301_)
                             (let ((_e92819304_ (gx#stx-e _tl92809301_)))
                               (let ((_hd92829307_ (##car _e92819304_))
                                     (_tl92839309_ (##cdr _e92819304_)))
                                 (if (gx#stx-pair? _tl92839309_)
                                     (let ((_e92849312_
                                            (gx#stx-e _tl92839309_)))
                                       (let ((_hd92859315_ (##car _e92849312_))
                                             (_tl92869317_
                                              (##cdr _e92849312_)))
                                         (if (gx#stx-null? _tl92869317_)
                                             ((lambda (_L9320_ _L9321_)
                                                (apply gxc#compile-e
                                                       _L9320_
                                                       _args9272_))
                                              _hd92859315_
                                              _hd92829307_)
                                             (_g92749291_ _g92759294_))))
                                     (_g92749291_ _g92759294_))))
                             (_g92749291_ _g92759294_))))
                     (_g92749291_ _g92759294_)))))
          (_g92739336_ _stx9271_)))))
  (define gxc#collect-operands
    (lambda (_stx9184_ . _args9185_)
      (let ((_g91879206_
             (lambda (_g91889203_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g91889203_))))
        (let ((_g91869268_
               (lambda (_g91889209_)
                 (if (gx#stx-pair? _g91889209_)
                     (let ((_e91909211_ (gx#stx-e _g91889209_)))
                       (let ((_hd91919214_ (##car _e91909211_))
                             (_tl91929216_ (##cdr _e91909211_)))
                         (if (gx#stx-pair/null? _tl91929216_)
                             (if (fx>= (gx#stx-length _tl91929216_) '0)
                                 (let ((_g9970_ (gx#syntax-split-splice
                                                 _tl91929216_
                                                 '0)))
                                   (begin
                                     (let ((_g9971_ (values-count _g9970_)))
                                       (if (not (fx= _g9971_ 2))
                                           (error "Context expects 2 values"
                                                  _g9971_)))
                                     (let ((_target91939219_
                                            (values-ref _g9970_ 0))
                                           (_tl91959221_
                                            (values-ref _g9970_ 1)))
                                       (if (gx#stx-null? _tl91959221_)
                                           (letrec ((_loop91969224_
                                                     (lambda (_hd91949227_
                                                              _rands92009229_)
                                                       (if (gx#stx-pair?
                                                            _hd91949227_)
                                                           (let ((_e91979232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd91949227_)))
                     (let ((_lp-hd91989235_ (##car _e91979232_))
                           (_lp-tl91999237_ (##cdr _e91979232_)))
                       (_loop91969224_
                        _lp-tl91999237_
                        (cons _lp-hd91989235_ _rands92009229_))))
                   (let ((_rands92019240_ (reverse _rands92009229_)))
                     ((lambda (_L9243_)
                        (for-each
                         (lambda (_g92569258_)
                           (apply gxc#compile-e _g92569258_ _args9185_))
                         (begin
                           '#!void
                           (foldr1 (lambda (_g92609263_ _g92619265_)
                                     (cons _g92609263_ _g92619265_))
                                   '()
                                   _L9243_))))
                      _rands92019240_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop91969224_
                                              _target91939219_
                                              '()))
                                           (_g91879206_ _g91889209_)))))
                                 (_g91879206_ _g91889209_))
                             (_g91879206_ _g91889209_))))
                     (_g91879206_ _g91889209_)))))
          (_g91869268_ _stx9184_)))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx9115_)
      (let ((_g91179134_
             (lambda (_g91189131_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g91189131_))))
        (let ((_g91169181_
               (lambda (_g91189137_)
                 (if (gx#stx-pair? _g91189137_)
                     (let ((_e91219139_ (gx#stx-e _g91189137_)))
                       (let ((_hd91229142_ (##car _e91219139_))
                             (_tl91239144_ (##cdr _e91219139_)))
                         (if (gx#stx-pair? _tl91239144_)
                             (let ((_e91249147_ (gx#stx-e _tl91239144_)))
                               (let ((_hd91259150_ (##car _e91249147_))
                                     (_tl91269152_ (##cdr _e91249147_)))
                                 (if (gx#stx-pair? _tl91269152_)
                                     (let ((_e91279155_
                                            (gx#stx-e _tl91269152_)))
                                       (let ((_hd91289158_ (##car _e91279155_))
                                             (_tl91299160_
                                              (##cdr _e91279155_)))
                                         (if (gx#stx-null? _tl91299160_)
                                             ((lambda (_L9163_ _L9164_)
                                                (gx#stx-for-each1
                                                 (lambda (_bind9179_)
                                                   (if (gx#identifier?
                                                        _bind9179_)
                                                       (gxc#add-module-binding!
                                                        _bind9179_
                                                        '#f)
                                                       '#!void))
                                                 _L9164_))
                                              _hd91289158_
                                              _hd91259150_)
                                             (_g91179134_ _g91189137_))))
                                     (_g91179134_ _g91189137_))))
                             (_g91179134_ _g91189137_))))
                     (_g91179134_ _g91189137_)))))
          (_g91169181_ _stx9115_)))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx9048_)
      (let ((_g90509067_
             (lambda (_g90519064_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g90519064_))))
        (let ((_g90499112_
               (lambda (_g90519070_)
                 (if (gx#stx-pair? _g90519070_)
                     (let ((_e90549072_ (gx#stx-e _g90519070_)))
                       (let ((_hd90559075_ (##car _e90549072_))
                             (_tl90569077_ (##cdr _e90549072_)))
                         (if (gx#stx-pair? _tl90569077_)
                             (let ((_e90579080_ (gx#stx-e _tl90569077_)))
                               (let ((_hd90589083_ (##car _e90579080_))
                                     (_tl90599085_ (##cdr _e90579080_)))
                                 (if (gx#stx-pair? _tl90599085_)
                                     (let ((_e90609088_
                                            (gx#stx-e _tl90599085_)))
                                       (let ((_hd90619091_ (##car _e90609088_))
                                             (_tl90629093_
                                              (##cdr _e90609088_)))
                                         (if (gx#stx-null? _tl90629093_)
                                             ((lambda (_L9096_ _L9097_)
                                                (gxc#add-module-binding!
                                                 _L9097_
                                                 '#t))
                                              _hd90619091_
                                              _hd90589083_)
                                             (_g90509067_ _g90519070_))))
                                     (_g90509067_ _g90519070_))))
                             (_g90509067_ _g90519070_))))
                     (_g90509067_ _g90519070_)))))
          (_g90499112_ _stx9048_)))))
  (define gxc#lift-modules-module%
    (lambda (_stx8990_ _modules8991_)
      (let ((_g89939007_
             (lambda (_g89949004_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g89949004_))))
        (let ((_g89929045_
               (lambda (_g89949010_)
                 (if (gx#stx-pair? _g89949010_)
                     (let ((_e89979012_ (gx#stx-e _g89949010_)))
                       (let ((_hd89989015_ (##car _e89979012_))
                             (_tl89999017_ (##cdr _e89979012_)))
                         (if (gx#stx-pair? _tl89999017_)
                             (let ((_e90009020_ (gx#stx-e _tl89999017_)))
                               (let ((_hd90019023_ (##car _e90009020_))
                                     (_tl90029025_ (##cdr _e90009020_)))
                                 ((lambda (_L9028_ _L9029_)
                                    (let ((_ctx9042_
                                           (gx#syntax-local-e__0 _L9029_)))
                                      (begin
                                        (set-box!
                                         _modules8991_
                                         (cons _ctx9042_
                                               (unbox _modules8991_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gxc#compile-e
                                            (##structure-ref
                                             _ctx9042_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            _modules8991_))
                                         gx#current-expander-context
                                         _ctx9042_))))
                                  _tl90029025_
                                  _hd90019023_)))
                             (_g89939007_ _g89949010_))))
                     (_g89939007_ _g89949010_)))))
          (_g89929045_ _stx8990_)))))
  (define gxc#add-module-binding!
    (lambda (_id8984_ _syntax?8985_)
      (let ((_eid8987_
             (##structure-ref
              (gx#resolve-identifier__0 _id8984_)
              '1
              gx#binding::t
              '#f))
            (_ht8988_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid8987_)
            '#!void
            (table-set!
             _ht8988_
             _eid8987_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid8987_)
              _syntax?8985_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id8965_)
      (let ((_bind8967_ (gx#resolve-identifier__0 _id8965_)))
        (if _bind8967_
            (let ((_eid8969_ (##structure-ref _bind8967_ '1 gx#binding::t '#f))
                  (_ht8970_
                   (##structure-ref
                    (gxc#current-compile-symbol-table)
                    '2
                    gxc#symbol-table::t
                    '#f)))
              (if (interned-symbol? _eid8969_)
                  _eid8969_
                  (let ((_$e8972_ (table-ref _ht8970_ _eid8969_ '#f)))
                    (if _$e8972_
                        (values _$e8972_)
                        (if (##structure-instance-of?
                             _bind8967_
                             'gx#local-binding::t)
                            (let ((_gid8975_
                                   (gxc#generate-runtime-gensym-reference__0
                                    _eid8969_)))
                              (begin
                                (table-set! _ht8970_ _eid8969_ _gid8975_)
                                _gid8975_))
                            (if (##structure-instance-of?
                                 _bind8967_
                                 'gx#module-binding::t)
                                (let ((_gid8982_
                                       (let ((_$e8977_
                                              (##structure-ref
                                               (##structure-ref
                                                _bind8967_
                                                '4
                                                gx#module-binding::t
                                                '#f)
                                               '6
                                               gx#module-context::t
                                               '#f)))
                                         (if _$e8977_
                                             ((lambda (_ns8980_)
                                                (make-symbol
                                                 _ns8980_
                                                 '"#"
                                                 _eid8969_))
                                              _$e8977_)
                                             (gxc#generate-runtime-gensym-reference__0
                                              _eid8969_)))))
                                  (begin
                                    (table-set! _ht8970_ _eid8969_ _gid8982_)
                                    _gid8982_))
                                (gxc#raise-compile-error
                                 '"Cannot compile reference to uninterned binding"
                                 _id8965_
                                 _eid8969_
                                 _bind8967_)))))))
            (if (interned-symbol? (gx#stx-e _id8965_))
                (gx#stx-e _id8965_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id8965_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id8963_)
      (if (gx#identifier? _id8963_)
          (gxc#generate-runtime-binding-id _id8963_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__opt-lambda8941
      (lambda (_sym8943_ _quote?8944_)
        (let ((_ht8946_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '1
                gxc#symbol-table::t
                '#f)))
          (let ((_$e8948_ (table-ref _ht8946_ _sym8943_ '#f)))
            (if _$e8948_
                (values _$e8948_)
                (let ((_g8951_ (if _quote?8944_
                                   (make-symbol
                                    '"__"
                                    _sym8943_
                                    '"__"
                                    (gxc#current-compile-timestamp))
                                   (make-symbol '"_" _sym8943_ '"_"))))
                  (begin (table-set! _ht8946_ _sym8943_ _g8951_) _g8951_)))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym8956_)
          (let ((_quote?8958_ '#f))
            (gxc#generate-runtime-gensym-reference__opt-lambda8941
             _sym8956_
             _quote?8958_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g9973_
          (let ((_g9972_ (length _g9973_)))
            (cond ((fx= _g9972_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g9973_))
                  ((fx= _g9972_ 2)
                   (apply gxc#generate-runtime-gensym-reference__opt-lambda8941
                          _g9973_))
                  (else (error "No clause matching arguments" _g9973_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id8940_)
      (gxc#generate-runtime-identifier-key (gx#core-identifier-key _id8940_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key8902_)
      (if (interned-symbol? _key8902_)
          _key8902_
          (if (uninterned-symbol? _key8902_)
              (gxc#generate-runtime-gensym-reference__0 _key8902_)
              (let ((_key89038910_ _key8902_))
                (let ((_E89058914_
                       (lambda ()
                         (error '"No clause matching" _key89038910_))))
                  (let ((_K89068928_
                         (lambda (_mark8917_ _eid8918_)
                           (let ((_$e8920_
                                  (##structure-ref
                                   _mark8917_
                                   '1
                                   gx#expander-mark::t
                                   '#f)))
                             (if _$e8920_
                                 ((lambda (_ht8923_)
                                    (let ((_$e8925_
                                           (table-ref _ht8923_ _eid8918_ '#f)))
                                      (if _$e8925_
                                          (values _$e8925_)
                                          (gxc#generate-runtime-identifier-key
                                           _eid8918_))))
                                  _$e8920_)
                                 (gxc#generate-runtime-identifier-key
                                  _eid8918_))))))
                    (if (##pair? _key89038910_)
                        (let ((_hd89078931_ (##car _key89038910_))
                              (_tl89088933_ (##cdr _key89038910_)))
                          (let ((_eid8936_ _hd89078931_))
                            (let ((_mark8938_ _tl89088933_))
                              (_K89068928_ _mark8938_ _eid8936_))))
                        (_E89058914_)))))))))
  (begin
    (define gxc#generate-runtime-temporary__opt-lambda8887
      (lambda (_top8889_)
        (if _top8889_
            (let ((_ns8891_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi8892_ (gx#current-expander-phi)))
              (if (fxpositive? _phi8892_)
                  (make-symbol
                   _ns8891_
                   '"["
                   (number->string _phi8892_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns8891_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top8898_ '#f))
            (gxc#generate-runtime-temporary__opt-lambda8887 _top8898_))))
      (define gxc#generate-runtime-temporary
        (lambda _g9975_
          (let ((_g9974_ (length _g9975_)))
            (cond ((fx= _g9974_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g9975_))
                  ((fx= _g9974_ 1)
                   (apply gxc#generate-runtime-temporary__opt-lambda8887
                          _g9975_))
                  (else (error "No clause matching arguments" _g9975_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx8886_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx8806_)
      (let ((_g88088818_
             (lambda (_g88098815_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g88098815_))))
        (let ((_g88078883_
               (lambda (_g88098821_)
                 (if (gx#stx-pair? _g88098821_)
                     (let ((_e88118823_ (gx#stx-e _g88098821_)))
                       (let ((_hd88128826_ (##car _e88118823_))
                             (_tl88138828_ (##cdr _e88118823_)))
                         ((lambda (_L8831_)
                            (let ((_body8841_
                                   (gx#stx-map1 gxc#compile-e _L8831_)))
                              (let ((_body8880_
                                     (filter (lambda (_stx8843_)
                                               (let ((_g88468855_
                                                      (lambda (_g88478852_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g88478852_))))
                                                 (let ((_g88458862_
                                                        (lambda (_g88478858_)
                                                          ((lambda () '#t)))))
                                                   (let ((_g88448877_
                                                          (lambda (_g88478865_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g88478865_)
                        (let ((_e88488867_ (gx#stx-e _g88478865_)))
                          (let ((_hd88498870_ (##car _e88488867_))
                                (_tl88508872_ (##cdr _e88488867_)))
                            (if (gx#identifier? _hd88498870_)
                                (if (gx#stx-eq? 'begin _hd88498870_)
                                    (if (gx#stx-null? _tl88508872_)
                                        ((lambda () '#f))
                                        (_g88458862_ _g88478865_))
                                    (_g88458862_ _g88478865_))
                                (_g88458862_ _g88478865_))))
                        (_g88458862_ _g88478865_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g88448877_
                                                      _stx8843_)))))
                                             _body8841_)))
                                (let ()
                                  (if (fx= (length _body8880_) '1)
                                      (car _body8880_)
                                      (cons 'begin _body8880_))))))
                          _tl88138828_)))
                     (_g88088818_ _g88098821_)))))
          (_g88078883_ _stx8806_)))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx8768_)
      (let ((_g87708780_
             (lambda (_g87718777_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g87718777_))))
        (let ((_g87698803_
               (lambda (_g87718783_)
                 (if (gx#stx-pair? _g87718783_)
                     (let ((_e87738785_ (gx#stx-e _g87718783_)))
                       (let ((_hd87748788_ (##car _e87738785_))
                             (_tl87758790_ (##cdr _e87738785_)))
                         ((lambda (_L8793_)
                            (cons 'begin (gx#syntax->datum _L8793_)))
                          _tl87758790_)))
                     (_g87708780_ _g87718783_)))))
          (_g87698803_ _stx8768_)))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx8730_)
      (let ((_g87328742_
             (lambda (_g87338739_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g87338739_))))
        (let ((_g87318765_
               (lambda (_g87338745_)
                 (if (gx#stx-pair? _g87338745_)
                     (let ((_e87358747_ (gx#stx-e _g87338745_)))
                       (let ((_hd87368750_ (##car _e87358747_))
                             (_tl87378752_ (##cdr _e87358747_)))
                         ((lambda (_L8755_)
                            (cons 'declare (map gx#syntax->datum _L8755_)))
                          _tl87378752_)))
                     (_g87328742_ _g87338745_)))))
          (_g87318765_ _stx8730_)))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx8494_)
      (let ((_g84968513_
             (lambda (_g84978510_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g84978510_))))
        (let ((_g84958727_
               (lambda (_g84978516_)
                 (if (gx#stx-pair? _g84978516_)
                     (let ((_e85008518_ (gx#stx-e _g84978516_)))
                       (let ((_hd85018521_ (##car _e85008518_))
                             (_tl85028523_ (##cdr _e85008518_)))
                         (if (gx#stx-pair? _tl85028523_)
                             (let ((_e85038526_ (gx#stx-e _tl85028523_)))
                               (let ((_hd85048529_ (##car _e85038526_))
                                     (_tl85058531_ (##cdr _e85038526_)))
                                 (if (gx#stx-pair? _tl85058531_)
                                     (let ((_e85068534_
                                            (gx#stx-e _tl85058531_)))
                                       (let ((_hd85078537_ (##car _e85068534_))
                                             (_tl85088539_
                                              (##cdr _e85068534_)))
                                         (if (gx#stx-null? _tl85088539_)
                                             ((lambda (_L8542_ _L8543_)
                                                (let ((_g85608573_
                                                       (lambda (_g85618570_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g85618570_))))
                                                  (let ((_g85598687_
                                                         (lambda (_g85618576_)
                                                           ((lambda ()
                                                              (let ((_tmp8580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gxc#generate-runtime-temporary__opt-lambda8887
                              '#t)))
                        (let ((_body8684_
                               ((letrec ((_lp8582_
                                          (lambda (_rest8584_ _k8585_ _r8586_)
                                            (let ((_g85918607_
                                                   (lambda (_g85928604_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g85928604_))))
                                              (let ((_g85908614_
                                                     (lambda (_g85928610_)
                                                       ((lambda ()
                                                          (reverse _r8586_))))))
                                                (let ((_g85898635_
                                                       (lambda (_g85928617_)
                                                         ((lambda (_L8619_)
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L8619_)
                        (foldl1 cons
                                (cons (cons 'define
                                            (cons (gxc#generate-runtime-binding-id
                                                   _L8619_)
                                                  (cons (cons 'values->list
                                                              (cons _tmp8580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _k8585_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())
                                _r8586_)
                        (_g85908614_ _g85928617_)))
                  _g85928617_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g85888659_
                                                         (lambda (_g85928638_)
                                                           (if (gx#stx-pair?
                                                                _g85928638_)
                                                               (let ((_e85998640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _g85928638_)))
                         (let ((_hd86008643_ (##car _e85998640_))
                               (_tl86018645_ (##cdr _e85998640_)))
                           ((lambda (_L8648_ _L8649_)
                              (_lp8582_
                               _L8648_
                               (fx+ _k8585_ '1)
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L8649_)
                                                 (cons (cons 'values-ref
                                                             (cons _tmp8580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k8585_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _r8586_)))
                            _tl86018645_
                            _hd86008643_)))
                       (_g85898635_ _g85928638_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g85878681_
                                                           (lambda (_g85928662_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g85928662_)
                         (let ((_e85948664_ (gx#stx-e _g85928662_)))
                           (let ((_hd85958667_ (##car _e85948664_))
                                 (_tl85968669_ (##cdr _e85948664_)))
                             (if (gx#stx-datum? _hd85958667_)
                                 (if (equal? (gx#stx-e _hd85958667_) '#f)
                                     ((lambda (_L8672_)
                                        (_lp8582_
                                         _L8672_
                                         (fx+ _k8585_ '1)
                                         _r8586_))
                                      _tl85968669_)
                                     (_g85888659_ _g85928662_))
                                 (_g85888659_ _g85928662_))))
                         (_g85888659_ _g85928662_)))))
              (_g85878681_ _rest8584_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp8582_)
                                _L8543_
                                '0
                                '())))
                          (let ()
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons _tmp8580_
                                                    (cons (gxc#compile-e
                                                           _L8542_)
                                                          '())))
                                        (cons (gxc#generate-runtime-check-values
                                               _tmp8580_
                                               _L8543_)
                                              _body8684_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g85588709_
                                                           (lambda (_g85618690_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g85618690_)
                         (let ((_e85668692_ (gx#stx-e _g85618690_)))
                           (let ((_hd85678695_ (##car _e85668692_))
                                 (_tl85688697_ (##cdr _e85668692_)))
                             (if (gx#stx-null? _tl85688697_)
                                 ((lambda (_L8700_)
                                    (cons 'define
                                          (cons (gxc#generate-runtime-binding-id
                                                 _L8700_)
                                                (cons (gxc#compile-e _L8542_)
                                                      '()))))
                                  _hd85678695_)
                                 (_g85598687_ _g85618690_))))
                         (_g85598687_ _g85618690_)))))
              (let ((_g85578724_
                     (lambda (_g85618712_)
                       (if (gx#stx-pair? _g85618712_)
                           (let ((_e85628714_ (gx#stx-e _g85618712_)))
                             (let ((_hd85638717_ (##car _e85628714_))
                                   (_tl85648719_ (##cdr _e85628714_)))
                               (if (gx#stx-datum? _hd85638717_)
                                   (if (equal? (gx#stx-e _hd85638717_) '#f)
                                       (if (gx#stx-null? _tl85648719_)
                                           ((lambda ()
                                              (gxc#compile-e _L8542_)))
                                           (_g85588709_ _g85618712_))
                                       (_g85588709_ _g85618712_))
                                   (_g85588709_ _g85618712_))))
                           (_g85588709_ _g85618712_)))))
                (_g85578724_ _L8543_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd85078537_
                                              _hd85048529_)
                                             (_g84968513_ _g84978516_))))
                                     (_g84968513_ _g84978516_))))
                             (_g84968513_ _g84978516_))))
                     (_g84968513_ _g84978516_)))))
          (_g84958727_ _stx8494_)))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals8482_ _hd8483_)
      (let ((_len8485_ (gx#stx-length _hd8483_)))
        (let ((_cmp8487_ (if (gx#stx-list? _hd8483_) 'fx= 'fx>=)))
          (let ((_errmsg8489_
                 (string-append
                  (if (gx#stx-list? _hd8483_)
                      '"Context expects "
                      '"Context expects at least ")
                  (number->string _len8485_)
                  '" values")))
            (let ((_count8491_ (gxc#generate-runtime-temporary__0)))
              (let ()
                (if (if (not (gx#stx-list? _hd8483_)) (fx= _len8485_ '0) '#f)
                    '#!void
                    (cons 'let
                          (cons (cons (cons _count8491_
                                            (cons (cons 'values-count
                                                        (cons _vals8482_ '()))
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (cons _cmp8487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count8491_ (cons _len8485_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _errmsg8489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count8491_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx8415_)
      (let ((_g84178434_
             (lambda (_g84188431_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g84188431_))))
        (let ((_g84168479_
               (lambda (_g84188437_)
                 (if (gx#stx-pair? _g84188437_)
                     (let ((_e84218439_ (gx#stx-e _g84188437_)))
                       (let ((_hd84228442_ (##car _e84218439_))
                             (_tl84238444_ (##cdr _e84218439_)))
                         (if (gx#stx-pair? _tl84238444_)
                             (let ((_e84248447_ (gx#stx-e _tl84238444_)))
                               (let ((_hd84258450_ (##car _e84248447_))
                                     (_tl84268452_ (##cdr _e84248447_)))
                                 (if (gx#stx-pair? _tl84268452_)
                                     (let ((_e84278455_
                                            (gx#stx-e _tl84268452_)))
                                       (let ((_hd84288458_ (##car _e84278455_))
                                             (_tl84298460_
                                              (##cdr _e84278455_)))
                                         (if (gx#stx-null? _tl84298460_)
                                             ((lambda (_L8463_ _L8464_)
                                                (cons 'lambda
                                                      (cons (gxc#generate-runtime-lambda-head
                                                             _L8464_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L8463_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd84288458_
                                              _hd84258450_)
                                             (_g84178434_ _g84188437_))))
                                     (_g84178434_ _g84188437_))))
                             (_g84178434_ _g84188437_))))
                     (_g84178434_ _g84188437_)))))
          (_g84168479_ _stx8415_)))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd8413_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd8413_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx6950_)
      (let ((_runtime-identifier=?6952_
             (lambda (_id-stx8404_ _sym8405_)
               (let ((_bind84068408_ (gx#resolve-identifier__0 _id-stx8404_)))
                 (if _bind84068408_
                     (let ((_bind8411_ _bind84068408_))
                       (eq? (##structure-ref _bind8411_ '1 gx#binding::t '#f)
                            _sym8405_))
                     '#f)))))
        (let ((_dispatch-case?6953_
               (lambda (_hd7634_ _body7635_)
                 (let ((_form7637_ (cons _hd7634_ (cons _body7635_ '()))))
                   (let ((_g76427799_
                          (lambda (_g76437796_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g76437796_))))
                     (let ((_g76417806_
                            (lambda (_g76437802_) ((lambda () '#f)))))
                       (let ((_g76407947_
                              (lambda (_g76437809_)
                                (if (gx#stx-pair? _g76437809_)
                                    (let ((_e77597811_ (gx#stx-e _g76437809_)))
                                      (let ((_hd77607814_ (##car _e77597811_))
                                            (_tl77617816_ (##cdr _e77597811_)))
                                        (if (gx#stx-pair? _tl77617816_)
                                            (let ((_e77627819_
                                                   (gx#stx-e _tl77617816_)))
                                              (let ((_hd77637822_
                                                     (##car _e77627819_))
                                                    (_tl77647824_
                                                     (##cdr _e77627819_)))
                                                (if (gx#stx-pair? _hd77637822_)
                                                    (let ((_e77657827_
                                                           (gx#stx-e
                                                            _hd77637822_)))
                                                      (let ((_hd77667830_
                                                             (##car _e77657827_))
                                                            (_tl77677832_
                                                             (##cdr _e77657827_)))
                                                        (if (gx#identifier?
                                                             _hd77667830_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd77667830_)
                        (if (gx#stx-pair? _tl77677832_)
                            (let ((_e77687835_ (gx#stx-e _tl77677832_)))
                              (let ((_hd77697838_ (##car _e77687835_))
                                    (_tl77707840_ (##cdr _e77687835_)))
                                (if (gx#stx-pair? _hd77697838_)
                                    (let ((_e77717843_
                                           (gx#stx-e _hd77697838_)))
                                      (let ((_hd77727846_ (##car _e77717843_))
                                            (_tl77737848_ (##cdr _e77717843_)))
                                        (if (gx#identifier? _hd77727846_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd77727846_)
                                                (if (gx#stx-pair? _tl77737848_)
                                                    (let ((_e77747851_
                                                           (gx#stx-e
                                                            _tl77737848_)))
                                                      (let ((_hd77757854_
                                                             (##car _e77747851_))
                                                            (_tl77767856_
                                                             (##cdr _e77747851_)))
                                                        (if (gx#stx-null?
                                                             _tl77767856_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl77707840_)
                        (let ((_e77777859_ (gx#stx-e _tl77707840_)))
                          (let ((_hd77787862_ (##car _e77777859_))
                                (_tl77797864_ (##cdr _e77777859_)))
                            (if (gx#stx-pair? _hd77787862_)
                                (let ((_e77807867_ (gx#stx-e _hd77787862_)))
                                  (let ((_hd77817870_ (##car _e77807867_))
                                        (_tl77827872_ (##cdr _e77807867_)))
                                    (if (gx#identifier? _hd77817870_)
                                        (if (gx#stx-eq? '%#ref _hd77817870_)
                                            (if (gx#stx-pair? _tl77827872_)
                                                (let ((_e77837875_
                                                       (gx#stx-e
                                                        _tl77827872_)))
                                                  (let ((_hd77847878_
                                                         (##car _e77837875_))
                                                        (_tl77857880_
                                                         (##cdr _e77837875_)))
                                                    (if (gx#stx-null?
                                                         _tl77857880_)
                                                        (if (gx#stx-pair?
                                                             _tl77797864_)
                                                            (let ((_e77867883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl77797864_)))
                      (let ((_hd77877886_ (##car _e77867883_))
                            (_tl77887888_ (##cdr _e77867883_)))
                        (if (gx#stx-pair? _hd77877886_)
                            (let ((_e77897891_ (gx#stx-e _hd77877886_)))
                              (let ((_hd77907894_ (##car _e77897891_))
                                    (_tl77917896_ (##cdr _e77897891_)))
                                (if (gx#identifier? _hd77907894_)
                                    (if (gx#stx-eq? '%#ref _hd77907894_)
                                        (if (gx#stx-pair? _tl77917896_)
                                            (let ((_e77927899_
                                                   (gx#stx-e _tl77917896_)))
                                              (let ((_hd77937902_
                                                     (##car _e77927899_))
                                                    (_tl77947904_
                                                     (##cdr _e77927899_)))
                                                (if (gx#stx-null? _tl77947904_)
                                                    (if (gx#stx-null?
                                                         _tl77887888_)
                                                        (if (gx#stx-null?
                                                             _tl77647824_)
                                                            ((lambda (_L7907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L7908_
                              _L7909_
                              _L7910_)
                       (if (if (gx#identifier? _L7910_)
                               (if (_runtime-identifier=?6952_ _L7909_ 'apply)
                                   (if (gx#free-identifier=? _L7910_ _L7907_)
                                       (not (gx#free-identifier=?
                                             _L7908_
                                             _L7910_))
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g76417806_ _g76437809_)))
                     _hd77937902_
                     _hd77847878_
                     _hd77757854_
                     _hd77607814_)
                    (_g76417806_ _g76437809_))
                (_g76417806_ _g76437809_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g76417806_
                                                     _g76437809_))))
                                            (_g76417806_ _g76437809_))
                                        (_g76417806_ _g76437809_))
                                    (_g76417806_ _g76437809_))))
                            (_g76417806_ _g76437809_))))
                    (_g76417806_ _g76437809_))
                (_g76417806_ _g76437809_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g76417806_ _g76437809_))
                                            (_g76417806_ _g76437809_))
                                        (_g76417806_ _g76437809_))))
                                (_g76417806_ _g76437809_))))
                        (_g76417806_ _g76437809_))
                    (_g76417806_ _g76437809_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g76417806_ _g76437809_))
                                                (_g76417806_ _g76437809_))
                                            (_g76417806_ _g76437809_))))
                                    (_g76417806_ _g76437809_))))
                            (_g76417806_ _g76437809_))
                        (_g76417806_ _g76437809_))
                    (_g76417806_ _g76437809_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g76417806_
                                                     _g76437809_))))
                                            (_g76417806_ _g76437809_))))
                                    (_g76417806_ _g76437809_)))))
                         (let ((_g76398207_
                                (lambda (_g76437950_)
                                  (if (gx#stx-pair? _g76437950_)
                                      (let ((_e76957952_
                                             (gx#stx-e _g76437950_)))
                                        (let ((_hd76967955_
                                               (##car _e76957952_))
                                              (_tl76977957_
                                               (##cdr _e76957952_)))
                                          (if (gx#stx-pair/null? _hd76967955_)
                                              (if (fx>= (gx#stx-length
                                                         _hd76967955_)
                                                        '0)
                                                  (let ((_g9984_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd76967955_
                          '0)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g9985_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g9984_)))
                (if (not (fx= _g9985_ 2))
                    (error "Context expects 2 values" _g9985_)))
              (let ((_target76987960_ (values-ref _g9984_ 0))
                    (_tl77007962_ (values-ref _g9984_ 1)))
                (letrec ((_loop77017965_
                          (lambda (_hd76997968_ _arg77057970_)
                            (if (gx#stx-pair? _hd76997968_)
                                (let ((_e77027973_ (gx#stx-e _hd76997968_)))
                                  (let ((_lp-hd77037976_ (##car _e77027973_))
                                        (_lp-tl77047978_ (##cdr _e77027973_)))
                                    (_loop77017965_
                                     _lp-tl77047978_
                                     (cons _lp-hd77037976_ _arg77057970_))))
                                (let ((_arg77067981_ (reverse _arg77057970_)))
                                  (if (gx#stx-pair? _tl76977957_)
                                      (let ((_e77077984_
                                             (gx#stx-e _tl76977957_)))
                                        (let ((_hd77087987_
                                               (##car _e77077984_))
                                              (_tl77097989_
                                               (##cdr _e77077984_)))
                                          (if (gx#stx-pair? _hd77087987_)
                                              (let ((_e77107992_
                                                     (gx#stx-e _hd77087987_)))
                                                (let ((_hd77117995_
                                                       (##car _e77107992_))
                                                      (_tl77127997_
                                                       (##cdr _e77107992_)))
                                                  (if (gx#identifier?
                                                       _hd77117995_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd77117995_)
                                                          (if (gx#stx-pair?
                                                               _tl77127997_)
                                                              (let ((_e77138000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl77127997_)))
                        (let ((_hd77148003_ (##car _e77138000_))
                              (_tl77158005_ (##cdr _e77138000_)))
                          (if (gx#stx-pair? _hd77148003_)
                              (let ((_e77168008_ (gx#stx-e _hd77148003_)))
                                (let ((_hd77178011_ (##car _e77168008_))
                                      (_tl77188013_ (##cdr _e77168008_)))
                                  (if (gx#identifier? _hd77178011_)
                                      (if (gx#stx-eq? '%#ref _hd77178011_)
                                          (if (gx#stx-pair? _tl77188013_)
                                              (let ((_e77198016_
                                                     (gx#stx-e _tl77188013_)))
                                                (let ((_hd77208019_
                                                       (##car _e77198016_))
                                                      (_tl77218021_
                                                       (##cdr _e77198016_)))
                                                  (if (gx#stx-null?
                                                       _tl77218021_)
                                                      (if (gx#stx-pair?
                                                           _tl77158005_)
                                                          (let ((_e77228024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl77158005_)))
                    (let ((_hd77238027_ (##car _e77228024_))
                          (_tl77248029_ (##cdr _e77228024_)))
                      (if (gx#stx-pair? _hd77238027_)
                          (let ((_e77258032_ (gx#stx-e _hd77238027_)))
                            (let ((_hd77268035_ (##car _e77258032_))
                                  (_tl77278037_ (##cdr _e77258032_)))
                              (if (gx#identifier? _hd77268035_)
                                  (if (gx#stx-eq? '%#ref _hd77268035_)
                                      (if (gx#stx-pair? _tl77278037_)
                                          (let ((_e77288040_
                                                 (gx#stx-e _tl77278037_)))
                                            (let ((_hd77298043_
                                                   (##car _e77288040_))
                                                  (_tl77308045_
                                                   (##cdr _e77288040_)))
                                              (if (gx#stx-null? _tl77308045_)
                                                  (if (gx#stx-pair/null?
                                                       _tl77248029_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl77248029_)
                        '1)
                  (let ((_g9986_ (gx#syntax-split-splice _tl77248029_ '1)))
                    (begin
                      (let ((_g9987_ (values-count _g9986_)))
                        (if (not (fx= _g9987_ 2))
                            (error "Context expects 2 values" _g9987_)))
                      (let ((_target77318048_ (values-ref _g9986_ 0))
                            (_tl77338050_ (values-ref _g9986_ 1)))
                        (if (gx#stx-pair? _tl77338050_)
                            (let ((_e77408053_ (gx#stx-e _tl77338050_)))
                              (let ((_hd77418056_ (##car _e77408053_))
                                    (_tl77428058_ (##cdr _e77408053_)))
                                (if (gx#stx-pair? _hd77418056_)
                                    (let ((_e77438061_
                                           (gx#stx-e _hd77418056_)))
                                      (let ((_hd77448064_ (##car _e77438061_))
                                            (_tl77458066_ (##cdr _e77438061_)))
                                        (if (gx#identifier? _hd77448064_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd77448064_)
                                                (if (gx#stx-pair? _tl77458066_)
                                                    (let ((_e77468069_
                                                           (gx#stx-e
                                                            _tl77458066_)))
                                                      (let ((_hd77478072_
                                                             (##car _e77468069_))
                                                            (_tl77488074_
                                                             (##cdr _e77468069_)))
                                                        (if (gx#stx-null?
                                                             _tl77488074_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl77428058_)
                        (letrec ((_loop77348077_
                                  (lambda (_hd77328080_ _xarg77388082_)
                                    (if (gx#stx-pair? _hd77328080_)
                                        (let ((_e77358085_
                                               (gx#stx-e _hd77328080_)))
                                          (let ((_lp-hd77368088_
                                                 (##car _e77358085_))
                                                (_lp-tl77378090_
                                                 (##cdr _e77358085_)))
                                            (if (gx#stx-pair? _lp-hd77368088_)
                                                (let ((_e77498093_
                                                       (gx#stx-e
                                                        _lp-hd77368088_)))
                                                  (let ((_hd77508096_
                                                         (##car _e77498093_))
                                                        (_tl77518098_
                                                         (##cdr _e77498093_)))
                                                    (if (gx#identifier?
                                                         _hd77508096_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd77508096_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl77518098_)
                        (let ((_e77528101_ (gx#stx-e _tl77518098_)))
                          (let ((_hd77538104_ (##car _e77528101_))
                                (_tl77548106_ (##cdr _e77528101_)))
                            (if (gx#stx-null? _tl77548106_)
                                (_loop77348077_
                                 _lp-tl77378090_
                                 (cons _hd77538104_ _xarg77388082_))
                                (_g76407947_ _g76437950_))))
                        (_g76407947_ _g76437950_))
                    (_g76407947_ _g76437950_))
                (_g76407947_ _g76437950_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g76407947_ _g76437950_))))
                                        (let ((_xarg77398109_
                                               (reverse _xarg77388082_)))
                                          (if (gx#stx-null? _tl77097989_)
                                              ((lambda (_L8112_
                                                        _L8113_
                                                        _L8114_
                                                        _L8115_
                                                        _L8116_
                                                        _L8117_)
                                                 (if (if (gx#identifier-list?
                                                          (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g81608163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g81618165_)
                              (cons _g81608163_ _g81618165_))
                            '()
                            _L8117_)))
                 (if (gx#identifier? _L8116_)
                     (if (_runtime-identifier=?6952_ _L8115_ 'apply)
                         (if (fx= (length (begin
                                            '#!void
                                            (foldr1 (lambda (_g81678170_
                                                             _g81688172_)
                                                      (cons _g81678170_
                                                            _g81688172_))
                                                    '()
                                                    _L8117_)))
                                  (length (begin
                                            '#!void
                                            (foldr1 (lambda (_g81748177_
                                                             _g81758179_)
                                                      (cons _g81748177_
                                                            _g81758179_))
                                                    '()
                                                    _L8113_))))
                             (if (andmap gx#free-identifier=?
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g81818184_
                                                            _g81828186_)
                                                     (cons _g81818184_
                                                           _g81828186_))
                                                   '()
                                                   _L8117_))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g81888191_
                                                            _g81898193_)
                                                     (cons _g81888191_
                                                           _g81898193_))
                                                   '()
                                                   _L8113_)))
                                 (if (gx#free-identifier=? _L8116_ _L8112_)
                                     (not (find (lambda (_g81958197_)
                                                  (gx#free-identifier=?
                                                   _g81958197_
                                                   _L8114_))
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g81998202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g82008204_)
                    (cons _g81998202_ _g82008204_))
                  (cons _L8116_ '())
                  _L8117_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '#f)
                                 '#f)
                             '#f)
                         '#f)
                     '#f)
                 '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t
                                                     (_g76407947_
                                                      _g76437950_)))
                                               _hd77478072_
                                               _xarg77398109_
                                               _hd77298043_
                                               _hd77208019_
                                               _tl77007962_
                                               _arg77067981_)
                                              (_g76407947_ _g76437950_)))))))
                          (_loop77348077_ _target77318048_ '()))
                        (_g76407947_ _g76437950_))
                    (_g76407947_ _g76437950_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g76407947_ _g76437950_))
                                                (_g76407947_ _g76437950_))
                                            (_g76407947_ _g76437950_))))
                                    (_g76407947_ _g76437950_))))
                            (_g76407947_ _g76437950_)))))
                  (_g76407947_ _g76437950_))
              (_g76407947_ _g76437950_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g76407947_ _g76437950_))))
                                          (_g76407947_ _g76437950_))
                                      (_g76407947_ _g76437950_))
                                  (_g76407947_ _g76437950_))))
                          (_g76407947_ _g76437950_))))
                  (_g76407947_ _g76437950_))
              (_g76407947_ _g76437950_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g76407947_ _g76437950_))
                                          (_g76407947_ _g76437950_))
                                      (_g76407947_ _g76437950_))))
                              (_g76407947_ _g76437950_))))
                      (_g76407947_ _g76437950_))
                  (_g76407947_ _g76437950_))
              (_g76407947_ _g76437950_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g76407947_ _g76437950_))))
                                      (_g76407947_ _g76437950_)))))))
                  (_loop77017965_ _target76987960_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g76407947_ _g76437950_))
                                              (_g76407947_ _g76437950_))))
                                      (_g76407947_ _g76437950_)))))
                           (let ((_g76388401_
                                  (lambda (_g76438210_)
                                    (if (gx#stx-pair? _g76438210_)
                                        (let ((_e76478212_
                                               (gx#stx-e _g76438210_)))
                                          (let ((_hd76488215_
                                                 (##car _e76478212_))
                                                (_tl76498217_
                                                 (##cdr _e76478212_)))
                                            (if (gx#stx-pair/null?
                                                 _hd76488215_)
                                                (if (fx>= (gx#stx-length
                                                           _hd76488215_)
                                                          '0)
                                                    (let ((_g9988_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd76488215_
                            '0)))
              (begin
                (let ((_g9989_ (values-count _g9988_)))
                  (if (not (fx= _g9989_ 2))
                      (error "Context expects 2 values" _g9989_)))
                (let ((_target76508220_ (values-ref _g9988_ 0))
                      (_tl76528222_ (values-ref _g9988_ 1)))
                  (if (gx#stx-null? _tl76528222_)
                      (letrec ((_loop76538225_
                                (lambda (_hd76518228_ _arg76578230_)
                                  (if (gx#stx-pair? _hd76518228_)
                                      (let ((_e76548233_
                                             (gx#stx-e _hd76518228_)))
                                        (let ((_lp-hd76558236_
                                               (##car _e76548233_))
                                              (_lp-tl76568238_
                                               (##cdr _e76548233_)))
                                          (_loop76538225_
                                           _lp-tl76568238_
                                           (cons _lp-hd76558236_
                                                 _arg76578230_))))
                                      (let ((_arg76588241_
                                             (reverse _arg76578230_)))
                                        (if (gx#stx-pair? _tl76498217_)
                                            (let ((_e76598244_
                                                   (gx#stx-e _tl76498217_)))
                                              (let ((_hd76608247_
                                                     (##car _e76598244_))
                                                    (_tl76618249_
                                                     (##cdr _e76598244_)))
                                                (if (gx#stx-pair? _hd76608247_)
                                                    (let ((_e76628252_
                                                           (gx#stx-e
                                                            _hd76608247_)))
                                                      (let ((_hd76638255_
                                                             (##car _e76628252_))
                                                            (_tl76648257_
                                                             (##cdr _e76628252_)))
                                                        (if (gx#identifier?
                                                             _hd76638255_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd76638255_)
                        (if (gx#stx-pair? _tl76648257_)
                            (let ((_e76658260_ (gx#stx-e _tl76648257_)))
                              (let ((_hd76668263_ (##car _e76658260_))
                                    (_tl76678265_ (##cdr _e76658260_)))
                                (if (gx#stx-pair? _hd76668263_)
                                    (let ((_e76688268_
                                           (gx#stx-e _hd76668263_)))
                                      (let ((_hd76698271_ (##car _e76688268_))
                                            (_tl76708273_ (##cdr _e76688268_)))
                                        (if (gx#identifier? _hd76698271_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd76698271_)
                                                (if (gx#stx-pair? _tl76708273_)
                                                    (let ((_e76718276_
                                                           (gx#stx-e
                                                            _tl76708273_)))
                                                      (let ((_hd76728279_
                                                             (##car _e76718276_))
                                                            (_tl76738281_
                                                             (##cdr _e76718276_)))
                                                        (if (gx#stx-null?
                                                             _tl76738281_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl76678265_)
                        (if (fx>= (gx#stx-length _tl76678265_) '0)
                            (let ((_g9990_ (gx#syntax-split-splice
                                            _tl76678265_
                                            '0)))
                              (begin
                                (let ((_g9991_ (values-count _g9990_)))
                                  (if (not (fx= _g9991_ 2))
                                      (error "Context expects 2 values"
                                             _g9991_)))
                                (let ((_target76748284_ (values-ref _g9990_ 0))
                                      (_tl76768286_ (values-ref _g9990_ 1)))
                                  (if (gx#stx-null? _tl76768286_)
                                      (letrec ((_loop76778289_
                                                (lambda (_hd76758292_
                                                         _xarg76818294_)
                                                  (if (gx#stx-pair?
                                                       _hd76758292_)
                                                      (let ((_e76788297_
                                                             (gx#stx-e
                                                              _hd76758292_)))
                                                        (let ((_lp-hd76798300_
                                                               (##car _e76788297_))
                                                              (_lp-tl76808302_
                                                               (##cdr _e76788297_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd76798300_)
                                                              (let ((_e76838305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd76798300_)))
                        (let ((_hd76848308_ (##car _e76838305_))
                              (_tl76858310_ (##cdr _e76838305_)))
                          (if (gx#identifier? _hd76848308_)
                              (if (gx#stx-eq? '%#ref _hd76848308_)
                                  (if (gx#stx-pair? _tl76858310_)
                                      (let ((_e76868313_
                                             (gx#stx-e _tl76858310_)))
                                        (let ((_hd76878316_
                                               (##car _e76868313_))
                                              (_tl76888318_
                                               (##cdr _e76868313_)))
                                          (if (gx#stx-null? _tl76888318_)
                                              (_loop76778289_
                                               _lp-tl76808302_
                                               (cons _hd76878316_
                                                     _xarg76818294_))
                                              (_g76398207_ _g76438210_))))
                                      (_g76398207_ _g76438210_))
                                  (_g76398207_ _g76438210_))
                              (_g76398207_ _g76438210_))))
                      (_g76398207_ _g76438210_))))
              (let ((_xarg76828321_ (reverse _xarg76818294_)))
                (if (gx#stx-null? _tl76618249_)
                    ((lambda (_L8324_ _L8325_ _L8326_)
                       (if (if (gx#identifier-list?
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g83548357_ _g83558359_)
                                            (cons _g83548357_ _g83558359_))
                                          '()
                                          _L8326_)))
                               (if (fx= (length (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g83618364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g83628366_)
                    (cons _g83618364_ _g83628366_))
                  '()
                  _L8326_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (length (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g83688371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g83698373_)
                    (cons _g83688371_ _g83698373_))
                  '()
                  _L8324_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (andmap gx#free-identifier=?
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g83758378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g83768380_)
                   (cons _g83758378_ _g83768380_))
                 '()
                 _L8326_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g83828385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g83838387_)
                   (cons _g83828385_ _g83838387_))
                 '()
                 _L8324_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (not (find (lambda (_g83898391_)
                                                    (gx#free-identifier=?
                                                     _g83898391_
                                                     _L8325_))
                                                  (begin
                                                    '#!void
                                                    (foldr1 (lambda (_g83938396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g83948398_)
                      (cons _g83938396_ _g83948398_))
                    '()
                    _L8326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g76398207_ _g76438210_)))
                     _xarg76828321_
                     _hd76728279_
                     _arg76588241_)
                    (_g76398207_ _g76438210_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop76778289_ _target76748284_ '()))
                                      (_g76398207_ _g76438210_)))))
                            (_g76398207_ _g76438210_))
                        (_g76398207_ _g76438210_))
                    (_g76398207_ _g76438210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g76398207_ _g76438210_))
                                                (_g76398207_ _g76438210_))
                                            (_g76398207_ _g76438210_))))
                                    (_g76398207_ _g76438210_))))
                            (_g76398207_ _g76438210_))
                        (_g76398207_ _g76438210_))
                    (_g76398207_ _g76438210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g76398207_
                                                     _g76438210_))))
                                            (_g76398207_ _g76438210_)))))))
                        (_loop76538225_ _target76508220_ '()))
                      (_g76398207_ _g76438210_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g76398207_ _g76438210_))
                                                (_g76398207_ _g76438210_))))
                                        (_g76398207_ _g76438210_)))))
                             (_g76388401_ _form7637_))))))))))
          (let ((_dispatch-case-e6954_
                 (lambda (_hd7098_ _body7099_)
                   (let ((_form7101_ (cons _hd7098_ (cons _body7099_ '()))))
                     (let ((_g71057229_
                            (lambda (_g71067226_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g71067226_))))
                       (let ((_g71047347_
                              (lambda (_g71067232_)
                                (if (gx#stx-pair? _g71067232_)
                                    (let ((_e71957234_ (gx#stx-e _g71067232_)))
                                      (let ((_hd71967237_ (##car _e71957234_))
                                            (_tl71977239_ (##cdr _e71957234_)))
                                        (if (gx#stx-pair? _tl71977239_)
                                            (let ((_e71987242_
                                                   (gx#stx-e _tl71977239_)))
                                              (let ((_hd71997245_
                                                     (##car _e71987242_))
                                                    (_tl72007247_
                                                     (##cdr _e71987242_)))
                                                (if (gx#stx-pair? _hd71997245_)
                                                    (let ((_e72017250_
                                                           (gx#stx-e
                                                            _hd71997245_)))
                                                      (let ((_hd72027253_
                                                             (##car _e72017250_))
                                                            (_tl72037255_
                                                             (##cdr _e72017250_)))
                                                        (if (gx#identifier?
                                                             _hd72027253_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd72027253_)
                        (if (gx#stx-pair? _tl72037255_)
                            (let ((_e72047258_ (gx#stx-e _tl72037255_)))
                              (let ((_hd72057261_ (##car _e72047258_))
                                    (_tl72067263_ (##cdr _e72047258_)))
                                (if (gx#stx-pair? _hd72057261_)
                                    (let ((_e72077266_
                                           (gx#stx-e _hd72057261_)))
                                      (let ((_hd72087269_ (##car _e72077266_))
                                            (_tl72097271_ (##cdr _e72077266_)))
                                        (if (gx#identifier? _hd72087269_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd72087269_)
                                                (if (gx#stx-pair? _tl72097271_)
                                                    (let ((_e72107274_
                                                           (gx#stx-e
                                                            _tl72097271_)))
                                                      (let ((_hd72117277_
                                                             (##car _e72107274_))
                                                            (_tl72127279_
                                                             (##cdr _e72107274_)))
                                                        (if (gx#stx-null?
                                                             _tl72127279_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl72067263_)
                        (let ((_e72137282_ (gx#stx-e _tl72067263_)))
                          (let ((_hd72147285_ (##car _e72137282_))
                                (_tl72157287_ (##cdr _e72137282_)))
                            (if (gx#stx-pair? _hd72147285_)
                                (let ((_e72167290_ (gx#stx-e _hd72147285_)))
                                  (let ((_hd72177293_ (##car _e72167290_))
                                        (_tl72187295_ (##cdr _e72167290_)))
                                    (if (gx#identifier? _hd72177293_)
                                        (if (gx#stx-eq? '%#ref _hd72177293_)
                                            (if (gx#stx-pair? _tl72187295_)
                                                (let ((_e72197298_
                                                       (gx#stx-e
                                                        _tl72187295_)))
                                                  (let ((_hd72207301_
                                                         (##car _e72197298_))
                                                        (_tl72217303_
                                                         (##cdr _e72197298_)))
                                                    (if (gx#stx-null?
                                                         _tl72217303_)
                                                        (if (gx#stx-pair?
                                                             _tl72157287_)
                                                            (let ((_e72227306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl72157287_)))
                      (let ((_hd72237309_ (##car _e72227306_))
                            (_tl72247311_ (##cdr _e72227306_)))
                        (if (gx#stx-null? _tl72247311_)
                            (if (gx#stx-null? _tl72007247_)
                                ((lambda (_L7314_ _L7315_ _L7316_)
                                   (gxc#compile-e
                                    (cons (gx#datum->syntax__0 '#f '%#ref)
                                          (cons _L7314_ '()))))
                                 _hd72207301_
                                 _hd72117277_
                                 _hd71967237_)
                                (_g71057229_ _g71067232_))
                            (_g71057229_ _g71067232_))))
                    (_g71057229_ _g71067232_))
                (_g71057229_ _g71067232_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g71057229_ _g71067232_))
                                            (_g71057229_ _g71067232_))
                                        (_g71057229_ _g71067232_))))
                                (_g71057229_ _g71067232_))))
                        (_g71057229_ _g71067232_))
                    (_g71057229_ _g71067232_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g71057229_ _g71067232_))
                                                (_g71057229_ _g71067232_))
                                            (_g71057229_ _g71067232_))))
                                    (_g71057229_ _g71067232_))))
                            (_g71057229_ _g71067232_))
                        (_g71057229_ _g71067232_))
                    (_g71057229_ _g71067232_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g71057229_
                                                     _g71067232_))))
                                            (_g71057229_ _g71067232_))))
                                    (_g71057229_ _g71067232_)))))
                         (let ((_g71037483_
                                (lambda (_g71067350_)
                                  (if (gx#stx-pair? _g71067350_)
                                      (let ((_e71567352_
                                             (gx#stx-e _g71067350_)))
                                        (let ((_hd71577355_
                                               (##car _e71567352_))
                                              (_tl71587357_
                                               (##cdr _e71567352_)))
                                          (if (gx#stx-pair/null? _hd71577355_)
                                              (if (fx>= (gx#stx-length
                                                         _hd71577355_)
                                                        '0)
                                                  (let ((_g9978_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd71577355_
                          '0)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g9979_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g9978_)))
                (if (not (fx= _g9979_ 2))
                    (error "Context expects 2 values" _g9979_)))
              (let ((_target71597360_ (values-ref _g9978_ 0))
                    (_tl71617362_ (values-ref _g9978_ 1)))
                (letrec ((_loop71627365_
                          (lambda (_hd71607368_ _arg71667370_)
                            (if (gx#stx-pair? _hd71607368_)
                                (let ((_e71637373_ (gx#stx-e _hd71607368_)))
                                  (let ((_lp-hd71647376_ (##car _e71637373_))
                                        (_lp-tl71657378_ (##cdr _e71637373_)))
                                    (_loop71627365_
                                     _lp-tl71657378_
                                     (cons _lp-hd71647376_ _arg71667370_))))
                                (let ((_arg71677381_ (reverse _arg71667370_)))
                                  (if (gx#stx-pair? _tl71587357_)
                                      (let ((_e71687384_
                                             (gx#stx-e _tl71587357_)))
                                        (let ((_hd71697387_
                                               (##car _e71687384_))
                                              (_tl71707389_
                                               (##cdr _e71687384_)))
                                          (if (gx#stx-pair? _hd71697387_)
                                              (let ((_e71717392_
                                                     (gx#stx-e _hd71697387_)))
                                                (let ((_hd71727395_
                                                       (##car _e71717392_))
                                                      (_tl71737397_
                                                       (##cdr _e71717392_)))
                                                  (if (gx#identifier?
                                                       _hd71727395_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd71727395_)
                                                          (if (gx#stx-pair?
                                                               _tl71737397_)
                                                              (let ((_e71747400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl71737397_)))
                        (let ((_hd71757403_ (##car _e71747400_))
                              (_tl71767405_ (##cdr _e71747400_)))
                          (if (gx#stx-pair? _hd71757403_)
                              (let ((_e71777408_ (gx#stx-e _hd71757403_)))
                                (let ((_hd71787411_ (##car _e71777408_))
                                      (_tl71797413_ (##cdr _e71777408_)))
                                  (if (gx#identifier? _hd71787411_)
                                      (if (gx#stx-eq? '%#ref _hd71787411_)
                                          (if (gx#stx-pair? _tl71797413_)
                                              (let ((_e71807416_
                                                     (gx#stx-e _tl71797413_)))
                                                (let ((_hd71817419_
                                                       (##car _e71807416_))
                                                      (_tl71827421_
                                                       (##cdr _e71807416_)))
                                                  (if (gx#stx-null?
                                                       _tl71827421_)
                                                      (if (gx#stx-pair?
                                                           _tl71767405_)
                                                          (let ((_e71837424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl71767405_)))
                    (let ((_hd71847427_ (##car _e71837424_))
                          (_tl71857429_ (##cdr _e71837424_)))
                      (if (gx#stx-pair? _hd71847427_)
                          (let ((_e71867432_ (gx#stx-e _hd71847427_)))
                            (let ((_hd71877435_ (##car _e71867432_))
                                  (_tl71887437_ (##cdr _e71867432_)))
                              (if (gx#identifier? _hd71877435_)
                                  (if (gx#stx-eq? '%#ref _hd71877435_)
                                      (if (gx#stx-pair? _tl71887437_)
                                          (let ((_e71897440_
                                                 (gx#stx-e _tl71887437_)))
                                            (let ((_hd71907443_
                                                   (##car _e71897440_))
                                                  (_tl71917445_
                                                   (##cdr _e71897440_)))
                                              (if (gx#stx-null? _tl71917445_)
                                                  (if (gx#stx-null?
                                                       _tl71707389_)
                                                      ((lambda (_L7448_
                                                                _L7449_
                                                                _L7450_
                                                                _L7451_)
                                                         (gxc#compile-e
                                                          (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '%#ref)
                        (cons _L7448_ '()))))
               _hd71907443_
               _hd71817419_
               _tl71617362_
               _arg71677381_)
              (_g71047347_ _g71067350_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g71047347_ _g71067350_))))
                                          (_g71047347_ _g71067350_))
                                      (_g71047347_ _g71067350_))
                                  (_g71047347_ _g71067350_))))
                          (_g71047347_ _g71067350_))))
                  (_g71047347_ _g71067350_))
              (_g71047347_ _g71067350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g71047347_ _g71067350_))
                                          (_g71047347_ _g71067350_))
                                      (_g71047347_ _g71067350_))))
                              (_g71047347_ _g71067350_))))
                      (_g71047347_ _g71067350_))
                  (_g71047347_ _g71067350_))
              (_g71047347_ _g71067350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g71047347_ _g71067350_))))
                                      (_g71047347_ _g71067350_)))))))
                  (_loop71627365_ _target71597360_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g71047347_ _g71067350_))
                                              (_g71047347_ _g71067350_))))
                                      (_g71047347_ _g71067350_)))))
                           (let ((_g71027631_
                                  (lambda (_g71067486_)
                                    (if (gx#stx-pair? _g71067486_)
                                        (let ((_e71107488_
                                               (gx#stx-e _g71067486_)))
                                          (let ((_hd71117491_
                                                 (##car _e71107488_))
                                                (_tl71127493_
                                                 (##cdr _e71107488_)))
                                            (if (gx#stx-pair/null?
                                                 _hd71117491_)
                                                (if (fx>= (gx#stx-length
                                                           _hd71117491_)
                                                          '0)
                                                    (let ((_g9980_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd71117491_
                            '0)))
              (begin
                (let ((_g9981_ (values-count _g9980_)))
                  (if (not (fx= _g9981_ 2))
                      (error "Context expects 2 values" _g9981_)))
                (let ((_target71137496_ (values-ref _g9980_ 0))
                      (_tl71157498_ (values-ref _g9980_ 1)))
                  (if (gx#stx-null? _tl71157498_)
                      (letrec ((_loop71167501_
                                (lambda (_hd71147504_ _arg71207506_)
                                  (if (gx#stx-pair? _hd71147504_)
                                      (let ((_e71177509_
                                             (gx#stx-e _hd71147504_)))
                                        (let ((_lp-hd71187512_
                                               (##car _e71177509_))
                                              (_lp-tl71197514_
                                               (##cdr _e71177509_)))
                                          (_loop71167501_
                                           _lp-tl71197514_
                                           (cons _lp-hd71187512_
                                                 _arg71207506_))))
                                      (let ((_arg71217517_
                                             (reverse _arg71207506_)))
                                        (if (gx#stx-pair? _tl71127493_)
                                            (let ((_e71227520_
                                                   (gx#stx-e _tl71127493_)))
                                              (let ((_hd71237523_
                                                     (##car _e71227520_))
                                                    (_tl71247525_
                                                     (##cdr _e71227520_)))
                                                (if (gx#stx-pair? _hd71237523_)
                                                    (let ((_e71257528_
                                                           (gx#stx-e
                                                            _hd71237523_)))
                                                      (let ((_hd71267531_
                                                             (##car _e71257528_))
                                                            (_tl71277533_
                                                             (##cdr _e71257528_)))
                                                        (if (gx#identifier?
                                                             _hd71267531_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd71267531_)
                        (if (gx#stx-pair? _tl71277533_)
                            (let ((_e71287536_ (gx#stx-e _tl71277533_)))
                              (let ((_hd71297539_ (##car _e71287536_))
                                    (_tl71307541_ (##cdr _e71287536_)))
                                (if (gx#stx-pair? _hd71297539_)
                                    (let ((_e71317544_
                                           (gx#stx-e _hd71297539_)))
                                      (let ((_hd71327547_ (##car _e71317544_))
                                            (_tl71337549_ (##cdr _e71317544_)))
                                        (if (gx#identifier? _hd71327547_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd71327547_)
                                                (if (gx#stx-pair? _tl71337549_)
                                                    (let ((_e71347552_
                                                           (gx#stx-e
                                                            _tl71337549_)))
                                                      (let ((_hd71357555_
                                                             (##car _e71347552_))
                                                            (_tl71367557_
                                                             (##cdr _e71347552_)))
                                                        (if (gx#stx-null?
                                                             _tl71367557_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl71307541_)
                        (if (fx>= (gx#stx-length _tl71307541_) '0)
                            (let ((_g9982_ (gx#syntax-split-splice
                                            _tl71307541_
                                            '0)))
                              (begin
                                (let ((_g9983_ (values-count _g9982_)))
                                  (if (not (fx= _g9983_ 2))
                                      (error "Context expects 2 values"
                                             _g9983_)))
                                (let ((_target71377560_ (values-ref _g9982_ 0))
                                      (_tl71397562_ (values-ref _g9982_ 1)))
                                  (if (gx#stx-null? _tl71397562_)
                                      (letrec ((_loop71407565_
                                                (lambda (_hd71387568_
                                                         _xarg71447570_)
                                                  (if (gx#stx-pair?
                                                       _hd71387568_)
                                                      (let ((_e71417573_
                                                             (gx#stx-e
                                                              _hd71387568_)))
                                                        (let ((_lp-hd71427576_
                                                               (##car _e71417573_))
                                                              (_lp-tl71437578_
                                                               (##cdr _e71417573_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd71427576_)
                                                              (let ((_e71467581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd71427576_)))
                        (let ((_hd71477584_ (##car _e71467581_))
                              (_tl71487586_ (##cdr _e71467581_)))
                          (if (gx#identifier? _hd71477584_)
                              (if (gx#stx-eq? '%#ref _hd71477584_)
                                  (if (gx#stx-pair? _tl71487586_)
                                      (let ((_e71497589_
                                             (gx#stx-e _tl71487586_)))
                                        (let ((_hd71507592_
                                               (##car _e71497589_))
                                              (_tl71517594_
                                               (##cdr _e71497589_)))
                                          (if (gx#stx-null? _tl71517594_)
                                              (_loop71407565_
                                               _lp-tl71437578_
                                               (cons _hd71507592_
                                                     _xarg71447570_))
                                              (_g71037483_ _g71067486_))))
                                      (_g71037483_ _g71067486_))
                                  (_g71037483_ _g71067486_))
                              (_g71037483_ _g71067486_))))
                      (_g71037483_ _g71067486_))))
              (let ((_xarg71457597_ (reverse _xarg71447570_)))
                (if (gx#stx-null? _tl71247525_)
                    ((lambda (_L7600_ _L7601_ _L7602_)
                       (gxc#compile-e
                        (cons (gx#datum->syntax__0 '#f '%#ref)
                              (cons _L7601_ '()))))
                     _xarg71457597_
                     _hd71357555_
                     _arg71217517_)
                    (_g71037483_ _g71067486_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop71407565_ _target71377560_ '()))
                                      (_g71037483_ _g71067486_)))))
                            (_g71037483_ _g71067486_))
                        (_g71037483_ _g71067486_))
                    (_g71037483_ _g71067486_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g71037483_ _g71067486_))
                                                (_g71037483_ _g71067486_))
                                            (_g71037483_ _g71067486_))))
                                    (_g71037483_ _g71067486_))))
                            (_g71037483_ _g71067486_))
                        (_g71037483_ _g71067486_))
                    (_g71037483_ _g71067486_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g71037483_
                                                     _g71067486_))))
                                            (_g71037483_ _g71067486_)))))))
                        (_loop71167501_ _target71137496_ '()))
                      (_g71037483_ _g71067486_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g71037483_ _g71067486_))
                                                (_g71037483_ _g71067486_))))
                                        (_g71037483_ _g71067486_)))))
                             (_g71027631_ _form7101_)))))))))
            (let ((_generate16955_
                   (lambda (_args7086_ _arglen7087_ _hd7088_ _body7089_)
                     (let ((_len7091_ (gx#stx-length _hd7088_)))
                       (let ((_condition7093_
                              (if (gx#stx-list? _hd7088_)
                                  (cons 'fx=
                                        (cons _arglen7087_
                                              (cons _len7091_ '())))
                                  (if (> _len7091_ '0)
                                      (cons 'fx>=
                                            (cons _arglen7087_
                                                  (cons _len7091_ '())))
                                      '#t))))
                         (let ((_dispatch7095_
                                (if (_dispatch-case?6953_ _hd7088_ _body7089_)
                                    (_dispatch-case-e6954_ _hd7088_ _body7089_)
                                    (cons 'lambda
                                          (cons (gxc#generate-runtime-lambda-head
                                                 _hd7088_)
                                                (cons (gxc#compile-e
                                                       _body7089_)
                                                      '()))))))
                           (let ()
                             (cons _condition7093_
                                   (cons (cons 'apply
                                               (cons _dispatch7095_
                                                     (cons _args7086_ '())))
                                         '())))))))))
              (let ((_g69576985_
                     (lambda (_g69586982_)
                       (gx#raise-syntax-error '#f '"Bad syntax" _g69586982_))))
                (let ((_g69567083_
                       (lambda (_g69586988_)
                         (if (gx#stx-pair? _g69586988_)
                             (let ((_e69616990_ (gx#stx-e _g69586988_)))
                               (let ((_hd69626993_ (##car _e69616990_))
                                     (_tl69636995_ (##cdr _e69616990_)))
                                 (if (gx#stx-pair/null? _tl69636995_)
                                     (if (fx>= (gx#stx-length _tl69636995_) '0)
                                         (let ((_g9976_ (gx#syntax-split-splice
                                                         _tl69636995_
                                                         '0)))
                                           (begin
                                             (let ((_g9977_ (values-count
                                                             _g9976_)))
                                               (if (not (fx= _g9977_ 2))
                                                   (error "Context expects 2 values"
                                                          _g9977_)))
                                             (let ((_target69646998_
                                                    (values-ref _g9976_ 0))
                                                   (_tl69667000_
                                                    (values-ref _g9976_ 1)))
                                               (if (gx#stx-null? _tl69667000_)
                                                   (letrec ((_loop69677003_
                                                             (lambda (_hd69657006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body69717008_
                              _hd69727010_)
                       (if (gx#stx-pair? _hd69657006_)
                           (let ((_e69687013_ (gx#stx-e _hd69657006_)))
                             (let ((_lp-hd69697016_ (##car _e69687013_))
                                   (_lp-tl69707018_ (##cdr _e69687013_)))
                               (if (gx#stx-pair? _lp-hd69697016_)
                                   (let ((_e69757021_
                                          (gx#stx-e _lp-hd69697016_)))
                                     (let ((_hd69767024_ (##car _e69757021_))
                                           (_tl69777026_ (##cdr _e69757021_)))
                                       (if (gx#stx-pair? _tl69777026_)
                                           (let ((_e69787029_
                                                  (gx#stx-e _tl69777026_)))
                                             (let ((_hd69797032_
                                                    (##car _e69787029_))
                                                   (_tl69807034_
                                                    (##cdr _e69787029_)))
                                               (if (gx#stx-null? _tl69807034_)
                                                   (_loop69677003_
                                                    _lp-tl69707018_
                                                    (cons _hd69797032_
                                                          _body69717008_)
                                                    (cons _hd69767024_
                                                          _hd69727010_))
                                                   (_g69576985_ _g69586988_))))
                                           (_g69576985_ _g69586988_))))
                                   (_g69576985_ _g69586988_))))
                           (let ((_body69737037_ (reverse _body69717008_))
                                 (_hd69747039_ (reverse _hd69727010_)))
                             ((lambda (_L7042_ _L7043_)
                                (let ((_args7059_
                                       (gxc#generate-runtime-temporary__0))
                                      (_arglen7060_
                                       (gxc#generate-runtime-temporary__0)))
                                  (cons 'lambda
                                        (cons _args7059_
                                              (cons (cons 'let
                                                          (cons (cons (cons _arglen7060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons 'length (cons _args7059_ '()))
                                          '()))
                              '())
                        (cons (cons 'cond
                                    (foldr1 cons
                                            (cons (cons 'else
                                                        (cons (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons '"No clause matching arguments"
                                  (cons _args7059_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (map (lambda (_g70617064_
                                                          _g70627066_)
                                                   (_generate16955_
                                                    _args7059_
                                                    _arglen7060_
                                                    _g70617064_
                                                    _g70627066_))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g70687071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g70697073_)
                     (cons _g70687071_ _g70697073_))
                   '()
                   _L7043_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g70757078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g70767080_)
                     (cons _g70757078_ _g70767080_))
                   '()
                   _L7042_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              _body69737037_
                              _hd69747039_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop69677003_
                                                      _target69646998_
                                                      '()
                                                      '()))
                                                   (_g69576985_
                                                    _g69586988_)))))
                                         (_g69576985_ _g69586988_))
                                     (_g69576985_ _g69586988_))))
                             (_g69576985_ _g69586988_)))))
                  (_g69567083_ _stx6950_)))))))))
  (begin
    (define gxc#generate-runtime-let-values%__opt-lambda6630
      (lambda (_stx6632_ _compiled-body?6633_)
        (let ((_generate-simple6635_
               (lambda (_hd6937_ _body6938_)
                 (gxc#generate-runtime-simple-let
                  'let
                  _hd6937_
                  _body6938_
                  _compiled-body?6633_))))
          (let ((_generate-values-post6637_
                 (lambda (_post6709_ _body6710_)
                   ((letrec ((_lp6712_
                              (lambda (_rest6714_ _body6715_)
                                (let ((_rest67166724_ _rest6714_))
                                  (let ((_E67196728_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest67166724_))))
                                    (let ((_else67186732_
                                           (lambda () _body6715_)))
                                      (let ((_K67206738_
                                             (lambda (_rest6735_ _bind6736_)
                                               (_lp6712_
                                                _rest6735_
                                                (cons 'let
                                                      (cons _bind6736_
                                                            (cons _body6715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _rest67166724_)
                                            (let ((_hd67216741_
                                                   (##car _rest67166724_))
                                                  (_tl67226743_
                                                   (##cdr _rest67166724_)))
                                              (let ((_bind6746_ _hd67216741_))
                                                (let ((_rest6748_
                                                       _tl67226743_))
                                                  (_K67206738_
                                                   _rest6748_
                                                   _bind6746_))))
                                            (_else67186732_)))))))))
                      _lp6712_)
                    _post6709_
                    _body6710_))))
            (let ((_generate-values-check6638_
                   (lambda (_check6706_ _body6707_)
                     (cons 'begin
                           (foldr1 cons
                                   (cons _body6707_ '())
                                   (reverse _check6706_))))))
              (let ((_generate-values6636_
                     (lambda (_hd6750_ _body6751_)
                       ((letrec ((_lp6753_
                                  (lambda (_rest6755_
                                           _bind6756_
                                           _check6757_
                                           _post6758_)
                                    (let ((_g67616772_
                                           (lambda (_g67626769_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g67626769_))))
                                      (let ((_g67606786_
                                             (lambda (_g67626775_)
                                               ((lambda ()
                                                  (let ((_body6779_
                                                         (if _compiled-body?6633_
                                                             _body6751_
                                                             (gxc#compile-e
                                                              _body6751_))))
                                                    (let ((_body6781_
                                                           (_generate-values-post6637_
                                                            _post6758_
                                                            _body6779_)))
                                                      (let ((_body6783_
                                                             (_generate-values-check6638_
                                                              _check6757_
                                                              _body6781_)))
                                                        (let ()
                                                          (cons 'let
                                                                (cons (reverse _bind6756_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body6783_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g67596934_
                                               (lambda (_g67626789_)
                                                 (if (gx#stx-pair? _g67626789_)
                                                     (let ((_e67656791_
                                                            (gx#stx-e
                                                             _g67626789_)))
                                                       (let ((_hd67666794_
                                                              (##car _e67656791_))
                                                             (_tl67676796_
                                                              (##cdr _e67656791_)))
                                                         ((lambda (_L6799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L6800_)
                    (let ((_g68156840_
                           (lambda (_g68166837_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g68166837_))))
                      (let ((_g68146884_
                             (lambda (_g68166843_)
                               (if (gx#stx-pair? _g68166843_)
                                   (let ((_e68306845_ (gx#stx-e _g68166843_)))
                                     (let ((_hd68316848_ (##car _e68306845_))
                                           (_tl68326850_ (##cdr _e68306845_)))
                                       (if (gx#stx-pair? _tl68326850_)
                                           (let ((_e68336853_
                                                  (gx#stx-e _tl68326850_)))
                                             (let ((_hd68346856_
                                                    (##car _e68336853_))
                                                   (_tl68356858_
                                                    (##cdr _e68336853_)))
                                               (if (gx#stx-null? _tl68356858_)
                                                   ((lambda (_L6861_ _L6862_)
                                                      (let ((_vals6875_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr6877_
                                                               (gxc#compile-e
                                                                _L6861_)))
                                                          (let ((_check-values6879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals6875_
                          _L6862_)))
                    (let ((_refs6881_
                           (gxc#generate-runtime-let-values-bind
                            _vals6875_
                            _L6862_)))
                      (let ()
                        (_lp6753_
                         _L6799_
                         (cons (cons _vals6875_ (cons _expr6877_ '()))
                               _bind6756_)
                         (cons _check-values6879_ _check6757_)
                         (cons _refs6881_ _post6758_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd68346856_
                                                    _hd68316848_)
                                                   (_g68156840_ _g68166843_))))
                                           (_g68156840_ _g68166843_))))
                                   (_g68156840_ _g68166843_)))))
                        (let ((_g68136931_
                               (lambda (_g68166887_)
                                 (if (gx#stx-pair? _g68166887_)
                                     (let ((_e68196889_
                                            (gx#stx-e _g68166887_)))
                                       (let ((_hd68206892_ (##car _e68196889_))
                                             (_tl68216894_
                                              (##cdr _e68196889_)))
                                         (if (gx#stx-pair? _hd68206892_)
                                             (let ((_e68226897_
                                                    (gx#stx-e _hd68206892_)))
                                               (let ((_hd68236900_
                                                      (##car _e68226897_))
                                                     (_tl68246902_
                                                      (##cdr _e68226897_)))
                                                 (if (gx#stx-null?
                                                      _tl68246902_)
                                                     (if (gx#stx-pair?
                                                          _tl68216894_)
                                                         (let ((_e68256905_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl68216894_)))
                   (let ((_hd68266908_ (##car _e68256905_))
                         (_tl68276910_ (##cdr _e68256905_)))
                     (if (gx#stx-null? _tl68276910_)
                         ((lambda (_L6913_ _L6914_)
                            (let ((_eid6928_
                                   (gxc#generate-runtime-binding-id* _L6914_))
                                  (_expr6929_ (gxc#compile-e _L6913_)))
                              (_lp6753_
                               _L6799_
                               (cons (cons _eid6928_ (cons _expr6929_ '()))
                                     _bind6756_)
                               _check6757_
                               _post6758_)))
                          _hd68266908_
                          _hd68236900_)
                         (_g68146884_ _g68166887_))))
                 (_g68146884_ _g68166887_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g68146884_
                                                      _g68166887_))))
                                             (_g68146884_ _g68166887_))))
                                     (_g68146884_ _g68166887_)))))
                          (_g68136931_ _L6800_)))))
                  _tl67676796_
                  _hd67666794_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g67606786_
                                                      _g67626789_)))))
                                          (_g67596934_ _rest6755_)))))))
                          _lp6753_)
                        _hd6750_
                        '()
                        '()
                        '()))))
                (let ((_g66406657_
                       (lambda (_g66416654_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g66416654_))))
                  (let ((_g66396703_
                         (lambda (_g66416660_)
                           (if (gx#stx-pair? _g66416660_)
                               (let ((_e66446662_ (gx#stx-e _g66416660_)))
                                 (let ((_hd66456665_ (##car _e66446662_))
                                       (_tl66466667_ (##cdr _e66446662_)))
                                   (if (gx#stx-pair? _tl66466667_)
                                       (let ((_e66476670_
                                              (gx#stx-e _tl66466667_)))
                                         (let ((_hd66486673_
                                                (##car _e66476670_))
                                               (_tl66496675_
                                                (##cdr _e66476670_)))
                                           (if (gx#stx-pair? _tl66496675_)
                                               (let ((_e66506678_
                                                      (gx#stx-e _tl66496675_)))
                                                 (let ((_hd66516681_
                                                        (##car _e66506678_))
                                                       (_tl66526683_
                                                        (##cdr _e66506678_)))
                                                   (if (gx#stx-null?
                                                        _tl66526683_)
                                                       ((lambda (_L6686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6687_)
                  (if (gxc#generate-runtime-simple-let? _L6687_)
                      (_generate-simple6635_ _L6687_ _L6686_)
                      (_generate-values6636_ _L6687_ _L6686_)))
                _hd66516681_
                _hd66486673_)
               (_g66406657_ _g66416660_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g66406657_ _g66416660_))))
                                       (_g66406657_ _g66416660_))))
                               (_g66406657_ _g66416660_)))))
                    (_g66396703_ _stx6632_)))))))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx6943_)
          (let ((_compiled-body?6945_ '#f))
            (gxc#generate-runtime-let-values%__opt-lambda6630
             _stx6943_
             _compiled-body?6945_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g9993_
          (let ((_g9992_ (length _g9993_)))
            (cond ((fx= _g9992_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g9993_))
                  ((fx= _g9992_ 2)
                   (apply gxc#generate-runtime-let-values%__opt-lambda6630
                          _g9993_))
                  (else (error "No clause matching arguments" _g9993_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals6531_ _hd6532_)
      ((letrec ((_lp6534_
                 (lambda (_rest6536_ _k6537_ _r6538_)
                   (let ((_g65436559_
                          (lambda (_g65446556_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g65446556_))))
                     (let ((_g65426566_
                            (lambda (_g65446562_)
                              ((lambda () (reverse _r6538_))))))
                       (let ((_g65416582_
                              (lambda (_g65446569_)
                                ((lambda (_L6571_)
                                   (if (gx#identifier? _L6571_)
                                       (foldl1 cons
                                               (cons (cons (gxc#generate-runtime-binding-id
                                                            _L6571_)
                                                           (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _vals6531_ (cons _k6537_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               _r6538_)
                                       (_g65426566_ _g65446569_)))
                                 _g65446569_))))
                         (let ((_g65406606_
                                (lambda (_g65446585_)
                                  (if (gx#stx-pair? _g65446585_)
                                      (let ((_e65516587_
                                             (gx#stx-e _g65446585_)))
                                        (let ((_hd65526590_
                                               (##car _e65516587_))
                                              (_tl65536592_
                                               (##cdr _e65516587_)))
                                          ((lambda (_L6595_ _L6596_)
                                             (_lp6534_
                                              _L6595_
                                              (fx+ _k6537_ '1)
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L6596_)
                                                          (cons (cons 'values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals6531_ (cons _k6537_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _r6538_)))
                                           _tl65536592_
                                           _hd65526590_)))
                                      (_g65416582_ _g65446585_)))))
                           (let ((_g65396628_
                                  (lambda (_g65446609_)
                                    (if (gx#stx-pair? _g65446609_)
                                        (let ((_e65466611_
                                               (gx#stx-e _g65446609_)))
                                          (let ((_hd65476614_
                                                 (##car _e65466611_))
                                                (_tl65486616_
                                                 (##cdr _e65466611_)))
                                            (if (gx#stx-datum? _hd65476614_)
                                                (if (equal? (gx#stx-e
                                                             _hd65476614_)
                                                            '#f)
                                                    ((lambda (_L6619_)
                                                       (_lp6534_
                                                        _L6619_
                                                        (fx+ _k6537_ '1)
                                                        _r6538_))
                                                     _tl65486616_)
                                                    (_g65406606_ _g65446609_))
                                                (_g65406606_ _g65446609_))))
                                        (_g65406606_ _g65446609_)))))
                             (_g65396628_ _rest6536_)))))))))
         _lp6534_)
       _hd6532_
       '0
       '())))
  (begin
    (define gxc#generate-runtime-letrec-values%__opt-lambda6209
      (lambda (_stx6211_ _compiled-body?6212_)
        (let ((_generate-simple6214_
               (lambda (_hd6518_ _body6519_)
                 (gxc#generate-runtime-simple-let
                  'letrec
                  _hd6518_
                  _body6519_
                  _compiled-body?6212_))))
          (let ((_generate-values-check6216_
                 (lambda (_check6292_ _body6293_)
                   (cons 'begin
                         (foldr1 cons
                                 (cons _body6293_ '())
                                 (reverse _check6292_))))))
            (let ((_generate-values-post6217_
                   (lambda (_post6285_ _body6286_)
                     (cons 'begin
                           (foldr1 cons
                                   (cons _body6286_ '())
                                   (map (lambda (_g62876289_)
                                          (cons 'set! _g62876289_))
                                        (reverse _post6285_)))))))
              (let ((_generate-values6215_
                     (lambda (_hd6295_ _body6296_)
                       ((letrec ((_lp6298_
                                  (lambda (_rest6300_
                                           _bind6301_
                                           _check6302_
                                           _post6303_)
                                    (let ((_g63066317_
                                           (lambda (_g63076314_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g63076314_))))
                                      (let ((_g63056331_
                                             (lambda (_g63076320_)
                                               ((lambda ()
                                                  (let ((_body6324_
                                                         (if _compiled-body?6212_
                                                             _body6296_
                                                             (gxc#compile-e
                                                              _body6296_))))
                                                    (let ((_body6326_
                                                           (_generate-values-post6217_
                                                            _post6303_
                                                            _body6324_)))
                                                      (let ((_body6328_
                                                             (_generate-values-check6216_
                                                              _check6302_
                                                              _body6326_)))
                                                        (let ()
                                                          (cons 'letrec
                                                                (cons (reverse _bind6301_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body6328_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g63046515_
                                               (lambda (_g63076334_)
                                                 (if (gx#stx-pair? _g63076334_)
                                                     (let ((_e63106336_
                                                            (gx#stx-e
                                                             _g63076334_)))
                                                       (let ((_hd63116339_
                                                              (##car _e63106336_))
                                                             (_tl63126341_
                                                              (##cdr _e63106336_)))
                                                         ((lambda (_L6344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L6345_)
                    (let ((_g63606385_
                           (lambda (_g63616382_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g63616382_))))
                      (let ((_g63596465_
                             (lambda (_g63616388_)
                               (if (gx#stx-pair? _g63616388_)
                                   (let ((_e63756390_ (gx#stx-e _g63616388_)))
                                     (let ((_hd63766393_ (##car _e63756390_))
                                           (_tl63776395_ (##cdr _e63756390_)))
                                       (if (gx#stx-pair? _tl63776395_)
                                           (let ((_e63786398_
                                                  (gx#stx-e _tl63776395_)))
                                             (let ((_hd63796401_
                                                    (##car _e63786398_))
                                                   (_tl63806403_
                                                    (##cdr _e63786398_)))
                                               (if (gx#stx-null? _tl63806403_)
                                                   ((lambda (_L6406_ _L6407_)
                                                      (let ((_vals6420_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr6422_
                                                               (gxc#compile-e
                                                                _L6406_)))
                                                          (let ((_check-values6424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals6420_
                          _L6407_)))
                    (let ((_refs6426_
                           (gxc#generate-runtime-let-values-bind
                            _vals6420_
                            _L6407_)))
                      (let ()
                        (_lp6298_
                         _L6344_
                         (foldl1 cons
                                 (cons (cons _vals6420_ (cons _expr6422_ '()))
                                       _bind6301_)
                                 (map (lambda (_e64286430_)
                                        (let ((_g64326441_ _e64286430_))
                                          (let ((_E64346445_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _g64326441_))))
                                            (let ((_K64356450_
                                                   (lambda (_eid6448_)
                                                     (cons _eid6448_
                                                           (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _g64326441_)
                                                  (let ((_hd64366453_
                                                         (##car _g64326441_))
                                                        (_tl64376455_
                                                         (##cdr _g64326441_)))
                                                    (let ((_eid6458_
                                                           _hd64366453_))
                                                      (if (##pair? _tl64376455_)
                                                          (let ((_hd64386460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _tl64376455_))
                        (_tl64396462_ (##cdr _tl64376455_)))
                    (if (##null? _tl64396462_)
                        (_K64356450_ _eid6458_)
                        (_E64346445_)))
                  (_E64346445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E64346445_))))))
                                      _refs6426_))
                         (cons _check-values6424_ _check6302_)
                         (foldl1 cons _refs6426_ _post6303_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd63796401_
                                                    _hd63766393_)
                                                   (_g63606385_ _g63616388_))))
                                           (_g63606385_ _g63616388_))))
                                   (_g63606385_ _g63616388_)))))
                        (let ((_g63586512_
                               (lambda (_g63616468_)
                                 (if (gx#stx-pair? _g63616468_)
                                     (let ((_e63646470_
                                            (gx#stx-e _g63616468_)))
                                       (let ((_hd63656473_ (##car _e63646470_))
                                             (_tl63666475_
                                              (##cdr _e63646470_)))
                                         (if (gx#stx-pair? _hd63656473_)
                                             (let ((_e63676478_
                                                    (gx#stx-e _hd63656473_)))
                                               (let ((_hd63686481_
                                                      (##car _e63676478_))
                                                     (_tl63696483_
                                                      (##cdr _e63676478_)))
                                                 (if (gx#stx-null?
                                                      _tl63696483_)
                                                     (if (gx#stx-pair?
                                                          _tl63666475_)
                                                         (let ((_e63706486_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl63666475_)))
                   (let ((_hd63716489_ (##car _e63706486_))
                         (_tl63726491_ (##cdr _e63706486_)))
                     (if (gx#stx-null? _tl63726491_)
                         ((lambda (_L6494_ _L6495_)
                            (let ((_eid6509_
                                   (gxc#generate-runtime-binding-id* _L6495_))
                                  (_expr6510_ (gxc#compile-e _L6494_)))
                              (_lp6298_
                               _L6344_
                               (cons (cons _eid6509_ (cons _expr6510_ '()))
                                     _bind6301_)
                               _check6302_
                               _post6303_)))
                          _hd63716489_
                          _hd63686481_)
                         (_g63596465_ _g63616468_))))
                 (_g63596465_ _g63616468_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g63596465_
                                                      _g63616468_))))
                                             (_g63596465_ _g63616468_))))
                                     (_g63596465_ _g63616468_)))))
                          (_g63586512_ _L6345_)))))
                  _tl63126341_
                  _hd63116339_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g63056331_
                                                      _g63076334_)))))
                                          (_g63046515_ _rest6300_)))))))
                          _lp6298_)
                        _hd6295_
                        '()
                        '()
                        '()))))
                (let ((_g62196236_
                       (lambda (_g62206233_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g62206233_))))
                  (let ((_g62186282_
                         (lambda (_g62206239_)
                           (if (gx#stx-pair? _g62206239_)
                               (let ((_e62236241_ (gx#stx-e _g62206239_)))
                                 (let ((_hd62246244_ (##car _e62236241_))
                                       (_tl62256246_ (##cdr _e62236241_)))
                                   (if (gx#stx-pair? _tl62256246_)
                                       (let ((_e62266249_
                                              (gx#stx-e _tl62256246_)))
                                         (let ((_hd62276252_
                                                (##car _e62266249_))
                                               (_tl62286254_
                                                (##cdr _e62266249_)))
                                           (if (gx#stx-pair? _tl62286254_)
                                               (let ((_e62296257_
                                                      (gx#stx-e _tl62286254_)))
                                                 (let ((_hd62306260_
                                                        (##car _e62296257_))
                                                       (_tl62316262_
                                                        (##cdr _e62296257_)))
                                                   (if (gx#stx-null?
                                                        _tl62316262_)
                                                       ((lambda (_L6265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6266_)
                  (if (gxc#generate-runtime-simple-let? _L6266_)
                      (_generate-simple6214_ _L6266_ _L6265_)
                      (_generate-values6215_ _L6266_ _L6265_)))
                _hd62306260_
                _hd62276252_)
               (_g62196236_ _g62206239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g62196236_ _g62206239_))))
                                       (_g62196236_ _g62206239_))))
                               (_g62196236_ _g62206239_)))))
                    (_g62186282_ _stx6211_)))))))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx6524_)
          (let ((_compiled-body?6526_ '#f))
            (gxc#generate-runtime-letrec-values%__opt-lambda6209
             _stx6524_
             _compiled-body?6526_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g9995_
          (let ((_g9994_ (length _g9995_)))
            (cond ((fx= _g9994_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g9995_))
                  ((fx= _g9994_ 2)
                   (apply gxc#generate-runtime-letrec-values%__opt-lambda6209
                          _g9995_))
                  (else (error "No clause matching arguments" _g9995_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx5330_)
      (let ((_collect-closures5333_
             (lambda (_forms6151_)
               (map (lambda (_e61526154_)
                      (let ((_g61566165_ _e61526154_))
                        (let ((_E61586169_
                               (lambda ()
                                 (error '"No clause matching" _g61566165_))))
                          (let ((_K61596174_
                                 (lambda (_expr6172_)
                                   (gxc#collect-expression-refs _expr6172_))))
                            (if (##pair? _g61566165_)
                                (let ((_hd61606177_ (##car _g61566165_))
                                      (_tl61616179_ (##cdr _g61566165_)))
                                  (if (##pair? _tl61616179_)
                                      (let ((_hd61626182_ (##car _tl61616179_))
                                            (_tl61636184_
                                             (##cdr _tl61616179_)))
                                        (let ((_expr6187_ _hd61626182_))
                                          (if (##null? _tl61636184_)
                                              (_K61596174_ _expr6187_)
                                              (_E61586169_))))
                                      (_E61586169_)))
                                (_E61586169_))))))
                    _forms6151_))))
        (let ((_collect-bindings5334_
               (lambda (_forms6075_)
                 (map (lambda (_e60766078_)
                        (let ((_g60806089_ _e60766078_))
                          (let ((_E60826093_
                                 (lambda ()
                                   (error '"No clause matching" _g60806089_))))
                            (let ((_K60836136_
                                   (lambda (_bind6096_)
                                     ((letrec ((_lp6098_
                                                (lambda (_rest6100_ _r6101_)
                                                  (let ((_rest61026110_
                                                         _rest6100_))
                                                    (let ((_E61056114_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest61026110_))))
              (let ((_else61046118_
                     (lambda ()
                       (if (gx#identifier? _rest6100_)
                           (cons _rest6100_ _r6101_)
                           _r6101_))))
                (let ((_K61066124_
                       (lambda (_rest6121_ _id6122_)
                         (if (gx#identifier? _id6122_)
                             (_lp6098_
                              _rest6121_
                              (cons (##structure-ref
                                     (gx#resolve-identifier__0 _id6122_)
                                     '1
                                     gx#binding::t
                                     '#f)
                                    _r6101_))
                             (_lp6098_ _rest6121_ _r6101_)))))
                  (if (##pair? _rest61026110_)
                      (let ((_hd61076127_ (##car _rest61026110_))
                            (_tl61086129_ (##cdr _rest61026110_)))
                        (let ((_id6132_ _hd61076127_))
                          (let ((_rest6134_ _tl61086129_))
                            (_K61066124_ _rest6134_ _id6132_))))
                      (_else61046118_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp6098_)
                                      _bind6096_
                                      '()))))
                              (if (##pair? _g60806089_)
                                  (let ((_hd60846139_ (##car _g60806089_))
                                        (_tl60856141_ (##cdr _g60806089_)))
                                    (let ((_bind6144_ _hd60846139_))
                                      (if (##pair? _tl60856141_)
                                          (let ((_hd60866146_
                                                 (##car _tl60856141_))
                                                (_tl60876148_
                                                 (##cdr _tl60856141_)))
                                            (if (##null? _tl60876148_)
                                                (_K60836136_ _bind6144_)
                                                (_E60826093_)))
                                          (_E60826093_))))
                                  (_E60826093_))))))
                      _forms6075_))))
          (let ((_closure-reference?5338_
                 (lambda (_closure5627_ _bindings5628_)
                   (ormap1 (lambda (_g56295631_)
                             (table-ref _closure5627_ _g56295631_ '#f))
                           _bindings5628_))))
            (let ((_is-effect-expr?5340_
                   (lambda (_expr5538_)
                     (let ((_g55405550_
                            (lambda (_g55415547_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g55415547_))))
                       (let ((_g55395573_
                              (lambda (_g55415553_)
                                (if (gx#stx-pair? _g55415553_)
                                    (let ((_e55435555_ (gx#stx-e _g55415553_)))
                                      (let ((_hd55445558_ (##car _e55435555_))
                                            (_tl55455560_ (##cdr _e55435555_)))
                                        ((lambda (_L5563_)
                                           (not (memq (gx#stx-e _L5563_)
                                                      '(%#lambda
                                                        %#case-lambda
                                                        %#quote
                                                        %#quote-syntax
                                                        %#ref))))
                                         _hd55445558_)))
                                    (_g55405550_ _g55415553_)))))
                         (_g55395573_ _expr5538_))))))
              (let ((_is-lambda-expr?5341_
                     (lambda (_expr5500_)
                       (let ((_g55025512_
                              (lambda (_g55035509_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g55035509_))))
                         (let ((_g55015535_
                                (lambda (_g55035515_)
                                  (if (gx#stx-pair? _g55035515_)
                                      (let ((_e55055517_
                                             (gx#stx-e _g55035515_)))
                                        (let ((_hd55065520_
                                               (##car _e55055517_))
                                              (_tl55075522_
                                               (##cdr _e55055517_)))
                                          ((lambda (_L5525_)
                                             (memq (gx#stx-e _L5525_)
                                                   '(%#lambda %#case-lambda)))
                                           _hd55065520_)))
                                      (_g55025512_ _g55035515_)))))
                           (_g55015535_ _expr5500_))))))
                (let ((_lift-rec5337_
                       (lambda (_forms5634_)
                         ((letrec ((_lp5636_
                                    (lambda (_rest5638_
                                             _pre5639_
                                             _bind5640_
                                             _init5641_)
                                      (let ((_rest56425650_ _rest5638_))
                                        (let ((_E56455654_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _rest56425650_))))
                                          (let ((_else56445658_
                                                 (lambda ()
                                                   (values (reverse _pre5639_)
                                                           (reverse _bind5640_)
                                                           (reverse _init5641_)))))
                                            (let ((_K56465849_
                                                   (lambda (_rest5661_
                                                            _bind-hd5662_)
                                                     (let ((_g56665701_
                                                            (lambda (_g56675698_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g56675698_))))
                                                       (let ((_g56655758_
                                                              (lambda (_g56675704_)
                                                                (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g56675704_)
                            (let ((_e56915706_ (gx#stx-e _g56675704_)))
                              (let ((_hd56925709_ (##car _e56915706_))
                                    (_tl56935711_ (##cdr _e56915706_)))
                                (if (gx#stx-pair? _tl56935711_)
                                    (let ((_e56945714_
                                           (gx#stx-e _tl56935711_)))
                                      (let ((_hd56955717_ (##car _e56945714_))
                                            (_tl56965719_ (##cdr _e56945714_)))
                                        (if (gx#stx-null? _tl56965719_)
                                            ((lambda (_L5722_ _L5723_)
                                               (let ((_vals5742_
                                                      (gxc#generate-runtime-temporary__0)))
                                                 (let ((_expr5744_
                                                        (gxc#compile-e
                                                         _L5722_)))
                                                   (let ((_check-values5746_
                                                          (gxc#generate-runtime-check-values
                                                           _vals5742_
                                                           _L5723_)))
                                                     (let ((_refs5748_
                                                            (gxc#generate-runtime-let-values-bind
                                                             _vals5742_
                                                             _L5723_)))
                                                       (let ()
                                                         (_lp5636_
                                                          _rest5661_
                                                          (foldl1 (lambda (_ref5751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _r5752_)
                            (cons (cons (car _ref5751_) (cons '#!void '()))
                                  _r5752_))
                          _pre5639_
                          _refs5748_)
                  _bind5640_
                  (cons (cons 'let
                              (cons (cons (cons _vals5742_
                                                (cons _expr5744_ '()))
                                          '())
                                    (cons _check-values5746_
                                          (cons (map (lambda (_g57535755_)
                                                       (cons 'set!
                                                             _g57535755_))
                                                     _refs5748_)
                                                '()))))
                        _init5641_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd56955717_
                                             _hd56925709_)
                                            (_g56665701_ _g56675704_))))
                                    (_g56665701_ _g56675704_))))
                            (_g56665701_ _g56675704_)))))
                 (let ((_g56645804_
                        (lambda (_g56675761_)
                          (if (gx#stx-pair? _g56675761_)
                              (let ((_e56805763_ (gx#stx-e _g56675761_)))
                                (let ((_hd56815766_ (##car _e56805763_))
                                      (_tl56825768_ (##cdr _e56805763_)))
                                  (if (gx#stx-pair? _hd56815766_)
                                      (let ((_e56835771_
                                             (gx#stx-e _hd56815766_)))
                                        (let ((_hd56845774_
                                               (##car _e56835771_))
                                              (_tl56855776_
                                               (##cdr _e56835771_)))
                                          (if (gx#stx-null? _tl56855776_)
                                              (if (gx#stx-pair? _tl56825768_)
                                                  (let ((_e56865779_
                                                         (gx#stx-e
                                                          _tl56825768_)))
                                                    (let ((_hd56875782_
                                                           (##car _e56865779_))
                                                          (_tl56885784_
                                                           (##cdr _e56865779_)))
                                                      (if (gx#stx-null?
                                                           _tl56885784_)
                                                          ((lambda (_L5787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5788_)
                     (let ((_eid5802_
                            (gxc#generate-runtime-binding-id _L5788_)))
                       (if (_is-lambda-expr?5341_ _L5787_)
                           (_lp5636_
                            _rest5661_
                            _pre5639_
                            (cons (cons _eid5802_
                                        (cons (gxc#compile-e _L5787_) '()))
                                  _bind5640_)
                            _init5641_)
                           (_lp5636_
                            _rest5661_
                            (cons (cons _eid5802_ (cons '#!void '()))
                                  _pre5639_)
                            _bind5640_
                            (cons (cons 'set!
                                        (cons _eid5802_
                                              (cons (gxc#compile-e _L5787_)
                                                    '())))
                                  _init5641_)))))
                   _hd56875782_
                   _hd56845774_)
                  (_g56655758_ _g56675761_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g56655758_ _g56675761_))
                                              (_g56655758_ _g56675761_))))
                                      (_g56655758_ _g56675761_))))
                              (_g56655758_ _g56675761_)))))
                   (let ((_g56635846_
                          (lambda (_g56675807_)
                            (if (gx#stx-pair? _g56675807_)
                                (let ((_e56695809_ (gx#stx-e _g56675807_)))
                                  (let ((_hd56705812_ (##car _e56695809_))
                                        (_tl56715814_ (##cdr _e56695809_)))
                                    (if (gx#stx-pair? _hd56705812_)
                                        (let ((_e56725817_
                                               (gx#stx-e _hd56705812_)))
                                          (let ((_hd56735820_
                                                 (##car _e56725817_))
                                                (_tl56745822_
                                                 (##cdr _e56725817_)))
                                            (if (gx#stx-datum? _hd56735820_)
                                                (if (equal? (gx#stx-e
                                                             _hd56735820_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl56745822_)
                                                        (if (gx#stx-pair?
                                                             _tl56715814_)
                                                            (let ((_e56755825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl56715814_)))
                      (let ((_hd56765828_ (##car _e56755825_))
                            (_tl56775830_ (##cdr _e56755825_)))
                        (if (gx#stx-null? _tl56775830_)
                            ((lambda (_L5833_)
                               (_lp5636_
                                _rest5661_
                                _pre5639_
                                _bind5640_
                                (cons (gxc#compile-e _L5833_) _init5641_)))
                             _hd56765828_)
                            (_g56645804_ _g56675807_))))
                    (_g56645804_ _g56675807_))
                (_g56645804_ _g56675807_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g56645804_ _g56675807_))
                                                (_g56645804_ _g56675807_))))
                                        (_g56645804_ _g56675807_))))
                                (_g56645804_ _g56675807_)))))
                     (_g56635846_ _bind-hd5662_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _rest56425650_)
                                                  (let ((_hd56475852_
                                                         (##car _rest56425650_))
                                                        (_tl56485854_
                                                         (##cdr _rest56425650_)))
                                                    (let ((_bind-hd5857_
                                                           _hd56475852_))
                                                      (let ((_rest5859_
                                                             _tl56485854_))
                                                        (_K56465849_
                                                         _rest5859_
                                                         _bind-hd5857_))))
                                                  (_else56445658_)))))))))
                            _lp5636_)
                          _forms5634_
                          '()
                          '()
                          '()))))
                  (let ((_is-effect-bind?5339_
                         (lambda (_hd-bind5576_)
                           (let ((_g55785591_
                                  (lambda (_g55795588_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g55795588_))))
                             (let ((_g55775624_
                                    (lambda (_g55795594_)
                                      (if (gx#stx-pair? _g55795594_)
                                          (let ((_e55815596_
                                                 (gx#stx-e _g55795594_)))
                                            (let ((_hd55825599_
                                                   (##car _e55815596_))
                                                  (_tl55835601_
                                                   (##cdr _e55815596_)))
                                              (if (gx#stx-pair? _tl55835601_)
                                                  (let ((_e55845604_
                                                         (gx#stx-e
                                                          _tl55835601_)))
                                                    (let ((_hd55855607_
                                                           (##car _e55845604_))
                                                          (_tl55865609_
                                                           (##cdr _e55845604_)))
                                                      (if (gx#stx-null?
                                                           _tl55865609_)
                                                          ((lambda (_L5612_)
                                                             (_is-effect-expr?5340_
                                                              _L5612_))
                                                           _hd55855607_)
                                                          (_g55785591_
                                                           _g55795594_))))
                                                  (_g55785591_ _g55795594_))))
                                          (_g55785591_ _g55795594_)))))
                               (_g55775624_ _hd-bind5576_))))))
                    (let ((_lift-pre5335_
                           (lambda (_hd5968_ _bindings5969_ _closures5970_)
                             ((letrec ((_lp5972_
                                        (lambda (_rest-forms5974_
                                                 _rest-bindings5975_
                                                 _rest-closures5976_
                                                 _post-forms5977_
                                                 _post-bindings5978_
                                                 _post-closures5979_
                                                 _pre-forms5980_
                                                 _lifted?5981_)
                                          (let ((_rest-forms59825998_
                                                 _rest-forms5974_)
                                                (_rest-bindings59836000_
                                                 _rest-bindings5975_)
                                                (_rest-closures59846002_
                                                 _rest-closures5976_))
                                            (let ((_E59876006_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _rest-forms59825998_
                                                            _rest-bindings59836000_
                                                            _rest-closures59846002_))))
                                              (let ((_else59866010_
                                                     (lambda ()
                                                       (if _lifted?5981_
                                                           (_lp5972_
                                                            (reverse _post-forms5977_)
                                                            (reverse _post-bindings5978_)
                                                            (reverse _post-closures5979_)
                                                            '()
                                                            '()
                                                            '()
                                                            _pre-forms5980_
                                                            '#f)
                                                           (values (reverse _pre-forms5980_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _post-forms5977_)
                           (reverse _post-bindings5978_)
                           (reverse _post-closures5979_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_K59886063_
                                                       (lambda (_rest-forms6013_
                                                                _form6014_)
                                                         (let ((_K59896051_
                                                                (lambda (_rest-bindings6016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bindings6017_)
                          (let ((_K59906039_
                                 (lambda (_rest-closures6019_ _closure6020_)
                                   (if (let ((_$e6022_
                                              (_closure-reference?5338_
                                               _closure6020_
                                               _bindings6017_)))
                                         (if _$e6022_
                                             _$e6022_
                                             (let ((_$e6029_
                                                    (ormap1 (lambda (_g60246026_)
                                                              (_closure-reference?5338_
                                                               _closure6020_
                                                               _g60246026_))
                                                            _rest-bindings6016_)))
                                               (if _$e6029_
                                                   _$e6029_
                                                   (let ((_$e6036_
                                                          (ormap1 (lambda (_g60316033_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (_closure-reference?5338_
                             _closure6020_
                             _g60316033_))
                          _post-bindings5978_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e6036_
                                                         _$e6036_
                                                         (if (_is-effect-bind?5339_
                                                              _form6014_)
                                                             (find _is-effect-bind?5339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _post-forms5977_)
                     '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_lp5972_
                                        _rest-forms6013_
                                        _rest-bindings6016_
                                        _rest-closures6019_
                                        (cons _form6014_ _post-forms5977_)
                                        (cons _bindings6017_
                                              _post-bindings5978_)
                                        (cons _closure6020_
                                              _post-closures5979_)
                                        _pre-forms5980_
                                        _lifted?5981_)
                                       (_lp5972_
                                        _rest-forms6013_
                                        _rest-bindings6016_
                                        _rest-closures6019_
                                        _post-forms5977_
                                        _post-bindings5978_
                                        _post-closures5979_
                                        (cons _form6014_ _pre-forms5980_)
                                        '#t)))))
                            (if (##pair? _rest-closures59846002_)
                                (let ((_hd59916042_
                                       (##car _rest-closures59846002_))
                                      (_tl59926044_
                                       (##cdr _rest-closures59846002_)))
                                  (let ((_closure6047_ _hd59916042_))
                                    (let ((_rest-closures6049_ _tl59926044_))
                                      (_K59906039_
                                       _rest-closures6049_
                                       _closure6047_))))
                                (_else59866010_))))))
                   (if (##pair? _rest-bindings59836000_)
                       (let ((_hd59936054_ (##car _rest-bindings59836000_))
                             (_tl59946056_ (##cdr _rest-bindings59836000_)))
                         (let ((_bindings6059_ _hd59936054_))
                           (let ((_rest-bindings6061_ _tl59946056_))
                             (_K59896051_
                              _rest-bindings6061_
                              _bindings6059_))))
                       (_else59866010_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _rest-forms59825998_)
                                                      (let ((_hd59956066_
                                                             (##car _rest-forms59825998_))
                                                            (_tl59966068_
                                                             (##cdr _rest-forms59825998_)))
                                                        (let ((_form6071_
                                                               _hd59956066_))
                                                          (let ((_rest-forms6073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl59966068_))
                    (_K59886063_ _rest-forms6073_ _form6071_))))
              (_else59866010_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _lp5972_)
                              _hd5968_
                              _bindings5969_
                              _closures5970_
                              '()
                              '()
                              '()
                              '()
                              '#f))))
                      (let ((_lift-post5336_
                             (lambda (_hd5861_ _bindings5862_ _closures5863_)
                               ((letrec ((_lp5865_
                                          (lambda (_rest-forms5867_
                                                   _rest-bindings5868_
                                                   _rest-closures5869_
                                                   _pre-forms5870_
                                                   _pre-bindings5871_
                                                   _pre-closures5872_
                                                   _post-forms5873_
                                                   _lifted?5874_)
                                            (let ((_rest-forms58755891_
                                                   _rest-forms5867_)
                                                  (_rest-bindings58765893_
                                                   _rest-bindings5868_)
                                                  (_rest-closures58775895_
                                                   _rest-closures5869_))
                                              (let ((_E58805899_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _rest-forms58755891_
                                                              _rest-bindings58765893_
                                                              _rest-closures58775895_))))
                                                (let ((_else58795903_
                                                       (lambda ()
                                                         (if _lifted?5874_
                                                             (_lp5865_
                                                              (reverse _pre-forms5870_)
                                                              (reverse _pre-bindings5871_)
                                                              (reverse _pre-closures5872_)
                                                              '()
                                                              '()
                                                              '()
                                                              _post-forms5873_
                                                              '#f)
                                                             (values _post-forms5873_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-forms5870_
                             _pre-bindings5871_
                             _pre-closures5872_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_K58815956_
                                                         (lambda (_rest-forms5906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _form5907_)
                   (let ((_K58825944_
                          (lambda (_rest-bindings5909_ _bindings5910_)
                            (let ((_K58835932_
                                   (lambda (_rest-closures5912_ _closure5913_)
                                     (if (let ((_$e5915_
                                                (_closure-reference?5338_
                                                 _closure5913_
                                                 _bindings5910_)))
                                           (if _$e5915_
                                               _$e5915_
                                               (let ((_$e5922_
                                                      (ormap1 (lambda (_g59175919_)
                                                                (_closure-reference?5338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g59175919_
                         _bindings5910_))
                      _rest-closures5912_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e5922_
                                                     _$e5922_
                                                     (let ((_$e5929_
                                                            (ormap1 (lambda (_g59245926_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_closure-reference?5338_
                               _g59245926_
                               _bindings5910_))
                            _pre-closures5872_)))
               (if _$e5929_
                   _$e5929_
                   (if (_is-effect-bind?5339_ _form5907_)
                       (find _is-effect-bind?5339_ _pre-forms5870_)
                       '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_lp5865_
                                          _rest-forms5906_
                                          _rest-bindings5909_
                                          _rest-closures5912_
                                          (cons _form5907_ _pre-forms5870_)
                                          (cons _bindings5910_
                                                _pre-bindings5871_)
                                          (cons _closure5913_
                                                _pre-closures5872_)
                                          _post-forms5873_
                                          _lifted?5874_)
                                         (_lp5865_
                                          _rest-forms5906_
                                          _rest-bindings5909_
                                          _rest-closures5912_
                                          _pre-forms5870_
                                          _pre-bindings5871_
                                          _pre-closures5872_
                                          (cons _form5907_ _post-forms5873_)
                                          '#t)))))
                              (if (##pair? _rest-closures58775895_)
                                  (let ((_hd58845935_
                                         (##car _rest-closures58775895_))
                                        (_tl58855937_
                                         (##cdr _rest-closures58775895_)))
                                    (let ((_closure5940_ _hd58845935_))
                                      (let ((_rest-closures5942_ _tl58855937_))
                                        (_K58835932_
                                         _rest-closures5942_
                                         _closure5940_))))
                                  (_else58795903_))))))
                     (if (##pair? _rest-bindings58765893_)
                         (let ((_hd58865947_ (##car _rest-bindings58765893_))
                               (_tl58875949_ (##cdr _rest-bindings58765893_)))
                           (let ((_bindings5952_ _hd58865947_))
                             (let ((_rest-bindings5954_ _tl58875949_))
                               (_K58825944_
                                _rest-bindings5954_
                                _bindings5952_))))
                         (_else58795903_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (##pair? _rest-forms58755891_)
                                                        (let ((_hd58885959_
                                                               (##car _rest-forms58755891_))
                                                              (_tl58895961_
                                                               (##cdr _rest-forms58755891_)))
                                                          (let ((_form5964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd58885959_))
                    (let ((_rest-forms5966_ _tl58895961_))
                      (_K58815956_ _rest-forms5966_ _form5964_))))
                (_else58795903_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp5865_)
                                (reverse _hd5861_)
                                (reverse _bindings5862_)
                                (reverse _closures5863_)
                                '()
                                '()
                                '()
                                '()
                                '#f))))
                        (let ((_linearize5332_
                               (lambda (_forms6189_)
                                 (let ((_closures6191_
                                        (_collect-closures5333_ _forms6189_)))
                                   (let ((_bindings6193_
                                          (_collect-bindings5334_
                                           _forms6189_)))
                                     (let ((_g9998_ (_lift-pre5335_
                                                     _forms6189_
                                                     _bindings6193_
                                                     _closures6191_)))
                                       (begin
                                         (let ((_g9999_ (values-count
                                                         _g9998_)))
                                           (if (not (fx= _g9999_ 4))
                                               (error "Context expects 4 values"
                                                      _g9999_)))
                                         (let ((_pre-bind6195_
                                                (values-ref _g9998_ 0))
                                               (_forms6196_
                                                (values-ref _g9998_ 1))
                                               (_bindings6197_
                                                (values-ref _g9998_ 2))
                                               (_closures6198_
                                                (values-ref _g9998_ 3)))
                                           (let ((_g10000_
                                                  (_lift-post5336_
                                                   _forms6196_
                                                   _bindings6197_
                                                   _closures6198_)))
                                             (begin
                                               (let ((_g10001_
                                                      (values-count _g10000_)))
                                                 (if (not (fx= _g10001_ 4))
                                                     (error "Context expects 4 values"
                                                            _g10001_)))
                                               (let ((_post-bind6200_
                                                      (values-ref _g10000_ 0))
                                                     (_forms6201_
                                                      (values-ref _g10000_ 1))
                                                     (_bindings6202_
                                                      (values-ref _g10000_ 2))
                                                     (_closures6203_
                                                      (values-ref _g10000_ 3)))
                                                 (let ((_g10002_
                                                        (_lift-rec5337_
                                                         _forms6201_)))
                                                   (begin
                                                     (let ((_g10003_
                                                            (values-count
                                                             _g10002_)))
                                                       (if (not (fx= _g10003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             3))
                   (error "Context expects 3 values" _g10003_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_rec-pre6205_
                                                            (values-ref
                                                             _g10002_
                                                             0))
                                                           (_rec-bind6206_
                                                            (values-ref
                                                             _g10002_
                                                             1))
                                                           (_rec-init6207_
                                                            (values-ref
                                                             _g10002_
                                                             2)))
                                                       (let ()
                                                         (values _pre-bind6195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rec-pre6205_
                         _rec-bind6206_
                         _rec-init6207_
                         _post-bind6200_))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (letrec ((_generate-let*5342_
                                    (lambda (_hd5429_ _body5430_)
                                      (let ((_hd54315439_ _hd5429_))
                                        (let ((_E54345443_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _hd54315439_))))
                                          (let ((_else54335447_
                                                 (lambda () _body5430_)))
                                            (let ((_K54355488_
                                                   (lambda (_rest5450_
                                                            _bind5451_)
                                                     (let ((_bind54525461_
                                                            _bind5451_))
                                                       (let ((_E54545465_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind54525461_))))
                 (let ((_K54555471_
                        (lambda (_expr5468_ _hd5469_)
                          (if (gx#stx-ormap gx#identifier? _hd5469_)
                              (gxc#generate-runtime-let-values%__opt-lambda6630
                               (cons '%#let-values
                                     (cons (cons _bind5451_ '())
                                           (cons (_generate-let*5342_
                                                  _rest5450_
                                                  _body5430_)
                                                 '())))
                               '#t)
                              (cons 'begin
                                    (cons (gxc#compile-e _expr5468_)
                                          (cons (_generate-let*5342_
                                                 _rest5450_
                                                 _body5430_)
                                                '())))))))
                   (if (##pair? _bind54525461_)
                       (let ((_hd54565474_ (##car _bind54525461_))
                             (_tl54575476_ (##cdr _bind54525461_)))
                         (let ((_hd5479_ _hd54565474_))
                           (if (##pair? _tl54575476_)
                               (let ((_hd54585481_ (##car _tl54575476_))
                                     (_tl54595483_ (##cdr _tl54575476_)))
                                 (let ((_expr5486_ _hd54585481_))
                                   (if (##null? _tl54595483_)
                                       (_K54555471_ _expr5486_ _hd5479_)
                                       (_E54545465_))))
                               (_E54545465_))))
                       (_E54545465_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _hd54315439_)
                                                  (let ((_hd54365491_
                                                         (##car _hd54315439_))
                                                        (_tl54375493_
                                                         (##cdr _hd54315439_)))
                                                    (let ((_bind5496_
                                                           _hd54365491_))
                                                      (let ((_rest5498_
                                                             _tl54375493_))
                                                        (_K54355488_
                                                         _rest5498_
                                                         _bind5496_))))
                                                  (_else54335447_)))))))))
                            (let ((_g53445361_
                                   (lambda (_g53455358_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g53455358_))))
                              (let ((_g53435426_
                                     (lambda (_g53455364_)
                                       (if (gx#stx-pair? _g53455364_)
                                           (let ((_e53485366_
                                                  (gx#stx-e _g53455364_)))
                                             (let ((_hd53495369_
                                                    (##car _e53485366_))
                                                   (_tl53505371_
                                                    (##cdr _e53485366_)))
                                               (if (gx#stx-pair? _tl53505371_)
                                                   (let ((_e53515374_
                                                          (gx#stx-e
                                                           _tl53505371_)))
                                                     (let ((_hd53525377_
                                                            (##car _e53515374_))
                                                           (_tl53535379_
                                                            (##cdr _e53515374_)))
                                                       (if (gx#stx-pair?
                                                            _tl53535379_)
                                                           (let ((_e53545382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl53535379_)))
                     (let ((_hd53555385_ (##car _e53545382_))
                           (_tl53565387_ (##cdr _e53545382_)))
                       (if (gx#stx-null? _tl53565387_)
                           ((lambda (_L5390_ _L5391_)
                              (let ((_g9996_ (_linearize5332_ _L5391_)))
                                (begin
                                  (let ((_g9997_ (values-count _g9996_)))
                                    (if (not (fx= _g9997_ 5))
                                        (error "Context expects 5 values"
                                               _g9997_)))
                                  (let ((_pre5407_ (values-ref _g9996_ 0))
                                        (_rec-pre5408_ (values-ref _g9996_ 1))
                                        (_rec-bind5409_ (values-ref _g9996_ 2))
                                        (_rec-init5410_ (values-ref _g9996_ 3))
                                        (_post5411_ (values-ref _g9996_ 4)))
                                    (let ((_body5413_ (gxc#compile-e _L5390_)))
                                      (let ((_body5415_
                                             (if (null? _post5411_)
                                                 _body5413_
                                                 (_generate-let*5342_
                                                  _post5411_
                                                  _body5413_))))
                                        (let ((_body5417_
                                               (if (null? _rec-init5410_)
                                                   _body5415_
                                                   (cons 'begin
                                                         (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body5415_ '())
                         _rec-init5410_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_body5419_
                                                 (if (null? _rec-bind5409_)
                                                     _body5417_
                                                     (cons 'letrec
                                                           (cons _rec-bind5409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body5417_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_body5421_
                                                   (if (null? _rec-pre5408_)
                                                       _body5419_
                                                       (cons 'let
                                                             (cons _rec-pre5408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body5419_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_body5423_
                                                     (if (null? _pre5407_)
                                                         _body5421_
                                                         (_generate-let*5342_
                                                          _pre5407_
                                                          _body5421_))))
                                                (let () _body5423_)))))))))))
                            _hd53555385_
                            _hd53525377_)
                           (_g53445361_ _g53455364_))))
                   (_g53445361_ _g53455364_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g53445361_ _g53455364_))))
                                           (_g53445361_ _g53455364_)))))
                                (_g53435426_ _stx5330_))))))))))))))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd5223_)
      ((letrec ((_lp5225_
                 (lambda (_rest5227_)
                   (let ((_g52315252_
                          (lambda (_g52325249_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g52325249_))))
                     (let ((_g52305259_
                            (lambda (_g52325255_) ((lambda () '#f)))))
                       (let ((_g52295266_
                              (lambda (_g52325262_)
                                (if (gx#stx-null? _g52325262_)
                                    ((lambda () '#t))
                                    (_g52305259_ _g52325262_)))))
                         (let ((_g52285327_
                                (lambda (_g52325269_)
                                  (if (gx#stx-pair? _g52325269_)
                                      (let ((_e52365271_
                                             (gx#stx-e _g52325269_)))
                                        (let ((_hd52375274_
                                               (##car _e52365271_))
                                              (_tl52385276_
                                               (##cdr _e52365271_)))
                                          (if (gx#stx-pair? _hd52375274_)
                                              (let ((_e52395279_
                                                     (gx#stx-e _hd52375274_)))
                                                (let ((_hd52405282_
                                                       (##car _e52395279_))
                                                      (_tl52415284_
                                                       (##cdr _e52395279_)))
                                                  (if (gx#stx-pair?
                                                       _hd52405282_)
                                                      (let ((_e52425287_
                                                             (gx#stx-e
                                                              _hd52405282_)))
                                                        (let ((_hd52435290_
                                                               (##car _e52425287_))
                                                              (_tl52445292_
                                                               (##cdr _e52425287_)))
                                                          (if (gx#stx-null?
                                                               _tl52445292_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl52415284_)
                          (let ((_e52455295_ (gx#stx-e _tl52415284_)))
                            (let ((_hd52465298_ (##car _e52455295_))
                                  (_tl52475300_ (##cdr _e52455295_)))
                              (if (gx#stx-null? _tl52475300_)
                                  ((lambda (_L5303_ _L5304_ _L5305_)
                                     (_lp5225_ _L5303_))
                                   _tl52385276_
                                   _hd52465298_
                                   _hd52435290_)
                                  (_g52295266_ _g52325269_))))
                          (_g52295266_ _g52325269_))
                      (_g52295266_ _g52325269_))))
              (_g52295266_ _g52325269_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g52295266_ _g52325269_))))
                                      (_g52295266_ _g52325269_)))))
                           (_g52285327_ _rest5227_))))))))
         _lp5225_)
       _hd5223_)))
  (define gxc#generate-runtime-simple-let
    (lambda (_form5147_ _hd5148_ _body5149_ _compiled-body?5150_)
      (let ((_generate15152_
             (lambda (_bind5154_)
               (let ((_g51565173_
                      (lambda (_g51575170_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g51575170_))))
                 (let ((_g51555220_
                        (lambda (_g51575176_)
                          (if (gx#stx-pair? _g51575176_)
                              (let ((_e51605178_ (gx#stx-e _g51575176_)))
                                (let ((_hd51615181_ (##car _e51605178_))
                                      (_tl51625183_ (##cdr _e51605178_)))
                                  (if (gx#stx-pair? _hd51615181_)
                                      (let ((_e51635186_
                                             (gx#stx-e _hd51615181_)))
                                        (let ((_hd51645189_
                                               (##car _e51635186_))
                                              (_tl51655191_
                                               (##cdr _e51635186_)))
                                          (if (gx#stx-null? _tl51655191_)
                                              (if (gx#stx-pair? _tl51625183_)
                                                  (let ((_e51665194_
                                                         (gx#stx-e
                                                          _tl51625183_)))
                                                    (let ((_hd51675197_
                                                           (##car _e51665194_))
                                                          (_tl51685199_
                                                           (##cdr _e51665194_)))
                                                      (if (gx#stx-null?
                                                           _tl51685199_)
                                                          ((lambda (_L5202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5203_)
                     (cons (gxc#generate-runtime-binding-id* _L5203_)
                           (cons (gxc#compile-e _L5202_) '())))
                   _hd51675197_
                   _hd51645189_)
                  (_g51565173_ _g51575176_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g51565173_ _g51575176_))
                                              (_g51565173_ _g51575176_))))
                                      (_g51565173_ _g51575176_))))
                              (_g51565173_ _g51575176_)))))
                   (_g51555220_ _bind5154_))))))
        (cons _form5147_
              (cons (map _generate15152_ _hd5148_)
                    (cons (if _compiled-body?5150_
                              _body5149_
                              (gxc#compile-e _body5149_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx5058_)
      (letrec ((_generate15060_
                (lambda (_datum5112_)
                  (if (let ((_$e5114_ (null? _datum5112_)))
                        (if _$e5114_
                            _$e5114_
                            (let ((_$e5117_ (interned-symbol? _datum5112_)))
                              (if _$e5117_
                                  _$e5117_
                                  (gx#self-quoting? _datum5112_)))))
                      _datum5112_
                      (if (uninterned-symbol? _datum5112_)
                          (gxc#generate-runtime-gensym-reference__opt-lambda8941
                           _datum5112_
                           '#t)
                          (if (pair? _datum5112_)
                              (cons (_generate15060_ (car _datum5112_))
                                    (_generate15060_ (cdr _datum5112_)))
                              (if (box? _datum5112_)
                                  (box (_generate15060_ (unbox _datum5112_)))
                                  (if (vector? _datum5112_)
                                      (vector-map _generate15060_ _datum5112_)
                                      (if (let ((_$e5120_
                                                 (s8vector? _datum5112_)))
                                            (if _$e5120_
                                                _$e5120_
                                                (let ((_$e5123_
                                                       (u8vector?
                                                        _datum5112_)))
                                                  (if _$e5123_
                                                      _$e5123_
                                                      (let ((_$e5126_
                                                             (s16vector?
                                                              _datum5112_)))
                                                        (if _$e5126_
                                                            _$e5126_
                                                            (let ((_$e5129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum5112_)))
                      (if _$e5129_
                          _$e5129_
                          (let ((_$e5132_ (s32vector? _datum5112_)))
                            (if _$e5132_
                                _$e5132_
                                (let ((_$e5135_ (u32vector? _datum5112_)))
                                  (if _$e5135_
                                      _$e5135_
                                      (let ((_$e5138_
                                             (s64vector? _datum5112_)))
                                        (if _$e5138_
                                            _$e5138_
                                            (let ((_$e5141_
                                                   (u64vector? _datum5112_)))
                                              (if _$e5141_
                                                  _$e5141_
                                                  (let ((_$e5144_
                                                         (f32vector?
                                                          _datum5112_)))
                                                    (if _$e5144_
                                                        _$e5144_
                                                        (f64vector?
                                                         _datum5112_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum5112_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx5058_))))))))))
        (let ((_g50625075_
               (lambda (_g50635072_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g50635072_))))
          (let ((_g50615109_
                 (lambda (_g50635078_)
                   (if (gx#stx-pair? _g50635078_)
                       (let ((_e50655080_ (gx#stx-e _g50635078_)))
                         (let ((_hd50665083_ (##car _e50655080_))
                               (_tl50675085_ (##cdr _e50655080_)))
                           (if (gx#stx-pair? _tl50675085_)
                               (let ((_e50685088_ (gx#stx-e _tl50675085_)))
                                 (let ((_hd50695091_ (##car _e50685088_))
                                       (_tl50705093_ (##cdr _e50685088_)))
                                   (if (gx#stx-null? _tl50705093_)
                                       ((lambda (_L5096_)
                                          (cons 'quote
                                                (cons (_generate15060_
                                                       (gx#stx-e _L5096_))
                                                      '())))
                                        _hd50695091_)
                                       (_g50625075_ _g50635078_))))
                               (_g50625075_ _g50635078_))))
                       (_g50625075_ _g50635078_)))))
            (_g50615109_ _stx5058_))))))
  (define gxc#generate-runtime-call%
    (lambda (_stx5020_)
      (let ((_g50225032_
             (lambda (_g50235029_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g50235029_))))
        (let ((_g50215055_
               (lambda (_g50235035_)
                 (if (gx#stx-pair? _g50235035_)
                     (let ((_e50255037_ (gx#stx-e _g50235035_)))
                       (let ((_hd50265040_ (##car _e50255037_))
                             (_tl50275042_ (##cdr _e50255037_)))
                         ((lambda (_L5045_) (map gxc#compile-e _L5045_))
                          _tl50275042_)))
                     (_g50225032_ _g50235035_)))))
          (_g50215055_ _stx5020_)))))
  (define gxc#generate-runtime-if%
    (lambda (_stx4982_)
      (let ((_g49844994_
             (lambda (_g49854991_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g49854991_))))
        (let ((_g49835017_
               (lambda (_g49854997_)
                 (if (gx#stx-pair? _g49854997_)
                     (let ((_e49874999_ (gx#stx-e _g49854997_)))
                       (let ((_hd49885002_ (##car _e49874999_))
                             (_tl49895004_ (##cdr _e49874999_)))
                         ((lambda (_L5007_)
                            (cons 'if (map gxc#compile-e _L5007_)))
                          _tl49895004_)))
                     (_g49844994_ _g49854997_)))))
          (_g49835017_ _stx4982_)))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx4931_)
      (let ((_g49334946_
             (lambda (_g49344943_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g49344943_))))
        (let ((_g49324979_
               (lambda (_g49344949_)
                 (if (gx#stx-pair? _g49344949_)
                     (let ((_e49364951_ (gx#stx-e _g49344949_)))
                       (let ((_hd49374954_ (##car _e49364951_))
                             (_tl49384956_ (##cdr _e49364951_)))
                         (if (gx#stx-pair? _tl49384956_)
                             (let ((_e49394959_ (gx#stx-e _tl49384956_)))
                               (let ((_hd49404962_ (##car _e49394959_))
                                     (_tl49414964_ (##cdr _e49394959_)))
                                 (if (gx#stx-null? _tl49414964_)
                                     ((lambda (_L4967_)
                                        (gxc#generate-runtime-binding-id
                                         _L4967_))
                                      _hd49404962_)
                                     (_g49334946_ _g49344949_))))
                             (_g49334946_ _g49344949_))))
                     (_g49334946_ _g49344949_)))))
          (_g49324979_ _stx4931_)))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx4864_)
      (let ((_g48664883_
             (lambda (_g48674880_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g48674880_))))
        (let ((_g48654928_
               (lambda (_g48674886_)
                 (if (gx#stx-pair? _g48674886_)
                     (let ((_e48704888_ (gx#stx-e _g48674886_)))
                       (let ((_hd48714891_ (##car _e48704888_))
                             (_tl48724893_ (##cdr _e48704888_)))
                         (if (gx#stx-pair? _tl48724893_)
                             (let ((_e48734896_ (gx#stx-e _tl48724893_)))
                               (let ((_hd48744899_ (##car _e48734896_))
                                     (_tl48754901_ (##cdr _e48734896_)))
                                 (if (gx#stx-pair? _tl48754901_)
                                     (let ((_e48764904_
                                            (gx#stx-e _tl48754901_)))
                                       (let ((_hd48774907_ (##car _e48764904_))
                                             (_tl48784909_
                                              (##cdr _e48764904_)))
                                         (if (gx#stx-null? _tl48784909_)
                                             ((lambda (_L4912_ _L4913_)
                                                (cons 'set!
                                                      (cons (gxc#generate-runtime-binding-id
                                                             _L4913_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4912_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd48774907_
                                              _hd48744899_)
                                             (_g48664883_ _g48674886_))))
                                     (_g48664883_ _g48674886_))))
                             (_g48664883_ _g48674886_))))
                     (_g48664883_ _g48674886_)))))
          (_g48654928_ _stx4864_)))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx4797_)
      (let ((_g47994816_
             (lambda (_g48004813_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g48004813_))))
        (let ((_g47984861_
               (lambda (_g48004819_)
                 (if (gx#stx-pair? _g48004819_)
                     (let ((_e48034821_ (gx#stx-e _g48004819_)))
                       (let ((_hd48044824_ (##car _e48034821_))
                             (_tl48054826_ (##cdr _e48034821_)))
                         (if (gx#stx-pair? _tl48054826_)
                             (let ((_e48064829_ (gx#stx-e _tl48054826_)))
                               (let ((_hd48074832_ (##car _e48064829_))
                                     (_tl48084834_ (##cdr _e48064829_)))
                                 (if (gx#stx-pair? _tl48084834_)
                                     (let ((_e48094837_
                                            (gx#stx-e _tl48084834_)))
                                       (let ((_hd48104840_ (##car _e48094837_))
                                             (_tl48114842_
                                              (##cdr _e48094837_)))
                                         (if (gx#stx-null? _tl48114842_)
                                             ((lambda (_L4845_ _L4846_)
                                                (cons '##structure-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L4845_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4846_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd48104840_
                                              _hd48074832_)
                                             (_g47994816_ _g48004819_))))
                                     (_g47994816_ _g48004819_))))
                             (_g47994816_ _g48004819_))))
                     (_g47994816_ _g48004819_)))))
          (_g47984861_ _stx4797_)))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx4730_)
      (let ((_g47324749_
             (lambda (_g47334746_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g47334746_))))
        (let ((_g47314794_
               (lambda (_g47334752_)
                 (if (gx#stx-pair? _g47334752_)
                     (let ((_e47364754_ (gx#stx-e _g47334752_)))
                       (let ((_hd47374757_ (##car _e47364754_))
                             (_tl47384759_ (##cdr _e47364754_)))
                         (if (gx#stx-pair? _tl47384759_)
                             (let ((_e47394762_ (gx#stx-e _tl47384759_)))
                               (let ((_hd47404765_ (##car _e47394762_))
                                     (_tl47414767_ (##cdr _e47394762_)))
                                 (if (gx#stx-pair? _tl47414767_)
                                     (let ((_e47424770_
                                            (gx#stx-e _tl47414767_)))
                                       (let ((_hd47434773_ (##car _e47424770_))
                                             (_tl47444775_
                                              (##cdr _e47424770_)))
                                         (if (gx#stx-null? _tl47444775_)
                                             ((lambda (_L4778_ _L4779_)
                                                (cons '##structure-direct-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L4778_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4779_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd47434773_
                                              _hd47404765_)
                                             (_g47324749_ _g47334752_))))
                                     (_g47324749_ _g47334752_))))
                             (_g47324749_ _g47334752_))))
                     (_g47324749_ _g47334752_)))))
          (_g47314794_ _stx4730_)))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx4647_)
      (let ((_g46494670_
             (lambda (_g46504667_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g46504667_))))
        (let ((_g46484727_
               (lambda (_g46504673_)
                 (if (gx#stx-pair? _g46504673_)
                     (let ((_e46544675_ (gx#stx-e _g46504673_)))
                       (let ((_hd46554678_ (##car _e46544675_))
                             (_tl46564680_ (##cdr _e46544675_)))
                         (if (gx#stx-pair? _tl46564680_)
                             (let ((_e46574683_ (gx#stx-e _tl46564680_)))
                               (let ((_hd46584686_ (##car _e46574683_))
                                     (_tl46594688_ (##cdr _e46574683_)))
                                 (if (gx#stx-pair? _tl46594688_)
                                     (let ((_e46604691_
                                            (gx#stx-e _tl46594688_)))
                                       (let ((_hd46614694_ (##car _e46604691_))
                                             (_tl46624696_
                                              (##cdr _e46604691_)))
                                         (if (gx#stx-pair? _tl46624696_)
                                             (let ((_e46634699_
                                                    (gx#stx-e _tl46624696_)))
                                               (let ((_hd46644702_
                                                      (##car _e46634699_))
                                                     (_tl46654704_
                                                      (##cdr _e46634699_)))
                                                 (if (gx#stx-null?
                                                      _tl46654704_)
                                                     ((lambda (_L4707_
                                                               _L4708_
                                                               _L4709_)
                                                        (cons '##structure-ref
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L4707_)
                            (cons (gxc#compile-e _L4708_)
                                  (cons (gxc#compile-e _L4709_)
                                        (cons ''#f '()))))))
              _hd46644702_
              _hd46614694_
              _hd46584686_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g46494670_
                                                      _g46504673_))))
                                             (_g46494670_ _g46504673_))))
                                     (_g46494670_ _g46504673_))))
                             (_g46494670_ _g46504673_))))
                     (_g46494670_ _g46504673_)))))
          (_g46484727_ _stx4647_)))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx4548_)
      (let ((_g45504575_
             (lambda (_g45514572_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g45514572_))))
        (let ((_g45494644_
               (lambda (_g45514578_)
                 (if (gx#stx-pair? _g45514578_)
                     (let ((_e45564580_ (gx#stx-e _g45514578_)))
                       (let ((_hd45574583_ (##car _e45564580_))
                             (_tl45584585_ (##cdr _e45564580_)))
                         (if (gx#stx-pair? _tl45584585_)
                             (let ((_e45594588_ (gx#stx-e _tl45584585_)))
                               (let ((_hd45604591_ (##car _e45594588_))
                                     (_tl45614593_ (##cdr _e45594588_)))
                                 (if (gx#stx-pair? _tl45614593_)
                                     (let ((_e45624596_
                                            (gx#stx-e _tl45614593_)))
                                       (let ((_hd45634599_ (##car _e45624596_))
                                             (_tl45644601_
                                              (##cdr _e45624596_)))
                                         (if (gx#stx-pair? _tl45644601_)
                                             (let ((_e45654604_
                                                    (gx#stx-e _tl45644601_)))
                                               (let ((_hd45664607_
                                                      (##car _e45654604_))
                                                     (_tl45674609_
                                                      (##cdr _e45654604_)))
                                                 (if (gx#stx-pair?
                                                      _tl45674609_)
                                                     (let ((_e45684612_
                                                            (gx#stx-e
                                                             _tl45674609_)))
                                                       (let ((_hd45694615_
                                                              (##car _e45684612_))
                                                             (_tl45704617_
                                                              (##cdr _e45684612_)))
                                                         (if (gx#stx-null?
                                                              _tl45704617_)
                                                             ((lambda (_L4620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L4621_
                               _L4622_
                               _L4623_)
                        (cons '##structure-set!
                              (cons (gxc#compile-e _L4621_)
                                    (cons (gxc#compile-e _L4620_)
                                          (cons (gxc#compile-e _L4622_)
                                                (cons (gxc#compile-e _L4623_)
                                                      (cons ''#f '())))))))
                      _hd45694615_
                      _hd45664607_
                      _hd45634599_
                      _hd45604591_)
                     (_g45504575_ _g45514578_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g45504575_
                                                      _g45514578_))))
                                             (_g45504575_ _g45514578_))))
                                     (_g45504575_ _g45514578_))))
                             (_g45504575_ _g45514578_))))
                     (_g45504575_ _g45514578_)))))
          (_g45494644_ _stx4548_)))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx4457_)
      (let ((_g44594469_
             (lambda (_g44604466_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g44604466_))))
        (let ((_g44584545_
               (lambda (_g44604472_)
                 (if (gx#stx-pair? _g44604472_)
                     (let ((_e44624474_ (gx#stx-e _g44604472_)))
                       (let ((_hd44634477_ (##car _e44624474_))
                             (_tl44644479_ (##cdr _e44624474_)))
                         ((lambda (_L4482_)
                            (let ((_ht4492_ (make-hash-table-eq)))
                              ((letrec ((_lp4494_
                                         (lambda (_rest4496_ _loads4497_)
                                           (let ((_K4499_ (lambda (_ctx4538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest4539_)
                    (let ((_id4541_
                           (##structure-ref
                            _ctx4538_
                            '1
                            gx#expander-context::t
                            '#f)))
                      (if (table-ref _ht4492_ _id4541_ '#f)
                          (_lp4494_ _rest4539_ _loads4497_)
                          (let ((_rt4543_
                                 (string-append
                                  (symbol->string _id4541_)
                                  '"__rt")))
                            (begin
                              (table-set! _ht4492_ _id4541_ _rt4543_)
                              (_lp4494_
                               _rest4539_
                               (cons _rt4543_ _loads4497_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_rest45004508_ _rest4496_))
                                               (let ((_E45034512_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest45004508_))))
                                                 (let ((_else45024520_
                                                        (lambda ()
                                                          (cons 'begin
                                                                (map (lambda (_g45154517_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (list 'load-module _g45154517_))
                             (reverse _loads4497_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K45044526_
                                                          (lambda (_rest4523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in4524_)
                    (if (##structure-instance-of?
                         _in4524_
                         'gx#module-context::t)
                        (_K4499_ _in4524_ _rest4523_)
                        (if (##structure-direct-instance-of?
                             _in4524_
                             'gx#module-import::t)
                            (if (fxpositive?
                                 (##structure-ref
                                  _in4524_
                                  '3
                                  gx#module-import::t
                                  '#f))
                                (_lp4494_ _rest4523_ _loads4497_)
                                (_K4499_ (##structure-ref
                                          (##structure-ref
                                           _in4524_
                                           '1
                                           gx#module-import::t
                                           '#f)
                                          '1
                                          gx#module-export::t
                                          '#f)
                                         _rest4523_))
                            (if (##structure-direct-instance-of?
                                 _in4524_
                                 'gx#import-set::t)
                                (if (fxpositive?
                                     (##structure-ref
                                      _in4524_
                                      '2
                                      gx#import-set::t
                                      '#f))
                                    (_lp4494_ _rest4523_ _loads4497_)
                                    (_K4499_ (##structure-ref
                                              _in4524_
                                              '1
                                              gx#import-set::t
                                              '#f)
                                             _rest4523_))
                                (gxc#raise-compile-error
                                 '"Unexpected import"
                                 _stx4457_
                                 _in4524_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest45004508_)
                                                         (let ((_hd45054529_
                                                                (##car _rest45004508_))
                                                               (_tl45064531_
                                                                (##cdr _rest45004508_)))
                                                           (let ((_in4534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd45054529_))
                     (let ((_rest4536_ _tl45064531_))
                       (_K45044526_ _rest4536_ _in4534_))))
                 (_else45024520_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp4494_)
                               _L4482_
                               '())))
                          _tl44644479_)))
                     (_g44594469_ _g44604472_)))))
          (_g44584545_ _stx4457_)))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx4398_)
      (let ((_generate-quote4400_
             (lambda (_q4455_)
               (if (gx#identifier? _q4455_)
                   (gxc#generate-runtime-identifier _q4455_)
                   (gxc#raise-compile-error
                    '"Cannot quote non-identifier syntax"
                    _stx4398_
                    _q4455_)))))
        (let ((_g44024415_
               (lambda (_g44034412_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g44034412_))))
          (let ((_g44014452_
                 (lambda (_g44034418_)
                   (if (gx#stx-pair? _g44034418_)
                       (let ((_e44054420_ (gx#stx-e _g44034418_)))
                         (let ((_hd44064423_ (##car _e44054420_))
                               (_tl44074425_ (##cdr _e44054420_)))
                           (if (gx#stx-pair? _tl44074425_)
                               (let ((_e44084428_ (gx#stx-e _tl44074425_)))
                                 (let ((_hd44094431_ (##car _e44084428_))
                                       (_tl44104433_ (##cdr _e44084428_)))
                                   (if (gx#stx-null? _tl44104433_)
                                       ((lambda (_L4436_)
                                          (let ((_gid4449_
                                                 (gxc#generate-runtime-temporary__opt-lambda8887
                                                  '#t))
                                                (_quote-e4450_
                                                 (_generate-quote4400_
                                                  _L4436_)))
                                            (begin
                                              (set-box!
                                               (gxc#current-compile-lift)
                                               (cons (cons 'define
                                                           (cons _gid4449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'gx#core-quote-syntax
                                     (cons (cons 'quote
                                                 (cons _quote-e4450_ '()))
                                           '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (unbox (gxc#current-compile-lift))))
                                              _gid4449_)))
                                        _hd44094431_)
                                       (_g44024415_ _g44034418_))))
                               (_g44024415_ _g44034418_))))
                       (_g44024415_ _g44034418_)))))
            (_g44014452_ _stx4398_))))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx4331_)
      (let ((_g43334350_
             (lambda (_g43344347_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g43344347_))))
        (let ((_g43324395_
               (lambda (_g43344353_)
                 (if (gx#stx-pair? _g43344353_)
                     (let ((_e43374355_ (gx#stx-e _g43344353_)))
                       (let ((_hd43384358_ (##car _e43374355_))
                             (_tl43394360_ (##cdr _e43374355_)))
                         (if (gx#stx-pair? _tl43394360_)
                             (let ((_e43404363_ (gx#stx-e _tl43394360_)))
                               (let ((_hd43414366_ (##car _e43404363_))
                                     (_tl43424368_ (##cdr _e43404363_)))
                                 (if (gx#stx-pair? _tl43424368_)
                                     (let ((_e43434371_
                                            (gx#stx-e _tl43424368_)))
                                       (let ((_hd43444374_ (##car _e43434371_))
                                             (_tl43454376_
                                              (##cdr _e43434371_)))
                                         (if (gx#stx-null? _tl43454376_)
                                             ((lambda (_L4379_ _L4380_)
                                                (cons 'define
                                                      (cons (gx#stx-e _L4380_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4379_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd43444374_
                                              _hd43414366_)
                                             (_g43334350_ _g43344353_))))
                                     (_g43334350_ _g43344353_))))
                             (_g43334350_ _g43344353_))))
                     (_g43334350_ _g43344353_)))))
          (_g43324395_ _stx4331_)))))
  (define gxc#generate-meta-begin%
    (lambda (_stx4280_ _state4281_)
      (let ((_g42834293_
             (lambda (_g42844290_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g42844290_))))
        (let ((_g42824328_
               (lambda (_g42844296_)
                 (if (gx#stx-pair? _g42844296_)
                     (let ((_e42864298_ (gx#stx-e _g42844296_)))
                       (let ((_hd42874301_ (##car _e42864298_))
                             (_tl42884303_ (##cdr _e42864298_)))
                         ((lambda (_L4306_)
                            (let ((_c-body4320_
                                   (map (lambda (_g43154317_)
                                          (gxc#compile-e
                                           _g43154317_
                                           _state4281_))
                                        _L4306_)))
                              (let ((_c-body4325_
                                     (filter (lambda (_$obj4322_)
                                               (not (eq? _$obj4322_ '#!void)))
                                             _c-body4320_)))
                                (let () (cons '%#begin _c-body4325_)))))
                          _tl42884303_)))
                     (_g42834293_ _g42844296_)))))
          (_g42824328_ _stx4280_)))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx4188_ _state4189_)
      (let ((_g41914201_
             (lambda (_g41924198_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g41924198_))))
        (let ((_g41904277_
               (lambda (_g41924204_)
                 (if (gx#stx-pair? _g41924204_)
                     (let ((_e41944206_ (gx#stx-e _g41924204_)))
                       (let ((_hd41954209_ (##car _e41944206_))
                             (_tl41964211_ (##cdr _e41944206_)))
                         ((lambda (_L4214_)
                            (let ((_phi4224_
                                   (fx+ (gx#current-expander-phi) '1)))
                              (let ((_block4226_
                                     (gxc#meta-state-begin-phi!
                                      _state4189_
                                      _phi4224_)))
                                (let ((_compiled4229_
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#apply-generate-meta-phi
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin)
                                                 _L4214_)
                                           _state4189_))
                                        gx#current-expander-phi
                                        _phi4224_)))
                                  (let ()
                                    (let ((_g42324242_
                                           (lambda (_g42334239_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g42334239_))))
                                      (let ((_g42314274_
                                             (lambda (_g42334245_)
                                               (if (gx#stx-pair? _g42334245_)
                                                   (let ((_e42354247_
                                                          (gx#stx-e
                                                           _g42334245_)))
                                                     (let ((_hd42364250_
                                                            (##car _e42354247_))
                                                           (_tl42374252_
                                                            (##cdr _e42354247_)))
                                                       (if (gx#identifier?
                                                            _hd42364250_)
                                                           (if (gx#stx-eq?
                                                                '%#begin
                                                                _hd42364250_)
                                                               ((lambda (_L4255_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_c-body4272_
                                 (filter (lambda (_$obj4269_)
                                           (not (eq? _$obj4269_ '#!void)))
                                         _L4255_)))
                            (if _block4226_
                                (cons '%#begin-syntax
                                      (cons (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons _block4226_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _c-body4272_))
                                (if (null? _c-body4272_)
                                    '#!void
                                    (cons '%#begin-syntax _c-body4272_)))))
                        _tl42374252_)
                       (_g42324242_ _g42334245_))
                   (_g42324242_ _g42334245_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g42324242_
                                                    _g42334245_)))))
                                        (_g42314274_ _compiled4229_))))))))
                          _tl41964211_)))
                     (_g41914201_ _g41924204_)))))
          (_g41904277_ _stx4188_)))))
  (define gxc#generate-meta-module%
    (lambda (_stx4119_ _state4120_)
      (begin
        (gxc#meta-state-end-phi! _state4120_)
        (let ((_g41224136_
               (lambda (_g41234133_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g41234133_))))
          (let ((_g41214185_
                 (lambda (_g41234139_)
                   (if (gx#stx-pair? _g41234139_)
                       (let ((_e41264141_ (gx#stx-e _g41234139_)))
                         (let ((_hd41274144_ (##car _e41264141_))
                               (_tl41284146_ (##cdr _e41264141_)))
                           (if (gx#stx-pair? _tl41284146_)
                               (let ((_e41294149_ (gx#stx-e _tl41284146_)))
                                 (let ((_hd41304152_ (##car _e41294149_))
                                       (_tl41314154_ (##cdr _e41294149_)))
                                   ((lambda (_L4157_ _L4158_)
                                      (let ((_key4171_
                                             (gx#core-identifier-key _L4158_)))
                                        (begin
                                          (if (interned-symbol? _key4171_)
                                              '#!void
                                              (gxc#raise-compile-error
                                               '"Cannot compile module with uninterned id"
                                               _stx4119_
                                               _L4158_
                                               _key4171_))
                                          (let ((_ctx4173_
                                                 (gx#syntax-local-e__0
                                                  _L4158_)))
                                            (let ((_code4176_
                                                   (call-with-parameters
                                                    (lambda ()
                                                      (gxc#compile-e
                                                       (##structure-ref
                                                        _ctx4173_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       _state4120_))
                                                    gx#current-expander-context
                                                    _ctx4173_)))
                                              (let ((_rt4178_
                                                     (table-ref
                                                      (gxc#current-compile-runtime-sections)
                                                      _ctx4173_
                                                      '#f)))
                                                (let ((_loader4180_
                                                       (if _rt4178_
                                                           (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons '%#ref (cons '_gx#load-module '()))
                                     (cons (cons '%#quote (cons _rt4178_ '()))
                                           '())))
                         '())
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_modid4182_
                                                         (gx#stx-e _L4158_)))
                                                    (let ()
                                                      (begin
                                                        (gxc#meta-state-end-phi!
                                                         _state4120_)
                                                        (cons '%#module
                                                              (cons _modid4182_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _code4176_ _loader4180_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl41314154_
                                    _hd41304152_)))
                               (_g41224136_ _g41234139_))))
                       (_g41224136_ _g41234139_)))))
            (_g41214185_ _stx4119_))))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx4109_ _context-chain4110_)
      ((letrec ((_lp4112_
                 (lambda (_ctx4114_ _path4115_)
                   (let ((_super4117_
                          (##structure-ref
                           _ctx4114_
                           '3
                           gx#phi-context::t
                           '#f)))
                     (if (memq _super4117_ _context-chain4110_)
                         (cons* '#f
                                (car (##structure-ref
                                      _ctx4114_
                                      '7
                                      gx#module-context::t
                                      '#f))
                                _path4115_)
                         (if (##structure-instance-of?
                              _super4117_
                              'gx#module-context::t)
                             (_lp4112_
                              _super4117_
                              (cons (car (##structure-ref
                                          _ctx4114_
                                          '7
                                          gx#module-context::t
                                          '#f))
                                    _path4115_))
                             (cons (make-symbol
                                    '":"
                                    (##structure-ref
                                     _ctx4114_
                                     '1
                                     gx#expander-context::t
                                     '#f))
                                   _path4115_)))))))
         _lp4112_)
       _ctx4109_
       '())))
  (define gxc#current-context-chain
    (lambda ()
      ((letrec ((_lp4104_
                 (lambda (_ctx4106_ _r4107_)
                   (if (##structure-instance-of?
                        _ctx4106_
                        'gx#module-context::t)
                       (_lp4104_
                        (##structure-ref _ctx4106_ '3 gx#phi-context::t '#f)
                        (cons _ctx4106_ _r4107_))
                       _r4107_))))
         _lp4104_)
       (gx#current-expander-context)
       '())))
  (define gxc#generate-meta-import%
    (lambda (_stx3873_ _state3874_)
      (let ((_context-chain3876_ (gxc#current-context-chain)))
        (let ((_make-import-spec3877_
               (lambda (_in4040_)
                 (let ((_in40414053_ _in4040_))
                   (let ((_E40434057_
                          (lambda ()
                            (error '"No clause matching" _in40414053_))))
                     (let ((_K40444067_
                            (lambda (_phi4060_
                                     _name4061_
                                     _src-name4062_
                                     _src-phi4063_
                                     _src-key4064_
                                     _src-ctx4065_)
                              (cons _phi4060_
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name4061_)
                                          (cons _src-phi4063_
                                                (cons (gxc#generate-runtime-identifier-key
                                                       _src-name4062_)
                                                      '())))))))
                       (if (direct-struct-instance?
                            gx#module-import::t
                            _in40414053_)
                           (let ((_e40454070_ (##vector-ref _in40414053_ '1)))
                             (if (direct-struct-instance?
                                  gx#module-export::t
                                  _e40454070_)
                                 (let ((_e40484073_
                                        (##vector-ref _e40454070_ '1)))
                                   (let ((_src-ctx4076_ _e40484073_))
                                     (let ((_e40494078_
                                            (##vector-ref _e40454070_ '2)))
                                       (let ((_src-key4081_ _e40494078_))
                                         (let ((_e40504083_
                                                (##vector-ref _e40454070_ '3)))
                                           (let ((_src-phi4086_ _e40504083_))
                                             (let ((_e40514088_
                                                    (##vector-ref
                                                     _e40454070_
                                                     '4)))
                                               (let ((_src-name4091_
                                                      _e40514088_))
                                                 (let ((_e40464093_
                                                        (##vector-ref
                                                         _in40414053_
                                                         '2)))
                                                   (let ((_name4096_
                                                          _e40464093_))
                                                     (let ((_e40474098_
                                                            (##vector-ref
                                                             _in40414053_
                                                             '3)))
                                                       (let ((_phi4101_
                                                              _e40474098_))
                                                         (_K40444067_
                                                          _phi4101_
                                                          _name4096_
                                                          _src-name4091_
                                                          _src-phi4086_
                                                          _src-key4081_
                                                          _src-ctx4076_)))))))))))))
                                 (_E40434057_)))
                           (_E40434057_))))))))
          (let ((_make-import-path3878_
                 (lambda (_ctx4038_)
                   (gxc#generate-meta-import-path
                    _ctx4038_
                    _context-chain3876_))))
            (let ((_make-import-spec-in3879_
                   (lambda (_ctx4035_ _in4036_)
                     (cons 'spec:
                           (cons (_make-import-path3878_ _ctx4035_)
                                 (reverse _in4036_))))))
              (begin
                (gxc#meta-state-end-phi! _state3874_)
                (let ((_g38813891_
                       (lambda (_g38823888_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g38823888_))))
                  (let ((_g38804032_
                         (lambda (_g38823894_)
                           (if (gx#stx-pair? _g38823894_)
                               (let ((_e38843896_ (gx#stx-e _g38823894_)))
                                 (let ((_hd38853899_ (##car _e38843896_))
                                       (_tl38863901_ (##cdr _e38843896_)))
                                   ((lambda (_L3904_)
                                      ((letrec ((_lp3915_
                                                 (lambda (_rest3917_
                                                          _current-src3918_
                                                          _current-in3919_
                                                          _r3920_)
                                                   (let ((_rest39213929_
                                                          _rest3917_))
                                                     (let ((_E39243933_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _rest39213929_))))
               (let ((_else39233939_
                      (lambda ()
                        (let ((_r3937_ (if _current-src3918_
                                           (cons (_make-import-spec-in3879_
                                                  _current-src3918_
                                                  _current-in3919_)
                                                 _r3920_)
                                           _r3920_)))
                          (cons '%#import (reverse _r3937_))))))
                 (let ((_K39254020_
                        (lambda (_rest3942_ _in3943_)
                          (if (##structure-direct-instance-of?
                               _in3943_
                               'gx#module-import::t)
                              (let ((_in39443951_ _in3943_))
                                (let ((_E39463955_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _in39443951_))))
                                  (let ((_K39473960_
                                         (lambda (_src-ctx3958_)
                                           (if (eq? _current-src3918_
                                                    _src-ctx3958_)
                                               (_lp3915_
                                                _rest3942_
                                                _current-src3918_
                                                (cons (_make-import-spec3877_
                                                       _in3943_)
                                                      _current-in3919_)
                                                _r3920_)
                                               (if _current-src3918_
                                                   (_lp3915_
                                                    _rest3942_
                                                    _src-ctx3958_
                                                    (cons (_make-import-spec3877_
                                                           _in3943_)
                                                          '())
                                                    (cons (_make-import-spec-in3879_
                                                           _current-src3918_
                                                           _current-in3919_)
                                                          _r3920_))
                                                   (_lp3915_
                                                    _rest3942_
                                                    _src-ctx3958_
                                                    (cons (_make-import-spec3877_
                                                           _in3943_)
                                                          '())
                                                    _r3920_))))))
                                    (if (direct-struct-instance?
                                         gx#module-import::t
                                         _in39443951_)
                                        (let ((_e39483963_
                                               (##vector-ref _in39443951_ '1)))
                                          (if (direct-struct-instance?
                                               gx#module-export::t
                                               _e39483963_)
                                              (let ((_e39493966_
                                                     (##vector-ref
                                                      _e39483963_
                                                      '1)))
                                                (let ((_src-ctx3969_
                                                       _e39493966_))
                                                  (_K39473960_ _src-ctx3969_)))
                                              (_E39463955_)))
                                        (_E39463955_)))))
                              (if (##structure-direct-instance-of?
                                   _in3943_
                                   'gx#import-set::t)
                                  (let ((_phi3971_
                                         (##structure-ref
                                          _in3943_
                                          '2
                                          gx#import-set::t
                                          '#f)))
                                    (let ((_src3973_
                                           (##structure-ref
                                            _in3943_
                                            '1
                                            gx#import-set::t
                                            '#f)))
                                      (let ((_src-in4013_
                                             (let ((_g39743983_
                                                    (_make-import-path3878_
                                                     _src3973_)))
                                               (let ((_E39773987_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _g39743983_))))
                                                 (let ((_try-match39763998_
                                                        (lambda ()
                                                          (let ((_K39783993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_path3991_) (cons 'in: _path3991_))))
                    (let ((_path3996_ _g39743983_))
                      (_K39783993_ _path3996_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K39794003_
                                                          (lambda (_path4001_)
                                                            _path4001_)))
                                                     (if (##pair? _g39743983_)
                                                         (let ((_hd39804006_
                                                                (##car _g39743983_))
                                                               (_tl39814008_
                                                                (##cdr _g39743983_)))
                                                           (let ((_path4011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd39804006_))
                     (if (##null? _tl39814008_)
                         (_K39794003_ _path4011_)
                         (_try-match39763998_))))
                 (_try-match39763998_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_r4015_ (if _current-src3918_
                                                           (cons (_make-import-spec-in3879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _current-src3918_
                          _current-in3919_)
                         _r3920_)
                   _r3920_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (_lp3915_
                                             _rest3942_
                                             '#f
                                             '()
                                             (cons (if (fxzero? _phi3971_)
                                                       _src-in4013_
                                                       (cons 'phi:
                                                             (cons _phi3971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _src-in4013_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r4015_)))))))
                                  (if (##structure-instance-of?
                                       _in3943_
                                       'gx#module-context::t)
                                      (let ((_r4018_ (if _current-src3918_
                                                         (cons (_make-import-spec-in3879_
                                                                _current-src3918_
                                                                _current-in3919_)
                                                               _r3920_)
                                                         _r3920_)))
                                        (_lp3915_
                                         _rest3942_
                                         '#f
                                         '()
                                         (cons (cons 'runtime:
                                                     (_make-import-path3878_
                                                      _in3943_))
                                               _r4018_)))
                                      '#!void))))))
                   (if (##pair? _rest39213929_)
                       (let ((_hd39264023_ (##car _rest39213929_))
                             (_tl39274025_ (##cdr _rest39213929_)))
                         (let ((_in4028_ _hd39264023_))
                           (let ((_rest4030_ _tl39274025_))
                             (_K39254020_ _rest4030_ _in4028_))))
                       (_else39233939_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _lp3915_)
                                       _L3904_
                                       '#f
                                       '()
                                       '()))
                                    _tl38863901_)))
                               (_g38813891_ _g38823894_)))))
                    (_g38804032_ _stx3873_))))))))))
  (define gxc#generate-meta-export%
    (lambda (_stx3683_ _state3684_)
      (let ((_context-chain3686_ (gxc#current-context-chain)))
        (let ((_make-import-path3687_
               (lambda (_ctx3871_)
                 (gxc#generate-meta-import-path
                  _ctx3871_
                  _context-chain3686_))))
          (let ((_g36893699_
                 (lambda (_g36903696_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g36903696_))))
            (let ((_g36883868_
                   (lambda (_g36903702_)
                     (if (gx#stx-pair? _g36903702_)
                         (let ((_e36923704_ (gx#stx-e _g36903702_)))
                           (let ((_hd36933707_ (##car _e36923704_))
                                 (_tl36943709_ (##cdr _e36923704_)))
                             ((lambda (_L3712_)
                                ((letrec ((_lp3723_
                                           (lambda (_rest3725_ _r3726_)
                                             (let ((_rest37273735_ _rest3725_))
                                               (let ((_E37303739_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest37273735_))))
                                                 (let ((_else37293743_
                                                        (lambda ()
                                                          (cons '%#export
                                                                (reverse _r3726_)))))
                                                   (let ((_K37313856_
                                                          (lambda (_rest3746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out3747_)
                    (let ((_out37483761_ _out3747_))
                      (let ((_E37513765_
                             (lambda ()
                               (error '"No clause matching" _out37483761_))))
                        (let ((_try-match37503828_
                               (lambda ()
                                 (let ((_K37523815_
                                        (lambda (_phi3769_ _src3770_)
                                          (let ((_out3810_
                                                 (if _src3770_
                                                     (cons 'import:
                                                           (cons (let ((_g37713780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (_make-import-path3687_ _src3770_)))
                           (let ((_E37743784_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g37713780_))))
                             (let ((_try-match37733795_
                                    (lambda ()
                                      (let ((_K37753790_
                                             (lambda (_path3788_)
                                               (cons 'in: _path3788_))))
                                        (let ((_path3793_ _g37713780_))
                                          (_K37753790_ _path3793_))))))
                               (let ((_K37763800_
                                      (lambda (_path3798_) _path3798_)))
                                 (if (##pair? _g37713780_)
                                     (let ((_hd37773803_ (##car _g37713780_))
                                           (_tl37783805_ (##cdr _g37713780_)))
                                       (let ((_path3808_ _hd37773803_))
                                         (if (##null? _tl37783805_)
                                             (_K37763800_ _path3808_)
                                             (_try-match37733795_))))
                                     (_try-match37733795_))))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t)))
                                            (let ((_out3812_
                                                   (if (fxzero? _phi3769_)
                                                       _out3810_
                                                       (cons 'phi:
                                                             (cons _phi3769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _out3810_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (_lp3723_
                                                 _rest3746_
                                                 (cons _out3812_
                                                       _r3726_))))))))
                                   (if (direct-struct-instance?
                                        gx#export-set::t
                                        _out37483761_)
                                       (let ((_e37533818_
                                              (##vector-ref _out37483761_ '1)))
                                         (let ((_src3821_ _e37533818_))
                                           (let ((_e37543823_
                                                  (##vector-ref
                                                   _out37483761_
                                                   '2)))
                                             (let ((_phi3826_ _e37543823_))
                                               (_K37523815_
                                                _phi3826_
                                                _src3821_)))))
                                       (_E37513765_))))))
                          (let ((_K37553835_
                                 (lambda (_name3831_ _phi3832_ _key3833_)
                                   (_lp3723_
                                    _rest3746_
                                    (cons (cons 'spec:
                                                (cons _phi3832_
                                                      (cons (gxc#generate-runtime-identifier-key
                                                             _key3833_)
                                                            (cons (gxc#generate-runtime-identifier-key
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _name3831_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _r3726_)))))
                            (if (direct-struct-instance?
                                 gx#module-export::t
                                 _out37483761_)
                                (let ((_e37563838_
                                       (##vector-ref _out37483761_ '1)))
                                  (let ((_e37573841_
                                         (##vector-ref _out37483761_ '2)))
                                    (let ((_key3844_ _e37573841_))
                                      (let ((_e37583846_
                                             (##vector-ref _out37483761_ '3)))
                                        (let ((_phi3849_ _e37583846_))
                                          (let ((_e37593851_
                                                 (##vector-ref
                                                  _out37483761_
                                                  '4)))
                                            (let ((_name3854_ _e37593851_))
                                              (_K37553835_
                                               _name3854_
                                               _phi3849_
                                               _key3844_))))))))
                                (_try-match37503828_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest37273735_)
                                                         (let ((_hd37323859_
                                                                (##car _rest37273735_))
                                                               (_tl37333861_
                                                                (##cdr _rest37273735_)))
                                                           (let ((_out3864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd37323859_))
                     (let ((_rest3866_ _tl37333861_))
                       (_K37313856_ _rest3866_ _out3864_))))
                 (_else37293743_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp3723_)
                                 _L3712_
                                 '()))
                              _tl36943709_)))
                         (_g36893699_ _g36903702_)))))
              (_g36883868_ _stx3683_)))))))
  (define gxc#generate-meta-provide%
    (lambda (_stx3644_ _state3645_)
      (begin
        (gxc#meta-state-end-phi! _state3645_)
        (let ((_g36473657_
               (lambda (_g36483654_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g36483654_))))
          (let ((_g36463680_
                 (lambda (_g36483660_)
                   (if (gx#stx-pair? _g36483660_)
                       (let ((_e36503662_ (gx#stx-e _g36483660_)))
                         (let ((_hd36513665_ (##car _e36503662_))
                               (_tl36523667_ (##cdr _e36503662_)))
                           ((lambda (_L3670_)
                              (cons '%#provide
                                    (map gxc#generate-runtime-identifier
                                         _L3670_)))
                            _tl36523667_)))
                       (_g36473657_ _g36483660_)))))
            (_g36463680_ _stx3644_))))))
  (define gxc#generate-meta-extern%
    (lambda (_stx3515_ _state3516_)
      (let ((_generate13518_
             (lambda (_id3639_ _eid3640_)
               (let ((_eid3642_ (gx#stx-e _eid3640_)))
                 (begin
                   (if (interned-symbol? _eid3642_)
                       '#!void
                       (gxc#raise-compile-error
                        '"Cannot compile extern reference"
                        _stx3515_
                        _eid3642_))
                   (cons (gxc#generate-runtime-identifier _id3639_)
                         (cons _eid3642_ '())))))))
        (let ((_g35203548_
               (lambda (_g35213545_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g35213545_))))
          (let ((_g35193636_
                 (lambda (_g35213551_)
                   (if (gx#stx-pair? _g35213551_)
                       (let ((_e35243553_ (gx#stx-e _g35213551_)))
                         (let ((_hd35253556_ (##car _e35243553_))
                               (_tl35263558_ (##cdr _e35243553_)))
                           (if (gx#stx-pair/null? _tl35263558_)
                               (if (fx>= (gx#stx-length _tl35263558_) '0)
                                   (let ((_g10004_
                                          (gx#syntax-split-splice
                                           _tl35263558_
                                           '0)))
                                     (begin
                                       (let ((_g10005_
                                              (values-count _g10004_)))
                                         (if (not (fx= _g10005_ 2))
                                             (error "Context expects 2 values"
                                                    _g10005_)))
                                       (let ((_target35273561_
                                              (values-ref _g10004_ 0))
                                             (_tl35293563_
                                              (values-ref _g10004_ 1)))
                                         (if (gx#stx-null? _tl35293563_)
                                             (letrec ((_loop35303566_
                                                       (lambda (_hd35283569_
                                                                _eid35343571_
                                                                _id35353573_)
                                                         (if (gx#stx-pair?
                                                              _hd35283569_)
                                                             (let ((_e35313576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd35283569_)))
                       (let ((_lp-hd35323579_ (##car _e35313576_))
                             (_lp-tl35333581_ (##cdr _e35313576_)))
                         (if (gx#stx-pair? _lp-hd35323579_)
                             (let ((_e35383584_ (gx#stx-e _lp-hd35323579_)))
                               (let ((_hd35393587_ (##car _e35383584_))
                                     (_tl35403589_ (##cdr _e35383584_)))
                                 (if (gx#stx-pair? _tl35403589_)
                                     (let ((_e35413592_
                                            (gx#stx-e _tl35403589_)))
                                       (let ((_hd35423595_ (##car _e35413592_))
                                             (_tl35433597_
                                              (##cdr _e35413592_)))
                                         (if (gx#stx-null? _tl35433597_)
                                             (_loop35303566_
                                              _lp-tl35333581_
                                              (cons _hd35423595_ _eid35343571_)
                                              (cons _hd35393587_ _id35353573_))
                                             (_g35203548_ _g35213551_))))
                                     (_g35203548_ _g35213551_))))
                             (_g35203548_ _g35213551_))))
                     (let ((_eid35363600_ (reverse _eid35343571_))
                           (_id35373602_ (reverse _id35353573_)))
                       ((lambda (_L3605_ _L3606_)
                          (cons '%#extern
                                (map _generate13518_
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g36213624_
                                                        _g36223626_)
                                                 (cons _g36213624_
                                                       _g36223626_))
                                               '()
                                               _L3606_))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g36283631_
                                                        _g36293633_)
                                                 (cons _g36283631_
                                                       _g36293633_))
                                               '()
                                               _L3605_)))))
                        _eid35363600_
                        _id35373602_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop35303566_
                                                _target35273561_
                                                '()
                                                '()))
                                             (_g35203548_ _g35213551_)))))
                                   (_g35203548_ _g35213551_))
                               (_g35203548_ _g35213551_))))
                       (_g35203548_ _g35213551_)))))
            (_g35193636_ _stx3515_))))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx3310_ _state3311_)
      (let ((_generate13313_
             (lambda (_id3510_)
               (let ((_eid3512_ (gxc#generate-runtime-binding-id _id3510_))
                     (_ident3513_ (gxc#generate-runtime-identifier _id3510_)))
                 (cons '%#define-runtime
                       (cons _ident3513_ (cons _eid3512_ '())))))))
        (let ((_generate*3314_
               (lambda (_all3478_)
                 (let ((_all34793487_ _all3478_))
                   (let ((_E34823491_
                          (lambda ()
                            (error '"No clause matching" _all34793487_))))
                     (let ((_else34813495_
                            (lambda () (cons '%#begin _all3478_))))
                       (let ((_K34833500_ (lambda (_one3498_) _one3498_)))
                         (if (##pair? _all34793487_)
                             (let ((_hd34843503_ (##car _all34793487_))
                                   (_tl34853505_ (##cdr _all34793487_)))
                               (let ((_one3508_ _hd34843503_))
                                 (if (##null? _tl34853505_)
                                     (_K34833500_ _one3508_)
                                     (_else34813495_))))
                             (_else34813495_)))))))))
          (let ((_g33163333_
                 (lambda (_g33173330_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g33173330_))))
            (let ((_g33153475_
                   (lambda (_g33173336_)
                     (if (gx#stx-pair? _g33173336_)
                         (let ((_e33203338_ (gx#stx-e _g33173336_)))
                           (let ((_hd33213341_ (##car _e33203338_))
                                 (_tl33223343_ (##cdr _e33203338_)))
                             (if (gx#stx-pair? _tl33223343_)
                                 (let ((_e33233346_ (gx#stx-e _tl33223343_)))
                                   (let ((_hd33243349_ (##car _e33233346_))
                                         (_tl33253351_ (##cdr _e33233346_)))
                                     (if (gx#stx-pair? _tl33253351_)
                                         (let ((_e33263354_
                                                (gx#stx-e _tl33253351_)))
                                           (let ((_hd33273357_
                                                  (##car _e33263354_))
                                                 (_tl33283359_
                                                  (##cdr _e33263354_)))
                                             (if (gx#stx-null? _tl33283359_)
                                                 ((lambda (_L3362_ _L3363_)
                                                    ((letrec ((_lp3379_
                                                               (lambda (_rest3381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _r3382_)
                         (let ((_g33873403_
                                (lambda (_g33883400_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g33883400_))))
                           (let ((_g33863410_
                                  (lambda (_g33883406_)
                                    ((lambda ()
                                       (_generate*3314_ (reverse _r3382_)))))))
                             (let ((_g33853426_
                                    (lambda (_g33883413_)
                                      ((lambda (_L3415_)
                                         (if (gx#identifier? _L3415_)
                                             (_generate*3314_
                                              (foldl1 cons
                                                      (cons (_generate13313_
                                                             _L3415_)
                                                            '())
                                                      _r3382_))
                                             (_g33863410_ _g33883413_)))
                                       _g33883413_))))
                               (let ((_g33843450_
                                      (lambda (_g33883429_)
                                        (if (gx#stx-pair? _g33883429_)
                                            (let ((_e33953431_
                                                   (gx#stx-e _g33883429_)))
                                              (let ((_hd33963434_
                                                     (##car _e33953431_))
                                                    (_tl33973436_
                                                     (##cdr _e33953431_)))
                                                ((lambda (_L3439_ _L3440_)
                                                   (_lp3379_
                                                    _L3439_
                                                    (cons (_generate13313_
                                                           _L3440_)
                                                          _r3382_)))
                                                 _tl33973436_
                                                 _hd33963434_)))
                                            (_g33853426_ _g33883429_)))))
                                 (let ((_g33833472_
                                        (lambda (_g33883453_)
                                          (if (gx#stx-pair? _g33883453_)
                                              (let ((_e33903455_
                                                     (gx#stx-e _g33883453_)))
                                                (let ((_hd33913458_
                                                       (##car _e33903455_))
                                                      (_tl33923460_
                                                       (##cdr _e33903455_)))
                                                  (if (gx#stx-datum?
                                                       _hd33913458_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd33913458_)
                          '#f)
                  ((lambda (_L3463_) (_lp3379_ _L3463_ _r3382_)) _tl33923460_)
                  (_g33843450_ _g33883453_))
              (_g33843450_ _g33883453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g33843450_ _g33883453_)))))
                                   (_g33833472_ _rest3381_)))))))))
               _lp3379_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _L3363_
                                                     '()))
                                                  _hd33273357_
                                                  _hd33243349_)
                                                 (_g33163333_ _g33173336_))))
                                         (_g33163333_ _g33173336_))))
                                 (_g33163333_ _g33173336_))))
                         (_g33163333_ _g33173336_)))))
              (_g33153475_ _stx3310_)))))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx3207_ _state3208_)
      (let ((_g32103227_
             (lambda (_g32113224_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g32113224_))))
        (let ((_g32093307_
               (lambda (_g32113230_)
                 (if (gx#stx-pair? _g32113230_)
                     (let ((_e32143232_ (gx#stx-e _g32113230_)))
                       (let ((_hd32153235_ (##car _e32143232_))
                             (_tl32163237_ (##cdr _e32143232_)))
                         (if (gx#stx-pair? _tl32163237_)
                             (let ((_e32173240_ (gx#stx-e _tl32163237_)))
                               (let ((_hd32183243_ (##car _e32173240_))
                                     (_tl32193245_ (##cdr _e32173240_)))
                                 (if (gx#stx-pair? _tl32193245_)
                                     (let ((_e32203248_
                                            (gx#stx-e _tl32193245_)))
                                       (let ((_hd32213251_ (##car _e32203248_))
                                             (_tl32223253_
                                              (##cdr _e32203248_)))
                                         (if (gx#stx-null? _tl32223253_)
                                             ((lambda (_L3256_ _L3257_)
                                                (let ((_eid3272_
                                                       (gxc#generate-runtime-binding-id
                                                        _L3257_)))
                                                  (let ((_phi3274_
                                                         (fx+ (gx#current-expander-phi)
                                                              '1)))
                                                    (let ((_block3276_
                                                           (gxc#meta-state-begin-phi!
                                                            _state3208_
                                                            _phi3274_)))
                                                      (let ()
                                                        (begin
                                                          (let ((_g32793286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g32803283_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g32803283_))))
                    (let ((_g32783304_
                           (lambda (_g32803289_)
                             ((lambda (_L3291_)
                                (let ()
                                  (gxc#meta-state-add-phi!
                                   _state3208_
                                   _phi3274_
                                   (cons (gx#datum->syntax__0
                                          '#f
                                          '%#define-runtime)
                                         (cons _L3291_ (cons _L3256_ '()))))))
                              _g32803289_))))
                      (_g32783304_ _eid3272_)))
                  (if _block3276_
                      (cons '%#begin
                            (cons (cons '%#begin-syntax
                                        (cons (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote (cons _block3276_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons '%#define-syntax
                                              (cons (gxc#generate-runtime-identifier
                                                     _L3257_)
                                                    (cons _eid3272_ '())))
                                        '())))
                      (cons '%#define-syntax
                            (cons (gxc#generate-runtime-identifier _L3257_)
                                  (cons _eid3272_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd32213251_
                                              _hd32183243_)
                                             (_g32103227_ _g32113230_))))
                                     (_g32103227_ _g32113230_))))
                             (_g32103227_ _g32113230_))))
                     (_g32103227_ _g32113230_)))))
          (_g32093307_ _stx3207_)))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx3139_ _state3140_)
      (let ((_g31423159_
             (lambda (_g31433156_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g31433156_))))
        (let ((_g31413204_
               (lambda (_g31433162_)
                 (if (gx#stx-pair? _g31433162_)
                     (let ((_e31463164_ (gx#stx-e _g31433162_)))
                       (let ((_hd31473167_ (##car _e31463164_))
                             (_tl31483169_ (##cdr _e31463164_)))
                         (if (gx#stx-pair? _tl31483169_)
                             (let ((_e31493172_ (gx#stx-e _tl31483169_)))
                               (let ((_hd31503175_ (##car _e31493172_))
                                     (_tl31513177_ (##cdr _e31493172_)))
                                 (if (gx#stx-pair? _tl31513177_)
                                     (let ((_e31523180_
                                            (gx#stx-e _tl31513177_)))
                                       (let ((_hd31533183_ (##car _e31523180_))
                                             (_tl31543185_
                                              (##cdr _e31523180_)))
                                         (if (gx#stx-null? _tl31543185_)
                                             ((lambda (_L3188_ _L3189_)
                                                (cons '%#define-alias
                                                      (cons (gxc#generate-runtime-identifier
                                                             _L3189_)
                                                            (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3188_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd31533183_
                                              _hd31503175_)
                                             (_g31423159_ _g31433162_))))
                                     (_g31423159_ _g31433162_))))
                             (_g31423159_ _g31433162_))))
                     (_g31423159_ _g31433162_)))))
          (_g31413204_ _stx3139_)))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx3136_ _state3137_)
      (begin
        (gxc#meta-state-add-phi!
         _state3137_
         (gx#current-expander-phi)
         _stx3136_)
        (gxc#generate-meta-define-values% _stx3136_ _state3137_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx3133_ _state3134_)
      (begin
        (gxc#meta-state-add-phi!
         _state3134_
         (gx#current-expander-phi)
         _stx3133_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type 'gxc#meta-state::t '#f '4 'meta-state '() ':init!))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args3130_
      (apply make-struct-instance gxc#meta-state::t _$args3130_)))
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
    (lambda (_self3127_ _ctx3128_)
      (direct-struct-instance-init!
       _self3127_
       (symbol->string
        (##structure-ref _ctx3128_ '1 gx#expander-context::t '#f))
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
    (lambda _$args3124_
      (apply make-struct-instance gxc#meta-state-block::t _$args3124_)))
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
    (lambda (_state3083_ _phi3084_)
      (let ((_state30853093_ _state3083_))
        (let ((_E30873097_
               (lambda () (error '"No clause matching" _state30853093_))))
          (let ((_K30883106_
                 (lambda (_open3100_ _n3101_ _src3102_)
                   (if (table-ref _open3100_ _phi3084_ '#f)
                       '#f
                       (let ((_block-ref3104_
                              (string-append
                               _src3102_
                               '"__"
                               (number->string _n3101_))))
                         (begin
                           (##structure-set!
                            _state3083_
                            (fx+ _n3101_ '1)
                            '2
                            gxc#meta-state::t
                            '#f)
                           (table-set!
                            _open3100_
                            _phi3084_
                            (##structure
                             gxc#meta-state-block::t
                             (gx#current-expander-context)
                             _phi3084_
                             _n3101_
                             '()))
                           _block-ref3104_))))))
            (if (struct-instance? gxc#meta-state::t _state30853093_)
                (let ((_e30893109_ (##vector-ref _state30853093_ '1)))
                  (let ((_src3112_ _e30893109_))
                    (let ((_e30903114_ (##vector-ref _state30853093_ '2)))
                      (let ((_n3117_ _e30903114_))
                        (let ((_e30913119_ (##vector-ref _state30853093_ '3)))
                          (let ((_open3122_ _e30913119_))
                            (_K30883106_ _open3122_ _n3117_ _src3112_)))))))
                (_E30873097_)))))))
  (define gxc#meta-state-add-phi!
    (lambda (_state3077_ _phi3078_ _stx3079_)
      (let ((_block3081_
             (table-ref
              (##structure-ref _state3077_ '3 gxc#meta-state::t '#f)
              _phi3078_
              '#f)))
        (##structure-set!
         _block3081_
         (cons _stx3079_
               (##structure-ref _block3081_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state3072_)
      (begin
        (##structure-set!
         _state3072_
         (hash-fold
          (lambda (_g10006_ _block3074_ _r3075_) (cons _block3074_ _r3075_))
          (##structure-ref _state3072_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state3072_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state3072_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state3024_)
      (begin
        (gxc#meta-state-end-phi! _state3024_)
        (foldl1 (lambda (_block3026_ _r3027_)
                  (let ((_block30283037_ _block3026_))
                    (let ((_E30303041_
                           (lambda ()
                             (error '"No clause matching" _block30283037_))))
                      (let ((_K30313049_
                             (lambda (_code3044_ _n3045_ _phi3046_ _ctx3047_)
                               (if (null? _code3044_)
                                   _r3027_
                                   (cons (cons _ctx3047_
                                               (cons _phi3046_
                                                     (cons _n3045_
                                                           (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (reverse _code3044_))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _r3027_)))))
                        (if (struct-instance?
                             gxc#meta-state-block::t
                             _block30283037_)
                            (let ((_e30323052_
                                   (##vector-ref _block30283037_ '1)))
                              (let ((_ctx3055_ _e30323052_))
                                (let ((_e30333057_
                                       (##vector-ref _block30283037_ '2)))
                                  (let ((_phi3060_ _e30333057_))
                                    (let ((_e30343062_
                                           (##vector-ref _block30283037_ '3)))
                                      (let ((_n3065_ _e30343062_))
                                        (let ((_e30353067_
                                               (##vector-ref
                                                _block30283037_
                                                '4)))
                                          (let ((_code3070_ _e30353067_))
                                            (_K30313049_
                                             _code3070_
                                             _n3065_
                                             _phi3060_
                                             _ctx3055_)))))))))
                            (_E30303041_))))))
                '()
                (##structure-ref _state3024_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx3020_)
      (let ((_ht3022_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx3020_ _ht3022_)
          _ht3022_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx2963_ _ht2964_)
      (let ((_g29662979_
             (lambda (_g29672976_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g29672976_))))
        (let ((_g29653017_
               (lambda (_g29672982_)
                 (if (gx#stx-pair? _g29672982_)
                     (let ((_e29692984_ (gx#stx-e _g29672982_)))
                       (let ((_hd29702987_ (##car _e29692984_))
                             (_tl29712989_ (##cdr _e29692984_)))
                         (if (gx#stx-pair? _tl29712989_)
                             (let ((_e29722992_ (gx#stx-e _tl29712989_)))
                               (let ((_hd29732995_ (##car _e29722992_))
                                     (_tl29742997_ (##cdr _e29722992_)))
                                 (if (gx#stx-null? _tl29742997_)
                                     ((lambda (_L3000_)
                                        (let ((_bind3012_
                                               (gx#resolve-identifier__0
                                                _L3000_)))
                                          (let ((_eid3014_
                                                 (if _bind3012_
                                                     (##structure-ref
                                                      _bind3012_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (gx#stx-e _L3000_))))
                                            (let ()
                                              (table-set!
                                               _ht2964_
                                               _eid3014_
                                               _eid3014_)))))
                                      _hd29732995_)
                                     (_g29662979_ _g29672982_))))
                             (_g29662979_ _g29672982_))))
                     (_g29662979_ _g29672982_)))))
          (_g29653017_ _stx2963_)))))
  (define gxc#collect-refs-setq%
    (lambda (_stx2890_ _ht2891_)
      (let ((_g28932910_
             (lambda (_g28942907_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g28942907_))))
        (let ((_g28922960_
               (lambda (_g28942913_)
                 (if (gx#stx-pair? _g28942913_)
                     (let ((_e28972915_ (gx#stx-e _g28942913_)))
                       (let ((_hd28982918_ (##car _e28972915_))
                             (_tl28992920_ (##cdr _e28972915_)))
                         (if (gx#stx-pair? _tl28992920_)
                             (let ((_e29002923_ (gx#stx-e _tl28992920_)))
                               (let ((_hd29012926_ (##car _e29002923_))
                                     (_tl29022928_ (##cdr _e29002923_)))
                                 (if (gx#stx-pair? _tl29022928_)
                                     (let ((_e29032931_
                                            (gx#stx-e _tl29022928_)))
                                       (let ((_hd29042934_ (##car _e29032931_))
                                             (_tl29052936_
                                              (##cdr _e29032931_)))
                                         (if (gx#stx-null? _tl29052936_)
                                             ((lambda (_L2939_ _L2940_)
                                                (let ((_bind2955_
                                                       (gx#resolve-identifier__0
                                                        _L2940_)))
                                                  (let ((_eid2957_
                                                         (if _bind2955_
                                                             (##structure-ref
                                                              _bind2955_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (gx#stx-e
                                                              _L2940_))))
                                                    (let ()
                                                      (begin
                                                        (table-set!
                                                         _ht2891_
                                                         _eid2957_
                                                         _eid2957_)
                                                        (gxc#compile-e
                                                         _L2939_
                                                         _ht2891_))))))
                                              _hd29042934_
                                              _hd29012926_)
                                             (_g28932910_ _g28942913_))))
                                     (_g28932910_ _g28942913_))))
                             (_g28932910_ _g28942913_))))
                     (_g28932910_ _g28942913_)))))
          (_g28922960_ _stx2890_)))))
  (define gxc#find-runtime-begin%
    (lambda (_stx2852_)
      (let ((_g28542864_
             (lambda (_g28552861_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g28552861_))))
        (let ((_g28532887_
               (lambda (_g28552867_)
                 (if (gx#stx-pair? _g28552867_)
                     (let ((_e28572869_ (gx#stx-e _g28552867_)))
                       (let ((_hd28582872_ (##car _e28572869_))
                             (_tl28592874_ (##cdr _e28572869_)))
                         ((lambda (_L2877_) (ormap1 gxc#compile-e _L2877_))
                          _tl28592874_)))
                     (_g28542864_ _g28552867_)))))
          (_g28532887_ _stx2852_))))))
