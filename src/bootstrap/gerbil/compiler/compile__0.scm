(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx5815_ . _args5816_)
      (let ((_g58185828_
             (lambda (_g58195825_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g58195825_))))
        (let ((_g58175856_
               (lambda (_g58195831_)
                 (if (gx#stx-pair? _g58195831_)
                     (let ((_e58215833_ (gx#stx-e _g58195831_)))
                       (let ((_hd58225836_ (##car _e58215833_))
                             (_tl58235838_ (##cdr _e58215833_)))
                         ((lambda (_L5841_)
                            (let ((_$e5851_
                                   (hash-get
                                    (gxc#current-compile-methods)
                                    (gx#stx-e _L5841_))))
                              (if _$e5851_
                                  ((lambda (_method5854_)
                                     (apply _method5854_ _stx5815_ _args5816_))
                                   _$e5851_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile; missing method"
                                   _stx5815_
                                   _L5841_))))
                          _hd58225836_)))
                     (_g58185828_ _g58195831_)))))
          (_g58175856_ _stx5815_)))))
  (begin)
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl5812_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl5812_ '%#lambda void)
           (hash-put! _tbl5812_ '%#case-lambda void)
           (hash-put! _tbl5812_ '%#let-values void)
           (hash-put! _tbl5812_ '%#letrec-values void)
           (hash-put! _tbl5812_ '%#letrec*-values void)
           (hash-put! _tbl5812_ '%#quote void)
           (hash-put! _tbl5812_ '%#quote-syntax void)
           (hash-put! _tbl5812_ '%#call void)
           (hash-put! _tbl5812_ '%#if void)
           (hash-put! _tbl5812_ '%#ref void)
           (hash-put! _tbl5812_ '%#set! void)
           _tbl5812_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl5808_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl5808_ '%#begin void)
           (hash-put! _tbl5808_ '%#begin-syntax void)
           (hash-put! _tbl5808_ '%#begin-foreign void)
           (hash-put! _tbl5808_ '%#module void)
           (hash-put! _tbl5808_ '%#import void)
           (hash-put! _tbl5808_ '%#export void)
           (hash-put! _tbl5808_ '%#provide void)
           (hash-put! _tbl5808_ '%#extern void)
           (hash-put! _tbl5808_ '%#define-values void)
           (hash-put! _tbl5808_ '%#define-syntax void)
           (hash-put! _tbl5808_ '%#define-alias void)
           (hash-put! _tbl5808_ '%#declare void)
           _tbl5808_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl5804_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl5804_ (force gxc#&void-special-form))
           (hash-copy! _tbl5804_ (force gxc#&void-expression))
           _tbl5804_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl5800_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl5800_ (force gxc#&void-expression))
           (hash-copy! _tbl5800_ (force gxc#&void-special-form))
           (hash-put! _tbl5800_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl5800_ '%#begin-syntax gxc#collect-begin-syntax%)
           (hash-put! _tbl5800_ '%#module gxc#collect-module%)
           (hash-put!
            _tbl5800_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (hash-put!
            _tbl5800_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl5800_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx5793_ . _args5795_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx5793_ _args5795_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl5790_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl5790_ (force gxc#&void))
           (hash-put! _tbl5790_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl5790_ '%#module gxc#lift-modules-module%)
           _tbl5790_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx5783_ . _args5785_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx5783_ _args5785_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl5780_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl5780_ '%#begin gxc#find-runtime-begin%)
           (hash-put! _tbl5780_ '%#begin-syntax false)
           (hash-put! _tbl5780_ '%#begin-foreign true)
           (hash-put! _tbl5780_ '%#module false)
           (hash-put! _tbl5780_ '%#import false)
           (hash-put! _tbl5780_ '%#export false)
           (hash-put! _tbl5780_ '%#provide false)
           (hash-put! _tbl5780_ '%#extern false)
           (hash-put! _tbl5780_ '%#define-values true)
           (hash-put! _tbl5780_ '%#define-syntax false)
           (hash-put! _tbl5780_ '%#define-alias false)
           (hash-put! _tbl5780_ '%#declare false)
           (hash-put! _tbl5780_ '%#lambda true)
           (hash-put! _tbl5780_ '%#case-lambda true)
           (hash-put! _tbl5780_ '%#let-values true)
           (hash-put! _tbl5780_ '%#letrec-values true)
           (hash-put! _tbl5780_ '%#letrec*-values true)
           (hash-put! _tbl5780_ '%#quote true)
           (hash-put! _tbl5780_ '%#call true)
           (hash-put! _tbl5780_ '%#if true)
           (hash-put! _tbl5780_ '%#ref true)
           (hash-put! _tbl5780_ '%#set! true)
           _tbl5780_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx5773_ . _args5775_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx5773_ _args5775_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl5770_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl5770_ '%#begin gxc#generate-runtime-begin%)
           (hash-put! _tbl5770_ '%#begin-syntax gxc#generate-runtime-empty)
           (hash-put! _tbl5770_ '%#begin-foreign gxc#generate-runtime-empty)
           (hash-put! _tbl5770_ '%#module gxc#generate-runtime-empty)
           (hash-put! _tbl5770_ '%#import gxc#generate-runtime-loader-import%)
           (hash-put! _tbl5770_ '%#export gxc#generate-runtime-empty)
           (hash-put! _tbl5770_ '%#provide gxc#generate-runtime-empty)
           (hash-put! _tbl5770_ '%#extern gxc#generate-runtime-empty)
           (hash-put! _tbl5770_ '%#define-values gxc#generate-runtime-empty)
           (hash-put! _tbl5770_ '%#define-syntax gxc#generate-runtime-empty)
           (hash-put! _tbl5770_ '%#define-alias gxc#generate-runtime-empty)
           (hash-put! _tbl5770_ '%#declare gxc#generate-runtime-empty)
           (hash-put! _tbl5770_ '%#lambda gxc#generate-runtime-empty)
           (hash-put! _tbl5770_ '%#case-lambda gxc#generate-runtime-empty)
           (hash-put! _tbl5770_ '%#let-values gxc#generate-runtime-empty)
           (hash-put! _tbl5770_ '%#letrec-values gxc#generate-runtime-empty)
           (hash-put! _tbl5770_ '%#letrec*-values gxc#generate-runtime-empty)
           (hash-put! _tbl5770_ '%#quote gxc#generate-runtime-empty)
           (hash-put! _tbl5770_ '%#call gxc#generate-runtime-empty)
           (hash-put! _tbl5770_ '%#if gxc#generate-runtime-empty)
           (hash-put! _tbl5770_ '%#ref gxc#generate-runtime-empty)
           (hash-put! _tbl5770_ '%#set! gxc#generate-runtime-empty)
           _tbl5770_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx5763_ . _args5765_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx5763_ _args5765_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl5760_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl5760_ '%#begin gxc#generate-runtime-begin%)
           (hash-put! _tbl5760_ '%#begin-syntax gxc#generate-runtime-empty)
           (hash-put!
            _tbl5760_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (hash-put! _tbl5760_ '%#module gxc#generate-runtime-empty)
           (hash-put! _tbl5760_ '%#import gxc#generate-runtime-empty)
           (hash-put! _tbl5760_ '%#export gxc#generate-runtime-empty)
           (hash-put! _tbl5760_ '%#provide gxc#generate-runtime-empty)
           (hash-put! _tbl5760_ '%#extern gxc#generate-runtime-empty)
           (hash-put!
            _tbl5760_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (hash-put! _tbl5760_ '%#define-syntax gxc#generate-runtime-empty)
           (hash-put! _tbl5760_ '%#define-alias gxc#generate-runtime-empty)
           (hash-put! _tbl5760_ '%#declare gxc#generate-runtime-declare%)
           (hash-put! _tbl5760_ '%#lambda gxc#generate-runtime-lambda%)
           (hash-put!
            _tbl5760_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (hash-put! _tbl5760_ '%#let-values gxc#generate-runtime-let-values%)
           (hash-put!
            _tbl5760_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (hash-put!
            _tbl5760_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (hash-put! _tbl5760_ '%#quote gxc#generate-runtime-quote%)
           (hash-put! _tbl5760_ '%#call gxc#generate-runtime-call%)
           (hash-put! _tbl5760_ '%#if gxc#generate-runtime-if%)
           (hash-put! _tbl5760_ '%#ref gxc#generate-runtime-ref%)
           (hash-put! _tbl5760_ '%#set! gxc#generate-runtime-setq%)
           _tbl5760_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx5753_ . _args5755_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx5753_ _args5755_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl5750_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl5750_ (force gxc#&generate-runtime))
           (hash-put!
            _tbl5750_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (hash-put!
            _tbl5750_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl5750_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx5743_ . _args5745_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx5743_ _args5745_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl5740_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl5740_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl5740_ '%#lambda gxc#collect-refs-lambda%)
           (hash-put! _tbl5740_ '%#case-lambda gxc#collect-refs-case-lambda%)
           (hash-put! _tbl5740_ '%#let-values gxc#collect-refs-let-values%)
           (hash-put! _tbl5740_ '%#letrec-values gxc#collect-refs-let-values%)
           (hash-put! _tbl5740_ '%#letrec*-values gxc#collect-refs-let-values%)
           (hash-put! _tbl5740_ '%#quote void)
           (hash-put! _tbl5740_ '%#quote-syntax void)
           (hash-put! _tbl5740_ '%#call gxc#collect-begin%)
           (hash-put! _tbl5740_ '%#if gxc#collect-begin%)
           (hash-put! _tbl5740_ '%#ref gxc#collect-refs-ref%)
           (hash-put! _tbl5740_ '%#set! gxc#collect-refs-setq%)
           _tbl5740_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx5733_ . _args5735_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx5733_ _args5735_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl5730_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl5730_ (force gxc#&void-expression))
           (hash-put! _tbl5730_ '%#begin gxc#generate-meta-begin%)
           (hash-put!
            _tbl5730_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (hash-put! _tbl5730_ '%#module gxc#generate-meta-module%)
           (hash-put! _tbl5730_ '%#import gxc#generate-meta-import%)
           (hash-put! _tbl5730_ '%#export gxc#generate-meta-export%)
           (hash-put! _tbl5730_ '%#provide gxc#generate-meta-provide%)
           (hash-put! _tbl5730_ '%#extern gxc#generate-meta-extern%)
           (hash-put!
            _tbl5730_
            '%#define-values
            gxc#generate-meta-define-values%)
           (hash-put!
            _tbl5730_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (hash-put!
            _tbl5730_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (hash-put! _tbl5730_ '%#begin-foreign void)
           (hash-put! _tbl5730_ '%#declare void)
           _tbl5730_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx5723_ . _args5725_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx5723_ _args5725_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl5720_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl5720_ '%#begin gxc#generate-meta-begin%)
           (hash-put!
            _tbl5720_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (hash-put!
            _tbl5720_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (hash-put!
            _tbl5720_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (hash-put!
            _tbl5720_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (hash-put! _tbl5720_ '%#lambda gxc#generate-meta-phi-expr)
           (hash-put! _tbl5720_ '%#case-lambda gxc#generate-meta-phi-expr)
           (hash-put! _tbl5720_ '%#let-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl5720_ '%#letrec-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl5720_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl5720_ '%#quote gxc#generate-meta-phi-expr)
           (hash-put! _tbl5720_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (hash-put! _tbl5720_ '%#call gxc#generate-meta-phi-expr)
           (hash-put! _tbl5720_ '%#if gxc#generate-meta-phi-expr)
           (hash-put! _tbl5720_ '%#ref gxc#generate-meta-phi-expr)
           (hash-put! _tbl5720_ '%#set! gxc#generate-meta-phi-expr)
           (hash-put! _tbl5720_ '%#declare void)
           _tbl5720_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx5713_ . _args5715_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx5713_ _args5715_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx5670_ . _args5671_)
      (let ((_g56735683_
             (lambda (_g56745680_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g56745680_))))
        (let ((_g56725710_
               (lambda (_g56745686_)
                 (if (gx#stx-pair? _g56745686_)
                     (let ((_e56765688_ (gx#stx-e _g56745686_)))
                       (let ((_hd56775691_ (##car _e56765688_))
                             (_tl56785693_ (##cdr _e56765688_)))
                         ((lambda (_L5696_)
                            (for-each
                             (lambda (_g57055707_)
                               (apply gxc#compile-e _g57055707_ _args5671_))
                             (gx#stx-e _L5696_)))
                          _tl56785693_)))
                     (_g56735683_ _g56745686_)))))
          (_g56725710_ _stx5670_)))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx5626_ . _args5627_)
      (let ((_g56295639_
             (lambda (_g56305636_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g56305636_))))
        (let ((_g56285667_
               (lambda (_g56305642_)
                 (if (gx#stx-pair? _g56305642_)
                     (let ((_e56325644_ (gx#stx-e _g56305642_)))
                       (let ((_hd56335647_ (##car _e56325644_))
                             (_tl56345649_ (##cdr _e56325644_)))
                         ((lambda (_L5652_)
                            (call-with-parameters
                             (lambda ()
                               (for-each
                                (lambda (_g56625664_)
                                  (apply gxc#compile-e _g56625664_ _args5627_))
                                (gx#stx-e _L5652_)))
                             gx#current-expander-phi
                             (fx1+ (gx#current-expander-phi))))
                          _tl56345649_)))
                     (_g56295639_ _g56305642_)))))
          (_g56285667_ _stx5626_)))))
  (define gxc#collect-module%
    (lambda (_stx5568_ . _args5569_)
      (let ((_g55715585_
             (lambda (_g55725582_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g55725582_))))
        (let ((_g55705623_
               (lambda (_g55725588_)
                 (if (gx#stx-pair? _g55725588_)
                     (let ((_e55755590_ (gx#stx-e _g55725588_)))
                       (let ((_hd55765593_ (##car _e55755590_))
                             (_tl55775595_ (##cdr _e55755590_)))
                         (if (gx#stx-pair? _tl55775595_)
                             (let ((_e55785598_ (gx#stx-e _tl55775595_)))
                               (let ((_hd55795601_ (##car _e55785598_))
                                     (_tl55805603_ (##cdr _e55785598_)))
                                 ((lambda (_L5606_ _L5607_)
                                    (let ((_ctx5620_
                                           (gx#syntax-local-e _L5607_)))
                                      (call-with-parameters
                                       (lambda ()
                                         (apply gxc#compile-e
                                                (gx#module-context-code
                                                 _ctx5620_)
                                                _args5569_))
                                       gx#current-expander-context
                                       _ctx5620_)))
                                  _tl55805603_
                                  _hd55795601_)))
                             (_g55715585_ _g55725588_))))
                     (_g55715585_ _g55725588_)))))
          (_g55705623_ _stx5568_)))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx5499_)
      (let ((_g55015518_
             (lambda (_g55025515_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g55025515_))))
        (let ((_g55005565_
               (lambda (_g55025521_)
                 (if (gx#stx-pair? _g55025521_)
                     (let ((_e55055523_ (gx#stx-e _g55025521_)))
                       (let ((_hd55065526_ (##car _e55055523_))
                             (_tl55075528_ (##cdr _e55055523_)))
                         (if (gx#stx-pair? _tl55075528_)
                             (let ((_e55085531_ (gx#stx-e _tl55075528_)))
                               (let ((_hd55095534_ (##car _e55085531_))
                                     (_tl55105536_ (##cdr _e55085531_)))
                                 (if (gx#stx-pair? _tl55105536_)
                                     (let ((_e55115539_
                                            (gx#stx-e _tl55105536_)))
                                       (let ((_hd55125542_ (##car _e55115539_))
                                             (_tl55135544_
                                              (##cdr _e55115539_)))
                                         (if (gx#stx-null? _tl55135544_)
                                             ((lambda (_L5547_ _L5548_)
                                                (gx#stx-for-each
                                                 (lambda (_bind5563_)
                                                   (if (gx#identifier?
                                                        _bind5563_)
                                                       (gxc#add-module-binding!
                                                        _bind5563_
                                                        '#f)
                                                       '#!void))
                                                 _L5548_))
                                              _hd55125542_
                                              _hd55095534_)
                                             (_g55015518_ _g55025521_))))
                                     (_g55015518_ _g55025521_))))
                             (_g55015518_ _g55025521_))))
                     (_g55015518_ _g55025521_)))))
          (_g55005565_ _stx5499_)))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx5432_)
      (let ((_g54345451_
             (lambda (_g54355448_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g54355448_))))
        (let ((_g54335496_
               (lambda (_g54355454_)
                 (if (gx#stx-pair? _g54355454_)
                     (let ((_e54385456_ (gx#stx-e _g54355454_)))
                       (let ((_hd54395459_ (##car _e54385456_))
                             (_tl54405461_ (##cdr _e54385456_)))
                         (if (gx#stx-pair? _tl54405461_)
                             (let ((_e54415464_ (gx#stx-e _tl54405461_)))
                               (let ((_hd54425467_ (##car _e54415464_))
                                     (_tl54435469_ (##cdr _e54415464_)))
                                 (if (gx#stx-pair? _tl54435469_)
                                     (let ((_e54445472_
                                            (gx#stx-e _tl54435469_)))
                                       (let ((_hd54455475_ (##car _e54445472_))
                                             (_tl54465477_
                                              (##cdr _e54445472_)))
                                         (if (gx#stx-null? _tl54465477_)
                                             ((lambda (_L5480_ _L5481_)
                                                (gxc#add-module-binding!
                                                 _L5481_
                                                 '#t))
                                              _hd54455475_
                                              _hd54425467_)
                                             (_g54345451_ _g54355454_))))
                                     (_g54345451_ _g54355454_))))
                             (_g54345451_ _g54355454_))))
                     (_g54345451_ _g54355454_)))))
          (_g54335496_ _stx5432_)))))
  (define gxc#lift-modules-module%
    (lambda (_stx5374_ _modules5375_)
      (let ((_g53775391_
             (lambda (_g53785388_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g53785388_))))
        (let ((_g53765429_
               (lambda (_g53785394_)
                 (if (gx#stx-pair? _g53785394_)
                     (let ((_e53815396_ (gx#stx-e _g53785394_)))
                       (let ((_hd53825399_ (##car _e53815396_))
                             (_tl53835401_ (##cdr _e53815396_)))
                         (if (gx#stx-pair? _tl53835401_)
                             (let ((_e53845404_ (gx#stx-e _tl53835401_)))
                               (let ((_hd53855407_ (##car _e53845404_))
                                     (_tl53865409_ (##cdr _e53845404_)))
                                 ((lambda (_L5412_ _L5413_)
                                    (let ((_ctx5426_
                                           (gx#syntax-local-e _L5413_)))
                                      (begin
                                        (set-box!
                                         _modules5375_
                                         (cons _ctx5426_
                                               (unbox _modules5375_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gxc#compile-e
                                            (gx#module-context-code _ctx5426_)
                                            _modules5375_))
                                         gx#current-expander-context
                                         _ctx5426_))))
                                  _tl53865409_
                                  _hd53855407_)))
                             (_g53775391_ _g53785394_))))
                     (_g53775391_ _g53785394_)))))
          (_g53765429_ _stx5374_)))))
  (define gxc#add-module-binding!
    (lambda (_id5368_ _syntax?5369_)
      (let ((_eid5371_ (gx#binding-id (gx#resolve-identifier _id5368_)))
            (_ht5372_
             (gxc#symbol-table-bindings (gxc#current-compile-symbol-table))))
        (if (interned-symbol? _eid5371_)
            '#!void
            (hash-put!
             _ht5372_
             _eid5371_
             (gx#make-binding-id
              (gxc#generate-runtime-gensym-reference _eid5371_)
              _syntax?5369_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id5356_)
      (let ((_bind5358_ (gx#resolve-identifier _id5356_)))
        (if _bind5358_
            (let ((_eid5360_ (gx#binding-id _bind5358_))
                  (_ht5361_
                   (gxc#symbol-table-bindings
                    (gxc#current-compile-symbol-table))))
              (if (interned-symbol? _eid5360_)
                  _eid5360_
                  (let ((_$e5363_ (hash-get _ht5361_ _eid5360_)))
                    (if _$e5363_
                        (values _$e5363_)
                        (if (gx#local-binding? _bind5358_)
                            (let ((_gid5366_
                                   (gxc#generate-runtime-gensym-reference
                                    _eid5360_)))
                              (begin
                                (hash-put! _ht5361_ _eid5360_ _gid5366_)
                                _gid5366_))
                            (gxc#raise-compile-error
                             '"Cannot compile reference to uninterned binding"
                             _id5356_
                             _eid5360_
                             _bind5358_))))))
            (if (interned-symbol? (gx#stx-e _id5356_))
                (gx#stx-e _id5356_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id5356_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id5354_)
      (if (gx#identifier? _id5354_)
          (gxc#generate-runtime-binding-id _id5354_)
          (gxc#generate-runtime-temporary))))
  (define gxc#generate-runtime-gensym-reference
    (lambda (_sym5345_)
      (let ((_ht5347_
             (gxc#symbol-table-gensyms (gxc#current-compile-symbol-table))))
        (let ((_$e5349_ (hash-get _ht5347_ _sym5345_)))
          (if _$e5349_
              (values _$e5349_)
              (let ((_g5352_ (make-symbol '"_" _sym5345_ '"_")))
                (begin (hash-put! _ht5347_ _sym5345_ _g5352_) _g5352_)))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id5343_)
      (gxc#generate-runtime-identifier-key (gx#core-identifier-key _id5343_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key5305_)
      (if (interned-symbol? _key5305_)
          _key5305_
          (if (uninterned-symbol? _key5305_)
              (gxc#generate-runtime-gensym-reference _key5305_)
              (let ((_key53065313_ _key5305_))
                (let ((_E53085317_
                       (lambda ()
                         (error '"No clause matching" _key53065313_))))
                  (let ((_K53095331_
                         (lambda (_mark5320_ _eid5321_)
                           (let ((_$e5323_
                                  (gx#expander-mark-subst _mark5320_)))
                             (if _$e5323_
                                 ((lambda (_ht5326_)
                                    (let ((_$e5328_
                                           (hash-get _ht5326_ _eid5321_)))
                                      (if _$e5328_
                                          (values _$e5328_)
                                          (gxc#generate-runtime-identifier-key
                                           _eid5321_))))
                                  _$e5323_)
                                 (gxc#generate-runtime-identifier-key
                                  _eid5321_))))))
                    (if (##pair? _key53065313_)
                        (let ((_hd53105334_ (##car _key53065313_))
                              (_tl53115336_ (##cdr _key53065313_)))
                          (let ((_eid5339_ _hd53105334_))
                            (let ((_mark5341_ _tl53115336_))
                              (_K53095331_ _mark5341_ _eid5339_))))
                        (_E53085317_)))))))))
  (define gxc#generate-runtime-temporary
    (let ((_opt-lambda52905297_
           (lambda (_top5292_)
             (if _top5292_
                 (let ((_ns5294_
                        (gx#module-context-ns (gx#current-expander-context)))
                       (_phi5295_ (gx#current-expander-phi)))
                   (if (fxpositive? _phi5295_)
                       (make-symbol
                        _ns5294_
                        '"["
                        (number->string _phi5295_)
                        '"]#_"
                        (gensym)
                        '"_")
                       (make-symbol _ns5294_ '"#_" (gensym) '"_")))
                 (make-symbol '"_" (gensym) '"_")))))
      (lambda _g5859_
        (let ((_g5858_ (length _g5859_)))
          (cond ((fx= _g5858_ 0)
                 (apply (lambda ()
                          (let ((_top5301_ '#f))
                            (_opt-lambda52905297_ _top5301_)))
                        _g5859_))
                ((fx= _g5858_ 1)
                 (apply (lambda (_top5303_) (_opt-lambda52905297_ _top5303_))
                        _g5859_))
                (else (error "No clause matching arguments" _g5859_)))))))
  (define gxc#generate-runtime-empty (lambda (_stx5289_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx5251_)
      (let ((_g52535263_
             (lambda (_g52545260_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g52545260_))))
        (let ((_g52525286_
               (lambda (_g52545266_)
                 (if (gx#stx-pair? _g52545266_)
                     (let ((_e52565268_ (gx#stx-e _g52545266_)))
                       (let ((_hd52575271_ (##car _e52565268_))
                             (_tl52585273_ (##cdr _e52565268_)))
                         ((lambda (_L5276_)
                            (cons 'begin
                                  (map gxc#compile-e (gx#stx-e _L5276_))))
                          _tl52585273_)))
                     (_g52535263_ _g52545266_)))))
          (_g52525286_ _stx5251_)))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx5213_)
      (let ((_g52155225_
             (lambda (_g52165222_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g52165222_))))
        (let ((_g52145248_
               (lambda (_g52165228_)
                 (if (gx#stx-pair? _g52165228_)
                     (let ((_e52185230_ (gx#stx-e _g52165228_)))
                       (let ((_hd52195233_ (##car _e52185230_))
                             (_tl52205235_ (##cdr _e52185230_)))
                         ((lambda (_L5238_)
                            (cons 'begin (gx#syntax->datum _L5238_)))
                          _tl52205235_)))
                     (_g52155225_ _g52165228_)))))
          (_g52145248_ _stx5213_)))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx5175_)
      (let ((_g51775187_
             (lambda (_g51785184_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g51785184_))))
        (let ((_g51765210_
               (lambda (_g51785190_)
                 (if (gx#stx-pair? _g51785190_)
                     (let ((_e51805192_ (gx#stx-e _g51785190_)))
                       (let ((_hd51815195_ (##car _e51805192_))
                             (_tl51825197_ (##cdr _e51805192_)))
                         ((lambda (_L5200_)
                            (cons 'declare (map gx#syntax->datum _L5200_)))
                          _tl51825197_)))
                     (_g51775187_ _g51785190_)))))
          (_g51765210_ _stx5175_)))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx4939_)
      (let ((_g49414958_
             (lambda (_g49424955_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g49424955_))))
        (let ((_g49405172_
               (lambda (_g49424961_)
                 (if (gx#stx-pair? _g49424961_)
                     (let ((_e49454963_ (gx#stx-e _g49424961_)))
                       (let ((_hd49464966_ (##car _e49454963_))
                             (_tl49474968_ (##cdr _e49454963_)))
                         (if (gx#stx-pair? _tl49474968_)
                             (let ((_e49484971_ (gx#stx-e _tl49474968_)))
                               (let ((_hd49494974_ (##car _e49484971_))
                                     (_tl49504976_ (##cdr _e49484971_)))
                                 (if (gx#stx-pair? _tl49504976_)
                                     (let ((_e49514979_
                                            (gx#stx-e _tl49504976_)))
                                       (let ((_hd49524982_ (##car _e49514979_))
                                             (_tl49534984_
                                              (##cdr _e49514979_)))
                                         (if (gx#stx-null? _tl49534984_)
                                             ((lambda (_L4987_ _L4988_)
                                                (let ((_g50055018_
                                                       (lambda (_g50065015_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g50065015_))))
                                                  (let ((_g50045132_
                                                         (lambda (_g50065021_)
                                                           ((lambda ()
                                                              (let ((_tmp5025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gxc#generate-runtime-temporary '#t)))
                        (let ((_body5129_
                               ((letrec ((_lp5027_
                                          (lambda (_rest5029_ _k5030_ _r5031_)
                                            (let ((_g50365052_
                                                   (lambda (_g50375049_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g50375049_))))
                                              (let ((_g50355059_
                                                     (lambda (_g50375055_)
                                                       ((lambda ()
                                                          (reverse _r5031_))))))
                                                (let ((_g50345080_
                                                       (lambda (_g50375062_)
                                                         ((lambda (_L5064_)
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L5064_)
                        (foldl cons
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L5064_)
                                                 (cons (cons 'values->list
                                                             (cons _tmp5025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k5030_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())
                               _r5031_)
                        (_g50355059_ _g50375062_)))
                  _g50375062_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g50335104_
                                                         (lambda (_g50375083_)
                                                           (if (gx#stx-pair?
                                                                _g50375083_)
                                                               (let ((_e50445085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _g50375083_)))
                         (let ((_hd50455088_ (##car _e50445085_))
                               (_tl50465090_ (##cdr _e50445085_)))
                           ((lambda (_L5093_ _L5094_)
                              (_lp5027_
                               _L5093_
                               (fx1+ _k5030_)
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L5094_)
                                                 (cons (cons 'values-ref
                                                             (cons _tmp5025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k5030_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _r5031_)))
                            _tl50465090_
                            _hd50455088_)))
                       (_g50345080_ _g50375083_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g50325126_
                                                           (lambda (_g50375107_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g50375107_)
                         (let ((_e50395109_ (gx#stx-e _g50375107_)))
                           (let ((_hd50405112_ (##car _e50395109_))
                                 (_tl50415114_ (##cdr _e50395109_)))
                             (if (gx#stx-datum? _hd50405112_)
                                 (if (equal? (gx#stx-e _hd50405112_) '#f)
                                     ((lambda (_L5117_)
                                        (_lp5027_
                                         _L5117_
                                         (fx1+ _k5030_)
                                         _r5031_))
                                      _tl50415114_)
                                     (_g50335104_ _g50375107_))
                                 (_g50335104_ _g50375107_))))
                         (_g50335104_ _g50375107_)))))
              (_g50325126_ _rest5029_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp5027_)
                                _L4988_
                                '0
                                '())))
                          (let ()
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons _tmp5025_
                                                    (cons (gxc#compile-e
                                                           _L4987_)
                                                          '())))
                                        (cons (gxc#generate-runtime-check-values
                                               _tmp5025_
                                               _L4988_)
                                              _body5129_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g50035154_
                                                           (lambda (_g50065135_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g50065135_)
                         (let ((_e50115137_ (gx#stx-e _g50065135_)))
                           (let ((_hd50125140_ (##car _e50115137_))
                                 (_tl50135142_ (##cdr _e50115137_)))
                             (if (gx#stx-null? _tl50135142_)
                                 ((lambda (_L5145_)
                                    (cons 'define
                                          (cons (gxc#generate-runtime-binding-id
                                                 _L5145_)
                                                (cons (gxc#compile-e _L4987_)
                                                      '()))))
                                  _hd50125140_)
                                 (_g50045132_ _g50065135_))))
                         (_g50045132_ _g50065135_)))))
              (let ((_g50025169_
                     (lambda (_g50065157_)
                       (if (gx#stx-pair? _g50065157_)
                           (let ((_e50075159_ (gx#stx-e _g50065157_)))
                             (let ((_hd50085162_ (##car _e50075159_))
                                   (_tl50095164_ (##cdr _e50075159_)))
                               (if (gx#stx-datum? _hd50085162_)
                                   (if (equal? (gx#stx-e _hd50085162_) '#f)
                                       (if (gx#stx-null? _tl50095164_)
                                           ((lambda ()
                                              (gxc#compile-e _L4987_)))
                                           (_g50035154_ _g50065157_))
                                       (_g50035154_ _g50065157_))
                                   (_g50035154_ _g50065157_))))
                           (_g50035154_ _g50065157_)))))
                (_g50025169_ _L4988_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd49524982_
                                              _hd49494974_)
                                             (_g49414958_ _g49424961_))))
                                     (_g49414958_ _g49424961_))))
                             (_g49414958_ _g49424961_))))
                     (_g49414958_ _g49424961_)))))
          (_g49405172_ _stx4939_)))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals4927_ _hd4928_)
      (let ((_len4930_ (gx#stx-length _hd4928_)))
        (let ((_cmp4932_ (if (gx#stx-list? _hd4928_) 'fx= 'fx>=)))
          (let ((_errmsg4934_
                 (string-append
                  (if (gx#stx-list? _hd4928_)
                      '"Context expects "
                      '"Context expects at least ")
                  (number->string _len4930_)
                  '" values")))
            (let ((_count4936_ (gxc#generate-runtime-temporary)))
              (let ()
                (if (if (not (gx#stx-list? _hd4928_)) (fx= _len4930_ '0) '#f)
                    '#!void
                    (cons 'let
                          (cons (cons (cons _count4936_
                                            (cons (cons 'values-count
                                                        (cons _vals4927_ '()))
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (cons _cmp4932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count4936_ (cons _len4930_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _errmsg4934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count4936_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx4860_)
      (let ((_g48624879_
             (lambda (_g48634876_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g48634876_))))
        (let ((_g48614924_
               (lambda (_g48634882_)
                 (if (gx#stx-pair? _g48634882_)
                     (let ((_e48664884_ (gx#stx-e _g48634882_)))
                       (let ((_hd48674887_ (##car _e48664884_))
                             (_tl48684889_ (##cdr _e48664884_)))
                         (if (gx#stx-pair? _tl48684889_)
                             (let ((_e48694892_ (gx#stx-e _tl48684889_)))
                               (let ((_hd48704895_ (##car _e48694892_))
                                     (_tl48714897_ (##cdr _e48694892_)))
                                 (if (gx#stx-pair? _tl48714897_)
                                     (let ((_e48724900_
                                            (gx#stx-e _tl48714897_)))
                                       (let ((_hd48734903_ (##car _e48724900_))
                                             (_tl48744905_
                                              (##cdr _e48724900_)))
                                         (if (gx#stx-null? _tl48744905_)
                                             ((lambda (_L4908_ _L4909_)
                                                (cons 'lambda
                                                      (cons (gxc#generate-runtime-lambda-head
                                                             _L4909_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4908_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd48734903_
                                              _hd48704895_)
                                             (_g48624879_ _g48634882_))))
                                     (_g48624879_ _g48634882_))))
                             (_g48624879_ _g48634882_))))
                     (_g48624879_ _g48634882_)))))
          (_g48614924_ _stx4860_)))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd4858_) (gx#stx-map gxc#generate-runtime-binding-id* _hd4858_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx4715_)
      (let ((_generate14717_
             (lambda (_args4848_ _arglen4849_ _hd4850_ _body4851_)
               (let ((_len4853_ (gx#stx-length _hd4850_)))
                 (let ((_condition4855_
                        (if (gx#stx-list? _hd4850_)
                            (cons 'fx=
                                  (cons _arglen4849_ (cons _len4853_ '())))
                            (if (> _len4853_ '0)
                                (cons 'fx>=
                                      (cons _arglen4849_ (cons _len4853_ '())))
                                '#t))))
                   (let ()
                     (cons _condition4855_
                           (cons (cons 'apply
                                       (cons (cons 'lambda
                                                   (cons (gxc#generate-runtime-lambda-head
                                                          _hd4850_)
                                                         (cons (gxc#compile-e
                                                                _body4851_)
                                                               '())))
                                             (cons _args4848_ '())))
                                 '()))))))))
        (let ((_g47194747_
               (lambda (_g47204744_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g47204744_))))
          (let ((_g47184845_
                 (lambda (_g47204750_)
                   (if (gx#stx-pair? _g47204750_)
                       (let ((_e47234752_ (gx#stx-e _g47204750_)))
                         (let ((_hd47244755_ (##car _e47234752_))
                               (_tl47254757_ (##cdr _e47234752_)))
                           (if (gx#stx-pair/null? _tl47254757_)
                               (if (fx>= (gx#stx-length _tl47254757_) '0)
                                   (let ((_g5860_ (gx#syntax-split-splice
                                                   _tl47254757_
                                                   '0)))
                                     (begin
                                       (let ((_g5861_ (values-count _g5860_)))
                                         (if (not (fx= _g5861_ 2))
                                             (error "Context expects 2 values"
                                                    _g5861_)))
                                       (let ((_target47264760_
                                              (values-ref _g5860_ 0))
                                             (_tl47284762_
                                              (values-ref _g5860_ 1)))
                                         (if (gx#stx-null? _tl47284762_)
                                             (letrec ((_loop47294765_
                                                       (lambda (_hd47274768_
                                                                _body47334770_
                                                                _hd47344772_)
                                                         (if (gx#stx-pair?
                                                              _hd47274768_)
                                                             (let ((_e47304775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd47274768_)))
                       (let ((_lp-hd47314778_ (##car _e47304775_))
                             (_lp-tl47324780_ (##cdr _e47304775_)))
                         (if (gx#stx-pair? _lp-hd47314778_)
                             (let ((_e47374783_ (gx#stx-e _lp-hd47314778_)))
                               (let ((_hd47384786_ (##car _e47374783_))
                                     (_tl47394788_ (##cdr _e47374783_)))
                                 (if (gx#stx-pair? _tl47394788_)
                                     (let ((_e47404791_
                                            (gx#stx-e _tl47394788_)))
                                       (let ((_hd47414794_ (##car _e47404791_))
                                             (_tl47424796_
                                              (##cdr _e47404791_)))
                                         (if (gx#stx-null? _tl47424796_)
                                             (_loop47294765_
                                              _lp-tl47324780_
                                              (cons _hd47414794_
                                                    _body47334770_)
                                              (cons _hd47384786_ _hd47344772_))
                                             (_g47194747_ _g47204750_))))
                                     (_g47194747_ _g47204750_))))
                             (_g47194747_ _g47204750_))))
                     (let ((_body47354799_ (reverse _body47334770_))
                           (_hd47364801_ (reverse _hd47344772_)))
                       ((lambda (_L4804_ _L4805_)
                          (let ((_args4821_ (gxc#generate-runtime-temporary))
                                (_arglen4822_
                                 (gxc#generate-runtime-temporary)))
                            (cons 'lambda
                                  (cons _args4821_
                                        (cons (cons 'let
                                                    (cons (cons (cons _arglen4822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons 'length (cons _args4821_ '())) '()))
                        '())
                  (cons (cons 'cond
                              (foldr cons
                                     (cons (cons 'else
                                                 (cons (cons 'error
                                                             (cons '"No clause matching arguments"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args4821_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (map (lambda (_g48234826_ _g48244828_)
                                            (_generate14717_
                                             _args4821_
                                             _arglen4822_
                                             _g48234826_
                                             _g48244828_))
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g48304833_
                                                            _g48314835_)
                                                     (cons _g48304833_
                                                           _g48314835_))
                                                   '()
                                                   _L4805_))
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g48374840_
                                                            _g48384842_)
                                                     (cons _g48374840_
                                                           _g48384842_))
                                                   '()
                                                   _L4804_)))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                        _body47354799_
                        _hd47364801_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop47294765_
                                                _target47264760_
                                                '()
                                                '()))
                                             (_g47194747_ _g47204750_)))))
                                   (_g47194747_ _g47204750_))
                               (_g47194747_ _g47204750_))))
                       (_g47194747_ _g47204750_)))))
            (_g47184845_ _stx4715_))))))
  (define gxc#generate-runtime-let-values%
    (let ((_opt-lambda43954705_
           (lambda (_stx4397_ _compiled-body?4398_)
             (let ((_generate-simple4400_
                    (lambda (_hd4702_ _body4703_)
                      (gxc#generate-runtime-simple-let
                       'let
                       _hd4702_
                       _body4703_
                       _compiled-body?4398_))))
               (let ((_generate-values-post4402_
                      (lambda (_post4474_ _body4475_)
                        ((letrec ((_lp4477_
                                   (lambda (_rest4479_ _body4480_)
                                     (let ((_rest44814489_ _rest4479_))
                                       (let ((_E44844493_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _rest44814489_))))
                                         (let ((_else44834497_
                                                (lambda () _body4480_)))
                                           (let ((_K44854503_
                                                  (lambda (_rest4500_
                                                           _bind4501_)
                                                    (_lp4477_
                                                     _rest4500_
                                                     (cons 'let
                                                           (cons _bind4501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body4480_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _rest44814489_)
                                                 (let ((_hd44864506_
                                                        (##car _rest44814489_))
                                                       (_tl44874508_
                                                        (##cdr _rest44814489_)))
                                                   (let ((_bind4511_
                                                          _hd44864506_))
                                                     (let ((_rest4513_
                                                            _tl44874508_))
                                                       (_K44854503_
                                                        _rest4513_
                                                        _bind4511_))))
                                                 (_else44834497_)))))))))
                           _lp4477_)
                         _post4474_
                         _body4475_))))
                 (let ((_generate-values-check4403_
                        (lambda (_check4471_ _body4472_)
                          (cons 'begin
                                (foldr cons
                                       (cons _body4472_ '())
                                       (reverse _check4471_))))))
                   (let ((_generate-values4401_
                          (lambda (_hd4515_ _body4516_)
                            ((letrec ((_lp4518_
                                       (lambda (_rest4520_
                                                _bind4521_
                                                _check4522_
                                                _post4523_)
                                         (let ((_g45264537_
                                                (lambda (_g45274534_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g45274534_))))
                                           (let ((_g45254551_
                                                  (lambda (_g45274540_)
                                                    ((lambda ()
                                                       (let ((_body4544_
                                                              (if _compiled-body?4398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body4516_
                          (gxc#compile-e _body4516_))))
                 (let ((_body4546_
                        (_generate-values-post4402_ _post4523_ _body4544_)))
                   (let ((_body4548_
                          (_generate-values-check4403_
                           _check4522_
                           _body4546_)))
                     (let ()
                       (cons 'let
                             (cons (reverse _bind4521_)
                                   (cons _body4548_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g45244699_
                                                    (lambda (_g45274554_)
                                                      (if (gx#stx-pair?
                                                           _g45274554_)
                                                          (let ((_e45304556_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _g45274554_)))
                    (let ((_hd45314559_ (##car _e45304556_))
                          (_tl45324561_ (##cdr _e45304556_)))
                      ((lambda (_L4564_ _L4565_)
                         (let ((_g45804605_
                                (lambda (_g45814602_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g45814602_))))
                           (let ((_g45794649_
                                  (lambda (_g45814608_)
                                    (if (gx#stx-pair? _g45814608_)
                                        (let ((_e45954610_
                                               (gx#stx-e _g45814608_)))
                                          (let ((_hd45964613_
                                                 (##car _e45954610_))
                                                (_tl45974615_
                                                 (##cdr _e45954610_)))
                                            (if (gx#stx-pair? _tl45974615_)
                                                (let ((_e45984618_
                                                       (gx#stx-e
                                                        _tl45974615_)))
                                                  (let ((_hd45994621_
                                                         (##car _e45984618_))
                                                        (_tl46004623_
                                                         (##cdr _e45984618_)))
                                                    (if (gx#stx-null?
                                                         _tl46004623_)
                                                        ((lambda (_L4626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L4627_)
                   (let ((_vals4640_ (gxc#generate-runtime-temporary)))
                     (let ((_expr4642_ (gxc#compile-e _L4626_)))
                       (let ((_check-values4644_
                              (gxc#generate-runtime-check-values
                               _vals4640_
                               _L4627_)))
                         (let ((_refs4646_
                                (gxc#generate-runtime-let-values-bind
                                 _vals4640_
                                 _L4627_)))
                           (let ()
                             (_lp4518_
                              _L4564_
                              (cons (cons _vals4640_ (cons _expr4642_ '()))
                                    _bind4521_)
                              (cons _check-values4644_ _check4522_)
                              (cons _refs4646_ _post4523_))))))))
                 _hd45994621_
                 _hd45964613_)
                (_g45804605_ _g45814608_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g45804605_ _g45814608_))))
                                        (_g45804605_ _g45814608_)))))
                             (let ((_g45784696_
                                    (lambda (_g45814652_)
                                      (if (gx#stx-pair? _g45814652_)
                                          (let ((_e45844654_
                                                 (gx#stx-e _g45814652_)))
                                            (let ((_hd45854657_
                                                   (##car _e45844654_))
                                                  (_tl45864659_
                                                   (##cdr _e45844654_)))
                                              (if (gx#stx-pair? _hd45854657_)
                                                  (let ((_e45874662_
                                                         (gx#stx-e
                                                          _hd45854657_)))
                                                    (let ((_hd45884665_
                                                           (##car _e45874662_))
                                                          (_tl45894667_
                                                           (##cdr _e45874662_)))
                                                      (if (gx#stx-null?
                                                           _tl45894667_)
                                                          (if (gx#stx-pair?
                                                               _tl45864659_)
                                                              (let ((_e45904670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl45864659_)))
                        (let ((_hd45914673_ (##car _e45904670_))
                              (_tl45924675_ (##cdr _e45904670_)))
                          (if (gx#stx-null? _tl45924675_)
                              ((lambda (_L4678_ _L4679_)
                                 (let ((_eid4693_
                                        (gxc#generate-runtime-binding-id*
                                         _L4679_))
                                       (_expr4694_ (gxc#compile-e _L4678_)))
                                   (_lp4518_
                                    _L4564_
                                    (cons (cons _eid4693_
                                                (cons _expr4694_ '()))
                                          _bind4521_)
                                    _check4522_
                                    _post4523_)))
                               _hd45914673_
                               _hd45884665_)
                              (_g45794649_ _g45814652_))))
                      (_g45794649_ _g45814652_))
                  (_g45794649_ _g45814652_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g45794649_ _g45814652_))))
                                          (_g45794649_ _g45814652_)))))
                               (_g45784696_ _L4565_)))))
                       _tl45324561_
                       _hd45314559_)))
                  (_g45254551_ _g45274554_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g45244699_ _rest4520_)))))))
                               _lp4518_)
                             _hd4515_
                             '()
                             '()
                             '()))))
                     (let ((_g44054422_
                            (lambda (_g44064419_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g44064419_))))
                       (let ((_g44044468_
                              (lambda (_g44064425_)
                                (if (gx#stx-pair? _g44064425_)
                                    (let ((_e44094427_ (gx#stx-e _g44064425_)))
                                      (let ((_hd44104430_ (##car _e44094427_))
                                            (_tl44114432_ (##cdr _e44094427_)))
                                        (if (gx#stx-pair? _tl44114432_)
                                            (let ((_e44124435_
                                                   (gx#stx-e _tl44114432_)))
                                              (let ((_hd44134438_
                                                     (##car _e44124435_))
                                                    (_tl44144440_
                                                     (##cdr _e44124435_)))
                                                (if (gx#stx-pair? _tl44144440_)
                                                    (let ((_e44154443_
                                                           (gx#stx-e
                                                            _tl44144440_)))
                                                      (let ((_hd44164446_
                                                             (##car _e44154443_))
                                                            (_tl44174448_
                                                             (##cdr _e44154443_)))
                                                        (if (gx#stx-null?
                                                             _tl44174448_)
                                                            ((lambda (_L4451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L4452_)
                       (if (gxc#generate-runtime-simple-let? _L4452_)
                           (_generate-simple4400_ _L4452_ _L4451_)
                           (_generate-values4401_ _L4452_ _L4451_)))
                     _hd44164446_
                     _hd44134438_)
                    (_g44054422_ _g44064425_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g44054422_
                                                     _g44064425_))))
                                            (_g44054422_ _g44064425_))))
                                    (_g44054422_ _g44064425_)))))
                         (_g44044468_ _stx4397_))))))))))
      (lambda _g5863_
        (let ((_g5862_ (length _g5863_)))
          (cond ((fx= _g5862_ 1)
                 (apply (lambda (_stx4708_)
                          (let ((_compiled-body?4710_ '#f))
                            (_opt-lambda43954705_
                             _stx4708_
                             _compiled-body?4710_)))
                        _g5863_))
                ((fx= _g5862_ 2)
                 (apply (lambda (_stx4712_ _compiled-body?4713_)
                          (_opt-lambda43954705_
                           _stx4712_
                           _compiled-body?4713_))
                        _g5863_))
                (else (error "No clause matching arguments" _g5863_)))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals4296_ _hd4297_)
      ((letrec ((_lp4299_
                 (lambda (_rest4301_ _k4302_ _r4303_)
                   (let ((_g43084324_
                          (lambda (_g43094321_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g43094321_))))
                     (let ((_g43074331_
                            (lambda (_g43094327_)
                              ((lambda () (reverse _r4303_))))))
                       (let ((_g43064347_
                              (lambda (_g43094334_)
                                ((lambda (_L4336_)
                                   (if (gx#identifier? _L4336_)
                                       (foldl cons
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L4336_)
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals4296_ (cons _k4302_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              _r4303_)
                                       (_g43074331_ _g43094334_)))
                                 _g43094334_))))
                         (let ((_g43054371_
                                (lambda (_g43094350_)
                                  (if (gx#stx-pair? _g43094350_)
                                      (let ((_e43164352_
                                             (gx#stx-e _g43094350_)))
                                        (let ((_hd43174355_
                                               (##car _e43164352_))
                                              (_tl43184357_
                                               (##cdr _e43164352_)))
                                          ((lambda (_L4360_ _L4361_)
                                             (_lp4299_
                                              _L4360_
                                              (fx1+ _k4302_)
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L4361_)
                                                          (cons (cons 'values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals4296_ (cons _k4302_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _r4303_)))
                                           _tl43184357_
                                           _hd43174355_)))
                                      (_g43064347_ _g43094350_)))))
                           (let ((_g43044393_
                                  (lambda (_g43094374_)
                                    (if (gx#stx-pair? _g43094374_)
                                        (let ((_e43114376_
                                               (gx#stx-e _g43094374_)))
                                          (let ((_hd43124379_
                                                 (##car _e43114376_))
                                                (_tl43134381_
                                                 (##cdr _e43114376_)))
                                            (if (gx#stx-datum? _hd43124379_)
                                                (if (equal? (gx#stx-e
                                                             _hd43124379_)
                                                            '#f)
                                                    ((lambda (_L4384_)
                                                       (_lp4299_
                                                        _L4384_
                                                        (fx1+ _k4302_)
                                                        _r4303_))
                                                     _tl43134381_)
                                                    (_g43054371_ _g43094374_))
                                                (_g43054371_ _g43094374_))))
                                        (_g43054371_ _g43094374_)))))
                             (_g43044393_ _rest4301_)))))))))
         _lp4299_)
       _hd4297_
       '0
       '())))
  (define gxc#generate-runtime-letrec-values%
    (let ((_opt-lambda39744286_
           (lambda (_stx3976_ _compiled-body?3977_)
             (let ((_generate-simple3979_
                    (lambda (_hd4283_ _body4284_)
                      (gxc#generate-runtime-simple-let
                       'letrec
                       _hd4283_
                       _body4284_
                       _compiled-body?3977_))))
               (let ((_generate-values-check3981_
                      (lambda (_check4057_ _body4058_)
                        (cons 'begin
                              (foldr cons
                                     (cons _body4058_ '())
                                     (reverse _check4057_))))))
                 (let ((_generate-values-post3982_
                        (lambda (_post4050_ _body4051_)
                          (cons 'begin
                                (foldr cons
                                       (cons _body4051_ '())
                                       (map (lambda (_g40524054_)
                                              (cons 'set! _g40524054_))
                                            (reverse _post4050_)))))))
                   (let ((_generate-values3980_
                          (lambda (_hd4060_ _body4061_)
                            ((letrec ((_lp4063_
                                       (lambda (_rest4065_
                                                _bind4066_
                                                _check4067_
                                                _post4068_)
                                         (let ((_g40714082_
                                                (lambda (_g40724079_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g40724079_))))
                                           (let ((_g40704096_
                                                  (lambda (_g40724085_)
                                                    ((lambda ()
                                                       (let ((_body4089_
                                                              (if _compiled-body?3977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body4061_
                          (gxc#compile-e _body4061_))))
                 (let ((_body4091_
                        (_generate-values-post3982_ _post4068_ _body4089_)))
                   (let ((_body4093_
                          (_generate-values-check3981_
                           _check4067_
                           _body4091_)))
                     (let ()
                       (cons 'letrec
                             (cons (reverse _bind4066_)
                                   (cons _body4093_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g40694280_
                                                    (lambda (_g40724099_)
                                                      (if (gx#stx-pair?
                                                           _g40724099_)
                                                          (let ((_e40754101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _g40724099_)))
                    (let ((_hd40764104_ (##car _e40754101_))
                          (_tl40774106_ (##cdr _e40754101_)))
                      ((lambda (_L4109_ _L4110_)
                         (let ((_g41254150_
                                (lambda (_g41264147_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g41264147_))))
                           (let ((_g41244230_
                                  (lambda (_g41264153_)
                                    (if (gx#stx-pair? _g41264153_)
                                        (let ((_e41404155_
                                               (gx#stx-e _g41264153_)))
                                          (let ((_hd41414158_
                                                 (##car _e41404155_))
                                                (_tl41424160_
                                                 (##cdr _e41404155_)))
                                            (if (gx#stx-pair? _tl41424160_)
                                                (let ((_e41434163_
                                                       (gx#stx-e
                                                        _tl41424160_)))
                                                  (let ((_hd41444166_
                                                         (##car _e41434163_))
                                                        (_tl41454168_
                                                         (##cdr _e41434163_)))
                                                    (if (gx#stx-null?
                                                         _tl41454168_)
                                                        ((lambda (_L4171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L4172_)
                   (let ((_vals4185_ (gxc#generate-runtime-temporary)))
                     (let ((_expr4187_ (gxc#compile-e _L4171_)))
                       (let ((_check-values4189_
                              (gxc#generate-runtime-check-values
                               _vals4185_
                               _L4172_)))
                         (let ((_refs4191_
                                (gxc#generate-runtime-let-values-bind
                                 _vals4185_
                                 _L4172_)))
                           (let ()
                             (_lp4063_
                              _L4109_
                              (foldl cons
                                     (cons (cons _vals4185_
                                                 (cons _expr4187_ '()))
                                           _bind4066_)
                                     (map (lambda (_e41934195_)
                                            (let ((_g41974206_ _e41934195_))
                                              (let ((_E41994210_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _g41974206_))))
                                                (let ((_K42004215_
                                                       (lambda (_eid4213_)
                                                         (cons _eid4213_
                                                               (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _g41974206_)
                                                      (let ((_hd42014218_
                                                             (##car _g41974206_))
                                                            (_tl42024220_
                                                             (##cdr _g41974206_)))
                                                        (let ((_eid4223_
                                                               _hd42014218_))
                                                          (if (##pair? _tl42024220_)
                                                              (let ((_hd42034225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##car _tl42024220_))
                            (_tl42044227_ (##cdr _tl42024220_)))
                        (if (##null? _tl42044227_)
                            (_K42004215_ _eid4223_)
                            (_E41994210_)))
                      (_E41994210_))))
              (_E41994210_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _refs4191_))
                              (cons _check-values4189_ _check4067_)
                              (foldl cons _refs4191_ _post4068_))))))))
                 _hd41444166_
                 _hd41414158_)
                (_g41254150_ _g41264153_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g41254150_ _g41264153_))))
                                        (_g41254150_ _g41264153_)))))
                             (let ((_g41234277_
                                    (lambda (_g41264233_)
                                      (if (gx#stx-pair? _g41264233_)
                                          (let ((_e41294235_
                                                 (gx#stx-e _g41264233_)))
                                            (let ((_hd41304238_
                                                   (##car _e41294235_))
                                                  (_tl41314240_
                                                   (##cdr _e41294235_)))
                                              (if (gx#stx-pair? _hd41304238_)
                                                  (let ((_e41324243_
                                                         (gx#stx-e
                                                          _hd41304238_)))
                                                    (let ((_hd41334246_
                                                           (##car _e41324243_))
                                                          (_tl41344248_
                                                           (##cdr _e41324243_)))
                                                      (if (gx#stx-null?
                                                           _tl41344248_)
                                                          (if (gx#stx-pair?
                                                               _tl41314240_)
                                                              (let ((_e41354251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl41314240_)))
                        (let ((_hd41364254_ (##car _e41354251_))
                              (_tl41374256_ (##cdr _e41354251_)))
                          (if (gx#stx-null? _tl41374256_)
                              ((lambda (_L4259_ _L4260_)
                                 (let ((_eid4274_
                                        (gxc#generate-runtime-binding-id*
                                         _L4260_))
                                       (_expr4275_ (gxc#compile-e _L4259_)))
                                   (_lp4063_
                                    _L4109_
                                    (cons (cons _eid4274_
                                                (cons _expr4275_ '()))
                                          _bind4066_)
                                    _check4067_
                                    _post4068_)))
                               _hd41364254_
                               _hd41334246_)
                              (_g41244230_ _g41264233_))))
                      (_g41244230_ _g41264233_))
                  (_g41244230_ _g41264233_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g41244230_ _g41264233_))))
                                          (_g41244230_ _g41264233_)))))
                               (_g41234277_ _L4110_)))))
                       _tl40774106_
                       _hd40764104_)))
                  (_g40704096_ _g40724099_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g40694280_ _rest4065_)))))))
                               _lp4063_)
                             _hd4060_
                             '()
                             '()
                             '()))))
                     (let ((_g39844001_
                            (lambda (_g39853998_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g39853998_))))
                       (let ((_g39834047_
                              (lambda (_g39854004_)
                                (if (gx#stx-pair? _g39854004_)
                                    (let ((_e39884006_ (gx#stx-e _g39854004_)))
                                      (let ((_hd39894009_ (##car _e39884006_))
                                            (_tl39904011_ (##cdr _e39884006_)))
                                        (if (gx#stx-pair? _tl39904011_)
                                            (let ((_e39914014_
                                                   (gx#stx-e _tl39904011_)))
                                              (let ((_hd39924017_
                                                     (##car _e39914014_))
                                                    (_tl39934019_
                                                     (##cdr _e39914014_)))
                                                (if (gx#stx-pair? _tl39934019_)
                                                    (let ((_e39944022_
                                                           (gx#stx-e
                                                            _tl39934019_)))
                                                      (let ((_hd39954025_
                                                             (##car _e39944022_))
                                                            (_tl39964027_
                                                             (##cdr _e39944022_)))
                                                        (if (gx#stx-null?
                                                             _tl39964027_)
                                                            ((lambda (_L4030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L4031_)
                       (if (gxc#generate-runtime-simple-let? _L4031_)
                           (_generate-simple3979_ _L4031_ _L4030_)
                           (_generate-values3980_ _L4031_ _L4030_)))
                     _hd39954025_
                     _hd39924017_)
                    (_g39844001_ _g39854004_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g39844001_
                                                     _g39854004_))))
                                            (_g39844001_ _g39854004_))))
                                    (_g39844001_ _g39854004_)))))
                         (_g39834047_ _stx3976_))))))))))
      (lambda _g5865_
        (let ((_g5864_ (length _g5865_)))
          (cond ((fx= _g5864_ 1)
                 (apply (lambda (_stx4289_)
                          (let ((_compiled-body?4291_ '#f))
                            (_opt-lambda39744286_
                             _stx4289_
                             _compiled-body?4291_)))
                        _g5865_))
                ((fx= _g5864_ 2)
                 (apply (lambda (_stx4293_ _compiled-body?4294_)
                          (_opt-lambda39744286_
                           _stx4293_
                           _compiled-body?4294_))
                        _g5865_))
                (else (error "No clause matching arguments" _g5865_)))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx3095_)
      (let ((_collect-closures3098_
             (lambda (_forms3916_)
               (map (lambda (_e39173919_)
                      (let ((_g39213930_ _e39173919_))
                        (let ((_E39233934_
                               (lambda ()
                                 (error '"No clause matching" _g39213930_))))
                          (let ((_K39243939_
                                 (lambda (_expr3937_)
                                   (gxc#collect-expression-refs _expr3937_))))
                            (if (##pair? _g39213930_)
                                (let ((_hd39253942_ (##car _g39213930_))
                                      (_tl39263944_ (##cdr _g39213930_)))
                                  (if (##pair? _tl39263944_)
                                      (let ((_hd39273947_ (##car _tl39263944_))
                                            (_tl39283949_
                                             (##cdr _tl39263944_)))
                                        (let ((_expr3952_ _hd39273947_))
                                          (if (##null? _tl39283949_)
                                              (_K39243939_ _expr3952_)
                                              (_E39233934_))))
                                      (_E39233934_)))
                                (_E39233934_))))))
                    _forms3916_))))
        (let ((_collect-bindings3099_
               (lambda (_forms3840_)
                 (map (lambda (_e38413843_)
                        (let ((_g38453854_ _e38413843_))
                          (let ((_E38473858_
                                 (lambda ()
                                   (error '"No clause matching" _g38453854_))))
                            (let ((_K38483901_
                                   (lambda (_bind3861_)
                                     ((letrec ((_lp3863_
                                                (lambda (_rest3865_ _r3866_)
                                                  (let ((_rest38673875_
                                                         _rest3865_))
                                                    (let ((_E38703879_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest38673875_))))
              (let ((_else38693883_
                     (lambda ()
                       (if (gx#identifier? _rest3865_)
                           (cons _rest3865_ _r3866_)
                           _r3866_))))
                (let ((_K38713889_
                       (lambda (_rest3886_ _id3887_)
                         (if (gx#identifier? _id3887_)
                             (_lp3863_
                              _rest3886_
                              (cons (gx#binding-id
                                     (gx#resolve-identifier _id3887_))
                                    _r3866_))
                             (_lp3863_ _rest3886_ _r3866_)))))
                  (if (##pair? _rest38673875_)
                      (let ((_hd38723892_ (##car _rest38673875_))
                            (_tl38733894_ (##cdr _rest38673875_)))
                        (let ((_id3897_ _hd38723892_))
                          (let ((_rest3899_ _tl38733894_))
                            (_K38713889_ _rest3899_ _id3897_))))
                      (_else38693883_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp3863_)
                                      _bind3861_
                                      '()))))
                              (if (##pair? _g38453854_)
                                  (let ((_hd38493904_ (##car _g38453854_))
                                        (_tl38503906_ (##cdr _g38453854_)))
                                    (let ((_bind3909_ _hd38493904_))
                                      (if (##pair? _tl38503906_)
                                          (let ((_hd38513911_
                                                 (##car _tl38503906_))
                                                (_tl38523913_
                                                 (##cdr _tl38503906_)))
                                            (if (##null? _tl38523913_)
                                                (_K38483901_ _bind3909_)
                                                (_E38473858_)))
                                          (_E38473858_))))
                                  (_E38473858_))))))
                      _forms3840_))))
          (let ((_closure-reference?3103_
                 (lambda (_closure3392_ _bindings3393_)
                   (ormap (lambda (_g33943396_)
                            (hash-get _closure3392_ _g33943396_))
                          _bindings3393_))))
            (let ((_is-effect-expr?3105_
                   (lambda (_expr3303_)
                     (let ((_g33053315_
                            (lambda (_g33063312_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g33063312_))))
                       (let ((_g33043338_
                              (lambda (_g33063318_)
                                (if (gx#stx-pair? _g33063318_)
                                    (let ((_e33083320_ (gx#stx-e _g33063318_)))
                                      (let ((_hd33093323_ (##car _e33083320_))
                                            (_tl33103325_ (##cdr _e33083320_)))
                                        ((lambda (_L3328_)
                                           (not (memq (gx#stx-e _L3328_)
                                                      '(%#lambda
                                                        %#case-lambda
                                                        %#quote
                                                        %#quote-syntax
                                                        %#ref))))
                                         _hd33093323_)))
                                    (_g33053315_ _g33063318_)))))
                         (_g33043338_ _expr3303_))))))
              (let ((_is-lambda-expr?3106_
                     (lambda (_expr3265_)
                       (let ((_g32673277_
                              (lambda (_g32683274_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g32683274_))))
                         (let ((_g32663300_
                                (lambda (_g32683280_)
                                  (if (gx#stx-pair? _g32683280_)
                                      (let ((_e32703282_
                                             (gx#stx-e _g32683280_)))
                                        (let ((_hd32713285_
                                               (##car _e32703282_))
                                              (_tl32723287_
                                               (##cdr _e32703282_)))
                                          ((lambda (_L3290_)
                                             (memq (gx#stx-e _L3290_)
                                                   '(%#lambda %#case-lambda)))
                                           _hd32713285_)))
                                      (_g32673277_ _g32683280_)))))
                           (_g32663300_ _expr3265_))))))
                (let ((_lift-rec3102_
                       (lambda (_forms3399_)
                         ((letrec ((_lp3401_
                                    (lambda (_rest3403_
                                             _pre3404_
                                             _bind3405_
                                             _init3406_)
                                      (let ((_rest34073415_ _rest3403_))
                                        (let ((_E34103419_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _rest34073415_))))
                                          (let ((_else34093423_
                                                 (lambda ()
                                                   (values (reverse _pre3404_)
                                                           (reverse _bind3405_)
                                                           (reverse _init3406_)))))
                                            (let ((_K34113614_
                                                   (lambda (_rest3426_
                                                            _bind-hd3427_)
                                                     (let ((_g34313466_
                                                            (lambda (_g34323463_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g34323463_))))
                                                       (let ((_g34303523_
                                                              (lambda (_g34323469_)
                                                                (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g34323469_)
                            (let ((_e34563471_ (gx#stx-e _g34323469_)))
                              (let ((_hd34573474_ (##car _e34563471_))
                                    (_tl34583476_ (##cdr _e34563471_)))
                                (if (gx#stx-pair? _tl34583476_)
                                    (let ((_e34593479_
                                           (gx#stx-e _tl34583476_)))
                                      (let ((_hd34603482_ (##car _e34593479_))
                                            (_tl34613484_ (##cdr _e34593479_)))
                                        (if (gx#stx-null? _tl34613484_)
                                            ((lambda (_L3487_ _L3488_)
                                               (let ((_vals3507_
                                                      (gxc#generate-runtime-temporary)))
                                                 (let ((_expr3509_
                                                        (gxc#compile-e
                                                         _L3487_)))
                                                   (let ((_check-values3511_
                                                          (gxc#generate-runtime-check-values
                                                           _vals3507_
                                                           _L3488_)))
                                                     (let ((_refs3513_
                                                            (gxc#generate-runtime-let-values-bind
                                                             _vals3507_
                                                             _L3488_)))
                                                       (let ()
                                                         (_lp3401_
                                                          _rest3426_
                                                          (foldl (lambda (_ref3516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _r3517_)
                           (cons (cons (car _ref3516_) (cons '#!void '()))
                                 _r3517_))
                         _pre3404_
                         _refs3513_)
                  _bind3405_
                  (cons (cons 'let
                              (cons (cons (cons _vals3507_
                                                (cons _expr3509_ '()))
                                          '())
                                    (cons _check-values3511_
                                          (cons (map (lambda (_g35183520_)
                                                       (cons 'set!
                                                             _g35183520_))
                                                     _refs3513_)
                                                '()))))
                        _init3406_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd34603482_
                                             _hd34573474_)
                                            (_g34313466_ _g34323469_))))
                                    (_g34313466_ _g34323469_))))
                            (_g34313466_ _g34323469_)))))
                 (let ((_g34293569_
                        (lambda (_g34323526_)
                          (if (gx#stx-pair? _g34323526_)
                              (let ((_e34453528_ (gx#stx-e _g34323526_)))
                                (let ((_hd34463531_ (##car _e34453528_))
                                      (_tl34473533_ (##cdr _e34453528_)))
                                  (if (gx#stx-pair? _hd34463531_)
                                      (let ((_e34483536_
                                             (gx#stx-e _hd34463531_)))
                                        (let ((_hd34493539_
                                               (##car _e34483536_))
                                              (_tl34503541_
                                               (##cdr _e34483536_)))
                                          (if (gx#stx-null? _tl34503541_)
                                              (if (gx#stx-pair? _tl34473533_)
                                                  (let ((_e34513544_
                                                         (gx#stx-e
                                                          _tl34473533_)))
                                                    (let ((_hd34523547_
                                                           (##car _e34513544_))
                                                          (_tl34533549_
                                                           (##cdr _e34513544_)))
                                                      (if (gx#stx-null?
                                                           _tl34533549_)
                                                          ((lambda (_L3552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L3553_)
                     (let ((_eid3567_
                            (gxc#generate-runtime-binding-id _L3553_)))
                       (if (_is-lambda-expr?3106_ _L3552_)
                           (_lp3401_
                            _rest3426_
                            _pre3404_
                            (cons (cons _eid3567_
                                        (cons (gxc#compile-e _L3552_) '()))
                                  _bind3405_)
                            _init3406_)
                           (_lp3401_
                            _rest3426_
                            (cons (cons _eid3567_ (cons '#!void '()))
                                  _pre3404_)
                            _bind3405_
                            (cons (cons 'set!
                                        (cons _eid3567_
                                              (cons (gxc#compile-e _L3552_)
                                                    '())))
                                  _init3406_)))))
                   _hd34523547_
                   _hd34493539_)
                  (_g34303523_ _g34323526_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g34303523_ _g34323526_))
                                              (_g34303523_ _g34323526_))))
                                      (_g34303523_ _g34323526_))))
                              (_g34303523_ _g34323526_)))))
                   (let ((_g34283611_
                          (lambda (_g34323572_)
                            (if (gx#stx-pair? _g34323572_)
                                (let ((_e34343574_ (gx#stx-e _g34323572_)))
                                  (let ((_hd34353577_ (##car _e34343574_))
                                        (_tl34363579_ (##cdr _e34343574_)))
                                    (if (gx#stx-pair? _hd34353577_)
                                        (let ((_e34373582_
                                               (gx#stx-e _hd34353577_)))
                                          (let ((_hd34383585_
                                                 (##car _e34373582_))
                                                (_tl34393587_
                                                 (##cdr _e34373582_)))
                                            (if (gx#stx-datum? _hd34383585_)
                                                (if (equal? (gx#stx-e
                                                             _hd34383585_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl34393587_)
                                                        (if (gx#stx-pair?
                                                             _tl34363579_)
                                                            (let ((_e34403590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl34363579_)))
                      (let ((_hd34413593_ (##car _e34403590_))
                            (_tl34423595_ (##cdr _e34403590_)))
                        (if (gx#stx-null? _tl34423595_)
                            ((lambda (_L3598_)
                               (_lp3401_
                                _rest3426_
                                _pre3404_
                                _bind3405_
                                (cons (gxc#compile-e _L3598_) _init3406_)))
                             _hd34413593_)
                            (_g34293569_ _g34323572_))))
                    (_g34293569_ _g34323572_))
                (_g34293569_ _g34323572_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g34293569_ _g34323572_))
                                                (_g34293569_ _g34323572_))))
                                        (_g34293569_ _g34323572_))))
                                (_g34293569_ _g34323572_)))))
                     (_g34283611_ _bind-hd3427_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _rest34073415_)
                                                  (let ((_hd34123617_
                                                         (##car _rest34073415_))
                                                        (_tl34133619_
                                                         (##cdr _rest34073415_)))
                                                    (let ((_bind-hd3622_
                                                           _hd34123617_))
                                                      (let ((_rest3624_
                                                             _tl34133619_))
                                                        (_K34113614_
                                                         _rest3624_
                                                         _bind-hd3622_))))
                                                  (_else34093423_)))))))))
                            _lp3401_)
                          _forms3399_
                          '()
                          '()
                          '()))))
                  (let ((_is-effect-bind?3104_
                         (lambda (_hd-bind3341_)
                           (let ((_g33433356_
                                  (lambda (_g33443353_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g33443353_))))
                             (let ((_g33423389_
                                    (lambda (_g33443359_)
                                      (if (gx#stx-pair? _g33443359_)
                                          (let ((_e33463361_
                                                 (gx#stx-e _g33443359_)))
                                            (let ((_hd33473364_
                                                   (##car _e33463361_))
                                                  (_tl33483366_
                                                   (##cdr _e33463361_)))
                                              (if (gx#stx-pair? _tl33483366_)
                                                  (let ((_e33493369_
                                                         (gx#stx-e
                                                          _tl33483366_)))
                                                    (let ((_hd33503372_
                                                           (##car _e33493369_))
                                                          (_tl33513374_
                                                           (##cdr _e33493369_)))
                                                      (if (gx#stx-null?
                                                           _tl33513374_)
                                                          ((lambda (_L3377_)
                                                             (_is-effect-expr?3105_
                                                              _L3377_))
                                                           _hd33503372_)
                                                          (_g33433356_
                                                           _g33443359_))))
                                                  (_g33433356_ _g33443359_))))
                                          (_g33433356_ _g33443359_)))))
                               (_g33423389_ _hd-bind3341_))))))
                    (let ((_lift-pre3100_
                           (lambda (_hd3733_ _bindings3734_ _closures3735_)
                             ((letrec ((_lp3737_
                                        (lambda (_rest-forms3739_
                                                 _rest-bindings3740_
                                                 _rest-closures3741_
                                                 _post-forms3742_
                                                 _post-bindings3743_
                                                 _post-closures3744_
                                                 _pre-forms3745_
                                                 _lifted?3746_)
                                          (let ((_rest-forms37473763_
                                                 _rest-forms3739_)
                                                (_rest-bindings37483765_
                                                 _rest-bindings3740_)
                                                (_rest-closures37493767_
                                                 _rest-closures3741_))
                                            (let ((_E37523771_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _rest-forms37473763_
                                                            _rest-bindings37483765_
                                                            _rest-closures37493767_))))
                                              (let ((_else37513775_
                                                     (lambda ()
                                                       (if _lifted?3746_
                                                           (_lp3737_
                                                            (reverse _post-forms3742_)
                                                            (reverse _post-bindings3743_)
                                                            (reverse _post-closures3744_)
                                                            '()
                                                            '()
                                                            '()
                                                            _pre-forms3745_
                                                            '#f)
                                                           (values (reverse _pre-forms3745_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _post-forms3742_)
                           (reverse _post-bindings3743_)
                           (reverse _post-closures3744_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_K37533828_
                                                       (lambda (_rest-forms3778_
                                                                _form3779_)
                                                         (let ((_K37543816_
                                                                (lambda (_rest-bindings3781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bindings3782_)
                          (let ((_K37553804_
                                 (lambda (_rest-closures3784_ _closure3785_)
                                   (if (let ((_$e3787_
                                              (_closure-reference?3103_
                                               _closure3785_
                                               _bindings3782_)))
                                         (if _$e3787_
                                             _$e3787_
                                             (let ((_$e3794_
                                                    (ormap (lambda (_g37893791_)
                                                             (_closure-reference?3103_
                                                              _closure3785_
                                                              _g37893791_))
                                                           _rest-bindings3781_)))
                                               (if _$e3794_
                                                   _$e3794_
                                                   (let ((_$e3801_
                                                          (ormap (lambda (_g37963798_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_closure-reference?3103_
                            _closure3785_
                            _g37963798_))
                         _post-bindings3743_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e3801_
                                                         _$e3801_
                                                         (if (_is-effect-bind?3104_
                                                              _form3779_)
                                                             (find _is-effect-bind?3104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _post-forms3742_)
                     '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_lp3737_
                                        _rest-forms3778_
                                        _rest-bindings3781_
                                        _rest-closures3784_
                                        (cons _form3779_ _post-forms3742_)
                                        (cons _bindings3782_
                                              _post-bindings3743_)
                                        (cons _closure3785_
                                              _post-closures3744_)
                                        _pre-forms3745_
                                        _lifted?3746_)
                                       (_lp3737_
                                        _rest-forms3778_
                                        _rest-bindings3781_
                                        _rest-closures3784_
                                        _post-forms3742_
                                        _post-bindings3743_
                                        _post-closures3744_
                                        (cons _form3779_ _pre-forms3745_)
                                        '#t)))))
                            (if (##pair? _rest-closures37493767_)
                                (let ((_hd37563807_
                                       (##car _rest-closures37493767_))
                                      (_tl37573809_
                                       (##cdr _rest-closures37493767_)))
                                  (let ((_closure3812_ _hd37563807_))
                                    (let ((_rest-closures3814_ _tl37573809_))
                                      (_K37553804_
                                       _rest-closures3814_
                                       _closure3812_))))
                                (_else37513775_))))))
                   (if (##pair? _rest-bindings37483765_)
                       (let ((_hd37583819_ (##car _rest-bindings37483765_))
                             (_tl37593821_ (##cdr _rest-bindings37483765_)))
                         (let ((_bindings3824_ _hd37583819_))
                           (let ((_rest-bindings3826_ _tl37593821_))
                             (_K37543816_
                              _rest-bindings3826_
                              _bindings3824_))))
                       (_else37513775_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _rest-forms37473763_)
                                                      (let ((_hd37603831_
                                                             (##car _rest-forms37473763_))
                                                            (_tl37613833_
                                                             (##cdr _rest-forms37473763_)))
                                                        (let ((_form3836_
                                                               _hd37603831_))
                                                          (let ((_rest-forms3838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl37613833_))
                    (_K37533828_ _rest-forms3838_ _form3836_))))
              (_else37513775_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _lp3737_)
                              _hd3733_
                              _bindings3734_
                              _closures3735_
                              '()
                              '()
                              '()
                              '()
                              '#f))))
                      (let ((_lift-post3101_
                             (lambda (_hd3626_ _bindings3627_ _closures3628_)
                               ((letrec ((_lp3630_
                                          (lambda (_rest-forms3632_
                                                   _rest-bindings3633_
                                                   _rest-closures3634_
                                                   _pre-forms3635_
                                                   _pre-bindings3636_
                                                   _pre-closures3637_
                                                   _post-forms3638_
                                                   _lifted?3639_)
                                            (let ((_rest-forms36403656_
                                                   _rest-forms3632_)
                                                  (_rest-bindings36413658_
                                                   _rest-bindings3633_)
                                                  (_rest-closures36423660_
                                                   _rest-closures3634_))
                                              (let ((_E36453664_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _rest-forms36403656_
                                                              _rest-bindings36413658_
                                                              _rest-closures36423660_))))
                                                (let ((_else36443668_
                                                       (lambda ()
                                                         (if _lifted?3639_
                                                             (_lp3630_
                                                              (reverse _pre-forms3635_)
                                                              (reverse _pre-bindings3636_)
                                                              (reverse _pre-closures3637_)
                                                              '()
                                                              '()
                                                              '()
                                                              _post-forms3638_
                                                              '#f)
                                                             (values _post-forms3638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-forms3635_
                             _pre-bindings3636_
                             _pre-closures3637_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_K36463721_
                                                         (lambda (_rest-forms3671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _form3672_)
                   (let ((_K36473709_
                          (lambda (_rest-bindings3674_ _bindings3675_)
                            (let ((_K36483697_
                                   (lambda (_rest-closures3677_ _closure3678_)
                                     (if (let ((_$e3680_
                                                (_closure-reference?3103_
                                                 _closure3678_
                                                 _bindings3675_)))
                                           (if _$e3680_
                                               _$e3680_
                                               (let ((_$e3687_
                                                      (ormap (lambda (_g36823684_)
                                                               (_closure-reference?3103_
                                                                _g36823684_
                                                                _bindings3675_))
                                                             _rest-closures3677_)))
                                                 (if _$e3687_
                                                     _$e3687_
                                                     (let ((_$e3694_
                                                            (ormap (lambda (_g36893691_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (_closure-reference?3103_
                              _g36893691_
                              _bindings3675_))
                           _pre-closures3637_)))
               (if _$e3694_
                   _$e3694_
                   (if (_is-effect-bind?3104_ _form3672_)
                       (find _is-effect-bind?3104_ _pre-forms3635_)
                       '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_lp3630_
                                          _rest-forms3671_
                                          _rest-bindings3674_
                                          _rest-closures3677_
                                          (cons _form3672_ _pre-forms3635_)
                                          (cons _bindings3675_
                                                _pre-bindings3636_)
                                          (cons _closure3678_
                                                _pre-closures3637_)
                                          _post-forms3638_
                                          _lifted?3639_)
                                         (_lp3630_
                                          _rest-forms3671_
                                          _rest-bindings3674_
                                          _rest-closures3677_
                                          _pre-forms3635_
                                          _pre-bindings3636_
                                          _pre-closures3637_
                                          (cons _form3672_ _post-forms3638_)
                                          '#t)))))
                              (if (##pair? _rest-closures36423660_)
                                  (let ((_hd36493700_
                                         (##car _rest-closures36423660_))
                                        (_tl36503702_
                                         (##cdr _rest-closures36423660_)))
                                    (let ((_closure3705_ _hd36493700_))
                                      (let ((_rest-closures3707_ _tl36503702_))
                                        (_K36483697_
                                         _rest-closures3707_
                                         _closure3705_))))
                                  (_else36443668_))))))
                     (if (##pair? _rest-bindings36413658_)
                         (let ((_hd36513712_ (##car _rest-bindings36413658_))
                               (_tl36523714_ (##cdr _rest-bindings36413658_)))
                           (let ((_bindings3717_ _hd36513712_))
                             (let ((_rest-bindings3719_ _tl36523714_))
                               (_K36473709_
                                _rest-bindings3719_
                                _bindings3717_))))
                         (_else36443668_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (##pair? _rest-forms36403656_)
                                                        (let ((_hd36533724_
                                                               (##car _rest-forms36403656_))
                                                              (_tl36543726_
                                                               (##cdr _rest-forms36403656_)))
                                                          (let ((_form3729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd36533724_))
                    (let ((_rest-forms3731_ _tl36543726_))
                      (_K36463721_ _rest-forms3731_ _form3729_))))
                (_else36443668_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp3630_)
                                (reverse _hd3626_)
                                (reverse _bindings3627_)
                                (reverse _closures3628_)
                                '()
                                '()
                                '()
                                '()
                                '#f))))
                        (let ((_linearize3097_
                               (lambda (_forms3954_)
                                 (let ((_closures3956_
                                        (_collect-closures3098_ _forms3954_)))
                                   (let ((_bindings3958_
                                          (_collect-bindings3099_
                                           _forms3954_)))
                                     (let ((_g5868_ (_lift-pre3100_
                                                     _forms3954_
                                                     _bindings3958_
                                                     _closures3956_)))
                                       (begin
                                         (let ((_g5869_ (values-count
                                                         _g5868_)))
                                           (if (not (fx= _g5869_ 4))
                                               (error "Context expects 4 values"
                                                      _g5869_)))
                                         (let ((_pre-bind3960_
                                                (values-ref _g5868_ 0))
                                               (_forms3961_
                                                (values-ref _g5868_ 1))
                                               (_bindings3962_
                                                (values-ref _g5868_ 2))
                                               (_closures3963_
                                                (values-ref _g5868_ 3)))
                                           (let ((_g5870_ (_lift-post3101_
                                                           _forms3961_
                                                           _bindings3962_
                                                           _closures3963_)))
                                             (begin
                                               (let ((_g5871_ (values-count
                                                               _g5870_)))
                                                 (if (not (fx= _g5871_ 4))
                                                     (error "Context expects 4 values"
                                                            _g5871_)))
                                               (let ((_post-bind3965_
                                                      (values-ref _g5870_ 0))
                                                     (_forms3966_
                                                      (values-ref _g5870_ 1))
                                                     (_bindings3967_
                                                      (values-ref _g5870_ 2))
                                                     (_closures3968_
                                                      (values-ref _g5870_ 3)))
                                                 (let ((_g5872_ (_lift-rec3102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _forms3966_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     (let ((_g5873_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g5872_)))
               (if (not (fx= _g5873_ 3))
                   (error "Context expects 3 values" _g5873_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_rec-pre3970_
                                                            (values-ref
                                                             _g5872_
                                                             0))
                                                           (_rec-bind3971_
                                                            (values-ref
                                                             _g5872_
                                                             1))
                                                           (_rec-init3972_
                                                            (values-ref
                                                             _g5872_
                                                             2)))
                                                       (let ()
                                                         (values _pre-bind3960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rec-pre3970_
                         _rec-bind3971_
                         _rec-init3972_
                         _post-bind3965_))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (letrec ((_generate-let*3107_
                                    (lambda (_hd3194_ _body3195_)
                                      (let ((_hd31963204_ _hd3194_))
                                        (let ((_E31993208_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _hd31963204_))))
                                          (let ((_else31983212_
                                                 (lambda () _body3195_)))
                                            (let ((_K32003253_
                                                   (lambda (_rest3215_
                                                            _bind3216_)
                                                     (let ((_bind32173226_
                                                            _bind3216_))
                                                       (let ((_E32193230_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind32173226_))))
                 (let ((_K32203236_
                        (lambda (_expr3233_ _hd3234_)
                          (if (gx#stx-ormap gx#identifier? _hd3234_)
                              (gxc#generate-runtime-let-values%
                               (cons '%#let-values
                                     (cons (cons _bind3216_ '())
                                           (cons (_generate-let*3107_
                                                  _rest3215_
                                                  _body3195_)
                                                 '())))
                               '#t)
                              (cons 'begin
                                    (cons (gxc#compile-e _expr3233_)
                                          (cons (_generate-let*3107_
                                                 _rest3215_
                                                 _body3195_)
                                                '())))))))
                   (if (##pair? _bind32173226_)
                       (let ((_hd32213239_ (##car _bind32173226_))
                             (_tl32223241_ (##cdr _bind32173226_)))
                         (let ((_hd3244_ _hd32213239_))
                           (if (##pair? _tl32223241_)
                               (let ((_hd32233246_ (##car _tl32223241_))
                                     (_tl32243248_ (##cdr _tl32223241_)))
                                 (let ((_expr3251_ _hd32233246_))
                                   (if (##null? _tl32243248_)
                                       (_K32203236_ _expr3251_ _hd3244_)
                                       (_E32193230_))))
                               (_E32193230_))))
                       (_E32193230_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _hd31963204_)
                                                  (let ((_hd32013256_
                                                         (##car _hd31963204_))
                                                        (_tl32023258_
                                                         (##cdr _hd31963204_)))
                                                    (let ((_bind3261_
                                                           _hd32013256_))
                                                      (let ((_rest3263_
                                                             _tl32023258_))
                                                        (_K32003253_
                                                         _rest3263_
                                                         _bind3261_))))
                                                  (_else31983212_)))))))))
                            (let ((_g31093126_
                                   (lambda (_g31103123_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g31103123_))))
                              (let ((_g31083191_
                                     (lambda (_g31103129_)
                                       (if (gx#stx-pair? _g31103129_)
                                           (let ((_e31133131_
                                                  (gx#stx-e _g31103129_)))
                                             (let ((_hd31143134_
                                                    (##car _e31133131_))
                                                   (_tl31153136_
                                                    (##cdr _e31133131_)))
                                               (if (gx#stx-pair? _tl31153136_)
                                                   (let ((_e31163139_
                                                          (gx#stx-e
                                                           _tl31153136_)))
                                                     (let ((_hd31173142_
                                                            (##car _e31163139_))
                                                           (_tl31183144_
                                                            (##cdr _e31163139_)))
                                                       (if (gx#stx-pair?
                                                            _tl31183144_)
                                                           (let ((_e31193147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl31183144_)))
                     (let ((_hd31203150_ (##car _e31193147_))
                           (_tl31213152_ (##cdr _e31193147_)))
                       (if (gx#stx-null? _tl31213152_)
                           ((lambda (_L3155_ _L3156_)
                              (let ((_g5866_ (_linearize3097_ _L3156_)))
                                (begin
                                  (let ((_g5867_ (values-count _g5866_)))
                                    (if (not (fx= _g5867_ 5))
                                        (error "Context expects 5 values"
                                               _g5867_)))
                                  (let ((_pre3172_ (values-ref _g5866_ 0))
                                        (_rec-pre3173_ (values-ref _g5866_ 1))
                                        (_rec-bind3174_ (values-ref _g5866_ 2))
                                        (_rec-init3175_ (values-ref _g5866_ 3))
                                        (_post3176_ (values-ref _g5866_ 4)))
                                    (let ((_body3178_ (gxc#compile-e _L3155_)))
                                      (let ((_body3180_
                                             (if (null? _post3176_)
                                                 _body3178_
                                                 (_generate-let*3107_
                                                  _post3176_
                                                  _body3178_))))
                                        (let ((_body3182_
                                               (if (null? _rec-init3175_)
                                                   _body3180_
                                                   (cons 'begin
                                                         (foldr cons
                                                                (cons _body3180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        _rec-init3175_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_body3184_
                                                 (if (null? _rec-bind3174_)
                                                     _body3182_
                                                     (cons 'letrec
                                                           (cons _rec-bind3174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body3182_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_body3186_
                                                   (if (null? _rec-pre3173_)
                                                       _body3184_
                                                       (cons 'let
                                                             (cons _rec-pre3173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body3184_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_body3188_
                                                     (if (null? _pre3172_)
                                                         _body3186_
                                                         (_generate-let*3107_
                                                          _pre3172_
                                                          _body3186_))))
                                                (let () _body3188_)))))))))))
                            _hd31203150_
                            _hd31173142_)
                           (_g31093126_ _g31103129_))))
                   (_g31093126_ _g31103129_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g31093126_ _g31103129_))))
                                           (_g31093126_ _g31103129_)))))
                                (_g31083191_ _stx3095_))))))))))))))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd2988_)
      ((letrec ((_lp2990_
                 (lambda (_rest2992_)
                   (let ((_g29963017_
                          (lambda (_g29973014_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g29973014_))))
                     (let ((_g29953024_
                            (lambda (_g29973020_) ((lambda () '#f)))))
                       (let ((_g29943031_
                              (lambda (_g29973027_)
                                (if (gx#stx-null? _g29973027_)
                                    ((lambda () '#t))
                                    (_g29953024_ _g29973027_)))))
                         (let ((_g29933092_
                                (lambda (_g29973034_)
                                  (if (gx#stx-pair? _g29973034_)
                                      (let ((_e30013036_
                                             (gx#stx-e _g29973034_)))
                                        (let ((_hd30023039_
                                               (##car _e30013036_))
                                              (_tl30033041_
                                               (##cdr _e30013036_)))
                                          (if (gx#stx-pair? _hd30023039_)
                                              (let ((_e30043044_
                                                     (gx#stx-e _hd30023039_)))
                                                (let ((_hd30053047_
                                                       (##car _e30043044_))
                                                      (_tl30063049_
                                                       (##cdr _e30043044_)))
                                                  (if (gx#stx-pair?
                                                       _hd30053047_)
                                                      (let ((_e30073052_
                                                             (gx#stx-e
                                                              _hd30053047_)))
                                                        (let ((_hd30083055_
                                                               (##car _e30073052_))
                                                              (_tl30093057_
                                                               (##cdr _e30073052_)))
                                                          (if (gx#stx-null?
                                                               _tl30093057_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl30063049_)
                          (let ((_e30103060_ (gx#stx-e _tl30063049_)))
                            (let ((_hd30113063_ (##car _e30103060_))
                                  (_tl30123065_ (##cdr _e30103060_)))
                              (if (gx#stx-null? _tl30123065_)
                                  ((lambda (_L3068_ _L3069_ _L3070_)
                                     (_lp2990_ _L3068_))
                                   _tl30033041_
                                   _hd30113063_
                                   _hd30083055_)
                                  (_g29943031_ _g29973034_))))
                          (_g29943031_ _g29973034_))
                      (_g29943031_ _g29973034_))))
              (_g29943031_ _g29973034_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g29943031_ _g29973034_))))
                                      (_g29943031_ _g29973034_)))))
                           (_g29933092_ _rest2992_))))))))
         _lp2990_)
       _hd2988_)))
  (define gxc#generate-runtime-simple-let
    (lambda (_form2912_ _hd2913_ _body2914_ _compiled-body?2915_)
      (let ((_generate12917_
             (lambda (_bind2919_)
               (let ((_g29212938_
                      (lambda (_g29222935_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g29222935_))))
                 (let ((_g29202985_
                        (lambda (_g29222941_)
                          (if (gx#stx-pair? _g29222941_)
                              (let ((_e29252943_ (gx#stx-e _g29222941_)))
                                (let ((_hd29262946_ (##car _e29252943_))
                                      (_tl29272948_ (##cdr _e29252943_)))
                                  (if (gx#stx-pair? _hd29262946_)
                                      (let ((_e29282951_
                                             (gx#stx-e _hd29262946_)))
                                        (let ((_hd29292954_
                                               (##car _e29282951_))
                                              (_tl29302956_
                                               (##cdr _e29282951_)))
                                          (if (gx#stx-null? _tl29302956_)
                                              (if (gx#stx-pair? _tl29272948_)
                                                  (let ((_e29312959_
                                                         (gx#stx-e
                                                          _tl29272948_)))
                                                    (let ((_hd29322962_
                                                           (##car _e29312959_))
                                                          (_tl29332964_
                                                           (##cdr _e29312959_)))
                                                      (if (gx#stx-null?
                                                           _tl29332964_)
                                                          ((lambda (_L2967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L2968_)
                     (cons (gxc#generate-runtime-binding-id* _L2968_)
                           (cons (gxc#compile-e _L2967_) '())))
                   _hd29322962_
                   _hd29292954_)
                  (_g29212938_ _g29222941_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g29212938_ _g29222941_))
                                              (_g29212938_ _g29222941_))))
                                      (_g29212938_ _g29222941_))))
                              (_g29212938_ _g29222941_)))))
                   (_g29202985_ _bind2919_))))))
        (cons _form2912_
              (cons (map _generate12917_ _hd2913_)
                    (cons (if _compiled-body?2915_
                              _body2914_
                              (gxc#compile-e _body2914_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx2823_)
      (letrec ((_generate12825_
                (lambda (_datum2877_)
                  (if (let ((_$e2879_ (null? _datum2877_)))
                        (if _$e2879_
                            _$e2879_
                            (let ((_$e2882_ (symbol? _datum2877_)))
                              (if _$e2882_
                                  _$e2882_
                                  (gx#self-quoting? _datum2877_)))))
                      _datum2877_
                      (if (uninterned-symbol? _datum2877_)
                          (gxc#generate-runtime-gensym-reference _datum2877_)
                          (if (pair? _datum2877_)
                              (cons (_generate12825_ (car _datum2877_))
                                    (_generate12825_ (cdr _datum2877_)))
                              (if (box? _datum2877_)
                                  (box (_generate12825_ (unbox _datum2877_)))
                                  (if (vector? _datum2877_)
                                      (vector-map _generate12825_ _datum2877_)
                                      (if (let ((_$e2885_
                                                 (s8vector? _datum2877_)))
                                            (if _$e2885_
                                                _$e2885_
                                                (let ((_$e2888_
                                                       (u8vector?
                                                        _datum2877_)))
                                                  (if _$e2888_
                                                      _$e2888_
                                                      (let ((_$e2891_
                                                             (s16vector?
                                                              _datum2877_)))
                                                        (if _$e2891_
                                                            _$e2891_
                                                            (let ((_$e2894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum2877_)))
                      (if _$e2894_
                          _$e2894_
                          (let ((_$e2897_ (s32vector? _datum2877_)))
                            (if _$e2897_
                                _$e2897_
                                (let ((_$e2900_ (u32vector? _datum2877_)))
                                  (if _$e2900_
                                      _$e2900_
                                      (let ((_$e2903_
                                             (s64vector? _datum2877_)))
                                        (if _$e2903_
                                            _$e2903_
                                            (let ((_$e2906_
                                                   (u64vector? _datum2877_)))
                                              (if _$e2906_
                                                  _$e2906_
                                                  (let ((_$e2909_
                                                         (f32vector?
                                                          _datum2877_)))
                                                    (if _$e2909_
                                                        _$e2909_
                                                        (f64vector?
                                                         _datum2877_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum2877_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx2823_))))))))))
        (let ((_g28272840_
               (lambda (_g28282837_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g28282837_))))
          (let ((_g28262874_
                 (lambda (_g28282843_)
                   (if (gx#stx-pair? _g28282843_)
                       (let ((_e28302845_ (gx#stx-e _g28282843_)))
                         (let ((_hd28312848_ (##car _e28302845_))
                               (_tl28322850_ (##cdr _e28302845_)))
                           (if (gx#stx-pair? _tl28322850_)
                               (let ((_e28332853_ (gx#stx-e _tl28322850_)))
                                 (let ((_hd28342856_ (##car _e28332853_))
                                       (_tl28352858_ (##cdr _e28332853_)))
                                   (if (gx#stx-null? _tl28352858_)
                                       ((lambda (_L2861_)
                                          (cons 'quote
                                                (cons (_generate12825_
                                                       (gx#stx-e _L2861_))
                                                      '())))
                                        _hd28342856_)
                                       (_g28272840_ _g28282843_))))
                               (_g28272840_ _g28282843_))))
                       (_g28272840_ _g28282843_)))))
            (_g28262874_ _stx2823_))))))
  (define gxc#generate-runtime-call%
    (lambda (_stx2785_)
      (let ((_g27872797_
             (lambda (_g27882794_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g27882794_))))
        (let ((_g27862820_
               (lambda (_g27882800_)
                 (if (gx#stx-pair? _g27882800_)
                     (let ((_e27902802_ (gx#stx-e _g27882800_)))
                       (let ((_hd27912805_ (##car _e27902802_))
                             (_tl27922807_ (##cdr _e27902802_)))
                         ((lambda (_L2810_) (map gxc#compile-e _L2810_))
                          _tl27922807_)))
                     (_g27872797_ _g27882800_)))))
          (_g27862820_ _stx2785_)))))
  (define gxc#generate-runtime-if%
    (lambda (_stx2747_)
      (let ((_g27492759_
             (lambda (_g27502756_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g27502756_))))
        (let ((_g27482782_
               (lambda (_g27502762_)
                 (if (gx#stx-pair? _g27502762_)
                     (let ((_e27522764_ (gx#stx-e _g27502762_)))
                       (let ((_hd27532767_ (##car _e27522764_))
                             (_tl27542769_ (##cdr _e27522764_)))
                         ((lambda (_L2772_)
                            (cons 'if (map gxc#compile-e _L2772_)))
                          _tl27542769_)))
                     (_g27492759_ _g27502762_)))))
          (_g27482782_ _stx2747_)))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx2696_)
      (let ((_g26982711_
             (lambda (_g26992708_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g26992708_))))
        (let ((_g26972744_
               (lambda (_g26992714_)
                 (if (gx#stx-pair? _g26992714_)
                     (let ((_e27012716_ (gx#stx-e _g26992714_)))
                       (let ((_hd27022719_ (##car _e27012716_))
                             (_tl27032721_ (##cdr _e27012716_)))
                         (if (gx#stx-pair? _tl27032721_)
                             (let ((_e27042724_ (gx#stx-e _tl27032721_)))
                               (let ((_hd27052727_ (##car _e27042724_))
                                     (_tl27062729_ (##cdr _e27042724_)))
                                 (if (gx#stx-null? _tl27062729_)
                                     ((lambda (_L2732_)
                                        (gxc#generate-runtime-binding-id
                                         _L2732_))
                                      _hd27052727_)
                                     (_g26982711_ _g26992714_))))
                             (_g26982711_ _g26992714_))))
                     (_g26982711_ _g26992714_)))))
          (_g26972744_ _stx2696_)))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx2629_)
      (let ((_g26312648_
             (lambda (_g26322645_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g26322645_))))
        (let ((_g26302693_
               (lambda (_g26322651_)
                 (if (gx#stx-pair? _g26322651_)
                     (let ((_e26352653_ (gx#stx-e _g26322651_)))
                       (let ((_hd26362656_ (##car _e26352653_))
                             (_tl26372658_ (##cdr _e26352653_)))
                         (if (gx#stx-pair? _tl26372658_)
                             (let ((_e26382661_ (gx#stx-e _tl26372658_)))
                               (let ((_hd26392664_ (##car _e26382661_))
                                     (_tl26402666_ (##cdr _e26382661_)))
                                 (if (gx#stx-pair? _tl26402666_)
                                     (let ((_e26412669_
                                            (gx#stx-e _tl26402666_)))
                                       (let ((_hd26422672_ (##car _e26412669_))
                                             (_tl26432674_
                                              (##cdr _e26412669_)))
                                         (if (gx#stx-null? _tl26432674_)
                                             ((lambda (_L2677_ _L2678_)
                                                (cons 'set!
                                                      (cons (gxc#generate-runtime-binding-id
                                                             _L2678_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L2677_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd26422672_
                                              _hd26392664_)
                                             (_g26312648_ _g26322651_))))
                                     (_g26312648_ _g26322651_))))
                             (_g26312648_ _g26322651_))))
                     (_g26312648_ _g26322651_)))))
          (_g26302693_ _stx2629_)))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx2538_)
      (let ((_g25402550_
             (lambda (_g25412547_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g25412547_))))
        (let ((_g25392626_
               (lambda (_g25412553_)
                 (if (gx#stx-pair? _g25412553_)
                     (let ((_e25432555_ (gx#stx-e _g25412553_)))
                       (let ((_hd25442558_ (##car _e25432555_))
                             (_tl25452560_ (##cdr _e25432555_)))
                         ((lambda (_L2563_)
                            (let ((_ht2573_ (make-hash-table-eq)))
                              ((letrec ((_lp2575_
                                         (lambda (_rest2577_ _loads2578_)
                                           (let ((_K2580_ (lambda (_ctx2619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest2620_)
                    (let ((_id2622_ (gx#expander-context-id _ctx2619_)))
                      (if (hash-get _ht2573_ _id2622_)
                          (_lp2575_ _rest2620_ _loads2578_)
                          (let ((_rt2624_
                                 (string-append
                                  (symbol->string _id2622_)
                                  '"__rt")))
                            (begin
                              (hash-put! _ht2573_ _id2622_ _rt2624_)
                              (_lp2575_
                               _rest2620_
                               (cons _rt2624_ _loads2578_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_rest25812589_ _rest2577_))
                                               (let ((_E25842593_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest25812589_))))
                                                 (let ((_else25832601_
                                                        (lambda ()
                                                          (cons 'begin
                                                                (map (lambda (_g25962598_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (list 'load-module _g25962598_))
                             (reverse _loads2578_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K25852607_
                                                          (lambda (_rest2604_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in2605_)
                    (if (gx#module-context? _in2605_)
                        (_K2580_ _in2605_ _rest2604_)
                        (if (gx#module-import? _in2605_)
                            (if (fxpositive? (gx#module-import-phi _in2605_))
                                (_lp2575_ _rest2604_ _loads2578_)
                                (_K2580_ (gx#module-export-context
                                          (gx#module-import-source _in2605_))
                                         _rest2604_))
                            (if (gx#import-set? _in2605_)
                                (if (fxpositive? (gx#import-set-phi _in2605_))
                                    (_lp2575_ _rest2604_ _loads2578_)
                                    (_K2580_ (gx#import-set-source _in2605_)
                                             _rest2604_))
                                (gxc#raise-compile-error
                                 '"Unexpected import"
                                 _stx2538_
                                 _in2605_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest25812589_)
                                                         (let ((_hd25862610_
                                                                (##car _rest25812589_))
                                                               (_tl25872612_
                                                                (##cdr _rest25812589_)))
                                                           (let ((_in2615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd25862610_))
                     (let ((_rest2617_ _tl25872612_))
                       (_K25852607_ _rest2617_ _in2615_))))
                 (_else25832601_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp2575_)
                               _L2563_
                               '())))
                          _tl25452560_)))
                     (_g25402550_ _g25412553_)))))
          (_g25392626_ _stx2538_)))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx2479_)
      (let ((_generate-quote2481_
             (lambda (_q2536_)
               (if (gx#identifier? _q2536_)
                   (gxc#generate-runtime-identifier _q2536_)
                   (gxc#raise-compile-error
                    '"Cannot quote non-identifier syntax"
                    _stx2479_
                    _q2536_)))))
        (let ((_g24832496_
               (lambda (_g24842493_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g24842493_))))
          (let ((_g24822533_
                 (lambda (_g24842499_)
                   (if (gx#stx-pair? _g24842499_)
                       (let ((_e24862501_ (gx#stx-e _g24842499_)))
                         (let ((_hd24872504_ (##car _e24862501_))
                               (_tl24882506_ (##cdr _e24862501_)))
                           (if (gx#stx-pair? _tl24882506_)
                               (let ((_e24892509_ (gx#stx-e _tl24882506_)))
                                 (let ((_hd24902512_ (##car _e24892509_))
                                       (_tl24912514_ (##cdr _e24892509_)))
                                   (if (gx#stx-null? _tl24912514_)
                                       ((lambda (_L2517_)
                                          (let ((_gid2530_
                                                 (gxc#generate-runtime-temporary
                                                  '#t))
                                                (_quote-e2531_
                                                 (_generate-quote2481_
                                                  _L2517_)))
                                            (begin
                                              (set-box!
                                               (gxc#current-compile-lift)
                                               (cons (cons 'define
                                                           (cons _gid2530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'gx#core-quote-syntax
                                     (cons (cons 'quote
                                                 (cons _quote-e2531_ '()))
                                           '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (unbox (gxc#current-compile-lift))))
                                              _gid2530_)))
                                        _hd24902512_)
                                       (_g24832496_ _g24842499_))))
                               (_g24832496_ _g24842499_))))
                       (_g24832496_ _g24842499_)))))
            (_g24822533_ _stx2479_))))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx2412_)
      (let ((_g24142431_
             (lambda (_g24152428_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g24152428_))))
        (let ((_g24132476_
               (lambda (_g24152434_)
                 (if (gx#stx-pair? _g24152434_)
                     (let ((_e24182436_ (gx#stx-e _g24152434_)))
                       (let ((_hd24192439_ (##car _e24182436_))
                             (_tl24202441_ (##cdr _e24182436_)))
                         (if (gx#stx-pair? _tl24202441_)
                             (let ((_e24212444_ (gx#stx-e _tl24202441_)))
                               (let ((_hd24222447_ (##car _e24212444_))
                                     (_tl24232449_ (##cdr _e24212444_)))
                                 (if (gx#stx-pair? _tl24232449_)
                                     (let ((_e24242452_
                                            (gx#stx-e _tl24232449_)))
                                       (let ((_hd24252455_ (##car _e24242452_))
                                             (_tl24262457_
                                              (##cdr _e24242452_)))
                                         (if (gx#stx-null? _tl24262457_)
                                             ((lambda (_L2460_ _L2461_)
                                                (cons 'define
                                                      (cons (gx#stx-e _L2461_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L2460_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd24252455_
                                              _hd24222447_)
                                             (_g24142431_ _g24152434_))))
                                     (_g24142431_ _g24152434_))))
                             (_g24142431_ _g24152434_))))
                     (_g24142431_ _g24152434_)))))
          (_g24132476_ _stx2412_)))))
  (define gxc#generate-meta-begin%
    (lambda (_stx2361_ _state2362_)
      (let ((_g23642374_
             (lambda (_g23652371_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g23652371_))))
        (let ((_g23632409_
               (lambda (_g23652377_)
                 (if (gx#stx-pair? _g23652377_)
                     (let ((_e23672379_ (gx#stx-e _g23652377_)))
                       (let ((_hd23682382_ (##car _e23672379_))
                             (_tl23692384_ (##cdr _e23672379_)))
                         ((lambda (_L2387_)
                            (let ((_c-body2401_
                                   (map (lambda (_g23962398_)
                                          (gxc#compile-e
                                           _g23962398_
                                           _state2362_))
                                        _L2387_)))
                              (let ((_c-body2406_
                                     (filter (lambda (_$obj2403_)
                                               (not (void? _$obj2403_)))
                                             _c-body2401_)))
                                (let () (cons '%#begin _c-body2406_)))))
                          _tl23692384_)))
                     (_g23642374_ _g23652377_)))))
          (_g23632409_ _stx2361_)))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx2269_ _state2270_)
      (let ((_g22722282_
             (lambda (_g22732279_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g22732279_))))
        (let ((_g22712358_
               (lambda (_g22732285_)
                 (if (gx#stx-pair? _g22732285_)
                     (let ((_e22752287_ (gx#stx-e _g22732285_)))
                       (let ((_hd22762290_ (##car _e22752287_))
                             (_tl22772292_ (##cdr _e22752287_)))
                         ((lambda (_L2295_)
                            (let ((_phi2305_ (fx1+ (gx#current-expander-phi))))
                              (let ((_block2307_
                                     (gxc#meta-state-begin-phi!
                                      _state2270_
                                      _phi2305_)))
                                (let ((_compiled2310_
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#apply-generate-meta-phi
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  '%#begin)
                                                 _L2295_)
                                           _state2270_))
                                        gx#current-expander-phi
                                        _phi2305_)))
                                  (let ()
                                    (let ((_g23132323_
                                           (lambda (_g23142320_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g23142320_))))
                                      (let ((_g23122355_
                                             (lambda (_g23142326_)
                                               (if (gx#stx-pair? _g23142326_)
                                                   (let ((_e23162328_
                                                          (gx#stx-e
                                                           _g23142326_)))
                                                     (let ((_hd23172331_
                                                            (##car _e23162328_))
                                                           (_tl23182333_
                                                            (##cdr _e23162328_)))
                                                       (if (gx#identifier?
                                                            _hd23172331_)
                                                           (if (gx#stx-eq?
                                                                '%#begin
                                                                _hd23172331_)
                                                               ((lambda (_L2336_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_c-body2353_
                                 (filter (lambda (_$obj2350_)
                                           (not (void? _$obj2350_)))
                                         _L2336_)))
                            (if _block2307_
                                (cons '%#begin-syntax
                                      (cons (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons _block2307_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _c-body2353_))
                                (if (null? _c-body2353_)
                                    '#!void
                                    (cons '%#begin-syntax _c-body2353_)))))
                        _tl23182333_)
                       (_g23132323_ _g23142326_))
                   (_g23132323_ _g23142326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g23132323_
                                                    _g23142326_)))))
                                        (_g23122355_ _compiled2310_))))))))
                          _tl22772292_)))
                     (_g22722282_ _g22732285_)))))
          (_g22712358_ _stx2269_)))))
  (define gxc#generate-meta-module%
    (lambda (_stx2200_ _state2201_)
      (begin
        (gxc#meta-state-end-phi! _state2201_)
        (let ((_g22032217_
               (lambda (_g22042214_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g22042214_))))
          (let ((_g22022266_
                 (lambda (_g22042220_)
                   (if (gx#stx-pair? _g22042220_)
                       (let ((_e22072222_ (gx#stx-e _g22042220_)))
                         (let ((_hd22082225_ (##car _e22072222_))
                               (_tl22092227_ (##cdr _e22072222_)))
                           (if (gx#stx-pair? _tl22092227_)
                               (let ((_e22102230_ (gx#stx-e _tl22092227_)))
                                 (let ((_hd22112233_ (##car _e22102230_))
                                       (_tl22122235_ (##cdr _e22102230_)))
                                   ((lambda (_L2238_ _L2239_)
                                      (let ((_key2252_
                                             (gx#core-identifier-key _L2239_)))
                                        (begin
                                          (if (interned-symbol? _key2252_)
                                              '#!void
                                              (gxc#raise-compile-error
                                               '"Cannot compile module with uninterned id"
                                               _stx2200_
                                               _L2239_
                                               _key2252_))
                                          (let ((_ctx2254_
                                                 (gx#syntax-local-e _L2239_)))
                                            (let ((_code2257_
                                                   (call-with-parameters
                                                    (lambda ()
                                                      (gxc#compile-e
                                                       (gx#module-context-code
                                                        _ctx2254_)
                                                       _state2201_))
                                                    gx#current-expander-context
                                                    _ctx2254_)))
                                              (let ((_rt2259_
                                                     (hash-get
                                                      (gxc#current-compile-runtime-sections)
                                                      _ctx2254_)))
                                                (let ((_loader2261_
                                                       (if _rt2259_
                                                           (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons '%#ref (cons '_gx#load-module '()))
                                     (cons (cons '%#quote (cons _rt2259_ '()))
                                           '())))
                         '())
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_modid2263_
                                                         (gx#stx-e _L2239_)))
                                                    (let ()
                                                      (begin
                                                        (gxc#meta-state-end-phi!
                                                         _state2201_)
                                                        (cons '%#module
                                                              (cons _modid2263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _code2257_ _loader2261_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl22122235_
                                    _hd22112233_)))
                               (_g22032217_ _g22042220_))))
                       (_g22032217_ _g22042220_)))))
            (_g22022266_ _stx2200_))))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx2190_ _context-chain2191_)
      ((letrec ((_lp2193_
                 (lambda (_ctx2195_ _path2196_)
                   (let ((_super2198_ (gx#phi-context-super _ctx2195_)))
                     (if (memq _super2198_ _context-chain2191_)
                         (cons* '#f
                                (car (gx#module-context-path _ctx2195_))
                                _path2196_)
                         (if (gx#module-context? _super2198_)
                             (_lp2193_
                              _super2198_
                              (cons (car (gx#module-context-path _ctx2195_))
                                    _path2196_))
                             (cons (make-symbol
                                    '":"
                                    (gx#expander-context-id _ctx2195_))
                                   _path2196_)))))))
         _lp2193_)
       _ctx2190_
       '())))
  (define gxc#current-context-chain
    (lambda ()
      ((letrec ((_lp2185_
                 (lambda (_ctx2187_ _r2188_)
                   (if (gx#module-context? _ctx2187_)
                       (_lp2185_
                        (gx#phi-context-super _ctx2187_)
                        (cons _ctx2187_ _r2188_))
                       _r2188_))))
         _lp2185_)
       (gx#current-expander-context)
       '())))
  (define gxc#generate-meta-import%
    (lambda (_stx1954_ _state1955_)
      (let ((_context-chain1957_ (gxc#current-context-chain)))
        (let ((_make-import-spec1958_
               (lambda (_in2121_)
                 (let ((_in21222134_ _in2121_))
                   (let ((_E21242138_
                          (lambda ()
                            (error '"No clause matching" _in21222134_))))
                     (let ((_K21252148_
                            (lambda (_phi2141_
                                     _name2142_
                                     _src-name2143_
                                     _src-phi2144_
                                     _src-key2145_
                                     _src-ctx2146_)
                              (cons _phi2141_
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name2142_)
                                          (cons _src-phi2144_
                                                (cons (gxc#generate-runtime-identifier-key
                                                       _src-name2143_)
                                                      '())))))))
                       (if (direct-struct-instance?
                            gx#module-import::t
                            _in21222134_)
                           (let ((_e21262151_ (##vector-ref _in21222134_ '1)))
                             (if (direct-struct-instance?
                                  gx#module-export::t
                                  _e21262151_)
                                 (let ((_e21292154_
                                        (##vector-ref _e21262151_ '1)))
                                   (let ((_src-ctx2157_ _e21292154_))
                                     (let ((_e21302159_
                                            (##vector-ref _e21262151_ '2)))
                                       (let ((_src-key2162_ _e21302159_))
                                         (let ((_e21312164_
                                                (##vector-ref _e21262151_ '3)))
                                           (let ((_src-phi2167_ _e21312164_))
                                             (let ((_e21322169_
                                                    (##vector-ref
                                                     _e21262151_
                                                     '4)))
                                               (let ((_src-name2172_
                                                      _e21322169_))
                                                 (let ((_e21272174_
                                                        (##vector-ref
                                                         _in21222134_
                                                         '2)))
                                                   (let ((_name2177_
                                                          _e21272174_))
                                                     (let ((_e21282179_
                                                            (##vector-ref
                                                             _in21222134_
                                                             '3)))
                                                       (let ((_phi2182_
                                                              _e21282179_))
                                                         (_K21252148_
                                                          _phi2182_
                                                          _name2177_
                                                          _src-name2172_
                                                          _src-phi2167_
                                                          _src-key2162_
                                                          _src-ctx2157_)))))))))))))
                                 (_E21242138_)))
                           (_E21242138_))))))))
          (let ((_make-import-path1959_
                 (lambda (_ctx2119_)
                   (gxc#generate-meta-import-path
                    _ctx2119_
                    _context-chain1957_))))
            (let ((_make-import-spec-in1960_
                   (lambda (_ctx2116_ _in2117_)
                     (cons 'spec:
                           (cons (_make-import-path1959_ _ctx2116_)
                                 (reverse _in2117_))))))
              (begin
                (gxc#meta-state-end-phi! _state1955_)
                (let ((_g19621972_
                       (lambda (_g19631969_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g19631969_))))
                  (let ((_g19612113_
                         (lambda (_g19631975_)
                           (if (gx#stx-pair? _g19631975_)
                               (let ((_e19651977_ (gx#stx-e _g19631975_)))
                                 (let ((_hd19661980_ (##car _e19651977_))
                                       (_tl19671982_ (##cdr _e19651977_)))
                                   ((lambda (_L1985_)
                                      ((letrec ((_lp1996_
                                                 (lambda (_rest1998_
                                                          _current-src1999_
                                                          _current-in2000_
                                                          _r2001_)
                                                   (let ((_rest20022010_
                                                          _rest1998_))
                                                     (let ((_E20052014_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _rest20022010_))))
               (let ((_else20042020_
                      (lambda ()
                        (let ((_r2018_ (if _current-src1999_
                                           (cons (_make-import-spec-in1960_
                                                  _current-src1999_
                                                  _current-in2000_)
                                                 _r2001_)
                                           _r2001_)))
                          (cons '%#import (reverse _r2018_))))))
                 (let ((_K20062101_
                        (lambda (_rest2023_ _in2024_)
                          (if (gx#module-import? _in2024_)
                              (let ((_in20252032_ _in2024_))
                                (let ((_E20272036_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _in20252032_))))
                                  (let ((_K20282041_
                                         (lambda (_src-ctx2039_)
                                           (if (eq? _current-src1999_
                                                    _src-ctx2039_)
                                               (_lp1996_
                                                _rest2023_
                                                _current-src1999_
                                                (cons (_make-import-spec1958_
                                                       _in2024_)
                                                      _current-in2000_)
                                                _r2001_)
                                               (if _current-src1999_
                                                   (_lp1996_
                                                    _rest2023_
                                                    _src-ctx2039_
                                                    (cons (_make-import-spec1958_
                                                           _in2024_)
                                                          '())
                                                    (cons (_make-import-spec-in1960_
                                                           _current-src1999_
                                                           _current-in2000_)
                                                          _r2001_))
                                                   (_lp1996_
                                                    _rest2023_
                                                    _src-ctx2039_
                                                    (cons (_make-import-spec1958_
                                                           _in2024_)
                                                          '())
                                                    _r2001_))))))
                                    (if (direct-struct-instance?
                                         gx#module-import::t
                                         _in20252032_)
                                        (let ((_e20292044_
                                               (##vector-ref _in20252032_ '1)))
                                          (if (direct-struct-instance?
                                               gx#module-export::t
                                               _e20292044_)
                                              (let ((_e20302047_
                                                     (##vector-ref
                                                      _e20292044_
                                                      '1)))
                                                (let ((_src-ctx2050_
                                                       _e20302047_))
                                                  (_K20282041_ _src-ctx2050_)))
                                              (_E20272036_)))
                                        (_E20272036_)))))
                              (if (gx#import-set? _in2024_)
                                  (let ((_phi2052_
                                         (gx#import-set-phi _in2024_)))
                                    (let ((_src2054_
                                           (gx#import-set-source _in2024_)))
                                      (let ((_src-in2094_
                                             (let ((_g20552064_
                                                    (_make-import-path1959_
                                                     _src2054_)))
                                               (let ((_E20582068_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _g20552064_))))
                                                 (let ((_try-match20572079_
                                                        (lambda ()
                                                          (let ((_K20592074_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_path2072_) (cons 'in: _path2072_))))
                    (let ((_path2077_ _g20552064_))
                      (_K20592074_ _path2077_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K20602084_
                                                          (lambda (_path2082_)
                                                            _path2082_)))
                                                     (if (##pair? _g20552064_)
                                                         (let ((_hd20612087_
                                                                (##car _g20552064_))
                                                               (_tl20622089_
                                                                (##cdr _g20552064_)))
                                                           (let ((_path2092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd20612087_))
                     (if (##null? _tl20622089_)
                         (_K20602084_ _path2092_)
                         (_try-match20572079_))))
                 (_try-match20572079_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_r2096_ (if _current-src1999_
                                                           (cons (_make-import-spec-in1960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _current-src1999_
                          _current-in2000_)
                         _r2001_)
                   _r2001_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (_lp1996_
                                             _rest2023_
                                             '#f
                                             '()
                                             (cons (if (fxzero? _phi2052_)
                                                       _src-in2094_
                                                       (cons 'phi:
                                                             (cons _phi2052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _src-in2094_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r2096_)))))))
                                  (if (gx#module-context? _in2024_)
                                      (let ((_r2099_ (if _current-src1999_
                                                         (cons (_make-import-spec-in1960_
                                                                _current-src1999_
                                                                _current-in2000_)
                                                               _r2001_)
                                                         _r2001_)))
                                        (_lp1996_
                                         _rest2023_
                                         '#f
                                         '()
                                         (cons (cons 'runtime:
                                                     (_make-import-path1959_
                                                      _in2024_))
                                               _r2099_)))
                                      '#!void))))))
                   (if (##pair? _rest20022010_)
                       (let ((_hd20072104_ (##car _rest20022010_))
                             (_tl20082106_ (##cdr _rest20022010_)))
                         (let ((_in2109_ _hd20072104_))
                           (let ((_rest2111_ _tl20082106_))
                             (_K20062101_ _rest2111_ _in2109_))))
                       (_else20042020_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _lp1996_)
                                       _L1985_
                                       '#f
                                       '()
                                       '()))
                                    _tl19671982_)))
                               (_g19621972_ _g19631975_)))))
                    (_g19612113_ _stx1954_))))))))))
  (define gxc#generate-meta-export%
    (lambda (_stx1764_ _state1765_)
      (let ((_context-chain1767_ (gxc#current-context-chain)))
        (let ((_make-import-path1768_
               (lambda (_ctx1952_)
                 (gxc#generate-meta-import-path
                  _ctx1952_
                  _context-chain1767_))))
          (let ((_g17701780_
                 (lambda (_g17711777_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g17711777_))))
            (let ((_g17691949_
                   (lambda (_g17711783_)
                     (if (gx#stx-pair? _g17711783_)
                         (let ((_e17731785_ (gx#stx-e _g17711783_)))
                           (let ((_hd17741788_ (##car _e17731785_))
                                 (_tl17751790_ (##cdr _e17731785_)))
                             ((lambda (_L1793_)
                                ((letrec ((_lp1804_
                                           (lambda (_rest1806_ _r1807_)
                                             (let ((_rest18081816_ _rest1806_))
                                               (let ((_E18111820_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest18081816_))))
                                                 (let ((_else18101824_
                                                        (lambda ()
                                                          (cons '%#export
                                                                (reverse _r1807_)))))
                                                   (let ((_K18121937_
                                                          (lambda (_rest1827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out1828_)
                    (let ((_out18291842_ _out1828_))
                      (let ((_E18321846_
                             (lambda ()
                               (error '"No clause matching" _out18291842_))))
                        (let ((_try-match18311909_
                               (lambda ()
                                 (let ((_K18331896_
                                        (lambda (_phi1850_ _src1851_)
                                          (let ((_out1891_
                                                 (if _src1851_
                                                     (cons 'import:
                                                           (cons (let ((_g18521861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (_make-import-path1768_ _src1851_)))
                           (let ((_E18551865_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g18521861_))))
                             (let ((_try-match18541876_
                                    (lambda ()
                                      (let ((_K18561871_
                                             (lambda (_path1869_)
                                               (cons 'in: _path1869_))))
                                        (let ((_path1874_ _g18521861_))
                                          (_K18561871_ _path1874_))))))
                               (let ((_K18571881_
                                      (lambda (_path1879_) _path1879_)))
                                 (if (##pair? _g18521861_)
                                     (let ((_hd18581884_ (##car _g18521861_))
                                           (_tl18591886_ (##cdr _g18521861_)))
                                       (let ((_path1889_ _hd18581884_))
                                         (if (##null? _tl18591886_)
                                             (_K18571881_ _path1889_)
                                             (_try-match18541876_))))
                                     (_try-match18541876_))))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t)))
                                            (let ((_out1893_
                                                   (if (fxzero? _phi1850_)
                                                       _out1891_
                                                       (cons 'phi:
                                                             (cons _phi1850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _out1891_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (_lp1804_
                                                 _rest1827_
                                                 (cons _out1893_
                                                       _r1807_))))))))
                                   (if (direct-struct-instance?
                                        gx#export-set::t
                                        _out18291842_)
                                       (let ((_e18341899_
                                              (##vector-ref _out18291842_ '1)))
                                         (let ((_src1902_ _e18341899_))
                                           (let ((_e18351904_
                                                  (##vector-ref
                                                   _out18291842_
                                                   '2)))
                                             (let ((_phi1907_ _e18351904_))
                                               (_K18331896_
                                                _phi1907_
                                                _src1902_)))))
                                       (_E18321846_))))))
                          (let ((_K18361916_
                                 (lambda (_name1912_ _phi1913_ _key1914_)
                                   (_lp1804_
                                    _rest1827_
                                    (cons (cons 'spec:
                                                (cons _phi1913_
                                                      (cons (gxc#generate-runtime-identifier-key
                                                             _key1914_)
                                                            (cons (gxc#generate-runtime-identifier-key
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _name1912_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _r1807_)))))
                            (if (direct-struct-instance?
                                 gx#module-export::t
                                 _out18291842_)
                                (let ((_e18371919_
                                       (##vector-ref _out18291842_ '1)))
                                  (let ((_e18381922_
                                         (##vector-ref _out18291842_ '2)))
                                    (let ((_key1925_ _e18381922_))
                                      (let ((_e18391927_
                                             (##vector-ref _out18291842_ '3)))
                                        (let ((_phi1930_ _e18391927_))
                                          (let ((_e18401932_
                                                 (##vector-ref
                                                  _out18291842_
                                                  '4)))
                                            (let ((_name1935_ _e18401932_))
                                              (_K18361916_
                                               _name1935_
                                               _phi1930_
                                               _key1925_))))))))
                                (_try-match18311909_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest18081816_)
                                                         (let ((_hd18131940_
                                                                (##car _rest18081816_))
                                                               (_tl18141942_
                                                                (##cdr _rest18081816_)))
                                                           (let ((_out1945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd18131940_))
                     (let ((_rest1947_ _tl18141942_))
                       (_K18121937_ _rest1947_ _out1945_))))
                 (_else18101824_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp1804_)
                                 _L1793_
                                 '()))
                              _tl17751790_)))
                         (_g17701780_ _g17711783_)))))
              (_g17691949_ _stx1764_)))))))
  (define gxc#generate-meta-provide%
    (lambda (_stx1725_ _state1726_)
      (begin
        (gxc#meta-state-end-phi! _state1726_)
        (let ((_g17281738_
               (lambda (_g17291735_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g17291735_))))
          (let ((_g17271761_
                 (lambda (_g17291741_)
                   (if (gx#stx-pair? _g17291741_)
                       (let ((_e17311743_ (gx#stx-e _g17291741_)))
                         (let ((_hd17321746_ (##car _e17311743_))
                               (_tl17331748_ (##cdr _e17311743_)))
                           ((lambda (_L1751_)
                              (cons '%#provide
                                    (map gxc#generate-runtime-identifier
                                         _L1751_)))
                            _tl17331748_)))
                       (_g17281738_ _g17291741_)))))
            (_g17271761_ _stx1725_))))))
  (define gxc#generate-meta-extern%
    (lambda (_stx1596_ _state1597_)
      (let ((_generate11599_
             (lambda (_id1720_ _eid1721_)
               (let ((_eid1723_ (gx#stx-e _eid1721_)))
                 (begin
                   (if (interned-symbol? _eid1723_)
                       '#!void
                       (gxc#raise-compile-error
                        '"Cannot compile extern reference"
                        _stx1596_
                        _eid1723_))
                   (cons (gxc#generate-runtime-identifier _id1720_)
                         (cons _eid1723_ '())))))))
        (let ((_g16011629_
               (lambda (_g16021626_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g16021626_))))
          (let ((_g16001717_
                 (lambda (_g16021632_)
                   (if (gx#stx-pair? _g16021632_)
                       (let ((_e16051634_ (gx#stx-e _g16021632_)))
                         (let ((_hd16061637_ (##car _e16051634_))
                               (_tl16071639_ (##cdr _e16051634_)))
                           (if (gx#stx-pair/null? _tl16071639_)
                               (if (fx>= (gx#stx-length _tl16071639_) '0)
                                   (let ((_g5874_ (gx#syntax-split-splice
                                                   _tl16071639_
                                                   '0)))
                                     (begin
                                       (let ((_g5875_ (values-count _g5874_)))
                                         (if (not (fx= _g5875_ 2))
                                             (error "Context expects 2 values"
                                                    _g5875_)))
                                       (let ((_target16081642_
                                              (values-ref _g5874_ 0))
                                             (_tl16101644_
                                              (values-ref _g5874_ 1)))
                                         (if (gx#stx-null? _tl16101644_)
                                             (letrec ((_loop16111647_
                                                       (lambda (_hd16091650_
                                                                _eid16151652_
                                                                _id16161654_)
                                                         (if (gx#stx-pair?
                                                              _hd16091650_)
                                                             (let ((_e16121657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd16091650_)))
                       (let ((_lp-hd16131660_ (##car _e16121657_))
                             (_lp-tl16141662_ (##cdr _e16121657_)))
                         (if (gx#stx-pair? _lp-hd16131660_)
                             (let ((_e16191665_ (gx#stx-e _lp-hd16131660_)))
                               (let ((_hd16201668_ (##car _e16191665_))
                                     (_tl16211670_ (##cdr _e16191665_)))
                                 (if (gx#stx-pair? _tl16211670_)
                                     (let ((_e16221673_
                                            (gx#stx-e _tl16211670_)))
                                       (let ((_hd16231676_ (##car _e16221673_))
                                             (_tl16241678_
                                              (##cdr _e16221673_)))
                                         (if (gx#stx-null? _tl16241678_)
                                             (_loop16111647_
                                              _lp-tl16141662_
                                              (cons _hd16231676_ _eid16151652_)
                                              (cons _hd16201668_ _id16161654_))
                                             (_g16011629_ _g16021632_))))
                                     (_g16011629_ _g16021632_))))
                             (_g16011629_ _g16021632_))))
                     (let ((_eid16171681_ (reverse _eid16151652_))
                           (_id16181683_ (reverse _id16161654_)))
                       ((lambda (_L1686_ _L1687_)
                          (cons '%#extern
                                (map _generate11599_
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g17021705_ _g17031707_)
                                                (cons _g17021705_ _g17031707_))
                                              '()
                                              _L1687_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g17091712_ _g17101714_)
                                                (cons _g17091712_ _g17101714_))
                                              '()
                                              _L1686_)))))
                        _eid16171681_
                        _id16181683_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop16111647_
                                                _target16081642_
                                                '()
                                                '()))
                                             (_g16011629_ _g16021632_)))))
                                   (_g16011629_ _g16021632_))
                               (_g16011629_ _g16021632_))))
                       (_g16011629_ _g16021632_)))))
            (_g16001717_ _stx1596_))))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx1391_ _state1392_)
      (let ((_generate11394_
             (lambda (_id1591_)
               (let ((_eid1593_ (gxc#generate-runtime-binding-id _id1591_))
                     (_ident1594_ (gxc#generate-runtime-identifier _id1591_)))
                 (cons '%#define-runtime
                       (cons _ident1594_ (cons _eid1593_ '())))))))
        (let ((_generate*1395_
               (lambda (_all1559_)
                 (let ((_all15601568_ _all1559_))
                   (let ((_E15631572_
                          (lambda ()
                            (error '"No clause matching" _all15601568_))))
                     (let ((_else15621576_
                            (lambda () (cons '%#begin _all1559_))))
                       (let ((_K15641581_ (lambda (_one1579_) _one1579_)))
                         (if (##pair? _all15601568_)
                             (let ((_hd15651584_ (##car _all15601568_))
                                   (_tl15661586_ (##cdr _all15601568_)))
                               (let ((_one1589_ _hd15651584_))
                                 (if (##null? _tl15661586_)
                                     (_K15641581_ _one1589_)
                                     (_else15621576_))))
                             (_else15621576_)))))))))
          (let ((_g13971414_
                 (lambda (_g13981411_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g13981411_))))
            (let ((_g13961556_
                   (lambda (_g13981417_)
                     (if (gx#stx-pair? _g13981417_)
                         (let ((_e14011419_ (gx#stx-e _g13981417_)))
                           (let ((_hd14021422_ (##car _e14011419_))
                                 (_tl14031424_ (##cdr _e14011419_)))
                             (if (gx#stx-pair? _tl14031424_)
                                 (let ((_e14041427_ (gx#stx-e _tl14031424_)))
                                   (let ((_hd14051430_ (##car _e14041427_))
                                         (_tl14061432_ (##cdr _e14041427_)))
                                     (if (gx#stx-pair? _tl14061432_)
                                         (let ((_e14071435_
                                                (gx#stx-e _tl14061432_)))
                                           (let ((_hd14081438_
                                                  (##car _e14071435_))
                                                 (_tl14091440_
                                                  (##cdr _e14071435_)))
                                             (if (gx#stx-null? _tl14091440_)
                                                 ((lambda (_L1443_ _L1444_)
                                                    ((letrec ((_lp1460_
                                                               (lambda (_rest1462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _r1463_)
                         (let ((_g14681484_
                                (lambda (_g14691481_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g14691481_))))
                           (let ((_g14671491_
                                  (lambda (_g14691487_)
                                    ((lambda ()
                                       (_generate*1395_ (reverse _r1463_)))))))
                             (let ((_g14661507_
                                    (lambda (_g14691494_)
                                      ((lambda (_L1496_)
                                         (if (gx#identifier? _L1496_)
                                             (_generate*1395_
                                              (foldl cons
                                                     (cons (_generate11394_
                                                            _L1496_)
                                                           '())
                                                     _r1463_))
                                             (_g14671491_ _g14691494_)))
                                       _g14691494_))))
                               (let ((_g14651531_
                                      (lambda (_g14691510_)
                                        (if (gx#stx-pair? _g14691510_)
                                            (let ((_e14761512_
                                                   (gx#stx-e _g14691510_)))
                                              (let ((_hd14771515_
                                                     (##car _e14761512_))
                                                    (_tl14781517_
                                                     (##cdr _e14761512_)))
                                                ((lambda (_L1520_ _L1521_)
                                                   (_lp1460_
                                                    _L1520_
                                                    (cons (_generate11394_
                                                           _L1521_)
                                                          _r1463_)))
                                                 _tl14781517_
                                                 _hd14771515_)))
                                            (_g14661507_ _g14691510_)))))
                                 (let ((_g14641553_
                                        (lambda (_g14691534_)
                                          (if (gx#stx-pair? _g14691534_)
                                              (let ((_e14711536_
                                                     (gx#stx-e _g14691534_)))
                                                (let ((_hd14721539_
                                                       (##car _e14711536_))
                                                      (_tl14731541_
                                                       (##cdr _e14711536_)))
                                                  (if (gx#stx-datum?
                                                       _hd14721539_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd14721539_)
                          '#f)
                  ((lambda (_L1544_) (_lp1460_ _L1544_ _r1463_)) _tl14731541_)
                  (_g14651531_ _g14691534_))
              (_g14651531_ _g14691534_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g14651531_ _g14691534_)))))
                                   (_g14641553_ _rest1462_)))))))))
               _lp1460_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _L1444_
                                                     '()))
                                                  _hd14081438_
                                                  _hd14051430_)
                                                 (_g13971414_ _g13981417_))))
                                         (_g13971414_ _g13981417_))))
                                 (_g13971414_ _g13981417_))))
                         (_g13971414_ _g13981417_)))))
              (_g13961556_ _stx1391_)))))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx1288_ _state1289_)
      (let ((_g12911308_
             (lambda (_g12921305_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g12921305_))))
        (let ((_g12901388_
               (lambda (_g12921311_)
                 (if (gx#stx-pair? _g12921311_)
                     (let ((_e12951313_ (gx#stx-e _g12921311_)))
                       (let ((_hd12961316_ (##car _e12951313_))
                             (_tl12971318_ (##cdr _e12951313_)))
                         (if (gx#stx-pair? _tl12971318_)
                             (let ((_e12981321_ (gx#stx-e _tl12971318_)))
                               (let ((_hd12991324_ (##car _e12981321_))
                                     (_tl13001326_ (##cdr _e12981321_)))
                                 (if (gx#stx-pair? _tl13001326_)
                                     (let ((_e13011329_
                                            (gx#stx-e _tl13001326_)))
                                       (let ((_hd13021332_ (##car _e13011329_))
                                             (_tl13031334_
                                              (##cdr _e13011329_)))
                                         (if (gx#stx-null? _tl13031334_)
                                             ((lambda (_L1337_ _L1338_)
                                                (let ((_eid1353_
                                                       (gxc#generate-runtime-binding-id
                                                        _L1338_)))
                                                  (let ((_phi1355_
                                                         (fx1+ (gx#current-expander-phi))))
                                                    (let ((_block1357_
                                                           (gxc#meta-state-begin-phi!
                                                            _state1289_
                                                            _phi1355_)))
                                                      (let ()
                                                        (begin
                                                          (let ((_g13601367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g13611364_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g13611364_))))
                    (let ((_g13591385_
                           (lambda (_g13611370_)
                             ((lambda (_L1372_)
                                (let ()
                                  (gxc#meta-state-add-phi!
                                   _state1289_
                                   _phi1355_
                                   (cons (gx#datum->syntax
                                          '#f
                                          '%#define-runtime)
                                         (cons _L1372_ (cons _L1337_ '()))))))
                              _g13611370_))))
                      (_g13591385_ _eid1353_)))
                  (if _block1357_
                      (cons '%#begin
                            (cons (cons '%#begin-syntax
                                        (cons (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote (cons _block1357_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons '%#define-syntax
                                              (cons (gxc#generate-runtime-identifier
                                                     _L1338_)
                                                    (cons _eid1353_ '())))
                                        '())))
                      (cons '%#define-syntax
                            (cons (gxc#generate-runtime-identifier _L1338_)
                                  (cons _eid1353_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd13021332_
                                              _hd12991324_)
                                             (_g12911308_ _g12921311_))))
                                     (_g12911308_ _g12921311_))))
                             (_g12911308_ _g12921311_))))
                     (_g12911308_ _g12921311_)))))
          (_g12901388_ _stx1288_)))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx1220_ _state1221_)
      (let ((_g12231240_
             (lambda (_g12241237_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g12241237_))))
        (let ((_g12221285_
               (lambda (_g12241243_)
                 (if (gx#stx-pair? _g12241243_)
                     (let ((_e12271245_ (gx#stx-e _g12241243_)))
                       (let ((_hd12281248_ (##car _e12271245_))
                             (_tl12291250_ (##cdr _e12271245_)))
                         (if (gx#stx-pair? _tl12291250_)
                             (let ((_e12301253_ (gx#stx-e _tl12291250_)))
                               (let ((_hd12311256_ (##car _e12301253_))
                                     (_tl12321258_ (##cdr _e12301253_)))
                                 (if (gx#stx-pair? _tl12321258_)
                                     (let ((_e12331261_
                                            (gx#stx-e _tl12321258_)))
                                       (let ((_hd12341264_ (##car _e12331261_))
                                             (_tl12351266_
                                              (##cdr _e12331261_)))
                                         (if (gx#stx-null? _tl12351266_)
                                             ((lambda (_L1269_ _L1270_)
                                                (cons '%#define-alias
                                                      (cons (gxc#generate-runtime-identifier
                                                             _L1270_)
                                                            (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L1269_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd12341264_
                                              _hd12311256_)
                                             (_g12231240_ _g12241243_))))
                                     (_g12231240_ _g12241243_))))
                             (_g12231240_ _g12241243_))))
                     (_g12231240_ _g12241243_)))))
          (_g12221285_ _stx1220_)))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx1217_ _state1218_)
      (begin
        (gxc#meta-state-add-phi!
         _state1218_
         (gx#current-expander-phi)
         _stx1217_)
        (gxc#generate-meta-define-values% _stx1217_ _state1218_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx1214_ _state1215_)
      (begin
        (gxc#meta-state-add-phi!
         _state1215_
         (gx#current-expander-phi)
         _stx1214_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type 'gxc#meta-state::t '#f '4 'meta-state '() ':init!))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args1211_
      (apply make-struct-instance gxc#meta-state::t _$args1211_)))
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
  (begin)
  (define gxc#meta-state:::init!
    (lambda (_self1208_ _ctx1209_)
      (direct-struct-instance-init!
       _self1208_
       (symbol->string (gx#expander-context-id _ctx1209_))
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
    (lambda _$args1205_
      (apply make-struct-instance gxc#meta-state-block::t _$args1205_)))
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
  (begin)
  (define gxc#meta-state-begin-phi!
    (lambda (_state1164_ _phi1165_)
      (let ((_state11661174_ _state1164_))
        (let ((_E11681178_
               (lambda () (error '"No clause matching" _state11661174_))))
          (let ((_K11691187_
                 (lambda (_open1181_ _n1182_ _src1183_)
                   (if (hash-get _open1181_ _phi1165_)
                       '#f
                       (let ((_block-ref1185_
                              (string-append
                               _src1183_
                               '"__"
                               (number->string _n1182_))))
                         (begin
                           (gxc#meta-state-n-set! _state1164_ (fx1+ _n1182_))
                           (hash-put!
                            _open1181_
                            _phi1165_
                            (gxc#make-meta-state-block
                             (gx#current-expander-context)
                             _phi1165_
                             _n1182_
                             '()))
                           _block-ref1185_))))))
            (if (struct-instance? gxc#meta-state::t _state11661174_)
                (let ((_e11701190_ (##vector-ref _state11661174_ '1)))
                  (let ((_src1193_ _e11701190_))
                    (let ((_e11711195_ (##vector-ref _state11661174_ '2)))
                      (let ((_n1198_ _e11711195_))
                        (let ((_e11721200_ (##vector-ref _state11661174_ '3)))
                          (let ((_open1203_ _e11721200_))
                            (_K11691187_ _open1203_ _n1198_ _src1193_)))))))
                (_E11681178_)))))))
  (define gxc#meta-state-add-phi!
    (lambda (_state1158_ _phi1159_ _stx1160_)
      (let ((_block1162_
             (hash-get (gxc#meta-state-open _state1158_) _phi1159_)))
        (gxc#meta-state-block-code-set!
         _block1162_
         (cons _stx1160_ (gxc#meta-state-block-code _block1162_))))))
  (define gxc#meta-state-end-phi!
    (lambda (_state1153_)
      (begin
        (gxc#meta-state-blocks-set!
         _state1153_
         (hash-fold
          (lambda (_g5876_ _block1155_ _r1156_) (cons _block1155_ _r1156_))
          (gxc#meta-state-blocks _state1153_)
          (gxc#meta-state-open _state1153_)))
        (gxc#meta-state-open-set! _state1153_ (make-hash-table-eq)))))
  (define gxc#meta-state-end!
    (lambda (_state1105_)
      (begin
        (gxc#meta-state-end-phi! _state1105_)
        (foldl (lambda (_block1107_ _r1108_)
                 (let ((_block11091118_ _block1107_))
                   (let ((_E11111122_
                          (lambda ()
                            (error '"No clause matching" _block11091118_))))
                     (let ((_K11121130_
                            (lambda (_code1125_ _n1126_ _phi1127_ _ctx1128_)
                              (if (null? _code1125_)
                                  _r1108_
                                  (cons (cons _ctx1128_
                                              (cons _phi1127_
                                                    (cons _n1126_
                                                          (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (reverse _code1125_))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _r1108_)))))
                       (if (struct-instance?
                            gxc#meta-state-block::t
                            _block11091118_)
                           (let ((_e11131133_
                                  (##vector-ref _block11091118_ '1)))
                             (let ((_ctx1136_ _e11131133_))
                               (let ((_e11141138_
                                      (##vector-ref _block11091118_ '2)))
                                 (let ((_phi1141_ _e11141138_))
                                   (let ((_e11151143_
                                          (##vector-ref _block11091118_ '3)))
                                     (let ((_n1146_ _e11151143_))
                                       (let ((_e11161148_
                                              (##vector-ref
                                               _block11091118_
                                               '4)))
                                         (let ((_code1151_ _e11161148_))
                                           (_K11121130_
                                            _code1151_
                                            _n1146_
                                            _phi1141_
                                            _ctx1136_)))))))))
                           (_E11111122_))))))
               '()
               (gxc#meta-state-blocks _state1105_)))))
  (define gxc#collect-expression-refs
    (lambda (_stx1101_)
      (let ((_ht1103_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx1101_ _ht1103_)
          _ht1103_))))
  (define gxc#collect-refs-lambda%
    (lambda (_stx1033_ _ht1034_)
      (let ((_g10361053_
             (lambda (_g10371050_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g10371050_))))
        (let ((_g10351098_
               (lambda (_g10371056_)
                 (if (gx#stx-pair? _g10371056_)
                     (let ((_e10401058_ (gx#stx-e _g10371056_)))
                       (let ((_hd10411061_ (##car _e10401058_))
                             (_tl10421063_ (##cdr _e10401058_)))
                         (if (gx#stx-pair? _tl10421063_)
                             (let ((_e10431066_ (gx#stx-e _tl10421063_)))
                               (let ((_hd10441069_ (##car _e10431066_))
                                     (_tl10451071_ (##cdr _e10431066_)))
                                 (if (gx#stx-pair? _tl10451071_)
                                     (let ((_e10461074_
                                            (gx#stx-e _tl10451071_)))
                                       (let ((_hd10471077_ (##car _e10461074_))
                                             (_tl10481079_
                                              (##cdr _e10461074_)))
                                         (if (gx#stx-null? _tl10481079_)
                                             ((lambda (_L1082_ _L1083_)
                                                (gxc#compile-e
                                                 _L1082_
                                                 _ht1034_))
                                              _hd10471077_
                                              _hd10441069_)
                                             (_g10361053_ _g10371056_))))
                                     (_g10361053_ _g10371056_))))
                             (_g10361053_ _g10371056_))))
                     (_g10361053_ _g10371056_)))))
          (_g10351098_ _stx1033_)))))
  (define gxc#collect-refs-case-lambda%
    (lambda (_stx915_ _ht916_)
      (let ((_g918946_
             (lambda (_g919943_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g919943_))))
        (let ((_g9171030_
               (lambda (_g919949_)
                 (if (gx#stx-pair? _g919949_)
                     (let ((_e922951_ (gx#stx-e _g919949_)))
                       (let ((_hd923954_ (##car _e922951_))
                             (_tl924956_ (##cdr _e922951_)))
                         (if (gx#stx-pair/null? _tl924956_)
                             (if (fx>= (gx#stx-length _tl924956_) '0)
                                 (let ((_g5877_ (gx#syntax-split-splice
                                                 _tl924956_
                                                 '0)))
                                   (begin
                                     (let ((_g5878_ (values-count _g5877_)))
                                       (if (not (fx= _g5878_ 2))
                                           (error "Context expects 2 values"
                                                  _g5878_)))
                                     (let ((_target925959_
                                            (values-ref _g5877_ 0))
                                           (_tl927961_ (values-ref _g5877_ 1)))
                                       (if (gx#stx-null? _tl927961_)
                                           (letrec ((_loop928964_
                                                     (lambda (_hd926967_
                                                              _body932969_
                                                              _hd933971_)
                                                       (if (gx#stx-pair?
                                                            _hd926967_)
                                                           (let ((_e929974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd926967_)))
                     (let ((_lp-hd930977_ (##car _e929974_))
                           (_lp-tl931979_ (##cdr _e929974_)))
                       (if (gx#stx-pair? _lp-hd930977_)
                           (let ((_e936982_ (gx#stx-e _lp-hd930977_)))
                             (let ((_hd937985_ (##car _e936982_))
                                   (_tl938987_ (##cdr _e936982_)))
                               (if (gx#stx-pair? _tl938987_)
                                   (let ((_e939990_ (gx#stx-e _tl938987_)))
                                     (let ((_hd940993_ (##car _e939990_))
                                           (_tl941995_ (##cdr _e939990_)))
                                       (if (gx#stx-null? _tl941995_)
                                           (_loop928964_
                                            _lp-tl931979_
                                            (cons _hd940993_ _body932969_)
                                            (cons _hd937985_ _hd933971_))
                                           (_g918946_ _g919949_))))
                                   (_g918946_ _g919949_))))
                           (_g918946_ _g919949_))))
                   (let ((_body934998_ (reverse _body932969_))
                         (_hd9351000_ (reverse _hd933971_)))
                     ((lambda (_L1003_ _L1004_)
                        (for-each
                         (lambda (_g10181020_)
                           (gxc#compile-e _g10181020_ _ht916_))
                         (begin
                           '#!void
                           (foldr (lambda (_g10221025_ _g10231027_)
                                    (cons _g10221025_ _g10231027_))
                                  '()
                                  _L1003_))))
                      _body934998_
                      _hd9351000_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop928964_
                                              _target925959_
                                              '()
                                              '()))
                                           (_g918946_ _g919949_)))))
                                 (_g918946_ _g919949_))
                             (_g918946_ _g919949_))))
                     (_g918946_ _g919949_)))))
          (_g9171030_ _stx915_)))))
  (define gxc#collect-refs-let-values%
    (lambda (_stx768_ _ht769_)
      (let ((_g771806_
             (lambda (_g772803_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g772803_))))
        (let ((_g770912_
               (lambda (_g772809_)
                 (if (gx#stx-pair? _g772809_)
                     (let ((_e776811_ (gx#stx-e _g772809_)))
                       (let ((_hd777814_ (##car _e776811_))
                             (_tl778816_ (##cdr _e776811_)))
                         (if (gx#stx-pair? _tl778816_)
                             (let ((_e779819_ (gx#stx-e _tl778816_)))
                               (let ((_hd780822_ (##car _e779819_))
                                     (_tl781824_ (##cdr _e779819_)))
                                 (if (gx#stx-pair/null? _hd780822_)
                                     (if (fx>= (gx#stx-length _hd780822_) '0)
                                         (let ((_g5879_ (gx#syntax-split-splice
                                                         _hd780822_
                                                         '0)))
                                           (begin
                                             (let ((_g5880_ (values-count
                                                             _g5879_)))
                                               (if (not (fx= _g5880_ 2))
                                                   (error "Context expects 2 values"
                                                          _g5880_)))
                                             (let ((_target782827_
                                                    (values-ref _g5879_ 0))
                                                   (_tl784829_
                                                    (values-ref _g5879_ 1)))
                                               (if (gx#stx-null? _tl784829_)
                                                   (letrec ((_loop785832_
                                                             (lambda (_hd783835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr789837_
                              _hd790839_)
                       (if (gx#stx-pair? _hd783835_)
                           (let ((_e786842_ (gx#stx-e _hd783835_)))
                             (let ((_lp-hd787845_ (##car _e786842_))
                                   (_lp-tl788847_ (##cdr _e786842_)))
                               (if (gx#stx-pair? _lp-hd787845_)
                                   (let ((_e793850_ (gx#stx-e _lp-hd787845_)))
                                     (let ((_hd794853_ (##car _e793850_))
                                           (_tl795855_ (##cdr _e793850_)))
                                       (if (gx#stx-pair? _tl795855_)
                                           (let ((_e796858_
                                                  (gx#stx-e _tl795855_)))
                                             (let ((_hd797861_
                                                    (##car _e796858_))
                                                   (_tl798863_
                                                    (##cdr _e796858_)))
                                               (if (gx#stx-null? _tl798863_)
                                                   (_loop785832_
                                                    _lp-tl788847_
                                                    (cons _hd797861_
                                                          _expr789837_)
                                                    (cons _hd794853_
                                                          _hd790839_))
                                                   (_g771806_ _g772809_))))
                                           (_g771806_ _g772809_))))
                                   (_g771806_ _g772809_))))
                           (let ((_expr791866_ (reverse _expr789837_))
                                 (_hd792868_ (reverse _hd790839_)))
                             (if (gx#stx-pair? _tl781824_)
                                 (let ((_e799871_ (gx#stx-e _tl781824_)))
                                   (let ((_hd800874_ (##car _e799871_))
                                         (_tl801876_ (##cdr _e799871_)))
                                     (if (gx#stx-null? _tl801876_)
                                         ((lambda (_L879_ _L880_ _L881_)
                                            (if (for-each
                                                 (lambda (_g900902_)
                                                   (gxc#compile-e
                                                    _g900902_
                                                    _ht769_))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g904907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g905909_)
                    (cons _g904907_ _g905909_))
                  '()
                  _L880_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#compile-e _L879_ _ht769_)
                                                (_g771806_ _g772809_)))
                                          _hd800874_
                                          _expr791866_
                                          _hd792868_)
                                         (_g771806_ _g772809_))))
                                 (_g771806_ _g772809_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop785832_
                                                      _target782827_
                                                      '()
                                                      '()))
                                                   (_g771806_ _g772809_)))))
                                         (_g771806_ _g772809_))
                                     (_g771806_ _g772809_))))
                             (_g771806_ _g772809_))))
                     (_g771806_ _g772809_)))))
          (_g770912_ _stx768_)))))
  (define gxc#collect-refs-ref%
    (lambda (_stx711_ _ht712_)
      (let ((_g714727_
             (lambda (_g715724_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g715724_))))
        (let ((_g713765_
               (lambda (_g715730_)
                 (if (gx#stx-pair? _g715730_)
                     (let ((_e717732_ (gx#stx-e _g715730_)))
                       (let ((_hd718735_ (##car _e717732_))
                             (_tl719737_ (##cdr _e717732_)))
                         (if (gx#stx-pair? _tl719737_)
                             (let ((_e720740_ (gx#stx-e _tl719737_)))
                               (let ((_hd721743_ (##car _e720740_))
                                     (_tl722745_ (##cdr _e720740_)))
                                 (if (gx#stx-null? _tl722745_)
                                     ((lambda (_L748_)
                                        (let ((_bind760_
                                               (gx#resolve-identifier _L748_)))
                                          (let ((_eid762_
                                                 (if _bind760_
                                                     (gx#binding-id _bind760_)
                                                     (gx#stx-e _L748_))))
                                            (let ()
                                              (hash-put!
                                               _ht712_
                                               _eid762_
                                               _eid762_)))))
                                      _hd721743_)
                                     (_g714727_ _g715730_))))
                             (_g714727_ _g715730_))))
                     (_g714727_ _g715730_)))))
          (_g713765_ _stx711_)))))
  (define gxc#collect-refs-setq%
    (lambda (_stx638_ _ht639_)
      (let ((_g641658_
             (lambda (_g642655_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g642655_))))
        (let ((_g640708_
               (lambda (_g642661_)
                 (if (gx#stx-pair? _g642661_)
                     (let ((_e645663_ (gx#stx-e _g642661_)))
                       (let ((_hd646666_ (##car _e645663_))
                             (_tl647668_ (##cdr _e645663_)))
                         (if (gx#stx-pair? _tl647668_)
                             (let ((_e648671_ (gx#stx-e _tl647668_)))
                               (let ((_hd649674_ (##car _e648671_))
                                     (_tl650676_ (##cdr _e648671_)))
                                 (if (gx#stx-pair? _tl650676_)
                                     (let ((_e651679_ (gx#stx-e _tl650676_)))
                                       (let ((_hd652682_ (##car _e651679_))
                                             (_tl653684_ (##cdr _e651679_)))
                                         (if (gx#stx-null? _tl653684_)
                                             ((lambda (_L687_ _L688_)
                                                (let ((_bind703_
                                                       (gx#resolve-identifier
                                                        _L688_)))
                                                  (let ((_eid705_
                                                         (if _bind703_
                                                             (gx#binding-id
                                                              _bind703_)
                                                             (gx#stx-e
                                                              _L688_))))
                                                    (let ()
                                                      (begin
                                                        (hash-put!
                                                         _ht639_
                                                         _eid705_
                                                         _eid705_)
                                                        (gxc#compile-e
                                                         _L687_
                                                         _ht639_))))))
                                              _hd652682_
                                              _hd649674_)
                                             (_g641658_ _g642661_))))
                                     (_g641658_ _g642661_))))
                             (_g641658_ _g642661_))))
                     (_g641658_ _g642661_)))))
          (_g640708_ _stx638_)))))
  (define gxc#find-runtime-begin%
    (lambda (_stx600_)
      (let ((_g602612_
             (lambda (_g603609_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g603609_))))
        (let ((_g601635_
               (lambda (_g603615_)
                 (if (gx#stx-pair? _g603615_)
                     (let ((_e605617_ (gx#stx-e _g603615_)))
                       (let ((_hd606620_ (##car _e605617_))
                             (_tl607622_ (##cdr _e605617_)))
                         ((lambda (_L625_) (ormap gxc#compile-e _L625_))
                          _tl607622_)))
                     (_g602612_ _g603615_)))))
          (_g601635_ _stx600_))))))
