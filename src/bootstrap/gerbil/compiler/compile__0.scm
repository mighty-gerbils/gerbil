(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx5790_ . _args5791_)
      (let ((_g57935803_
             (lambda (_g57945800_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g57945800_))))
        (let ((_g57925831_
               (lambda (_g57945806_)
                 (if (gx#stx-pair? _g57945806_)
                     (let ((_e57965808_ (gx#stx-e _g57945806_)))
                       (let ((_hd57975811_ (##car _e57965808_))
                             (_tl57985813_ (##cdr _e57965808_)))
                         ((lambda (_L5816_)
                            (let ((_$e5826_
                                   (hash-get
                                    (gxc#current-compile-methods)
                                    (gx#stx-e _L5816_))))
                              (if _$e5826_
                                  ((lambda (_method5829_)
                                     (apply _method5829_ _stx5790_ _args5791_))
                                   _$e5826_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile; missing method"
                                   _stx5790_
                                   _L5816_))))
                          _hd57975811_)))
                     (_g57935803_ _g57945806_)))))
          (_g57925831_ _stx5790_)))))
  (begin)
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl5787_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl5787_ '%#lambda void)
           (hash-put! _tbl5787_ '%#case-lambda void)
           (hash-put! _tbl5787_ '%#let-values void)
           (hash-put! _tbl5787_ '%#letrec-values void)
           (hash-put! _tbl5787_ '%#letrec*-values void)
           (hash-put! _tbl5787_ '%#quote void)
           (hash-put! _tbl5787_ '%#quote-syntax void)
           (hash-put! _tbl5787_ '%#call void)
           (hash-put! _tbl5787_ '%#if void)
           (hash-put! _tbl5787_ '%#ref void)
           (hash-put! _tbl5787_ '%#set! void)
           _tbl5787_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl5783_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl5783_ '%#begin void)
           (hash-put! _tbl5783_ '%#begin-syntax void)
           (hash-put! _tbl5783_ '%#begin-foreign void)
           (hash-put! _tbl5783_ '%#module void)
           (hash-put! _tbl5783_ '%#import void)
           (hash-put! _tbl5783_ '%#export void)
           (hash-put! _tbl5783_ '%#provide void)
           (hash-put! _tbl5783_ '%#extern void)
           (hash-put! _tbl5783_ '%#define-values void)
           (hash-put! _tbl5783_ '%#define-syntax void)
           (hash-put! _tbl5783_ '%#define-alias void)
           (hash-put! _tbl5783_ '%#declare void)
           _tbl5783_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl5779_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl5779_ (force gxc#&void-special-form))
           (hash-copy! _tbl5779_ (force gxc#&void-expression))
           _tbl5779_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl5775_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl5775_ (force gxc#&void-expression))
           (hash-copy! _tbl5775_ (force gxc#&void-special-form))
           (hash-put! _tbl5775_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl5775_ '%#begin-syntax gxc#collect-begin-syntax%)
           (hash-put! _tbl5775_ '%#module gxc#collect-module%)
           (hash-put!
            _tbl5775_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (hash-put!
            _tbl5775_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl5775_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx5768_ . _args5770_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx5768_ _args5770_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl5765_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl5765_ (force gxc#&void))
           (hash-put! _tbl5765_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl5765_ '%#module gxc#lift-modules-module%)
           _tbl5765_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx5758_ . _args5760_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx5758_ _args5760_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl5755_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl5755_ '%#begin gxc#find-runtime-begin%)
           (hash-put! _tbl5755_ '%#begin-syntax false)
           (hash-put! _tbl5755_ '%#begin-foreign true)
           (hash-put! _tbl5755_ '%#module false)
           (hash-put! _tbl5755_ '%#import false)
           (hash-put! _tbl5755_ '%#export false)
           (hash-put! _tbl5755_ '%#provide false)
           (hash-put! _tbl5755_ '%#extern false)
           (hash-put! _tbl5755_ '%#define-values true)
           (hash-put! _tbl5755_ '%#define-syntax false)
           (hash-put! _tbl5755_ '%#define-alias false)
           (hash-put! _tbl5755_ '%#declare false)
           (hash-put! _tbl5755_ '%#lambda true)
           (hash-put! _tbl5755_ '%#case-lambda true)
           (hash-put! _tbl5755_ '%#let-values true)
           (hash-put! _tbl5755_ '%#letrec-values true)
           (hash-put! _tbl5755_ '%#letrec*-values true)
           (hash-put! _tbl5755_ '%#quote true)
           (hash-put! _tbl5755_ '%#call true)
           (hash-put! _tbl5755_ '%#if true)
           (hash-put! _tbl5755_ '%#ref true)
           (hash-put! _tbl5755_ '%#set! true)
           _tbl5755_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx5748_ . _args5750_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx5748_ _args5750_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl5745_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl5745_ '%#begin gxc#generate-runtime-begin%)
           (hash-put! _tbl5745_ '%#begin-syntax gxc#generate-runtime-empty)
           (hash-put! _tbl5745_ '%#begin-foreign gxc#generate-runtime-empty)
           (hash-put! _tbl5745_ '%#module gxc#generate-runtime-empty)
           (hash-put! _tbl5745_ '%#import gxc#generate-runtime-loader-import%)
           (hash-put! _tbl5745_ '%#export gxc#generate-runtime-empty)
           (hash-put! _tbl5745_ '%#provide gxc#generate-runtime-empty)
           (hash-put! _tbl5745_ '%#extern gxc#generate-runtime-empty)
           (hash-put! _tbl5745_ '%#define-values gxc#generate-runtime-empty)
           (hash-put! _tbl5745_ '%#define-syntax gxc#generate-runtime-empty)
           (hash-put! _tbl5745_ '%#define-alias gxc#generate-runtime-empty)
           (hash-put! _tbl5745_ '%#declare gxc#generate-runtime-empty)
           (hash-put! _tbl5745_ '%#lambda gxc#generate-runtime-empty)
           (hash-put! _tbl5745_ '%#case-lambda gxc#generate-runtime-empty)
           (hash-put! _tbl5745_ '%#let-values gxc#generate-runtime-empty)
           (hash-put! _tbl5745_ '%#letrec-values gxc#generate-runtime-empty)
           (hash-put! _tbl5745_ '%#letrec*-values gxc#generate-runtime-empty)
           (hash-put! _tbl5745_ '%#quote gxc#generate-runtime-empty)
           (hash-put! _tbl5745_ '%#call gxc#generate-runtime-empty)
           (hash-put! _tbl5745_ '%#if gxc#generate-runtime-empty)
           (hash-put! _tbl5745_ '%#ref gxc#generate-runtime-empty)
           (hash-put! _tbl5745_ '%#set! gxc#generate-runtime-empty)
           _tbl5745_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx5738_ . _args5740_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx5738_ _args5740_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl5735_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl5735_ '%#begin gxc#generate-runtime-begin%)
           (hash-put! _tbl5735_ '%#begin-syntax gxc#generate-runtime-empty)
           (hash-put!
            _tbl5735_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (hash-put! _tbl5735_ '%#module gxc#generate-runtime-empty)
           (hash-put! _tbl5735_ '%#import gxc#generate-runtime-empty)
           (hash-put! _tbl5735_ '%#export gxc#generate-runtime-empty)
           (hash-put! _tbl5735_ '%#provide gxc#generate-runtime-empty)
           (hash-put! _tbl5735_ '%#extern gxc#generate-runtime-empty)
           (hash-put!
            _tbl5735_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (hash-put! _tbl5735_ '%#define-syntax gxc#generate-runtime-empty)
           (hash-put! _tbl5735_ '%#define-alias gxc#generate-runtime-empty)
           (hash-put! _tbl5735_ '%#declare gxc#generate-runtime-declare%)
           (hash-put! _tbl5735_ '%#lambda gxc#generate-runtime-lambda%)
           (hash-put!
            _tbl5735_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (hash-put! _tbl5735_ '%#let-values gxc#generate-runtime-let-values%)
           (hash-put!
            _tbl5735_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (hash-put!
            _tbl5735_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (hash-put! _tbl5735_ '%#quote gxc#generate-runtime-quote%)
           (hash-put! _tbl5735_ '%#call gxc#generate-runtime-call%)
           (hash-put! _tbl5735_ '%#if gxc#generate-runtime-if%)
           (hash-put! _tbl5735_ '%#ref gxc#generate-runtime-ref%)
           (hash-put! _tbl5735_ '%#set! gxc#generate-runtime-setq%)
           _tbl5735_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx5728_ . _args5730_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx5728_ _args5730_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl5725_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl5725_ (force gxc#&generate-runtime))
           (hash-put!
            _tbl5725_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (hash-put!
            _tbl5725_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl5725_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx5718_ . _args5720_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx5718_ _args5720_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl5715_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl5715_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl5715_ '%#lambda gxc#collect-refs-lambda%)
           (hash-put! _tbl5715_ '%#case-lambda gxc#collect-refs-case-lambda%)
           (hash-put! _tbl5715_ '%#let-values gxc#collect-refs-let-values%)
           (hash-put! _tbl5715_ '%#letrec-values gxc#collect-refs-let-values%)
           (hash-put! _tbl5715_ '%#letrec*-values gxc#collect-refs-let-values%)
           (hash-put! _tbl5715_ '%#quote void)
           (hash-put! _tbl5715_ '%#quote-syntax void)
           (hash-put! _tbl5715_ '%#call gxc#collect-begin%)
           (hash-put! _tbl5715_ '%#if gxc#collect-begin%)
           (hash-put! _tbl5715_ '%#ref gxc#collect-refs-ref%)
           (hash-put! _tbl5715_ '%#set! gxc#collect-refs-setq%)
           _tbl5715_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx5708_ . _args5710_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx5708_ _args5710_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl5705_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl5705_ (force gxc#&void-expression))
           (hash-put! _tbl5705_ '%#begin gxc#generate-meta-begin%)
           (hash-put!
            _tbl5705_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (hash-put! _tbl5705_ '%#module gxc#generate-meta-module%)
           (hash-put! _tbl5705_ '%#import gxc#generate-meta-import%)
           (hash-put! _tbl5705_ '%#export gxc#generate-meta-export%)
           (hash-put! _tbl5705_ '%#provide gxc#generate-meta-provide%)
           (hash-put! _tbl5705_ '%#extern gxc#generate-meta-extern%)
           (hash-put!
            _tbl5705_
            '%#define-values
            gxc#generate-meta-define-values%)
           (hash-put!
            _tbl5705_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (hash-put!
            _tbl5705_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (hash-put! _tbl5705_ '%#begin-foreign void)
           (hash-put! _tbl5705_ '%#declare void)
           _tbl5705_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx5698_ . _args5700_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx5698_ _args5700_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl5695_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl5695_ '%#begin gxc#generate-meta-begin%)
           (hash-put!
            _tbl5695_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (hash-put!
            _tbl5695_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (hash-put!
            _tbl5695_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (hash-put!
            _tbl5695_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (hash-put! _tbl5695_ '%#lambda gxc#generate-meta-phi-expr)
           (hash-put! _tbl5695_ '%#case-lambda gxc#generate-meta-phi-expr)
           (hash-put! _tbl5695_ '%#let-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl5695_ '%#letrec-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl5695_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl5695_ '%#quote gxc#generate-meta-phi-expr)
           (hash-put! _tbl5695_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (hash-put! _tbl5695_ '%#call gxc#generate-meta-phi-expr)
           (hash-put! _tbl5695_ '%#if gxc#generate-meta-phi-expr)
           (hash-put! _tbl5695_ '%#ref gxc#generate-meta-phi-expr)
           (hash-put! _tbl5695_ '%#set! gxc#generate-meta-phi-expr)
           (hash-put! _tbl5695_ '%#declare void)
           _tbl5695_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx5688_ . _args5690_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx5688_ _args5690_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx5645_ . _args5646_)
      (let ((_g56485658_
             (lambda (_g56495655_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g56495655_))))
        (let ((_g56475685_
               (lambda (_g56495661_)
                 (if (gx#stx-pair? _g56495661_)
                     (let ((_e56515663_ (gx#stx-e _g56495661_)))
                       (let ((_hd56525666_ (##car _e56515663_))
                             (_tl56535668_ (##cdr _e56515663_)))
                         ((lambda (_L5671_)
                            (for-each
                             (lambda (_g56805682_)
                               (apply gxc#compile-e _g56805682_ _args5646_))
                             (gx#stx-e _L5671_)))
                          _tl56535668_)))
                     (_g56485658_ _g56495661_)))))
          (_g56475685_ _stx5645_)))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx5601_ . _args5602_)
      (let ((_g56045614_
             (lambda (_g56055611_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g56055611_))))
        (let ((_g56035642_
               (lambda (_g56055617_)
                 (if (gx#stx-pair? _g56055617_)
                     (let ((_e56075619_ (gx#stx-e _g56055617_)))
                       (let ((_hd56085622_ (##car _e56075619_))
                             (_tl56095624_ (##cdr _e56075619_)))
                         ((lambda (_L5627_)
                            (call-with-parameters
                             (lambda ()
                               (for-each
                                (lambda (_g56375639_)
                                  (apply gxc#compile-e _g56375639_ _args5602_))
                                (gx#stx-e _L5627_)))
                             gx#current-expander-phi
                             (fx1+ (gx#current-expander-phi))))
                          _tl56095624_)))
                     (_g56045614_ _g56055617_)))))
          (_g56035642_ _stx5601_)))))
  (define gxc#collect-module%
    (lambda (_stx5543_ . _args5544_)
      (let ((_g55465560_
             (lambda (_g55475557_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g55475557_))))
        (let ((_g55455598_
               (lambda (_g55475563_)
                 (if (gx#stx-pair? _g55475563_)
                     (let ((_e55505565_ (gx#stx-e _g55475563_)))
                       (let ((_hd55515568_ (##car _e55505565_))
                             (_tl55525570_ (##cdr _e55505565_)))
                         (if (gx#stx-pair? _tl55525570_)
                             (let ((_e55535573_ (gx#stx-e _tl55525570_)))
                               (let ((_hd55545576_ (##car _e55535573_))
                                     (_tl55555578_ (##cdr _e55535573_)))
                                 ((lambda (_L5581_ _L5582_)
                                    (let ((_ctx5595_
                                           (gx#syntax-local-e _L5582_)))
                                      (call-with-parameters
                                       (lambda ()
                                         (apply gxc#compile-e
                                                (gx#module-context-code
                                                 _ctx5595_)
                                                _args5544_))
                                       gx#current-expander-context
                                       _ctx5595_)))
                                  _tl55555578_
                                  _hd55545576_)))
                             (_g55465560_ _g55475563_))))
                     (_g55465560_ _g55475563_)))))
          (_g55455598_ _stx5543_)))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx5474_)
      (let ((_g54765493_
             (lambda (_g54775490_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g54775490_))))
        (let ((_g54755540_
               (lambda (_g54775496_)
                 (if (gx#stx-pair? _g54775496_)
                     (let ((_e54805498_ (gx#stx-e _g54775496_)))
                       (let ((_hd54815501_ (##car _e54805498_))
                             (_tl54825503_ (##cdr _e54805498_)))
                         (if (gx#stx-pair? _tl54825503_)
                             (let ((_e54835506_ (gx#stx-e _tl54825503_)))
                               (let ((_hd54845509_ (##car _e54835506_))
                                     (_tl54855511_ (##cdr _e54835506_)))
                                 (if (gx#stx-pair? _tl54855511_)
                                     (let ((_e54865514_
                                            (gx#stx-e _tl54855511_)))
                                       (let ((_hd54875517_ (##car _e54865514_))
                                             (_tl54885519_
                                              (##cdr _e54865514_)))
                                         (if (gx#stx-null? _tl54885519_)
                                             ((lambda (_L5522_ _L5523_)
                                                (gx#stx-for-each
                                                 (lambda (_bind5538_)
                                                   (if (gx#identifier?
                                                        _bind5538_)
                                                       (gxc#add-module-binding!
                                                        _bind5538_
                                                        '#f)
                                                       '#!void))
                                                 _L5523_))
                                              _hd54875517_
                                              _hd54845509_)
                                             (_g54765493_ _g54775496_))))
                                     (_g54765493_ _g54775496_))))
                             (_g54765493_ _g54775496_))))
                     (_g54765493_ _g54775496_)))))
          (_g54755540_ _stx5474_)))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx5407_)
      (let ((_g54095426_
             (lambda (_g54105423_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g54105423_))))
        (let ((_g54085471_
               (lambda (_g54105429_)
                 (if (gx#stx-pair? _g54105429_)
                     (let ((_e54135431_ (gx#stx-e _g54105429_)))
                       (let ((_hd54145434_ (##car _e54135431_))
                             (_tl54155436_ (##cdr _e54135431_)))
                         (if (gx#stx-pair? _tl54155436_)
                             (let ((_e54165439_ (gx#stx-e _tl54155436_)))
                               (let ((_hd54175442_ (##car _e54165439_))
                                     (_tl54185444_ (##cdr _e54165439_)))
                                 (if (gx#stx-pair? _tl54185444_)
                                     (let ((_e54195447_
                                            (gx#stx-e _tl54185444_)))
                                       (let ((_hd54205450_ (##car _e54195447_))
                                             (_tl54215452_
                                              (##cdr _e54195447_)))
                                         (if (gx#stx-null? _tl54215452_)
                                             ((lambda (_L5455_ _L5456_)
                                                (gxc#add-module-binding!
                                                 _L5456_
                                                 '#t))
                                              _hd54205450_
                                              _hd54175442_)
                                             (_g54095426_ _g54105429_))))
                                     (_g54095426_ _g54105429_))))
                             (_g54095426_ _g54105429_))))
                     (_g54095426_ _g54105429_)))))
          (_g54085471_ _stx5407_)))))
  (define gxc#lift-modules-module%
    (lambda (_stx5349_ _modules5350_)
      (let ((_g53525366_
             (lambda (_g53535363_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g53535363_))))
        (let ((_g53515404_
               (lambda (_g53535369_)
                 (if (gx#stx-pair? _g53535369_)
                     (let ((_e53565371_ (gx#stx-e _g53535369_)))
                       (let ((_hd53575374_ (##car _e53565371_))
                             (_tl53585376_ (##cdr _e53565371_)))
                         (if (gx#stx-pair? _tl53585376_)
                             (let ((_e53595379_ (gx#stx-e _tl53585376_)))
                               (let ((_hd53605382_ (##car _e53595379_))
                                     (_tl53615384_ (##cdr _e53595379_)))
                                 ((lambda (_L5387_ _L5388_)
                                    (let ((_ctx5401_
                                           (gx#syntax-local-e _L5388_)))
                                      (begin
                                        (set-box!
                                         _modules5350_
                                         (cons _ctx5401_
                                               (unbox _modules5350_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gxc#compile-e
                                            (gx#module-context-code _ctx5401_)
                                            _modules5350_))
                                         gx#current-expander-context
                                         _ctx5401_))))
                                  _tl53615384_
                                  _hd53605382_)))
                             (_g53525366_ _g53535369_))))
                     (_g53525366_ _g53535369_)))))
          (_g53515404_ _stx5349_)))))
  (define gxc#add-module-binding!
    (lambda (_id5343_ _syntax?5344_)
      (let ((_eid5346_ (gx#binding-id (gx#resolve-identifier _id5343_)))
            (_ht5347_
             (gxc#symbol-table-bindings (gxc#current-compile-symbol-table))))
        (if (interned-symbol? _eid5346_)
            '#!void
            (hash-put!
             _ht5347_
             _eid5346_
             (gx#make-binding-id
              (gxc#generate-runtime-gensym-reference _eid5346_)
              _syntax?5344_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id5331_)
      (let ((_bind5333_ (gx#resolve-identifier _id5331_)))
        (if _bind5333_
            (let ((_eid5335_ (gx#binding-id _bind5333_))
                  (_ht5336_
                   (gxc#symbol-table-bindings
                    (gxc#current-compile-symbol-table))))
              (if (interned-symbol? _eid5335_)
                  _eid5335_
                  (let ((_$e5338_ (hash-get _ht5336_ _eid5335_)))
                    (if _$e5338_
                        (values _$e5338_)
                        (if (gx#local-binding? _bind5333_)
                            (let ((_gid5341_
                                   (gxc#generate-runtime-gensym-reference
                                    _eid5335_)))
                              (begin
                                (hash-put! _ht5336_ _eid5335_ _gid5341_)
                                _gid5341_))
                            (gxc#raise-compile-error
                             '"Cannot compile reference to uninterned binding"
                             _id5331_
                             _eid5335_
                             _bind5333_))))))
            (if (interned-symbol? (gx#stx-e _id5331_))
                (gx#stx-e _id5331_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id5331_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id5329_)
      (if (gx#identifier? _id5329_)
          (gxc#generate-runtime-binding-id _id5329_)
          (gxc#generate-runtime-temporary))))
  (define gxc#generate-runtime-gensym-reference
    (lambda (_sym5320_)
      (let ((_ht5322_
             (gxc#symbol-table-gensyms (gxc#current-compile-symbol-table))))
        (let ((_$e5324_ (hash-get _ht5322_ _sym5320_)))
          (if _$e5324_
              (values _$e5324_)
              (let ((_g5327_ (make-symbol '"_" _sym5320_ '"_")))
                (begin (hash-put! _ht5322_ _sym5320_ _g5327_) _g5327_)))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id5318_)
      (gxc#generate-runtime-identifier-key (gx#core-identifier-key _id5318_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key5280_)
      (if (interned-symbol? _key5280_)
          _key5280_
          (if (uninterned-symbol? _key5280_)
              (gxc#generate-runtime-gensym-reference _key5280_)
              (let ((_key52815288_ _key5280_))
                (let ((_E52835292_
                       (lambda ()
                         (error '"No clause matching" _key52815288_))))
                  (let ((_K52845306_
                         (lambda (_mark5295_ _eid5296_)
                           (let ((_$e5298_
                                  (gx#expander-mark-subst _mark5295_)))
                             (if _$e5298_
                                 ((lambda (_ht5301_)
                                    (let ((_$e5303_
                                           (hash-get _ht5301_ _eid5296_)))
                                      (if _$e5303_
                                          (values _$e5303_)
                                          (gxc#generate-runtime-identifier-key
                                           _eid5296_))))
                                  _$e5298_)
                                 (gxc#generate-runtime-identifier-key
                                  _eid5296_))))))
                    (if (##pair? _key52815288_)
                        (let ((_hd52855309_ (##car _key52815288_))
                              (_tl52865311_ (##cdr _key52815288_)))
                          (let ((_eid5314_ _hd52855309_))
                            (let ((_mark5316_ _tl52865311_))
                              (_K52845306_ _mark5316_ _eid5314_))))
                        (_E52835292_)))))))))
  (define gxc#generate-runtime-temporary
    (let ((_opt-lambda52655272_
           (lambda (_top5267_)
             (if _top5267_
                 (let ((_ns5269_
                        (gx#module-context-ns (gx#current-expander-context)))
                       (_phi5270_ (gx#current-expander-phi)))
                   (if (fxpositive? _phi5270_)
                       (make-symbol
                        _ns5269_
                        '"["
                        (number->string _phi5270_)
                        '"]#_"
                        (gensym)
                        '"_")
                       (make-symbol _ns5269_ '"#_" (gensym) '"_")))
                 (make-symbol '"_" (gensym) '"_")))))
      (lambda _g5834_
        (let ((_g5833_ (length _g5834_)))
          (cond ((fx= _g5833_ 0)
                 (apply (lambda ()
                          (let ((_top5276_ '#f))
                            (_opt-lambda52655272_ _top5276_)))
                        _g5834_))
                ((fx= _g5833_ 1)
                 (apply (lambda (_top5278_) (_opt-lambda52655272_ _top5278_))
                        _g5834_))
                (else (error "No clause matching arguments" _g5834_)))))))
  (define gxc#generate-runtime-empty (lambda (_stx5264_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx5226_)
      (let ((_g52285238_
             (lambda (_g52295235_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g52295235_))))
        (let ((_g52275261_
               (lambda (_g52295241_)
                 (if (gx#stx-pair? _g52295241_)
                     (let ((_e52315243_ (gx#stx-e _g52295241_)))
                       (let ((_hd52325246_ (##car _e52315243_))
                             (_tl52335248_ (##cdr _e52315243_)))
                         ((lambda (_L5251_)
                            (cons 'begin
                                  (map gxc#compile-e (gx#stx-e _L5251_))))
                          _tl52335248_)))
                     (_g52285238_ _g52295241_)))))
          (_g52275261_ _stx5226_)))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx5188_)
      (let ((_g51905200_
             (lambda (_g51915197_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g51915197_))))
        (let ((_g51895223_
               (lambda (_g51915203_)
                 (if (gx#stx-pair? _g51915203_)
                     (let ((_e51935205_ (gx#stx-e _g51915203_)))
                       (let ((_hd51945208_ (##car _e51935205_))
                             (_tl51955210_ (##cdr _e51935205_)))
                         ((lambda (_L5213_)
                            (cons 'begin (gx#syntax->datum _L5213_)))
                          _tl51955210_)))
                     (_g51905200_ _g51915203_)))))
          (_g51895223_ _stx5188_)))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx5150_)
      (let ((_g51525162_
             (lambda (_g51535159_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g51535159_))))
        (let ((_g51515185_
               (lambda (_g51535165_)
                 (if (gx#stx-pair? _g51535165_)
                     (let ((_e51555167_ (gx#stx-e _g51535165_)))
                       (let ((_hd51565170_ (##car _e51555167_))
                             (_tl51575172_ (##cdr _e51555167_)))
                         ((lambda (_L5175_)
                            (cons 'declare (map gx#syntax->datum _L5175_)))
                          _tl51575172_)))
                     (_g51525162_ _g51535165_)))))
          (_g51515185_ _stx5150_)))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx4914_)
      (let ((_g49164933_
             (lambda (_g49174930_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g49174930_))))
        (let ((_g49155147_
               (lambda (_g49174936_)
                 (if (gx#stx-pair? _g49174936_)
                     (let ((_e49204938_ (gx#stx-e _g49174936_)))
                       (let ((_hd49214941_ (##car _e49204938_))
                             (_tl49224943_ (##cdr _e49204938_)))
                         (if (gx#stx-pair? _tl49224943_)
                             (let ((_e49234946_ (gx#stx-e _tl49224943_)))
                               (let ((_hd49244949_ (##car _e49234946_))
                                     (_tl49254951_ (##cdr _e49234946_)))
                                 (if (gx#stx-pair? _tl49254951_)
                                     (let ((_e49264954_
                                            (gx#stx-e _tl49254951_)))
                                       (let ((_hd49274957_ (##car _e49264954_))
                                             (_tl49284959_
                                              (##cdr _e49264954_)))
                                         (if (gx#stx-null? _tl49284959_)
                                             ((lambda (_L4962_ _L4963_)
                                                (let ((_g49804993_
                                                       (lambda (_g49814990_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g49814990_))))
                                                  (let ((_g49795107_
                                                         (lambda (_g49814996_)
                                                           ((lambda ()
                                                              (let ((_tmp5000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gxc#generate-runtime-temporary '#t)))
                        (let ((_body5104_
                               ((letrec ((_lp5002_
                                          (lambda (_rest5004_ _k5005_ _r5006_)
                                            (let ((_g50115027_
                                                   (lambda (_g50125024_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g50125024_))))
                                              (let ((_g50105034_
                                                     (lambda (_g50125030_)
                                                       ((lambda ()
                                                          (reverse _r5006_))))))
                                                (let ((_g50095055_
                                                       (lambda (_g50125037_)
                                                         ((lambda (_L5039_)
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L5039_)
                        (foldl cons
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L5039_)
                                                 (cons (cons 'values->list
                                                             (cons _tmp5000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k5005_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())
                               _r5006_)
                        (_g50105034_ _g50125037_)))
                  _g50125037_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g50085079_
                                                         (lambda (_g50125058_)
                                                           (if (gx#stx-pair?
                                                                _g50125058_)
                                                               (let ((_e50195060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _g50125058_)))
                         (let ((_hd50205063_ (##car _e50195060_))
                               (_tl50215065_ (##cdr _e50195060_)))
                           ((lambda (_L5068_ _L5069_)
                              (_lp5002_
                               _L5068_
                               (fx1+ _k5005_)
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L5069_)
                                                 (cons (cons 'values-ref
                                                             (cons _tmp5000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k5005_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _r5006_)))
                            _tl50215065_
                            _hd50205063_)))
                       (_g50095055_ _g50125058_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g50075101_
                                                           (lambda (_g50125082_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g50125082_)
                         (let ((_e50145084_ (gx#stx-e _g50125082_)))
                           (let ((_hd50155087_ (##car _e50145084_))
                                 (_tl50165089_ (##cdr _e50145084_)))
                             (if (gx#stx-datum? _hd50155087_)
                                 (if (equal? (gx#stx-e _hd50155087_) '#f)
                                     ((lambda (_L5092_)
                                        (_lp5002_
                                         _L5092_
                                         (fx1+ _k5005_)
                                         _r5006_))
                                      _tl50165089_)
                                     (_g50085079_ _g50125082_))
                                 (_g50085079_ _g50125082_))))
                         (_g50085079_ _g50125082_)))))
              (_g50075101_ _rest5004_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp5002_)
                                _L4963_
                                '0
                                '())))
                          (let ()
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons _tmp5000_
                                                    (cons (gxc#compile-e
                                                           _L4962_)
                                                          '())))
                                        (cons (gxc#generate-runtime-check-values
                                               _tmp5000_
                                               _L4963_)
                                              _body5104_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g49785129_
                                                           (lambda (_g49815110_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g49815110_)
                         (let ((_e49865112_ (gx#stx-e _g49815110_)))
                           (let ((_hd49875115_ (##car _e49865112_))
                                 (_tl49885117_ (##cdr _e49865112_)))
                             (if (gx#stx-null? _tl49885117_)
                                 ((lambda (_L5120_)
                                    (cons 'define
                                          (cons (gxc#generate-runtime-binding-id
                                                 _L5120_)
                                                (cons (gxc#compile-e _L4962_)
                                                      '()))))
                                  _hd49875115_)
                                 (_g49795107_ _g49815110_))))
                         (_g49795107_ _g49815110_)))))
              (let ((_g49775144_
                     (lambda (_g49815132_)
                       (if (gx#stx-pair? _g49815132_)
                           (let ((_e49825134_ (gx#stx-e _g49815132_)))
                             (let ((_hd49835137_ (##car _e49825134_))
                                   (_tl49845139_ (##cdr _e49825134_)))
                               (if (gx#stx-datum? _hd49835137_)
                                   (if (equal? (gx#stx-e _hd49835137_) '#f)
                                       (if (gx#stx-null? _tl49845139_)
                                           ((lambda ()
                                              (gxc#compile-e _L4962_)))
                                           (_g49785129_ _g49815132_))
                                       (_g49785129_ _g49815132_))
                                   (_g49785129_ _g49815132_))))
                           (_g49785129_ _g49815132_)))))
                (_g49775144_ _L4963_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd49274957_
                                              _hd49244949_)
                                             (_g49164933_ _g49174936_))))
                                     (_g49164933_ _g49174936_))))
                             (_g49164933_ _g49174936_))))
                     (_g49164933_ _g49174936_)))))
          (_g49155147_ _stx4914_)))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals4902_ _hd4903_)
      (let ((_len4905_ (gx#stx-length _hd4903_)))
        (let ((_cmp4907_ (if (gx#stx-list? _hd4903_) 'fx= 'fx>=)))
          (let ((_errmsg4909_
                 (string-append
                  (if (gx#stx-list? _hd4903_)
                      '"Context expects "
                      '"Context expects at least ")
                  (number->string _len4905_)
                  '" values")))
            (let ((_count4911_ (gxc#generate-runtime-temporary)))
              (let ()
                (if (if (not (gx#stx-list? _hd4903_)) (fx= _len4905_ '0) '#f)
                    '#!void
                    (cons 'let
                          (cons (cons (cons _count4911_
                                            (cons (cons 'values-count
                                                        (cons _vals4902_ '()))
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (cons _cmp4907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count4911_ (cons _len4905_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _errmsg4909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count4911_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx4835_)
      (let ((_g48374854_
             (lambda (_g48384851_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g48384851_))))
        (let ((_g48364899_
               (lambda (_g48384857_)
                 (if (gx#stx-pair? _g48384857_)
                     (let ((_e48414859_ (gx#stx-e _g48384857_)))
                       (let ((_hd48424862_ (##car _e48414859_))
                             (_tl48434864_ (##cdr _e48414859_)))
                         (if (gx#stx-pair? _tl48434864_)
                             (let ((_e48444867_ (gx#stx-e _tl48434864_)))
                               (let ((_hd48454870_ (##car _e48444867_))
                                     (_tl48464872_ (##cdr _e48444867_)))
                                 (if (gx#stx-pair? _tl48464872_)
                                     (let ((_e48474875_
                                            (gx#stx-e _tl48464872_)))
                                       (let ((_hd48484878_ (##car _e48474875_))
                                             (_tl48494880_
                                              (##cdr _e48474875_)))
                                         (if (gx#stx-null? _tl48494880_)
                                             ((lambda (_L4883_ _L4884_)
                                                (cons 'lambda
                                                      (cons (gxc#generate-runtime-lambda-head
                                                             _L4884_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4883_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd48484878_
                                              _hd48454870_)
                                             (_g48374854_ _g48384857_))))
                                     (_g48374854_ _g48384857_))))
                             (_g48374854_ _g48384857_))))
                     (_g48374854_ _g48384857_)))))
          (_g48364899_ _stx4835_)))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd4833_) (gx#stx-map gxc#generate-runtime-binding-id* _hd4833_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx4690_)
      (let ((_generate14692_
             (lambda (_args4823_ _arglen4824_ _hd4825_ _body4826_)
               (let ((_len4828_ (gx#stx-length _hd4825_)))
                 (let ((_condition4830_
                        (if (gx#stx-list? _hd4825_)
                            (cons 'fx=
                                  (cons _arglen4824_ (cons _len4828_ '())))
                            (if (> _len4828_ '0)
                                (cons 'fx>=
                                      (cons _arglen4824_ (cons _len4828_ '())))
                                '#t))))
                   (let ()
                     (cons _condition4830_
                           (cons (cons 'apply
                                       (cons (cons 'lambda
                                                   (cons (gxc#generate-runtime-lambda-head
                                                          _hd4825_)
                                                         (cons (gxc#compile-e
                                                                _body4826_)
                                                               '())))
                                             (cons _args4823_ '())))
                                 '()))))))))
        (let ((_g46944722_
               (lambda (_g46954719_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g46954719_))))
          (let ((_g46934820_
                 (lambda (_g46954725_)
                   (if (gx#stx-pair? _g46954725_)
                       (let ((_e46984727_ (gx#stx-e _g46954725_)))
                         (let ((_hd46994730_ (##car _e46984727_))
                               (_tl47004732_ (##cdr _e46984727_)))
                           (if (gx#stx-pair/null? _tl47004732_)
                               (if (fx>= (gx#stx-length _tl47004732_) '0)
                                   (let ((_g5835_ (gx#syntax-split-splice
                                                   _tl47004732_
                                                   '0)))
                                     (begin
                                       (let ((_g5836_ (values-count _g5835_)))
                                         (if (not (fx= _g5836_ 2))
                                             (error "Context expects 2 values"
                                                    _g5836_)))
                                       (let ((_target47014735_
                                              (values-ref _g5835_ 0))
                                             (_tl47034737_
                                              (values-ref _g5835_ 1)))
                                         (if (gx#stx-null? _tl47034737_)
                                             (letrec ((_loop47044740_
                                                       (lambda (_hd47024743_
                                                                _body47084745_
                                                                _hd47094747_)
                                                         (if (gx#stx-pair?
                                                              _hd47024743_)
                                                             (let ((_e47054750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd47024743_)))
                       (let ((_lp-hd47064753_ (##car _e47054750_))
                             (_lp-tl47074755_ (##cdr _e47054750_)))
                         (if (gx#stx-pair? _lp-hd47064753_)
                             (let ((_e47124758_ (gx#stx-e _lp-hd47064753_)))
                               (let ((_hd47134761_ (##car _e47124758_))
                                     (_tl47144763_ (##cdr _e47124758_)))
                                 (if (gx#stx-pair? _tl47144763_)
                                     (let ((_e47154766_
                                            (gx#stx-e _tl47144763_)))
                                       (let ((_hd47164769_ (##car _e47154766_))
                                             (_tl47174771_
                                              (##cdr _e47154766_)))
                                         (if (gx#stx-null? _tl47174771_)
                                             (_loop47044740_
                                              _lp-tl47074755_
                                              (cons _hd47164769_
                                                    _body47084745_)
                                              (cons _hd47134761_ _hd47094747_))
                                             (_g46944722_ _g46954725_))))
                                     (_g46944722_ _g46954725_))))
                             (_g46944722_ _g46954725_))))
                     (let ((_body47104774_ (reverse _body47084745_))
                           (_hd47114776_ (reverse _hd47094747_)))
                       ((lambda (_L4779_ _L4780_)
                          (let ((_args4796_ (gxc#generate-runtime-temporary))
                                (_arglen4797_
                                 (gxc#generate-runtime-temporary)))
                            (cons 'lambda
                                  (cons _args4796_
                                        (cons (cons 'let
                                                    (cons (cons (cons _arglen4797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons 'length (cons _args4796_ '())) '()))
                        '())
                  (cons (cons 'cond
                              (foldr cons
                                     (cons (cons 'else
                                                 (cons (cons 'error
                                                             (cons '"No clause matching arguments"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args4796_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (map (lambda (_g47984801_ _g47994803_)
                                            (_generate14692_
                                             _args4796_
                                             _arglen4797_
                                             _g47984801_
                                             _g47994803_))
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g48054808_
                                                            _g48064810_)
                                                     (cons _g48054808_
                                                           _g48064810_))
                                                   '()
                                                   _L4780_))
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g48124815_
                                                            _g48134817_)
                                                     (cons _g48124815_
                                                           _g48134817_))
                                                   '()
                                                   _L4779_)))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                        _body47104774_
                        _hd47114776_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop47044740_
                                                _target47014735_
                                                '()
                                                '()))
                                             (_g46944722_ _g46954725_)))))
                                   (_g46944722_ _g46954725_))
                               (_g46944722_ _g46954725_))))
                       (_g46944722_ _g46954725_)))))
            (_g46934820_ _stx4690_))))))
  (define gxc#generate-runtime-let-values%
    (let ((_opt-lambda43704680_
           (lambda (_stx4372_ _compiled-body?4373_)
             (let ((_generate-simple4375_
                    (lambda (_hd4677_ _body4678_)
                      (gxc#generate-runtime-simple-let
                       'let
                       _hd4677_
                       _body4678_
                       _compiled-body?4373_))))
               (let ((_generate-values-post4377_
                      (lambda (_post4449_ _body4450_)
                        ((letrec ((_lp4452_
                                   (lambda (_rest4454_ _body4455_)
                                     (let ((_rest44564464_ _rest4454_))
                                       (let ((_E44594468_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _rest44564464_))))
                                         (let ((_else44584472_
                                                (lambda () _body4455_)))
                                           (let ((_K44604478_
                                                  (lambda (_rest4475_
                                                           _bind4476_)
                                                    (_lp4452_
                                                     _rest4475_
                                                     (cons 'let
                                                           (cons _bind4476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body4455_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _rest44564464_)
                                                 (let ((_hd44614481_
                                                        (##car _rest44564464_))
                                                       (_tl44624483_
                                                        (##cdr _rest44564464_)))
                                                   (let ((_bind4486_
                                                          _hd44614481_))
                                                     (let ((_rest4488_
                                                            _tl44624483_))
                                                       (_K44604478_
                                                        _rest4488_
                                                        _bind4486_))))
                                                 (_else44584472_)))))))))
                           _lp4452_)
                         _post4449_
                         _body4450_))))
                 (let ((_generate-values-check4378_
                        (lambda (_check4446_ _body4447_)
                          (cons 'begin
                                (foldr cons
                                       (cons _body4447_ '())
                                       (reverse _check4446_))))))
                   (let ((_generate-values4376_
                          (lambda (_hd4490_ _body4491_)
                            ((letrec ((_lp4493_
                                       (lambda (_rest4495_
                                                _bind4496_
                                                _check4497_
                                                _post4498_)
                                         (let ((_g45014512_
                                                (lambda (_g45024509_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g45024509_))))
                                           (let ((_g45004526_
                                                  (lambda (_g45024515_)
                                                    ((lambda ()
                                                       (let ((_body4519_
                                                              (if _compiled-body?4373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body4491_
                          (gxc#compile-e _body4491_))))
                 (let ((_body4521_
                        (_generate-values-post4377_ _post4498_ _body4519_)))
                   (let ((_body4523_
                          (_generate-values-check4378_
                           _check4497_
                           _body4521_)))
                     (let ()
                       (cons 'let
                             (cons (reverse _bind4496_)
                                   (cons _body4523_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g44994674_
                                                    (lambda (_g45024529_)
                                                      (if (gx#stx-pair?
                                                           _g45024529_)
                                                          (let ((_e45054531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _g45024529_)))
                    (let ((_hd45064534_ (##car _e45054531_))
                          (_tl45074536_ (##cdr _e45054531_)))
                      ((lambda (_L4539_ _L4540_)
                         (let ((_g45554580_
                                (lambda (_g45564577_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g45564577_))))
                           (let ((_g45544624_
                                  (lambda (_g45564583_)
                                    (if (gx#stx-pair? _g45564583_)
                                        (let ((_e45704585_
                                               (gx#stx-e _g45564583_)))
                                          (let ((_hd45714588_
                                                 (##car _e45704585_))
                                                (_tl45724590_
                                                 (##cdr _e45704585_)))
                                            (if (gx#stx-pair? _tl45724590_)
                                                (let ((_e45734593_
                                                       (gx#stx-e
                                                        _tl45724590_)))
                                                  (let ((_hd45744596_
                                                         (##car _e45734593_))
                                                        (_tl45754598_
                                                         (##cdr _e45734593_)))
                                                    (if (gx#stx-null?
                                                         _tl45754598_)
                                                        ((lambda (_L4601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L4602_)
                   (let ((_vals4615_ (gxc#generate-runtime-temporary)))
                     (let ((_expr4617_ (gxc#compile-e _L4601_)))
                       (let ((_check-values4619_
                              (gxc#generate-runtime-check-values
                               _vals4615_
                               _L4602_)))
                         (let ((_refs4621_
                                (gxc#generate-runtime-let-values-bind
                                 _vals4615_
                                 _L4602_)))
                           (let ()
                             (_lp4493_
                              _L4539_
                              (cons (cons _vals4615_ (cons _expr4617_ '()))
                                    _bind4496_)
                              (cons _check-values4619_ _check4497_)
                              (cons _refs4621_ _post4498_))))))))
                 _hd45744596_
                 _hd45714588_)
                (_g45554580_ _g45564583_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g45554580_ _g45564583_))))
                                        (_g45554580_ _g45564583_)))))
                             (let ((_g45534671_
                                    (lambda (_g45564627_)
                                      (if (gx#stx-pair? _g45564627_)
                                          (let ((_e45594629_
                                                 (gx#stx-e _g45564627_)))
                                            (let ((_hd45604632_
                                                   (##car _e45594629_))
                                                  (_tl45614634_
                                                   (##cdr _e45594629_)))
                                              (if (gx#stx-pair? _hd45604632_)
                                                  (let ((_e45624637_
                                                         (gx#stx-e
                                                          _hd45604632_)))
                                                    (let ((_hd45634640_
                                                           (##car _e45624637_))
                                                          (_tl45644642_
                                                           (##cdr _e45624637_)))
                                                      (if (gx#stx-null?
                                                           _tl45644642_)
                                                          (if (gx#stx-pair?
                                                               _tl45614634_)
                                                              (let ((_e45654645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl45614634_)))
                        (let ((_hd45664648_ (##car _e45654645_))
                              (_tl45674650_ (##cdr _e45654645_)))
                          (if (gx#stx-null? _tl45674650_)
                              ((lambda (_L4653_ _L4654_)
                                 (let ((_eid4668_
                                        (gxc#generate-runtime-binding-id*
                                         _L4654_))
                                       (_expr4669_ (gxc#compile-e _L4653_)))
                                   (_lp4493_
                                    _L4539_
                                    (cons (cons _eid4668_
                                                (cons _expr4669_ '()))
                                          _bind4496_)
                                    _check4497_
                                    _post4498_)))
                               _hd45664648_
                               _hd45634640_)
                              (_g45544624_ _g45564627_))))
                      (_g45544624_ _g45564627_))
                  (_g45544624_ _g45564627_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g45544624_ _g45564627_))))
                                          (_g45544624_ _g45564627_)))))
                               (_g45534671_ _L4540_)))))
                       _tl45074536_
                       _hd45064534_)))
                  (_g45004526_ _g45024529_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g44994674_ _rest4495_)))))))
                               _lp4493_)
                             _hd4490_
                             '()
                             '()
                             '()))))
                     (let ((_g43804397_
                            (lambda (_g43814394_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g43814394_))))
                       (let ((_g43794443_
                              (lambda (_g43814400_)
                                (if (gx#stx-pair? _g43814400_)
                                    (let ((_e43844402_ (gx#stx-e _g43814400_)))
                                      (let ((_hd43854405_ (##car _e43844402_))
                                            (_tl43864407_ (##cdr _e43844402_)))
                                        (if (gx#stx-pair? _tl43864407_)
                                            (let ((_e43874410_
                                                   (gx#stx-e _tl43864407_)))
                                              (let ((_hd43884413_
                                                     (##car _e43874410_))
                                                    (_tl43894415_
                                                     (##cdr _e43874410_)))
                                                (if (gx#stx-pair? _tl43894415_)
                                                    (let ((_e43904418_
                                                           (gx#stx-e
                                                            _tl43894415_)))
                                                      (let ((_hd43914421_
                                                             (##car _e43904418_))
                                                            (_tl43924423_
                                                             (##cdr _e43904418_)))
                                                        (if (gx#stx-null?
                                                             _tl43924423_)
                                                            ((lambda (_L4426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L4427_)
                       (if (gxc#generate-runtime-simple-let? _L4427_)
                           (_generate-simple4375_ _L4427_ _L4426_)
                           (_generate-values4376_ _L4427_ _L4426_)))
                     _hd43914421_
                     _hd43884413_)
                    (_g43804397_ _g43814400_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g43804397_
                                                     _g43814400_))))
                                            (_g43804397_ _g43814400_))))
                                    (_g43804397_ _g43814400_)))))
                         (_g43794443_ _stx4372_))))))))))
      (lambda _g5838_
        (let ((_g5837_ (length _g5838_)))
          (cond ((fx= _g5837_ 1)
                 (apply (lambda (_stx4683_)
                          (let ((_compiled-body?4685_ '#f))
                            (_opt-lambda43704680_
                             _stx4683_
                             _compiled-body?4685_)))
                        _g5838_))
                ((fx= _g5837_ 2)
                 (apply (lambda (_stx4687_ _compiled-body?4688_)
                          (_opt-lambda43704680_
                           _stx4687_
                           _compiled-body?4688_))
                        _g5838_))
                (else (error "No clause matching arguments" _g5838_)))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals4271_ _hd4272_)
      ((letrec ((_lp4274_
                 (lambda (_rest4276_ _k4277_ _r4278_)
                   (let ((_g42834299_
                          (lambda (_g42844296_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g42844296_))))
                     (let ((_g42824306_
                            (lambda (_g42844302_)
                              ((lambda () (reverse _r4278_))))))
                       (let ((_g42814322_
                              (lambda (_g42844309_)
                                ((lambda (_L4311_)
                                   (if (gx#identifier? _L4311_)
                                       (foldl cons
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L4311_)
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals4271_ (cons _k4277_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              _r4278_)
                                       (_g42824306_ _g42844309_)))
                                 _g42844309_))))
                         (let ((_g42804346_
                                (lambda (_g42844325_)
                                  (if (gx#stx-pair? _g42844325_)
                                      (let ((_e42914327_
                                             (gx#stx-e _g42844325_)))
                                        (let ((_hd42924330_
                                               (##car _e42914327_))
                                              (_tl42934332_
                                               (##cdr _e42914327_)))
                                          ((lambda (_L4335_ _L4336_)
                                             (_lp4274_
                                              _L4335_
                                              (fx1+ _k4277_)
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L4336_)
                                                          (cons (cons 'values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals4271_ (cons _k4277_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _r4278_)))
                                           _tl42934332_
                                           _hd42924330_)))
                                      (_g42814322_ _g42844325_)))))
                           (let ((_g42794368_
                                  (lambda (_g42844349_)
                                    (if (gx#stx-pair? _g42844349_)
                                        (let ((_e42864351_
                                               (gx#stx-e _g42844349_)))
                                          (let ((_hd42874354_
                                                 (##car _e42864351_))
                                                (_tl42884356_
                                                 (##cdr _e42864351_)))
                                            (if (gx#stx-datum? _hd42874354_)
                                                (if (equal? (gx#stx-e
                                                             _hd42874354_)
                                                            '#f)
                                                    ((lambda (_L4359_)
                                                       (_lp4274_
                                                        _L4359_
                                                        (fx1+ _k4277_)
                                                        _r4278_))
                                                     _tl42884356_)
                                                    (_g42804346_ _g42844349_))
                                                (_g42804346_ _g42844349_))))
                                        (_g42804346_ _g42844349_)))))
                             (_g42794368_ _rest4276_)))))))))
         _lp4274_)
       _hd4272_
       '0
       '())))
  (define gxc#generate-runtime-letrec-values%
    (let ((_opt-lambda39494261_
           (lambda (_stx3951_ _compiled-body?3952_)
             (let ((_generate-simple3954_
                    (lambda (_hd4258_ _body4259_)
                      (gxc#generate-runtime-simple-let
                       'letrec
                       _hd4258_
                       _body4259_
                       _compiled-body?3952_))))
               (let ((_generate-values-check3956_
                      (lambda (_check4032_ _body4033_)
                        (cons 'begin
                              (foldr cons
                                     (cons _body4033_ '())
                                     (reverse _check4032_))))))
                 (let ((_generate-values-post3957_
                        (lambda (_post4025_ _body4026_)
                          (cons 'begin
                                (foldr cons
                                       (cons _body4026_ '())
                                       (map (lambda (_g40274029_)
                                              (cons 'set! _g40274029_))
                                            (reverse _post4025_)))))))
                   (let ((_generate-values3955_
                          (lambda (_hd4035_ _body4036_)
                            ((letrec ((_lp4038_
                                       (lambda (_rest4040_
                                                _bind4041_
                                                _check4042_
                                                _post4043_)
                                         (let ((_g40464057_
                                                (lambda (_g40474054_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g40474054_))))
                                           (let ((_g40454071_
                                                  (lambda (_g40474060_)
                                                    ((lambda ()
                                                       (let ((_body4064_
                                                              (if _compiled-body?3952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body4036_
                          (gxc#compile-e _body4036_))))
                 (let ((_body4066_
                        (_generate-values-post3957_ _post4043_ _body4064_)))
                   (let ((_body4068_
                          (_generate-values-check3956_
                           _check4042_
                           _body4066_)))
                     (let ()
                       (cons 'letrec
                             (cons (reverse _bind4041_)
                                   (cons _body4068_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g40444255_
                                                    (lambda (_g40474074_)
                                                      (if (gx#stx-pair?
                                                           _g40474074_)
                                                          (let ((_e40504076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _g40474074_)))
                    (let ((_hd40514079_ (##car _e40504076_))
                          (_tl40524081_ (##cdr _e40504076_)))
                      ((lambda (_L4084_ _L4085_)
                         (let ((_g41004125_
                                (lambda (_g41014122_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g41014122_))))
                           (let ((_g40994205_
                                  (lambda (_g41014128_)
                                    (if (gx#stx-pair? _g41014128_)
                                        (let ((_e41154130_
                                               (gx#stx-e _g41014128_)))
                                          (let ((_hd41164133_
                                                 (##car _e41154130_))
                                                (_tl41174135_
                                                 (##cdr _e41154130_)))
                                            (if (gx#stx-pair? _tl41174135_)
                                                (let ((_e41184138_
                                                       (gx#stx-e
                                                        _tl41174135_)))
                                                  (let ((_hd41194141_
                                                         (##car _e41184138_))
                                                        (_tl41204143_
                                                         (##cdr _e41184138_)))
                                                    (if (gx#stx-null?
                                                         _tl41204143_)
                                                        ((lambda (_L4146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L4147_)
                   (let ((_vals4160_ (gxc#generate-runtime-temporary)))
                     (let ((_expr4162_ (gxc#compile-e _L4146_)))
                       (let ((_check-values4164_
                              (gxc#generate-runtime-check-values
                               _vals4160_
                               _L4147_)))
                         (let ((_refs4166_
                                (gxc#generate-runtime-let-values-bind
                                 _vals4160_
                                 _L4147_)))
                           (let ()
                             (_lp4038_
                              _L4084_
                              (foldl cons
                                     (cons (cons _vals4160_
                                                 (cons _expr4162_ '()))
                                           _bind4041_)
                                     (map (lambda (_e41684170_)
                                            (let ((_g41724181_ _e41684170_))
                                              (let ((_E41744185_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _g41724181_))))
                                                (let ((_K41754190_
                                                       (lambda (_eid4188_)
                                                         (cons _eid4188_
                                                               (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _g41724181_)
                                                      (let ((_hd41764193_
                                                             (##car _g41724181_))
                                                            (_tl41774195_
                                                             (##cdr _g41724181_)))
                                                        (let ((_eid4198_
                                                               _hd41764193_))
                                                          (if (##pair? _tl41774195_)
                                                              (let ((_hd41784200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##car _tl41774195_))
                            (_tl41794202_ (##cdr _tl41774195_)))
                        (if (##null? _tl41794202_)
                            (_K41754190_ _eid4198_)
                            (_E41744185_)))
                      (_E41744185_))))
              (_E41744185_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _refs4166_))
                              (cons _check-values4164_ _check4042_)
                              (foldl cons _refs4166_ _post4043_))))))))
                 _hd41194141_
                 _hd41164133_)
                (_g41004125_ _g41014128_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g41004125_ _g41014128_))))
                                        (_g41004125_ _g41014128_)))))
                             (let ((_g40984252_
                                    (lambda (_g41014208_)
                                      (if (gx#stx-pair? _g41014208_)
                                          (let ((_e41044210_
                                                 (gx#stx-e _g41014208_)))
                                            (let ((_hd41054213_
                                                   (##car _e41044210_))
                                                  (_tl41064215_
                                                   (##cdr _e41044210_)))
                                              (if (gx#stx-pair? _hd41054213_)
                                                  (let ((_e41074218_
                                                         (gx#stx-e
                                                          _hd41054213_)))
                                                    (let ((_hd41084221_
                                                           (##car _e41074218_))
                                                          (_tl41094223_
                                                           (##cdr _e41074218_)))
                                                      (if (gx#stx-null?
                                                           _tl41094223_)
                                                          (if (gx#stx-pair?
                                                               _tl41064215_)
                                                              (let ((_e41104226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl41064215_)))
                        (let ((_hd41114229_ (##car _e41104226_))
                              (_tl41124231_ (##cdr _e41104226_)))
                          (if (gx#stx-null? _tl41124231_)
                              ((lambda (_L4234_ _L4235_)
                                 (let ((_eid4249_
                                        (gxc#generate-runtime-binding-id*
                                         _L4235_))
                                       (_expr4250_ (gxc#compile-e _L4234_)))
                                   (_lp4038_
                                    _L4084_
                                    (cons (cons _eid4249_
                                                (cons _expr4250_ '()))
                                          _bind4041_)
                                    _check4042_
                                    _post4043_)))
                               _hd41114229_
                               _hd41084221_)
                              (_g40994205_ _g41014208_))))
                      (_g40994205_ _g41014208_))
                  (_g40994205_ _g41014208_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g40994205_ _g41014208_))))
                                          (_g40994205_ _g41014208_)))))
                               (_g40984252_ _L4085_)))))
                       _tl40524081_
                       _hd40514079_)))
                  (_g40454071_ _g40474074_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g40444255_ _rest4040_)))))))
                               _lp4038_)
                             _hd4035_
                             '()
                             '()
                             '()))))
                     (let ((_g39593976_
                            (lambda (_g39603973_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g39603973_))))
                       (let ((_g39584022_
                              (lambda (_g39603979_)
                                (if (gx#stx-pair? _g39603979_)
                                    (let ((_e39633981_ (gx#stx-e _g39603979_)))
                                      (let ((_hd39643984_ (##car _e39633981_))
                                            (_tl39653986_ (##cdr _e39633981_)))
                                        (if (gx#stx-pair? _tl39653986_)
                                            (let ((_e39663989_
                                                   (gx#stx-e _tl39653986_)))
                                              (let ((_hd39673992_
                                                     (##car _e39663989_))
                                                    (_tl39683994_
                                                     (##cdr _e39663989_)))
                                                (if (gx#stx-pair? _tl39683994_)
                                                    (let ((_e39693997_
                                                           (gx#stx-e
                                                            _tl39683994_)))
                                                      (let ((_hd39704000_
                                                             (##car _e39693997_))
                                                            (_tl39714002_
                                                             (##cdr _e39693997_)))
                                                        (if (gx#stx-null?
                                                             _tl39714002_)
                                                            ((lambda (_L4005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L4006_)
                       (if (gxc#generate-runtime-simple-let? _L4006_)
                           (_generate-simple3954_ _L4006_ _L4005_)
                           (_generate-values3955_ _L4006_ _L4005_)))
                     _hd39704000_
                     _hd39673992_)
                    (_g39593976_ _g39603979_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g39593976_
                                                     _g39603979_))))
                                            (_g39593976_ _g39603979_))))
                                    (_g39593976_ _g39603979_)))))
                         (_g39584022_ _stx3951_))))))))))
      (lambda _g5840_
        (let ((_g5839_ (length _g5840_)))
          (cond ((fx= _g5839_ 1)
                 (apply (lambda (_stx4264_)
                          (let ((_compiled-body?4266_ '#f))
                            (_opt-lambda39494261_
                             _stx4264_
                             _compiled-body?4266_)))
                        _g5840_))
                ((fx= _g5839_ 2)
                 (apply (lambda (_stx4268_ _compiled-body?4269_)
                          (_opt-lambda39494261_
                           _stx4268_
                           _compiled-body?4269_))
                        _g5840_))
                (else (error "No clause matching arguments" _g5840_)))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx3070_)
      (let ((_collect-closures3073_
             (lambda (_forms3891_)
               (map (lambda (_e38923894_)
                      (let ((_g38963905_ _e38923894_))
                        (let ((_E38983909_
                               (lambda ()
                                 (error '"No clause matching" _g38963905_))))
                          (let ((_K38993914_
                                 (lambda (_expr3912_)
                                   (gxc#collect-expression-refs _expr3912_))))
                            (if (##pair? _g38963905_)
                                (let ((_hd39003917_ (##car _g38963905_))
                                      (_tl39013919_ (##cdr _g38963905_)))
                                  (if (##pair? _tl39013919_)
                                      (let ((_hd39023922_ (##car _tl39013919_))
                                            (_tl39033924_
                                             (##cdr _tl39013919_)))
                                        (let ((_expr3927_ _hd39023922_))
                                          (if (##null? _tl39033924_)
                                              (_K38993914_ _expr3927_)
                                              (_E38983909_))))
                                      (_E38983909_)))
                                (_E38983909_))))))
                    _forms3891_))))
        (let ((_collect-bindings3074_
               (lambda (_forms3815_)
                 (map (lambda (_e38163818_)
                        (let ((_g38203829_ _e38163818_))
                          (let ((_E38223833_
                                 (lambda ()
                                   (error '"No clause matching" _g38203829_))))
                            (let ((_K38233876_
                                   (lambda (_bind3836_)
                                     ((letrec ((_lp3838_
                                                (lambda (_rest3840_ _r3841_)
                                                  (let ((_rest38423850_
                                                         _rest3840_))
                                                    (let ((_E38453854_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest38423850_))))
              (let ((_else38443858_
                     (lambda ()
                       (if (gx#identifier? _rest3840_)
                           (cons _rest3840_ _r3841_)
                           _r3841_))))
                (let ((_K38463864_
                       (lambda (_rest3861_ _id3862_)
                         (if (gx#identifier? _id3862_)
                             (_lp3838_
                              _rest3861_
                              (cons (gx#binding-id
                                     (gx#resolve-identifier _id3862_))
                                    _r3841_))
                             (_lp3838_ _rest3861_ _r3841_)))))
                  (if (##pair? _rest38423850_)
                      (let ((_hd38473867_ (##car _rest38423850_))
                            (_tl38483869_ (##cdr _rest38423850_)))
                        (let ((_id3872_ _hd38473867_))
                          (let ((_rest3874_ _tl38483869_))
                            (_K38463864_ _rest3874_ _id3872_))))
                      (_else38443858_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp3838_)
                                      _bind3836_
                                      '()))))
                              (if (##pair? _g38203829_)
                                  (let ((_hd38243879_ (##car _g38203829_))
                                        (_tl38253881_ (##cdr _g38203829_)))
                                    (let ((_bind3884_ _hd38243879_))
                                      (if (##pair? _tl38253881_)
                                          (let ((_hd38263886_
                                                 (##car _tl38253881_))
                                                (_tl38273888_
                                                 (##cdr _tl38253881_)))
                                            (if (##null? _tl38273888_)
                                                (_K38233876_ _bind3884_)
                                                (_E38223833_)))
                                          (_E38223833_))))
                                  (_E38223833_))))))
                      _forms3815_))))
          (let ((_closure-reference?3078_
                 (lambda (_closure3367_ _bindings3368_)
                   (ormap (lambda (_g33693371_)
                            (hash-get _closure3367_ _g33693371_))
                          _bindings3368_))))
            (let ((_is-effect-expr?3080_
                   (lambda (_expr3278_)
                     (let ((_g32803290_
                            (lambda (_g32813287_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g32813287_))))
                       (let ((_g32793313_
                              (lambda (_g32813293_)
                                (if (gx#stx-pair? _g32813293_)
                                    (let ((_e32833295_ (gx#stx-e _g32813293_)))
                                      (let ((_hd32843298_ (##car _e32833295_))
                                            (_tl32853300_ (##cdr _e32833295_)))
                                        ((lambda (_L3303_)
                                           (not (memq (gx#stx-e _L3303_)
                                                      '(%#lambda
                                                        %#case-lambda
                                                        %#quote
                                                        %#quote-syntax
                                                        %#ref))))
                                         _hd32843298_)))
                                    (_g32803290_ _g32813293_)))))
                         (_g32793313_ _expr3278_))))))
              (let ((_is-lambda-expr?3081_
                     (lambda (_expr3240_)
                       (let ((_g32423252_
                              (lambda (_g32433249_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g32433249_))))
                         (let ((_g32413275_
                                (lambda (_g32433255_)
                                  (if (gx#stx-pair? _g32433255_)
                                      (let ((_e32453257_
                                             (gx#stx-e _g32433255_)))
                                        (let ((_hd32463260_
                                               (##car _e32453257_))
                                              (_tl32473262_
                                               (##cdr _e32453257_)))
                                          ((lambda (_L3265_)
                                             (memq (gx#stx-e _L3265_)
                                                   '(%#lambda %#case-lambda)))
                                           _hd32463260_)))
                                      (_g32423252_ _g32433255_)))))
                           (_g32413275_ _expr3240_))))))
                (let ((_lift-rec3077_
                       (lambda (_forms3374_)
                         ((letrec ((_lp3376_
                                    (lambda (_rest3378_
                                             _pre3379_
                                             _bind3380_
                                             _init3381_)
                                      (let ((_rest33823390_ _rest3378_))
                                        (let ((_E33853394_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _rest33823390_))))
                                          (let ((_else33843398_
                                                 (lambda ()
                                                   (values (reverse _pre3379_)
                                                           (reverse _bind3380_)
                                                           (reverse _init3381_)))))
                                            (let ((_K33863589_
                                                   (lambda (_rest3401_
                                                            _bind-hd3402_)
                                                     (let ((_g34063441_
                                                            (lambda (_g34073438_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g34073438_))))
                                                       (let ((_g34053498_
                                                              (lambda (_g34073444_)
                                                                (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g34073444_)
                            (let ((_e34313446_ (gx#stx-e _g34073444_)))
                              (let ((_hd34323449_ (##car _e34313446_))
                                    (_tl34333451_ (##cdr _e34313446_)))
                                (if (gx#stx-pair? _tl34333451_)
                                    (let ((_e34343454_
                                           (gx#stx-e _tl34333451_)))
                                      (let ((_hd34353457_ (##car _e34343454_))
                                            (_tl34363459_ (##cdr _e34343454_)))
                                        (if (gx#stx-null? _tl34363459_)
                                            ((lambda (_L3462_ _L3463_)
                                               (let ((_vals3482_
                                                      (gxc#generate-runtime-temporary)))
                                                 (let ((_expr3484_
                                                        (gxc#compile-e
                                                         _L3462_)))
                                                   (let ((_check-values3486_
                                                          (gxc#generate-runtime-check-values
                                                           _vals3482_
                                                           _L3463_)))
                                                     (let ((_refs3488_
                                                            (gxc#generate-runtime-let-values-bind
                                                             _vals3482_
                                                             _L3463_)))
                                                       (let ()
                                                         (_lp3376_
                                                          _rest3401_
                                                          (foldl (lambda (_ref3491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _r3492_)
                           (cons (cons (car _ref3491_) (cons '#!void '()))
                                 _r3492_))
                         _pre3379_
                         _refs3488_)
                  _bind3380_
                  (cons (cons 'let
                              (cons (cons (cons _vals3482_
                                                (cons _expr3484_ '()))
                                          '())
                                    (cons _check-values3486_
                                          (cons (map (lambda (_g34933495_)
                                                       (cons 'set!
                                                             _g34933495_))
                                                     _refs3488_)
                                                '()))))
                        _init3381_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd34353457_
                                             _hd34323449_)
                                            (_g34063441_ _g34073444_))))
                                    (_g34063441_ _g34073444_))))
                            (_g34063441_ _g34073444_)))))
                 (let ((_g34043544_
                        (lambda (_g34073501_)
                          (if (gx#stx-pair? _g34073501_)
                              (let ((_e34203503_ (gx#stx-e _g34073501_)))
                                (let ((_hd34213506_ (##car _e34203503_))
                                      (_tl34223508_ (##cdr _e34203503_)))
                                  (if (gx#stx-pair? _hd34213506_)
                                      (let ((_e34233511_
                                             (gx#stx-e _hd34213506_)))
                                        (let ((_hd34243514_
                                               (##car _e34233511_))
                                              (_tl34253516_
                                               (##cdr _e34233511_)))
                                          (if (gx#stx-null? _tl34253516_)
                                              (if (gx#stx-pair? _tl34223508_)
                                                  (let ((_e34263519_
                                                         (gx#stx-e
                                                          _tl34223508_)))
                                                    (let ((_hd34273522_
                                                           (##car _e34263519_))
                                                          (_tl34283524_
                                                           (##cdr _e34263519_)))
                                                      (if (gx#stx-null?
                                                           _tl34283524_)
                                                          ((lambda (_L3527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L3528_)
                     (let ((_eid3542_
                            (gxc#generate-runtime-binding-id _L3528_)))
                       (if (_is-lambda-expr?3081_ _L3527_)
                           (_lp3376_
                            _rest3401_
                            _pre3379_
                            (cons (cons _eid3542_
                                        (cons (gxc#compile-e _L3527_) '()))
                                  _bind3380_)
                            _init3381_)
                           (_lp3376_
                            _rest3401_
                            (cons (cons _eid3542_ (cons '#!void '()))
                                  _pre3379_)
                            _bind3380_
                            (cons (cons 'set!
                                        (cons _eid3542_
                                              (cons (gxc#compile-e _L3527_)
                                                    '())))
                                  _init3381_)))))
                   _hd34273522_
                   _hd34243514_)
                  (_g34053498_ _g34073501_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g34053498_ _g34073501_))
                                              (_g34053498_ _g34073501_))))
                                      (_g34053498_ _g34073501_))))
                              (_g34053498_ _g34073501_)))))
                   (let ((_g34033586_
                          (lambda (_g34073547_)
                            (if (gx#stx-pair? _g34073547_)
                                (let ((_e34093549_ (gx#stx-e _g34073547_)))
                                  (let ((_hd34103552_ (##car _e34093549_))
                                        (_tl34113554_ (##cdr _e34093549_)))
                                    (if (gx#stx-pair? _hd34103552_)
                                        (let ((_e34123557_
                                               (gx#stx-e _hd34103552_)))
                                          (let ((_hd34133560_
                                                 (##car _e34123557_))
                                                (_tl34143562_
                                                 (##cdr _e34123557_)))
                                            (if (gx#stx-datum? _hd34133560_)
                                                (if (equal? (gx#stx-e
                                                             _hd34133560_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl34143562_)
                                                        (if (gx#stx-pair?
                                                             _tl34113554_)
                                                            (let ((_e34153565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl34113554_)))
                      (let ((_hd34163568_ (##car _e34153565_))
                            (_tl34173570_ (##cdr _e34153565_)))
                        (if (gx#stx-null? _tl34173570_)
                            ((lambda (_L3573_)
                               (_lp3376_
                                _rest3401_
                                _pre3379_
                                _bind3380_
                                (cons (gxc#compile-e _L3573_) _init3381_)))
                             _hd34163568_)
                            (_g34043544_ _g34073547_))))
                    (_g34043544_ _g34073547_))
                (_g34043544_ _g34073547_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g34043544_ _g34073547_))
                                                (_g34043544_ _g34073547_))))
                                        (_g34043544_ _g34073547_))))
                                (_g34043544_ _g34073547_)))))
                     (_g34033586_ _bind-hd3402_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _rest33823390_)
                                                  (let ((_hd33873592_
                                                         (##car _rest33823390_))
                                                        (_tl33883594_
                                                         (##cdr _rest33823390_)))
                                                    (let ((_bind-hd3597_
                                                           _hd33873592_))
                                                      (let ((_rest3599_
                                                             _tl33883594_))
                                                        (_K33863589_
                                                         _rest3599_
                                                         _bind-hd3597_))))
                                                  (_else33843398_)))))))))
                            _lp3376_)
                          _forms3374_
                          '()
                          '()
                          '()))))
                  (let ((_is-effect-bind?3079_
                         (lambda (_hd-bind3316_)
                           (let ((_g33183331_
                                  (lambda (_g33193328_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g33193328_))))
                             (let ((_g33173364_
                                    (lambda (_g33193334_)
                                      (if (gx#stx-pair? _g33193334_)
                                          (let ((_e33213336_
                                                 (gx#stx-e _g33193334_)))
                                            (let ((_hd33223339_
                                                   (##car _e33213336_))
                                                  (_tl33233341_
                                                   (##cdr _e33213336_)))
                                              (if (gx#stx-pair? _tl33233341_)
                                                  (let ((_e33243344_
                                                         (gx#stx-e
                                                          _tl33233341_)))
                                                    (let ((_hd33253347_
                                                           (##car _e33243344_))
                                                          (_tl33263349_
                                                           (##cdr _e33243344_)))
                                                      (if (gx#stx-null?
                                                           _tl33263349_)
                                                          ((lambda (_L3352_)
                                                             (_is-effect-expr?3080_
                                                              _L3352_))
                                                           _hd33253347_)
                                                          (_g33183331_
                                                           _g33193334_))))
                                                  (_g33183331_ _g33193334_))))
                                          (_g33183331_ _g33193334_)))))
                               (_g33173364_ _hd-bind3316_))))))
                    (let ((_lift-pre3075_
                           (lambda (_hd3708_ _bindings3709_ _closures3710_)
                             ((letrec ((_lp3712_
                                        (lambda (_rest-forms3714_
                                                 _rest-bindings3715_
                                                 _rest-closures3716_
                                                 _post-forms3717_
                                                 _post-bindings3718_
                                                 _post-closures3719_
                                                 _pre-forms3720_
                                                 _lifted?3721_)
                                          (let ((_rest-forms37223738_
                                                 _rest-forms3714_)
                                                (_rest-bindings37233740_
                                                 _rest-bindings3715_)
                                                (_rest-closures37243742_
                                                 _rest-closures3716_))
                                            (let ((_E37273746_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _rest-forms37223738_
                                                            _rest-bindings37233740_
                                                            _rest-closures37243742_))))
                                              (let ((_else37263750_
                                                     (lambda ()
                                                       (if _lifted?3721_
                                                           (_lp3712_
                                                            (reverse _post-forms3717_)
                                                            (reverse _post-bindings3718_)
                                                            (reverse _post-closures3719_)
                                                            '()
                                                            '()
                                                            '()
                                                            _pre-forms3720_
                                                            '#f)
                                                           (values (reverse _pre-forms3720_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _post-forms3717_)
                           (reverse _post-bindings3718_)
                           (reverse _post-closures3719_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_K37283803_
                                                       (lambda (_rest-forms3753_
                                                                _form3754_)
                                                         (let ((_K37293791_
                                                                (lambda (_rest-bindings3756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bindings3757_)
                          (let ((_K37303779_
                                 (lambda (_rest-closures3759_ _closure3760_)
                                   (if (let ((_$e3762_
                                              (_closure-reference?3078_
                                               _closure3760_
                                               _bindings3757_)))
                                         (if _$e3762_
                                             _$e3762_
                                             (let ((_$e3769_
                                                    (ormap (lambda (_g37643766_)
                                                             (_closure-reference?3078_
                                                              _closure3760_
                                                              _g37643766_))
                                                           _rest-bindings3756_)))
                                               (if _$e3769_
                                                   _$e3769_
                                                   (let ((_$e3776_
                                                          (ormap (lambda (_g37713773_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_closure-reference?3078_
                            _closure3760_
                            _g37713773_))
                         _post-bindings3718_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e3776_
                                                         _$e3776_
                                                         (if (_is-effect-bind?3079_
                                                              _form3754_)
                                                             (find _is-effect-bind?3079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _post-forms3717_)
                     '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_lp3712_
                                        _rest-forms3753_
                                        _rest-bindings3756_
                                        _rest-closures3759_
                                        (cons _form3754_ _post-forms3717_)
                                        (cons _bindings3757_
                                              _post-bindings3718_)
                                        (cons _closure3760_
                                              _post-closures3719_)
                                        _pre-forms3720_
                                        _lifted?3721_)
                                       (_lp3712_
                                        _rest-forms3753_
                                        _rest-bindings3756_
                                        _rest-closures3759_
                                        _post-forms3717_
                                        _post-bindings3718_
                                        _post-closures3719_
                                        (cons _form3754_ _pre-forms3720_)
                                        '#t)))))
                            (if (##pair? _rest-closures37243742_)
                                (let ((_hd37313782_
                                       (##car _rest-closures37243742_))
                                      (_tl37323784_
                                       (##cdr _rest-closures37243742_)))
                                  (let ((_closure3787_ _hd37313782_))
                                    (let ((_rest-closures3789_ _tl37323784_))
                                      (_K37303779_
                                       _rest-closures3789_
                                       _closure3787_))))
                                (_else37263750_))))))
                   (if (##pair? _rest-bindings37233740_)
                       (let ((_hd37333794_ (##car _rest-bindings37233740_))
                             (_tl37343796_ (##cdr _rest-bindings37233740_)))
                         (let ((_bindings3799_ _hd37333794_))
                           (let ((_rest-bindings3801_ _tl37343796_))
                             (_K37293791_
                              _rest-bindings3801_
                              _bindings3799_))))
                       (_else37263750_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _rest-forms37223738_)
                                                      (let ((_hd37353806_
                                                             (##car _rest-forms37223738_))
                                                            (_tl37363808_
                                                             (##cdr _rest-forms37223738_)))
                                                        (let ((_form3811_
                                                               _hd37353806_))
                                                          (let ((_rest-forms3813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl37363808_))
                    (_K37283803_ _rest-forms3813_ _form3811_))))
              (_else37263750_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _lp3712_)
                              _hd3708_
                              _bindings3709_
                              _closures3710_
                              '()
                              '()
                              '()
                              '()
                              '#f))))
                      (let ((_lift-post3076_
                             (lambda (_hd3601_ _bindings3602_ _closures3603_)
                               ((letrec ((_lp3605_
                                          (lambda (_rest-forms3607_
                                                   _rest-bindings3608_
                                                   _rest-closures3609_
                                                   _pre-forms3610_
                                                   _pre-bindings3611_
                                                   _pre-closures3612_
                                                   _post-forms3613_
                                                   _lifted?3614_)
                                            (let ((_rest-forms36153631_
                                                   _rest-forms3607_)
                                                  (_rest-bindings36163633_
                                                   _rest-bindings3608_)
                                                  (_rest-closures36173635_
                                                   _rest-closures3609_))
                                              (let ((_E36203639_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _rest-forms36153631_
                                                              _rest-bindings36163633_
                                                              _rest-closures36173635_))))
                                                (let ((_else36193643_
                                                       (lambda ()
                                                         (if _lifted?3614_
                                                             (_lp3605_
                                                              (reverse _pre-forms3610_)
                                                              (reverse _pre-bindings3611_)
                                                              (reverse _pre-closures3612_)
                                                              '()
                                                              '()
                                                              '()
                                                              _post-forms3613_
                                                              '#f)
                                                             (values _post-forms3613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-forms3610_
                             _pre-bindings3611_
                             _pre-closures3612_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_K36213696_
                                                         (lambda (_rest-forms3646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _form3647_)
                   (let ((_K36223684_
                          (lambda (_rest-bindings3649_ _bindings3650_)
                            (let ((_K36233672_
                                   (lambda (_rest-closures3652_ _closure3653_)
                                     (if (let ((_$e3655_
                                                (_closure-reference?3078_
                                                 _closure3653_
                                                 _bindings3650_)))
                                           (if _$e3655_
                                               _$e3655_
                                               (let ((_$e3662_
                                                      (ormap (lambda (_g36573659_)
                                                               (_closure-reference?3078_
                                                                _g36573659_
                                                                _bindings3650_))
                                                             _rest-closures3652_)))
                                                 (if _$e3662_
                                                     _$e3662_
                                                     (let ((_$e3669_
                                                            (ormap (lambda (_g36643666_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (_closure-reference?3078_
                              _g36643666_
                              _bindings3650_))
                           _pre-closures3612_)))
               (if _$e3669_
                   _$e3669_
                   (if (_is-effect-bind?3079_ _form3647_)
                       (find _is-effect-bind?3079_ _pre-forms3610_)
                       '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_lp3605_
                                          _rest-forms3646_
                                          _rest-bindings3649_
                                          _rest-closures3652_
                                          (cons _form3647_ _pre-forms3610_)
                                          (cons _bindings3650_
                                                _pre-bindings3611_)
                                          (cons _closure3653_
                                                _pre-closures3612_)
                                          _post-forms3613_
                                          _lifted?3614_)
                                         (_lp3605_
                                          _rest-forms3646_
                                          _rest-bindings3649_
                                          _rest-closures3652_
                                          _pre-forms3610_
                                          _pre-bindings3611_
                                          _pre-closures3612_
                                          (cons _form3647_ _post-forms3613_)
                                          '#t)))))
                              (if (##pair? _rest-closures36173635_)
                                  (let ((_hd36243675_
                                         (##car _rest-closures36173635_))
                                        (_tl36253677_
                                         (##cdr _rest-closures36173635_)))
                                    (let ((_closure3680_ _hd36243675_))
                                      (let ((_rest-closures3682_ _tl36253677_))
                                        (_K36233672_
                                         _rest-closures3682_
                                         _closure3680_))))
                                  (_else36193643_))))))
                     (if (##pair? _rest-bindings36163633_)
                         (let ((_hd36263687_ (##car _rest-bindings36163633_))
                               (_tl36273689_ (##cdr _rest-bindings36163633_)))
                           (let ((_bindings3692_ _hd36263687_))
                             (let ((_rest-bindings3694_ _tl36273689_))
                               (_K36223684_
                                _rest-bindings3694_
                                _bindings3692_))))
                         (_else36193643_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (##pair? _rest-forms36153631_)
                                                        (let ((_hd36283699_
                                                               (##car _rest-forms36153631_))
                                                              (_tl36293701_
                                                               (##cdr _rest-forms36153631_)))
                                                          (let ((_form3704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd36283699_))
                    (let ((_rest-forms3706_ _tl36293701_))
                      (_K36213696_ _rest-forms3706_ _form3704_))))
                (_else36193643_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp3605_)
                                (reverse _hd3601_)
                                (reverse _bindings3602_)
                                (reverse _closures3603_)
                                '()
                                '()
                                '()
                                '()
                                '#f))))
                        (let ((_linearize3072_
                               (lambda (_forms3929_)
                                 (let ((_closures3931_
                                        (_collect-closures3073_ _forms3929_)))
                                   (let ((_bindings3933_
                                          (_collect-bindings3074_
                                           _forms3929_)))
                                     (let ((_g5843_ (_lift-pre3075_
                                                     _forms3929_
                                                     _bindings3933_
                                                     _closures3931_)))
                                       (begin
                                         (let ((_g5844_ (values-count
                                                         _g5843_)))
                                           (if (not (fx= _g5844_ 4))
                                               (error "Context expects 4 values"
                                                      _g5844_)))
                                         (let ((_pre-bind3935_
                                                (values-ref _g5843_ 0))
                                               (_forms3936_
                                                (values-ref _g5843_ 1))
                                               (_bindings3937_
                                                (values-ref _g5843_ 2))
                                               (_closures3938_
                                                (values-ref _g5843_ 3)))
                                           (let ((_g5845_ (_lift-post3076_
                                                           _forms3936_
                                                           _bindings3937_
                                                           _closures3938_)))
                                             (begin
                                               (let ((_g5846_ (values-count
                                                               _g5845_)))
                                                 (if (not (fx= _g5846_ 4))
                                                     (error "Context expects 4 values"
                                                            _g5846_)))
                                               (let ((_post-bind3940_
                                                      (values-ref _g5845_ 0))
                                                     (_forms3941_
                                                      (values-ref _g5845_ 1))
                                                     (_bindings3942_
                                                      (values-ref _g5845_ 2))
                                                     (_closures3943_
                                                      (values-ref _g5845_ 3)))
                                                 (let ((_g5847_ (_lift-rec3077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _forms3941_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     (let ((_g5848_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g5847_)))
               (if (not (fx= _g5848_ 3))
                   (error "Context expects 3 values" _g5848_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_rec-pre3945_
                                                            (values-ref
                                                             _g5847_
                                                             0))
                                                           (_rec-bind3946_
                                                            (values-ref
                                                             _g5847_
                                                             1))
                                                           (_rec-init3947_
                                                            (values-ref
                                                             _g5847_
                                                             2)))
                                                       (let ()
                                                         (values _pre-bind3935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rec-pre3945_
                         _rec-bind3946_
                         _rec-init3947_
                         _post-bind3940_))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (letrec ((_generate-let*3082_
                                    (lambda (_hd3169_ _body3170_)
                                      (let ((_hd31713179_ _hd3169_))
                                        (let ((_E31743183_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _hd31713179_))))
                                          (let ((_else31733187_
                                                 (lambda () _body3170_)))
                                            (let ((_K31753228_
                                                   (lambda (_rest3190_
                                                            _bind3191_)
                                                     (let ((_bind31923201_
                                                            _bind3191_))
                                                       (let ((_E31943205_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind31923201_))))
                 (let ((_K31953211_
                        (lambda (_expr3208_ _hd3209_)
                          (if (gx#stx-ormap gx#identifier? _hd3209_)
                              (gxc#generate-runtime-let-values%
                               (cons '%#let-values
                                     (cons (cons _bind3191_ '())
                                           (cons (_generate-let*3082_
                                                  _rest3190_
                                                  _body3170_)
                                                 '())))
                               '#t)
                              (cons 'begin
                                    (cons (gxc#compile-e _expr3208_)
                                          (cons (_generate-let*3082_
                                                 _rest3190_
                                                 _body3170_)
                                                '())))))))
                   (if (##pair? _bind31923201_)
                       (let ((_hd31963214_ (##car _bind31923201_))
                             (_tl31973216_ (##cdr _bind31923201_)))
                         (let ((_hd3219_ _hd31963214_))
                           (if (##pair? _tl31973216_)
                               (let ((_hd31983221_ (##car _tl31973216_))
                                     (_tl31993223_ (##cdr _tl31973216_)))
                                 (let ((_expr3226_ _hd31983221_))
                                   (if (##null? _tl31993223_)
                                       (_K31953211_ _expr3226_ _hd3219_)
                                       (_E31943205_))))
                               (_E31943205_))))
                       (_E31943205_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _hd31713179_)
                                                  (let ((_hd31763231_
                                                         (##car _hd31713179_))
                                                        (_tl31773233_
                                                         (##cdr _hd31713179_)))
                                                    (let ((_bind3236_
                                                           _hd31763231_))
                                                      (let ((_rest3238_
                                                             _tl31773233_))
                                                        (_K31753228_
                                                         _rest3238_
                                                         _bind3236_))))
                                                  (_else31733187_)))))))))
                            (let ((_g30843101_
                                   (lambda (_g30853098_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g30853098_))))
                              (let ((_g30833166_
                                     (lambda (_g30853104_)
                                       (if (gx#stx-pair? _g30853104_)
                                           (let ((_e30883106_
                                                  (gx#stx-e _g30853104_)))
                                             (let ((_hd30893109_
                                                    (##car _e30883106_))
                                                   (_tl30903111_
                                                    (##cdr _e30883106_)))
                                               (if (gx#stx-pair? _tl30903111_)
                                                   (let ((_e30913114_
                                                          (gx#stx-e
                                                           _tl30903111_)))
                                                     (let ((_hd30923117_
                                                            (##car _e30913114_))
                                                           (_tl30933119_
                                                            (##cdr _e30913114_)))
                                                       (if (gx#stx-pair?
                                                            _tl30933119_)
                                                           (let ((_e30943122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl30933119_)))
                     (let ((_hd30953125_ (##car _e30943122_))
                           (_tl30963127_ (##cdr _e30943122_)))
                       (if (gx#stx-null? _tl30963127_)
                           ((lambda (_L3130_ _L3131_)
                              (let ((_g5841_ (_linearize3072_ _L3131_)))
                                (begin
                                  (let ((_g5842_ (values-count _g5841_)))
                                    (if (not (fx= _g5842_ 5))
                                        (error "Context expects 5 values"
                                               _g5842_)))
                                  (let ((_pre3147_ (values-ref _g5841_ 0))
                                        (_rec-pre3148_ (values-ref _g5841_ 1))
                                        (_rec-bind3149_ (values-ref _g5841_ 2))
                                        (_rec-init3150_ (values-ref _g5841_ 3))
                                        (_post3151_ (values-ref _g5841_ 4)))
                                    (let ((_body3153_ (gxc#compile-e _L3130_)))
                                      (let ((_body3155_
                                             (if (null? _post3151_)
                                                 _body3153_
                                                 (_generate-let*3082_
                                                  _post3151_
                                                  _body3153_))))
                                        (let ((_body3157_
                                               (if (null? _rec-init3150_)
                                                   _body3155_
                                                   (cons 'begin
                                                         (foldr cons
                                                                (cons _body3155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        _rec-init3150_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_body3159_
                                                 (if (null? _rec-bind3149_)
                                                     _body3157_
                                                     (cons 'letrec
                                                           (cons _rec-bind3149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body3157_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_body3161_
                                                   (if (null? _rec-pre3148_)
                                                       _body3159_
                                                       (cons 'let
                                                             (cons _rec-pre3148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body3159_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_body3163_
                                                     (if (null? _pre3147_)
                                                         _body3161_
                                                         (_generate-let*3082_
                                                          _pre3147_
                                                          _body3161_))))
                                                (let () _body3163_)))))))))))
                            _hd30953125_
                            _hd30923117_)
                           (_g30843101_ _g30853104_))))
                   (_g30843101_ _g30853104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g30843101_ _g30853104_))))
                                           (_g30843101_ _g30853104_)))))
                                (_g30833166_ _stx3070_))))))))))))))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd2963_)
      ((letrec ((_lp2965_
                 (lambda (_rest2967_)
                   (let ((_g29712992_
                          (lambda (_g29722989_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g29722989_))))
                     (let ((_g29702999_
                            (lambda (_g29722995_) ((lambda () '#f)))))
                       (let ((_g29693006_
                              (lambda (_g29723002_)
                                (if (gx#stx-null? _g29723002_)
                                    ((lambda () '#t))
                                    (_g29702999_ _g29723002_)))))
                         (let ((_g29683067_
                                (lambda (_g29723009_)
                                  (if (gx#stx-pair? _g29723009_)
                                      (let ((_e29763011_
                                             (gx#stx-e _g29723009_)))
                                        (let ((_hd29773014_
                                               (##car _e29763011_))
                                              (_tl29783016_
                                               (##cdr _e29763011_)))
                                          (if (gx#stx-pair? _hd29773014_)
                                              (let ((_e29793019_
                                                     (gx#stx-e _hd29773014_)))
                                                (let ((_hd29803022_
                                                       (##car _e29793019_))
                                                      (_tl29813024_
                                                       (##cdr _e29793019_)))
                                                  (if (gx#stx-pair?
                                                       _hd29803022_)
                                                      (let ((_e29823027_
                                                             (gx#stx-e
                                                              _hd29803022_)))
                                                        (let ((_hd29833030_
                                                               (##car _e29823027_))
                                                              (_tl29843032_
                                                               (##cdr _e29823027_)))
                                                          (if (gx#stx-null?
                                                               _tl29843032_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl29813024_)
                          (let ((_e29853035_ (gx#stx-e _tl29813024_)))
                            (let ((_hd29863038_ (##car _e29853035_))
                                  (_tl29873040_ (##cdr _e29853035_)))
                              (if (gx#stx-null? _tl29873040_)
                                  ((lambda (_L3043_ _L3044_ _L3045_)
                                     (_lp2965_ _L3043_))
                                   _tl29783016_
                                   _hd29863038_
                                   _hd29833030_)
                                  (_g29693006_ _g29723009_))))
                          (_g29693006_ _g29723009_))
                      (_g29693006_ _g29723009_))))
              (_g29693006_ _g29723009_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g29693006_ _g29723009_))))
                                      (_g29693006_ _g29723009_)))))
                           (_g29683067_ _rest2967_))))))))
         _lp2965_)
       _hd2963_)))
  (define gxc#generate-runtime-simple-let
    (lambda (_form2887_ _hd2888_ _body2889_ _compiled-body?2890_)
      (let ((_generate12892_
             (lambda (_bind2894_)
               (let ((_g28962913_
                      (lambda (_g28972910_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g28972910_))))
                 (let ((_g28952960_
                        (lambda (_g28972916_)
                          (if (gx#stx-pair? _g28972916_)
                              (let ((_e29002918_ (gx#stx-e _g28972916_)))
                                (let ((_hd29012921_ (##car _e29002918_))
                                      (_tl29022923_ (##cdr _e29002918_)))
                                  (if (gx#stx-pair? _hd29012921_)
                                      (let ((_e29032926_
                                             (gx#stx-e _hd29012921_)))
                                        (let ((_hd29042929_
                                               (##car _e29032926_))
                                              (_tl29052931_
                                               (##cdr _e29032926_)))
                                          (if (gx#stx-null? _tl29052931_)
                                              (if (gx#stx-pair? _tl29022923_)
                                                  (let ((_e29062934_
                                                         (gx#stx-e
                                                          _tl29022923_)))
                                                    (let ((_hd29072937_
                                                           (##car _e29062934_))
                                                          (_tl29082939_
                                                           (##cdr _e29062934_)))
                                                      (if (gx#stx-null?
                                                           _tl29082939_)
                                                          ((lambda (_L2942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L2943_)
                     (cons (gxc#generate-runtime-binding-id* _L2943_)
                           (cons (gxc#compile-e _L2942_) '())))
                   _hd29072937_
                   _hd29042929_)
                  (_g28962913_ _g28972916_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g28962913_ _g28972916_))
                                              (_g28962913_ _g28972916_))))
                                      (_g28962913_ _g28972916_))))
                              (_g28962913_ _g28972916_)))))
                   (_g28952960_ _bind2894_))))))
        (cons _form2887_
              (cons (map _generate12892_ _hd2888_)
                    (cons (if _compiled-body?2890_
                              _body2889_
                              (gxc#compile-e _body2889_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx2798_)
      (letrec ((_generate12800_
                (lambda (_datum2852_)
                  (if (let ((_$e2854_ (null? _datum2852_)))
                        (if _$e2854_
                            _$e2854_
                            (let ((_$e2857_ (symbol? _datum2852_)))
                              (if _$e2857_
                                  _$e2857_
                                  (gx#self-quoting? _datum2852_)))))
                      _datum2852_
                      (if (uninterned-symbol? _datum2852_)
                          (gxc#generate-runtime-gensym-reference _datum2852_)
                          (if (pair? _datum2852_)
                              (cons (_generate12800_ (car _datum2852_))
                                    (_generate12800_ (cdr _datum2852_)))
                              (if (box? _datum2852_)
                                  (box (_generate12800_ (unbox _datum2852_)))
                                  (if (vector? _datum2852_)
                                      (vector-map _generate12800_ _datum2852_)
                                      (if (let ((_$e2860_
                                                 (s8vector? _datum2852_)))
                                            (if _$e2860_
                                                _$e2860_
                                                (let ((_$e2863_
                                                       (u8vector?
                                                        _datum2852_)))
                                                  (if _$e2863_
                                                      _$e2863_
                                                      (let ((_$e2866_
                                                             (s16vector?
                                                              _datum2852_)))
                                                        (if _$e2866_
                                                            _$e2866_
                                                            (let ((_$e2869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum2852_)))
                      (if _$e2869_
                          _$e2869_
                          (let ((_$e2872_ (s32vector? _datum2852_)))
                            (if _$e2872_
                                _$e2872_
                                (let ((_$e2875_ (u32vector? _datum2852_)))
                                  (if _$e2875_
                                      _$e2875_
                                      (let ((_$e2878_
                                             (s64vector? _datum2852_)))
                                        (if _$e2878_
                                            _$e2878_
                                            (let ((_$e2881_
                                                   (u64vector? _datum2852_)))
                                              (if _$e2881_
                                                  _$e2881_
                                                  (let ((_$e2884_
                                                         (f32vector?
                                                          _datum2852_)))
                                                    (if _$e2884_
                                                        _$e2884_
                                                        (f64vector?
                                                         _datum2852_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum2852_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx2798_))))))))))
        (let ((_g28022815_
               (lambda (_g28032812_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g28032812_))))
          (let ((_g28012849_
                 (lambda (_g28032818_)
                   (if (gx#stx-pair? _g28032818_)
                       (let ((_e28052820_ (gx#stx-e _g28032818_)))
                         (let ((_hd28062823_ (##car _e28052820_))
                               (_tl28072825_ (##cdr _e28052820_)))
                           (if (gx#stx-pair? _tl28072825_)
                               (let ((_e28082828_ (gx#stx-e _tl28072825_)))
                                 (let ((_hd28092831_ (##car _e28082828_))
                                       (_tl28102833_ (##cdr _e28082828_)))
                                   (if (gx#stx-null? _tl28102833_)
                                       ((lambda (_L2836_)
                                          (cons 'quote
                                                (cons (_generate12800_
                                                       (gx#stx-e _L2836_))
                                                      '())))
                                        _hd28092831_)
                                       (_g28022815_ _g28032818_))))
                               (_g28022815_ _g28032818_))))
                       (_g28022815_ _g28032818_)))))
            (_g28012849_ _stx2798_))))))
  (define gxc#generate-runtime-call%
    (lambda (_stx2760_)
      (let ((_g27622772_
             (lambda (_g27632769_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g27632769_))))
        (let ((_g27612795_
               (lambda (_g27632775_)
                 (if (gx#stx-pair? _g27632775_)
                     (let ((_e27652777_ (gx#stx-e _g27632775_)))
                       (let ((_hd27662780_ (##car _e27652777_))
                             (_tl27672782_ (##cdr _e27652777_)))
                         ((lambda (_L2785_) (map gxc#compile-e _L2785_))
                          _tl27672782_)))
                     (_g27622772_ _g27632775_)))))
          (_g27612795_ _stx2760_)))))
  (define gxc#generate-runtime-if%
    (lambda (_stx2722_)
      (let ((_g27242734_
             (lambda (_g27252731_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g27252731_))))
        (let ((_g27232757_
               (lambda (_g27252737_)
                 (if (gx#stx-pair? _g27252737_)
                     (let ((_e27272739_ (gx#stx-e _g27252737_)))
                       (let ((_hd27282742_ (##car _e27272739_))
                             (_tl27292744_ (##cdr _e27272739_)))
                         ((lambda (_L2747_)
                            (cons 'if (map gxc#compile-e _L2747_)))
                          _tl27292744_)))
                     (_g27242734_ _g27252737_)))))
          (_g27232757_ _stx2722_)))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx2671_)
      (let ((_g26732686_
             (lambda (_g26742683_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g26742683_))))
        (let ((_g26722719_
               (lambda (_g26742689_)
                 (if (gx#stx-pair? _g26742689_)
                     (let ((_e26762691_ (gx#stx-e _g26742689_)))
                       (let ((_hd26772694_ (##car _e26762691_))
                             (_tl26782696_ (##cdr _e26762691_)))
                         (if (gx#stx-pair? _tl26782696_)
                             (let ((_e26792699_ (gx#stx-e _tl26782696_)))
                               (let ((_hd26802702_ (##car _e26792699_))
                                     (_tl26812704_ (##cdr _e26792699_)))
                                 (if (gx#stx-null? _tl26812704_)
                                     ((lambda (_L2707_)
                                        (gxc#generate-runtime-binding-id
                                         _L2707_))
                                      _hd26802702_)
                                     (_g26732686_ _g26742689_))))
                             (_g26732686_ _g26742689_))))
                     (_g26732686_ _g26742689_)))))
          (_g26722719_ _stx2671_)))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx2604_)
      (let ((_g26062623_
             (lambda (_g26072620_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g26072620_))))
        (let ((_g26052668_
               (lambda (_g26072626_)
                 (if (gx#stx-pair? _g26072626_)
                     (let ((_e26102628_ (gx#stx-e _g26072626_)))
                       (let ((_hd26112631_ (##car _e26102628_))
                             (_tl26122633_ (##cdr _e26102628_)))
                         (if (gx#stx-pair? _tl26122633_)
                             (let ((_e26132636_ (gx#stx-e _tl26122633_)))
                               (let ((_hd26142639_ (##car _e26132636_))
                                     (_tl26152641_ (##cdr _e26132636_)))
                                 (if (gx#stx-pair? _tl26152641_)
                                     (let ((_e26162644_
                                            (gx#stx-e _tl26152641_)))
                                       (let ((_hd26172647_ (##car _e26162644_))
                                             (_tl26182649_
                                              (##cdr _e26162644_)))
                                         (if (gx#stx-null? _tl26182649_)
                                             ((lambda (_L2652_ _L2653_)
                                                (cons 'set!
                                                      (cons (gxc#generate-runtime-binding-id
                                                             _L2653_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L2652_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd26172647_
                                              _hd26142639_)
                                             (_g26062623_ _g26072626_))))
                                     (_g26062623_ _g26072626_))))
                             (_g26062623_ _g26072626_))))
                     (_g26062623_ _g26072626_)))))
          (_g26052668_ _stx2604_)))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx2513_)
      (let ((_g25152525_
             (lambda (_g25162522_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g25162522_))))
        (let ((_g25142601_
               (lambda (_g25162528_)
                 (if (gx#stx-pair? _g25162528_)
                     (let ((_e25182530_ (gx#stx-e _g25162528_)))
                       (let ((_hd25192533_ (##car _e25182530_))
                             (_tl25202535_ (##cdr _e25182530_)))
                         ((lambda (_L2538_)
                            (let ((_ht2548_ (make-hash-table-eq)))
                              ((letrec ((_lp2550_
                                         (lambda (_rest2552_ _loads2553_)
                                           (let ((_K2555_ (lambda (_ctx2594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest2595_)
                    (let ((_id2597_ (gx#expander-context-id _ctx2594_)))
                      (if (hash-get _ht2548_ _id2597_)
                          (_lp2550_ _rest2595_ _loads2553_)
                          (let ((_rt2599_
                                 (string-append
                                  (symbol->string _id2597_)
                                  '"__rt")))
                            (begin
                              (hash-put! _ht2548_ _id2597_ _rt2599_)
                              (_lp2550_
                               _rest2595_
                               (cons _rt2599_ _loads2553_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_rest25562564_ _rest2552_))
                                               (let ((_E25592568_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest25562564_))))
                                                 (let ((_else25582576_
                                                        (lambda ()
                                                          (cons 'begin
                                                                (map (lambda (_g25712573_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (list 'load-module _g25712573_))
                             (reverse _loads2553_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K25602582_
                                                          (lambda (_rest2579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in2580_)
                    (if (gx#module-context? _in2580_)
                        (_K2555_ _in2580_ _rest2579_)
                        (if (gx#module-import? _in2580_)
                            (if (fxpositive? (gx#module-import-phi _in2580_))
                                (_lp2550_ _rest2579_ _loads2553_)
                                (_K2555_ (gx#module-export-context
                                          (gx#module-import-source _in2580_))
                                         _rest2579_))
                            (if (gx#import-set? _in2580_)
                                (if (fxpositive? (gx#import-set-phi _in2580_))
                                    (_lp2550_ _rest2579_ _loads2553_)
                                    (_K2555_ (gx#import-set-source _in2580_)
                                             _rest2579_))
                                (gxc#raise-compile-error
                                 '"Unexpected import"
                                 _stx2513_
                                 _in2580_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest25562564_)
                                                         (let ((_hd25612585_
                                                                (##car _rest25562564_))
                                                               (_tl25622587_
                                                                (##cdr _rest25562564_)))
                                                           (let ((_in2590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd25612585_))
                     (let ((_rest2592_ _tl25622587_))
                       (_K25602582_ _rest2592_ _in2590_))))
                 (_else25582576_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp2550_)
                               _L2538_
                               '())))
                          _tl25202535_)))
                     (_g25152525_ _g25162528_)))))
          (_g25142601_ _stx2513_)))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx2454_)
      (let ((_generate-quote2456_
             (lambda (_q2511_)
               (if (gx#identifier? _q2511_)
                   (gxc#generate-runtime-identifier _q2511_)
                   (gxc#raise-compile-error
                    '"Cannot quote non-identifier syntax"
                    _stx2454_
                    _q2511_)))))
        (let ((_g24582471_
               (lambda (_g24592468_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g24592468_))))
          (let ((_g24572508_
                 (lambda (_g24592474_)
                   (if (gx#stx-pair? _g24592474_)
                       (let ((_e24612476_ (gx#stx-e _g24592474_)))
                         (let ((_hd24622479_ (##car _e24612476_))
                               (_tl24632481_ (##cdr _e24612476_)))
                           (if (gx#stx-pair? _tl24632481_)
                               (let ((_e24642484_ (gx#stx-e _tl24632481_)))
                                 (let ((_hd24652487_ (##car _e24642484_))
                                       (_tl24662489_ (##cdr _e24642484_)))
                                   (if (gx#stx-null? _tl24662489_)
                                       ((lambda (_L2492_)
                                          (let ((_gid2505_
                                                 (gxc#generate-runtime-temporary
                                                  '#t))
                                                (_quote-e2506_
                                                 (_generate-quote2456_
                                                  _L2492_)))
                                            (begin
                                              (set-box!
                                               (gxc#current-compile-lift)
                                               (cons (cons 'define
                                                           (cons _gid2505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'gx#core-quote-syntax
                                     (cons (cons 'quote
                                                 (cons _quote-e2506_ '()))
                                           '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (unbox (gxc#current-compile-lift))))
                                              _gid2505_)))
                                        _hd24652487_)
                                       (_g24582471_ _g24592474_))))
                               (_g24582471_ _g24592474_))))
                       (_g24582471_ _g24592474_)))))
            (_g24572508_ _stx2454_))))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx2387_)
      (let ((_g23892406_
             (lambda (_g23902403_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g23902403_))))
        (let ((_g23882451_
               (lambda (_g23902409_)
                 (if (gx#stx-pair? _g23902409_)
                     (let ((_e23932411_ (gx#stx-e _g23902409_)))
                       (let ((_hd23942414_ (##car _e23932411_))
                             (_tl23952416_ (##cdr _e23932411_)))
                         (if (gx#stx-pair? _tl23952416_)
                             (let ((_e23962419_ (gx#stx-e _tl23952416_)))
                               (let ((_hd23972422_ (##car _e23962419_))
                                     (_tl23982424_ (##cdr _e23962419_)))
                                 (if (gx#stx-pair? _tl23982424_)
                                     (let ((_e23992427_
                                            (gx#stx-e _tl23982424_)))
                                       (let ((_hd24002430_ (##car _e23992427_))
                                             (_tl24012432_
                                              (##cdr _e23992427_)))
                                         (if (gx#stx-null? _tl24012432_)
                                             ((lambda (_L2435_ _L2436_)
                                                (cons 'define
                                                      (cons (gx#stx-e _L2436_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L2435_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd24002430_
                                              _hd23972422_)
                                             (_g23892406_ _g23902409_))))
                                     (_g23892406_ _g23902409_))))
                             (_g23892406_ _g23902409_))))
                     (_g23892406_ _g23902409_)))))
          (_g23882451_ _stx2387_)))))
  (define gxc#generate-meta-begin%
    (lambda (_stx2336_ _state2337_)
      (let ((_g23392349_
             (lambda (_g23402346_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g23402346_))))
        (let ((_g23382384_
               (lambda (_g23402352_)
                 (if (gx#stx-pair? _g23402352_)
                     (let ((_e23422354_ (gx#stx-e _g23402352_)))
                       (let ((_hd23432357_ (##car _e23422354_))
                             (_tl23442359_ (##cdr _e23422354_)))
                         ((lambda (_L2362_)
                            (let ((_c-body2376_
                                   (map (lambda (_g23712373_)
                                          (gxc#compile-e
                                           _g23712373_
                                           _state2337_))
                                        _L2362_)))
                              (let ((_c-body2381_
                                     (filter (lambda (_$obj2378_)
                                               (not (void? _$obj2378_)))
                                             _c-body2376_)))
                                (let () (cons '%#begin _c-body2381_)))))
                          _tl23442359_)))
                     (_g23392349_ _g23402352_)))))
          (_g23382384_ _stx2336_)))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx2244_ _state2245_)
      (let ((_g22472257_
             (lambda (_g22482254_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g22482254_))))
        (let ((_g22462333_
               (lambda (_g22482260_)
                 (if (gx#stx-pair? _g22482260_)
                     (let ((_e22502262_ (gx#stx-e _g22482260_)))
                       (let ((_hd22512265_ (##car _e22502262_))
                             (_tl22522267_ (##cdr _e22502262_)))
                         ((lambda (_L2270_)
                            (let ((_phi2280_ (fx1+ (gx#current-expander-phi))))
                              (let ((_block2282_
                                     (gxc#meta-state-begin-phi!
                                      _state2245_
                                      _phi2280_)))
                                (let ((_compiled2285_
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#apply-generate-meta-phi
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  '%#begin)
                                                 _L2270_)
                                           _state2245_))
                                        gx#current-expander-phi
                                        _phi2280_)))
                                  (let ()
                                    (let ((_g22882298_
                                           (lambda (_g22892295_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g22892295_))))
                                      (let ((_g22872330_
                                             (lambda (_g22892301_)
                                               (if (gx#stx-pair? _g22892301_)
                                                   (let ((_e22912303_
                                                          (gx#stx-e
                                                           _g22892301_)))
                                                     (let ((_hd22922306_
                                                            (##car _e22912303_))
                                                           (_tl22932308_
                                                            (##cdr _e22912303_)))
                                                       (if (gx#identifier?
                                                            _hd22922306_)
                                                           (if (gx#stx-eq?
                                                                '%#begin
                                                                _hd22922306_)
                                                               ((lambda (_L2311_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_c-body2328_
                                 (filter (lambda (_$obj2325_)
                                           (not (void? _$obj2325_)))
                                         _L2311_)))
                            (if _block2282_
                                (cons '%#begin-syntax
                                      (cons (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons _block2282_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _c-body2328_))
                                (if (null? _c-body2328_)
                                    '#!void
                                    (cons '%#begin-syntax _c-body2328_)))))
                        _tl22932308_)
                       (_g22882298_ _g22892301_))
                   (_g22882298_ _g22892301_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g22882298_
                                                    _g22892301_)))))
                                        (_g22872330_ _compiled2285_))))))))
                          _tl22522267_)))
                     (_g22472257_ _g22482260_)))))
          (_g22462333_ _stx2244_)))))
  (define gxc#generate-meta-module%
    (lambda (_stx2175_ _state2176_)
      (begin
        (gxc#meta-state-end-phi! _state2176_)
        (let ((_g21782192_
               (lambda (_g21792189_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g21792189_))))
          (let ((_g21772241_
                 (lambda (_g21792195_)
                   (if (gx#stx-pair? _g21792195_)
                       (let ((_e21822197_ (gx#stx-e _g21792195_)))
                         (let ((_hd21832200_ (##car _e21822197_))
                               (_tl21842202_ (##cdr _e21822197_)))
                           (if (gx#stx-pair? _tl21842202_)
                               (let ((_e21852205_ (gx#stx-e _tl21842202_)))
                                 (let ((_hd21862208_ (##car _e21852205_))
                                       (_tl21872210_ (##cdr _e21852205_)))
                                   ((lambda (_L2213_ _L2214_)
                                      (let ((_key2227_
                                             (gx#core-identifier-key _L2214_)))
                                        (begin
                                          (if (interned-symbol? _key2227_)
                                              '#!void
                                              (gxc#raise-compile-error
                                               '"Cannot compile module with uninterned id"
                                               _stx2175_
                                               _L2214_
                                               _key2227_))
                                          (let ((_ctx2229_
                                                 (gx#syntax-local-e _L2214_)))
                                            (let ((_code2232_
                                                   (call-with-parameters
                                                    (lambda ()
                                                      (gxc#compile-e
                                                       (gx#module-context-code
                                                        _ctx2229_)
                                                       _state2176_))
                                                    gx#current-expander-context
                                                    _ctx2229_)))
                                              (let ((_rt2234_
                                                     (hash-get
                                                      (gxc#current-compile-runtime-sections)
                                                      _ctx2229_)))
                                                (let ((_loader2236_
                                                       (if _rt2234_
                                                           (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons '%#ref (cons '_gx#load-module '()))
                                     (cons (cons '%#quote (cons _rt2234_ '()))
                                           '())))
                         '())
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_modid2238_
                                                         (gx#stx-e _L2214_)))
                                                    (let ()
                                                      (begin
                                                        (gxc#meta-state-end-phi!
                                                         _state2176_)
                                                        (cons '%#module
                                                              (cons _modid2238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _code2232_ _loader2236_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl21872210_
                                    _hd21862208_)))
                               (_g21782192_ _g21792195_))))
                       (_g21782192_ _g21792195_)))))
            (_g21772241_ _stx2175_))))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx2165_ _context-chain2166_)
      ((letrec ((_lp2168_
                 (lambda (_ctx2170_ _path2171_)
                   (let ((_super2173_ (gx#phi-context-super _ctx2170_)))
                     (if (memq _super2173_ _context-chain2166_)
                         (cons* '#f
                                (car (gx#module-context-path _ctx2170_))
                                _path2171_)
                         (if (gx#module-context? _super2173_)
                             (_lp2168_
                              _super2173_
                              (cons (car (gx#module-context-path _ctx2170_))
                                    _path2171_))
                             (cons (make-symbol
                                    '":"
                                    (gx#expander-context-id _ctx2170_))
                                   _path2171_)))))))
         _lp2168_)
       _ctx2165_
       '())))
  (define gxc#current-context-chain
    (lambda ()
      ((letrec ((_lp2160_
                 (lambda (_ctx2162_ _r2163_)
                   (if (gx#module-context? _ctx2162_)
                       (_lp2160_
                        (gx#phi-context-super _ctx2162_)
                        (cons _ctx2162_ _r2163_))
                       _r2163_))))
         _lp2160_)
       (gx#current-expander-context)
       '())))
  (define gxc#generate-meta-import%
    (lambda (_stx1929_ _state1930_)
      (let ((_context-chain1932_ (gxc#current-context-chain)))
        (let ((_make-import-spec1933_
               (lambda (_in2096_)
                 (let ((_in20972109_ _in2096_))
                   (let ((_E20992113_
                          (lambda ()
                            (error '"No clause matching" _in20972109_))))
                     (let ((_K21002123_
                            (lambda (_phi2116_
                                     _name2117_
                                     _src-name2118_
                                     _src-phi2119_
                                     _src-key2120_
                                     _src-ctx2121_)
                              (cons _phi2116_
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name2117_)
                                          (cons _src-phi2119_
                                                (cons (gxc#generate-runtime-identifier-key
                                                       _src-name2118_)
                                                      '())))))))
                       (if (direct-struct-instance?
                            gx#module-import::t
                            _in20972109_)
                           (let ((_e21012126_ (##vector-ref _in20972109_ '1)))
                             (if (direct-struct-instance?
                                  gx#module-export::t
                                  _e21012126_)
                                 (let ((_e21042129_
                                        (##vector-ref _e21012126_ '1)))
                                   (let ((_src-ctx2132_ _e21042129_))
                                     (let ((_e21052134_
                                            (##vector-ref _e21012126_ '2)))
                                       (let ((_src-key2137_ _e21052134_))
                                         (let ((_e21062139_
                                                (##vector-ref _e21012126_ '3)))
                                           (let ((_src-phi2142_ _e21062139_))
                                             (let ((_e21072144_
                                                    (##vector-ref
                                                     _e21012126_
                                                     '4)))
                                               (let ((_src-name2147_
                                                      _e21072144_))
                                                 (let ((_e21022149_
                                                        (##vector-ref
                                                         _in20972109_
                                                         '2)))
                                                   (let ((_name2152_
                                                          _e21022149_))
                                                     (let ((_e21032154_
                                                            (##vector-ref
                                                             _in20972109_
                                                             '3)))
                                                       (let ((_phi2157_
                                                              _e21032154_))
                                                         (_K21002123_
                                                          _phi2157_
                                                          _name2152_
                                                          _src-name2147_
                                                          _src-phi2142_
                                                          _src-key2137_
                                                          _src-ctx2132_)))))))))))))
                                 (_E20992113_)))
                           (_E20992113_))))))))
          (let ((_make-import-path1934_
                 (lambda (_ctx2094_)
                   (gxc#generate-meta-import-path
                    _ctx2094_
                    _context-chain1932_))))
            (let ((_make-import-spec-in1935_
                   (lambda (_ctx2091_ _in2092_)
                     (cons 'spec:
                           (cons (_make-import-path1934_ _ctx2091_)
                                 (reverse _in2092_))))))
              (begin
                (gxc#meta-state-end-phi! _state1930_)
                (let ((_g19371947_
                       (lambda (_g19381944_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g19381944_))))
                  (let ((_g19362088_
                         (lambda (_g19381950_)
                           (if (gx#stx-pair? _g19381950_)
                               (let ((_e19401952_ (gx#stx-e _g19381950_)))
                                 (let ((_hd19411955_ (##car _e19401952_))
                                       (_tl19421957_ (##cdr _e19401952_)))
                                   ((lambda (_L1960_)
                                      ((letrec ((_lp1971_
                                                 (lambda (_rest1973_
                                                          _current-src1974_
                                                          _current-in1975_
                                                          _r1976_)
                                                   (let ((_rest19771985_
                                                          _rest1973_))
                                                     (let ((_E19801989_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _rest19771985_))))
               (let ((_else19791995_
                      (lambda ()
                        (let ((_r1993_ (if _current-src1974_
                                           (cons (_make-import-spec-in1935_
                                                  _current-src1974_
                                                  _current-in1975_)
                                                 _r1976_)
                                           _r1976_)))
                          (cons '%#import (reverse _r1993_))))))
                 (let ((_K19812076_
                        (lambda (_rest1998_ _in1999_)
                          (if (gx#module-import? _in1999_)
                              (let ((_in20002007_ _in1999_))
                                (let ((_E20022011_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _in20002007_))))
                                  (let ((_K20032016_
                                         (lambda (_src-ctx2014_)
                                           (if (eq? _current-src1974_
                                                    _src-ctx2014_)
                                               (_lp1971_
                                                _rest1998_
                                                _current-src1974_
                                                (cons (_make-import-spec1933_
                                                       _in1999_)
                                                      _current-in1975_)
                                                _r1976_)
                                               (if _current-src1974_
                                                   (_lp1971_
                                                    _rest1998_
                                                    _src-ctx2014_
                                                    (cons (_make-import-spec1933_
                                                           _in1999_)
                                                          '())
                                                    (cons (_make-import-spec-in1935_
                                                           _current-src1974_
                                                           _current-in1975_)
                                                          _r1976_))
                                                   (_lp1971_
                                                    _rest1998_
                                                    _src-ctx2014_
                                                    (cons (_make-import-spec1933_
                                                           _in1999_)
                                                          '())
                                                    _r1976_))))))
                                    (if (direct-struct-instance?
                                         gx#module-import::t
                                         _in20002007_)
                                        (let ((_e20042019_
                                               (##vector-ref _in20002007_ '1)))
                                          (if (direct-struct-instance?
                                               gx#module-export::t
                                               _e20042019_)
                                              (let ((_e20052022_
                                                     (##vector-ref
                                                      _e20042019_
                                                      '1)))
                                                (let ((_src-ctx2025_
                                                       _e20052022_))
                                                  (_K20032016_ _src-ctx2025_)))
                                              (_E20022011_)))
                                        (_E20022011_)))))
                              (if (gx#import-set? _in1999_)
                                  (let ((_phi2027_
                                         (gx#import-set-phi _in1999_)))
                                    (let ((_src2029_
                                           (gx#import-set-source _in1999_)))
                                      (let ((_src-in2069_
                                             (let ((_g20302039_
                                                    (_make-import-path1934_
                                                     _src2029_)))
                                               (let ((_E20332043_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _g20302039_))))
                                                 (let ((_try-match20322054_
                                                        (lambda ()
                                                          (let ((_K20342049_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_path2047_) (cons 'in: _path2047_))))
                    (let ((_path2052_ _g20302039_))
                      (_K20342049_ _path2052_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K20352059_
                                                          (lambda (_path2057_)
                                                            _path2057_)))
                                                     (if (##pair? _g20302039_)
                                                         (let ((_hd20362062_
                                                                (##car _g20302039_))
                                                               (_tl20372064_
                                                                (##cdr _g20302039_)))
                                                           (let ((_path2067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd20362062_))
                     (if (##null? _tl20372064_)
                         (_K20352059_ _path2067_)
                         (_try-match20322054_))))
                 (_try-match20322054_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_r2071_ (if _current-src1974_
                                                           (cons (_make-import-spec-in1935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _current-src1974_
                          _current-in1975_)
                         _r1976_)
                   _r1976_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (_lp1971_
                                             _rest1998_
                                             '#f
                                             '()
                                             (cons (if (fxzero? _phi2027_)
                                                       _src-in2069_
                                                       (cons 'phi:
                                                             (cons _phi2027_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _src-in2069_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r2071_)))))))
                                  (if (gx#module-context? _in1999_)
                                      (let ((_r2074_ (if _current-src1974_
                                                         (cons (_make-import-spec-in1935_
                                                                _current-src1974_
                                                                _current-in1975_)
                                                               _r1976_)
                                                         _r1976_)))
                                        (_lp1971_
                                         _rest1998_
                                         '#f
                                         '()
                                         (cons (cons 'runtime:
                                                     (_make-import-path1934_
                                                      _in1999_))
                                               _r2074_)))
                                      '#!void))))))
                   (if (##pair? _rest19771985_)
                       (let ((_hd19822079_ (##car _rest19771985_))
                             (_tl19832081_ (##cdr _rest19771985_)))
                         (let ((_in2084_ _hd19822079_))
                           (let ((_rest2086_ _tl19832081_))
                             (_K19812076_ _rest2086_ _in2084_))))
                       (_else19791995_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _lp1971_)
                                       _L1960_
                                       '#f
                                       '()
                                       '()))
                                    _tl19421957_)))
                               (_g19371947_ _g19381950_)))))
                    (_g19362088_ _stx1929_))))))))))
  (define gxc#generate-meta-export%
    (lambda (_stx1739_ _state1740_)
      (let ((_context-chain1742_ (gxc#current-context-chain)))
        (let ((_make-import-path1743_
               (lambda (_ctx1927_)
                 (gxc#generate-meta-import-path
                  _ctx1927_
                  _context-chain1742_))))
          (let ((_g17451755_
                 (lambda (_g17461752_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g17461752_))))
            (let ((_g17441924_
                   (lambda (_g17461758_)
                     (if (gx#stx-pair? _g17461758_)
                         (let ((_e17481760_ (gx#stx-e _g17461758_)))
                           (let ((_hd17491763_ (##car _e17481760_))
                                 (_tl17501765_ (##cdr _e17481760_)))
                             ((lambda (_L1768_)
                                ((letrec ((_lp1779_
                                           (lambda (_rest1781_ _r1782_)
                                             (let ((_rest17831791_ _rest1781_))
                                               (let ((_E17861795_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest17831791_))))
                                                 (let ((_else17851799_
                                                        (lambda ()
                                                          (cons '%#export
                                                                (reverse _r1782_)))))
                                                   (let ((_K17871912_
                                                          (lambda (_rest1802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out1803_)
                    (let ((_out18041817_ _out1803_))
                      (let ((_E18071821_
                             (lambda ()
                               (error '"No clause matching" _out18041817_))))
                        (let ((_try-match18061884_
                               (lambda ()
                                 (let ((_K18081871_
                                        (lambda (_phi1825_ _src1826_)
                                          (let ((_out1866_
                                                 (if _src1826_
                                                     (cons 'import:
                                                           (cons (let ((_g18271836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (_make-import-path1743_ _src1826_)))
                           (let ((_E18301840_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g18271836_))))
                             (let ((_try-match18291851_
                                    (lambda ()
                                      (let ((_K18311846_
                                             (lambda (_path1844_)
                                               (cons 'in: _path1844_))))
                                        (let ((_path1849_ _g18271836_))
                                          (_K18311846_ _path1849_))))))
                               (let ((_K18321856_
                                      (lambda (_path1854_) _path1854_)))
                                 (if (##pair? _g18271836_)
                                     (let ((_hd18331859_ (##car _g18271836_))
                                           (_tl18341861_ (##cdr _g18271836_)))
                                       (let ((_path1864_ _hd18331859_))
                                         (if (##null? _tl18341861_)
                                             (_K18321856_ _path1864_)
                                             (_try-match18291851_))))
                                     (_try-match18291851_))))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t)))
                                            (let ((_out1868_
                                                   (if (fxzero? _phi1825_)
                                                       _out1866_
                                                       (cons 'phi:
                                                             (cons _phi1825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _out1866_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (_lp1779_
                                                 _rest1802_
                                                 (cons _out1868_
                                                       _r1782_))))))))
                                   (if (direct-struct-instance?
                                        gx#export-set::t
                                        _out18041817_)
                                       (let ((_e18091874_
                                              (##vector-ref _out18041817_ '1)))
                                         (let ((_src1877_ _e18091874_))
                                           (let ((_e18101879_
                                                  (##vector-ref
                                                   _out18041817_
                                                   '2)))
                                             (let ((_phi1882_ _e18101879_))
                                               (_K18081871_
                                                _phi1882_
                                                _src1877_)))))
                                       (_E18071821_))))))
                          (let ((_K18111891_
                                 (lambda (_name1887_ _phi1888_ _key1889_)
                                   (_lp1779_
                                    _rest1802_
                                    (cons (cons 'spec:
                                                (cons _phi1888_
                                                      (cons (gxc#generate-runtime-identifier-key
                                                             _key1889_)
                                                            (cons (gxc#generate-runtime-identifier-key
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _name1887_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _r1782_)))))
                            (if (direct-struct-instance?
                                 gx#module-export::t
                                 _out18041817_)
                                (let ((_e18121894_
                                       (##vector-ref _out18041817_ '1)))
                                  (let ((_e18131897_
                                         (##vector-ref _out18041817_ '2)))
                                    (let ((_key1900_ _e18131897_))
                                      (let ((_e18141902_
                                             (##vector-ref _out18041817_ '3)))
                                        (let ((_phi1905_ _e18141902_))
                                          (let ((_e18151907_
                                                 (##vector-ref
                                                  _out18041817_
                                                  '4)))
                                            (let ((_name1910_ _e18151907_))
                                              (_K18111891_
                                               _name1910_
                                               _phi1905_
                                               _key1900_))))))))
                                (_try-match18061884_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest17831791_)
                                                         (let ((_hd17881915_
                                                                (##car _rest17831791_))
                                                               (_tl17891917_
                                                                (##cdr _rest17831791_)))
                                                           (let ((_out1920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd17881915_))
                     (let ((_rest1922_ _tl17891917_))
                       (_K17871912_ _rest1922_ _out1920_))))
                 (_else17851799_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp1779_)
                                 _L1768_
                                 '()))
                              _tl17501765_)))
                         (_g17451755_ _g17461758_)))))
              (_g17441924_ _stx1739_)))))))
  (define gxc#generate-meta-provide%
    (lambda (_stx1700_ _state1701_)
      (begin
        (gxc#meta-state-end-phi! _state1701_)
        (let ((_g17031713_
               (lambda (_g17041710_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g17041710_))))
          (let ((_g17021736_
                 (lambda (_g17041716_)
                   (if (gx#stx-pair? _g17041716_)
                       (let ((_e17061718_ (gx#stx-e _g17041716_)))
                         (let ((_hd17071721_ (##car _e17061718_))
                               (_tl17081723_ (##cdr _e17061718_)))
                           ((lambda (_L1726_)
                              (cons '%#provide
                                    (map gxc#generate-runtime-identifier
                                         _L1726_)))
                            _tl17081723_)))
                       (_g17031713_ _g17041716_)))))
            (_g17021736_ _stx1700_))))))
  (define gxc#generate-meta-extern%
    (lambda (_stx1571_ _state1572_)
      (let ((_generate11574_
             (lambda (_id1695_ _eid1696_)
               (let ((_eid1698_ (gx#stx-e _eid1696_)))
                 (begin
                   (if (interned-symbol? _eid1698_)
                       '#!void
                       (gxc#raise-compile-error
                        '"Cannot compile extern reference"
                        _stx1571_
                        _eid1698_))
                   (cons (gxc#generate-runtime-identifier _id1695_)
                         (cons _eid1698_ '())))))))
        (let ((_g15761604_
               (lambda (_g15771601_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g15771601_))))
          (let ((_g15751692_
                 (lambda (_g15771607_)
                   (if (gx#stx-pair? _g15771607_)
                       (let ((_e15801609_ (gx#stx-e _g15771607_)))
                         (let ((_hd15811612_ (##car _e15801609_))
                               (_tl15821614_ (##cdr _e15801609_)))
                           (if (gx#stx-pair/null? _tl15821614_)
                               (if (fx>= (gx#stx-length _tl15821614_) '0)
                                   (let ((_g5849_ (gx#syntax-split-splice
                                                   _tl15821614_
                                                   '0)))
                                     (begin
                                       (let ((_g5850_ (values-count _g5849_)))
                                         (if (not (fx= _g5850_ 2))
                                             (error "Context expects 2 values"
                                                    _g5850_)))
                                       (let ((_target15831617_
                                              (values-ref _g5849_ 0))
                                             (_tl15851619_
                                              (values-ref _g5849_ 1)))
                                         (if (gx#stx-null? _tl15851619_)
                                             (letrec ((_loop15861622_
                                                       (lambda (_hd15841625_
                                                                _eid15901627_
                                                                _id15911629_)
                                                         (if (gx#stx-pair?
                                                              _hd15841625_)
                                                             (let ((_e15871632_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd15841625_)))
                       (let ((_lp-hd15881635_ (##car _e15871632_))
                             (_lp-tl15891637_ (##cdr _e15871632_)))
                         (if (gx#stx-pair? _lp-hd15881635_)
                             (let ((_e15941640_ (gx#stx-e _lp-hd15881635_)))
                               (let ((_hd15951643_ (##car _e15941640_))
                                     (_tl15961645_ (##cdr _e15941640_)))
                                 (if (gx#stx-pair? _tl15961645_)
                                     (let ((_e15971648_
                                            (gx#stx-e _tl15961645_)))
                                       (let ((_hd15981651_ (##car _e15971648_))
                                             (_tl15991653_
                                              (##cdr _e15971648_)))
                                         (if (gx#stx-null? _tl15991653_)
                                             (_loop15861622_
                                              _lp-tl15891637_
                                              (cons _hd15981651_ _eid15901627_)
                                              (cons _hd15951643_ _id15911629_))
                                             (_g15761604_ _g15771607_))))
                                     (_g15761604_ _g15771607_))))
                             (_g15761604_ _g15771607_))))
                     (let ((_eid15921656_ (reverse _eid15901627_))
                           (_id15931658_ (reverse _id15911629_)))
                       ((lambda (_L1661_ _L1662_)
                          (cons '%#extern
                                (map _generate11574_
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g16771680_ _g16781682_)
                                                (cons _g16771680_ _g16781682_))
                                              '()
                                              _L1662_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g16841687_ _g16851689_)
                                                (cons _g16841687_ _g16851689_))
                                              '()
                                              _L1661_)))))
                        _eid15921656_
                        _id15931658_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop15861622_
                                                _target15831617_
                                                '()
                                                '()))
                                             (_g15761604_ _g15771607_)))))
                                   (_g15761604_ _g15771607_))
                               (_g15761604_ _g15771607_))))
                       (_g15761604_ _g15771607_)))))
            (_g15751692_ _stx1571_))))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx1366_ _state1367_)
      (let ((_generate11369_
             (lambda (_id1566_)
               (let ((_eid1568_ (gxc#generate-runtime-binding-id _id1566_))
                     (_ident1569_ (gxc#generate-runtime-identifier _id1566_)))
                 (cons '%#define-runtime
                       (cons _ident1569_ (cons _eid1568_ '())))))))
        (let ((_generate*1370_
               (lambda (_all1534_)
                 (let ((_all15351543_ _all1534_))
                   (let ((_E15381547_
                          (lambda ()
                            (error '"No clause matching" _all15351543_))))
                     (let ((_else15371551_
                            (lambda () (cons '%#begin _all1534_))))
                       (let ((_K15391556_ (lambda (_one1554_) _one1554_)))
                         (if (##pair? _all15351543_)
                             (let ((_hd15401559_ (##car _all15351543_))
                                   (_tl15411561_ (##cdr _all15351543_)))
                               (let ((_one1564_ _hd15401559_))
                                 (if (##null? _tl15411561_)
                                     (_K15391556_ _one1564_)
                                     (_else15371551_))))
                             (_else15371551_)))))))))
          (let ((_g13721389_
                 (lambda (_g13731386_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g13731386_))))
            (let ((_g13711531_
                   (lambda (_g13731392_)
                     (if (gx#stx-pair? _g13731392_)
                         (let ((_e13761394_ (gx#stx-e _g13731392_)))
                           (let ((_hd13771397_ (##car _e13761394_))
                                 (_tl13781399_ (##cdr _e13761394_)))
                             (if (gx#stx-pair? _tl13781399_)
                                 (let ((_e13791402_ (gx#stx-e _tl13781399_)))
                                   (let ((_hd13801405_ (##car _e13791402_))
                                         (_tl13811407_ (##cdr _e13791402_)))
                                     (if (gx#stx-pair? _tl13811407_)
                                         (let ((_e13821410_
                                                (gx#stx-e _tl13811407_)))
                                           (let ((_hd13831413_
                                                  (##car _e13821410_))
                                                 (_tl13841415_
                                                  (##cdr _e13821410_)))
                                             (if (gx#stx-null? _tl13841415_)
                                                 ((lambda (_L1418_ _L1419_)
                                                    ((letrec ((_lp1435_
                                                               (lambda (_rest1437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _r1438_)
                         (let ((_g14431459_
                                (lambda (_g14441456_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g14441456_))))
                           (let ((_g14421466_
                                  (lambda (_g14441462_)
                                    ((lambda ()
                                       (_generate*1370_ (reverse _r1438_)))))))
                             (let ((_g14411482_
                                    (lambda (_g14441469_)
                                      ((lambda (_L1471_)
                                         (if (gx#identifier? _L1471_)
                                             (_generate*1370_
                                              (foldl cons
                                                     (cons (_generate11369_
                                                            _L1471_)
                                                           '())
                                                     _r1438_))
                                             (_g14421466_ _g14441469_)))
                                       _g14441469_))))
                               (let ((_g14401506_
                                      (lambda (_g14441485_)
                                        (if (gx#stx-pair? _g14441485_)
                                            (let ((_e14511487_
                                                   (gx#stx-e _g14441485_)))
                                              (let ((_hd14521490_
                                                     (##car _e14511487_))
                                                    (_tl14531492_
                                                     (##cdr _e14511487_)))
                                                ((lambda (_L1495_ _L1496_)
                                                   (_lp1435_
                                                    _L1495_
                                                    (cons (_generate11369_
                                                           _L1496_)
                                                          _r1438_)))
                                                 _tl14531492_
                                                 _hd14521490_)))
                                            (_g14411482_ _g14441485_)))))
                                 (let ((_g14391528_
                                        (lambda (_g14441509_)
                                          (if (gx#stx-pair? _g14441509_)
                                              (let ((_e14461511_
                                                     (gx#stx-e _g14441509_)))
                                                (let ((_hd14471514_
                                                       (##car _e14461511_))
                                                      (_tl14481516_
                                                       (##cdr _e14461511_)))
                                                  (if (gx#stx-datum?
                                                       _hd14471514_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd14471514_)
                          '#f)
                  ((lambda (_L1519_) (_lp1435_ _L1519_ _r1438_)) _tl14481516_)
                  (_g14401506_ _g14441509_))
              (_g14401506_ _g14441509_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g14401506_ _g14441509_)))))
                                   (_g14391528_ _rest1437_)))))))))
               _lp1435_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _L1419_
                                                     '()))
                                                  _hd13831413_
                                                  _hd13801405_)
                                                 (_g13721389_ _g13731392_))))
                                         (_g13721389_ _g13731392_))))
                                 (_g13721389_ _g13731392_))))
                         (_g13721389_ _g13731392_)))))
              (_g13711531_ _stx1366_)))))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx1263_ _state1264_)
      (let ((_g12661283_
             (lambda (_g12671280_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g12671280_))))
        (let ((_g12651363_
               (lambda (_g12671286_)
                 (if (gx#stx-pair? _g12671286_)
                     (let ((_e12701288_ (gx#stx-e _g12671286_)))
                       (let ((_hd12711291_ (##car _e12701288_))
                             (_tl12721293_ (##cdr _e12701288_)))
                         (if (gx#stx-pair? _tl12721293_)
                             (let ((_e12731296_ (gx#stx-e _tl12721293_)))
                               (let ((_hd12741299_ (##car _e12731296_))
                                     (_tl12751301_ (##cdr _e12731296_)))
                                 (if (gx#stx-pair? _tl12751301_)
                                     (let ((_e12761304_
                                            (gx#stx-e _tl12751301_)))
                                       (let ((_hd12771307_ (##car _e12761304_))
                                             (_tl12781309_
                                              (##cdr _e12761304_)))
                                         (if (gx#stx-null? _tl12781309_)
                                             ((lambda (_L1312_ _L1313_)
                                                (let ((_eid1328_
                                                       (gxc#generate-runtime-binding-id
                                                        _L1313_)))
                                                  (let ((_phi1330_
                                                         (fx1+ (gx#current-expander-phi))))
                                                    (let ((_block1332_
                                                           (gxc#meta-state-begin-phi!
                                                            _state1264_
                                                            _phi1330_)))
                                                      (let ()
                                                        (begin
                                                          (let ((_g13351342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g13361339_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g13361339_))))
                    (let ((_g13341360_
                           (lambda (_g13361345_)
                             ((lambda (_L1347_)
                                (let ()
                                  (gxc#meta-state-add-phi!
                                   _state1264_
                                   _phi1330_
                                   (cons (gx#datum->syntax
                                          '#f
                                          '%#define-runtime)
                                         (cons _L1347_ (cons _L1312_ '()))))))
                              _g13361345_))))
                      (_g13341360_ _eid1328_)))
                  (if _block1332_
                      (cons '%#begin
                            (cons (cons '%#begin-syntax
                                        (cons (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote (cons _block1332_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons '%#define-syntax
                                              (cons (gxc#generate-runtime-identifier
                                                     _L1313_)
                                                    (cons _eid1328_ '())))
                                        '())))
                      (cons '%#define-syntax
                            (cons (gxc#generate-runtime-identifier _L1313_)
                                  (cons _eid1328_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd12771307_
                                              _hd12741299_)
                                             (_g12661283_ _g12671286_))))
                                     (_g12661283_ _g12671286_))))
                             (_g12661283_ _g12671286_))))
                     (_g12661283_ _g12671286_)))))
          (_g12651363_ _stx1263_)))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx1195_ _state1196_)
      (let ((_g11981215_
             (lambda (_g11991212_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g11991212_))))
        (let ((_g11971260_
               (lambda (_g11991218_)
                 (if (gx#stx-pair? _g11991218_)
                     (let ((_e12021220_ (gx#stx-e _g11991218_)))
                       (let ((_hd12031223_ (##car _e12021220_))
                             (_tl12041225_ (##cdr _e12021220_)))
                         (if (gx#stx-pair? _tl12041225_)
                             (let ((_e12051228_ (gx#stx-e _tl12041225_)))
                               (let ((_hd12061231_ (##car _e12051228_))
                                     (_tl12071233_ (##cdr _e12051228_)))
                                 (if (gx#stx-pair? _tl12071233_)
                                     (let ((_e12081236_
                                            (gx#stx-e _tl12071233_)))
                                       (let ((_hd12091239_ (##car _e12081236_))
                                             (_tl12101241_
                                              (##cdr _e12081236_)))
                                         (if (gx#stx-null? _tl12101241_)
                                             ((lambda (_L1244_ _L1245_)
                                                (cons '%#define-alias
                                                      (cons (gxc#generate-runtime-identifier
                                                             _L1245_)
                                                            (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L1244_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd12091239_
                                              _hd12061231_)
                                             (_g11981215_ _g11991218_))))
                                     (_g11981215_ _g11991218_))))
                             (_g11981215_ _g11991218_))))
                     (_g11981215_ _g11991218_)))))
          (_g11971260_ _stx1195_)))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx1192_ _state1193_)
      (begin
        (gxc#meta-state-add-phi!
         _state1193_
         (gx#current-expander-phi)
         _stx1192_)
        (gxc#generate-meta-define-values% _stx1192_ _state1193_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx1189_ _state1190_)
      (begin
        (gxc#meta-state-add-phi!
         _state1190_
         (gx#current-expander-phi)
         _stx1189_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type 'gxc#meta-state::t '#f '4 'meta-state '() ':init!))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args1186_
      (apply make-struct-instance gxc#meta-state::t _$args1186_)))
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
    (lambda (_self1183_ _ctx1184_)
      (direct-struct-instance-init!
       _self1183_
       (symbol->string (gx#expander-context-id _ctx1184_))
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
    (lambda _$args1180_
      (apply make-struct-instance gxc#meta-state-block::t _$args1180_)))
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
    (lambda (_state1139_ _phi1140_)
      (let ((_state11411149_ _state1139_))
        (let ((_E11431153_
               (lambda () (error '"No clause matching" _state11411149_))))
          (let ((_K11441162_
                 (lambda (_open1156_ _n1157_ _src1158_)
                   (if (hash-get _open1156_ _phi1140_)
                       '#f
                       (let ((_block-ref1160_
                              (string-append
                               _src1158_
                               '"__"
                               (number->string _n1157_))))
                         (begin
                           (gxc#meta-state-n-set! _state1139_ (fx1+ _n1157_))
                           (hash-put!
                            _open1156_
                            _phi1140_
                            (gxc#make-meta-state-block
                             (gx#current-expander-context)
                             _phi1140_
                             _n1157_
                             '()))
                           _block-ref1160_))))))
            (if (struct-instance? gxc#meta-state::t _state11411149_)
                (let ((_e11451165_ (##vector-ref _state11411149_ '1)))
                  (let ((_src1168_ _e11451165_))
                    (let ((_e11461170_ (##vector-ref _state11411149_ '2)))
                      (let ((_n1173_ _e11461170_))
                        (let ((_e11471175_ (##vector-ref _state11411149_ '3)))
                          (let ((_open1178_ _e11471175_))
                            (_K11441162_ _open1178_ _n1173_ _src1168_)))))))
                (_E11431153_)))))))
  (define gxc#meta-state-add-phi!
    (lambda (_state1133_ _phi1134_ _stx1135_)
      (let ((_block1137_
             (hash-get (gxc#meta-state-open _state1133_) _phi1134_)))
        (gxc#meta-state-block-code-set!
         _block1137_
         (cons _stx1135_ (gxc#meta-state-block-code _block1137_))))))
  (define gxc#meta-state-end-phi!
    (lambda (_state1128_)
      (begin
        (gxc#meta-state-blocks-set!
         _state1128_
         (hash-fold
          (lambda (_g5851_ _block1130_ _r1131_) (cons _block1130_ _r1131_))
          (gxc#meta-state-blocks _state1128_)
          (gxc#meta-state-open _state1128_)))
        (gxc#meta-state-open-set! _state1128_ (make-hash-table-eq)))))
  (define gxc#meta-state-end!
    (lambda (_state1080_)
      (begin
        (gxc#meta-state-end-phi! _state1080_)
        (foldl (lambda (_block1082_ _r1083_)
                 (let ((_block10841093_ _block1082_))
                   (let ((_E10861097_
                          (lambda ()
                            (error '"No clause matching" _block10841093_))))
                     (let ((_K10871105_
                            (lambda (_code1100_ _n1101_ _phi1102_ _ctx1103_)
                              (if (null? _code1100_)
                                  _r1083_
                                  (cons (cons _ctx1103_
                                              (cons _phi1102_
                                                    (cons _n1101_
                                                          (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (reverse _code1100_))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _r1083_)))))
                       (if (struct-instance?
                            gxc#meta-state-block::t
                            _block10841093_)
                           (let ((_e10881108_
                                  (##vector-ref _block10841093_ '1)))
                             (let ((_ctx1111_ _e10881108_))
                               (let ((_e10891113_
                                      (##vector-ref _block10841093_ '2)))
                                 (let ((_phi1116_ _e10891113_))
                                   (let ((_e10901118_
                                          (##vector-ref _block10841093_ '3)))
                                     (let ((_n1121_ _e10901118_))
                                       (let ((_e10911123_
                                              (##vector-ref
                                               _block10841093_
                                               '4)))
                                         (let ((_code1126_ _e10911123_))
                                           (_K10871105_
                                            _code1126_
                                            _n1121_
                                            _phi1116_
                                            _ctx1111_)))))))))
                           (_E10861097_))))))
               '()
               (gxc#meta-state-blocks _state1080_)))))
  (define gxc#collect-expression-refs
    (lambda (_stx1076_)
      (let ((_ht1078_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx1076_ _ht1078_)
          _ht1078_))))
  (define gxc#collect-refs-lambda%
    (lambda (_stx1008_ _ht1009_)
      (let ((_g10111028_
             (lambda (_g10121025_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g10121025_))))
        (let ((_g10101073_
               (lambda (_g10121031_)
                 (if (gx#stx-pair? _g10121031_)
                     (let ((_e10151033_ (gx#stx-e _g10121031_)))
                       (let ((_hd10161036_ (##car _e10151033_))
                             (_tl10171038_ (##cdr _e10151033_)))
                         (if (gx#stx-pair? _tl10171038_)
                             (let ((_e10181041_ (gx#stx-e _tl10171038_)))
                               (let ((_hd10191044_ (##car _e10181041_))
                                     (_tl10201046_ (##cdr _e10181041_)))
                                 (if (gx#stx-pair? _tl10201046_)
                                     (let ((_e10211049_
                                            (gx#stx-e _tl10201046_)))
                                       (let ((_hd10221052_ (##car _e10211049_))
                                             (_tl10231054_
                                              (##cdr _e10211049_)))
                                         (if (gx#stx-null? _tl10231054_)
                                             ((lambda (_L1057_ _L1058_)
                                                (gxc#compile-e
                                                 _L1057_
                                                 _ht1009_))
                                              _hd10221052_
                                              _hd10191044_)
                                             (_g10111028_ _g10121031_))))
                                     (_g10111028_ _g10121031_))))
                             (_g10111028_ _g10121031_))))
                     (_g10111028_ _g10121031_)))))
          (_g10101073_ _stx1008_)))))
  (define gxc#collect-refs-case-lambda%
    (lambda (_stx890_ _ht891_)
      (let ((_g893921_
             (lambda (_g894918_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g894918_))))
        (let ((_g8921005_
               (lambda (_g894924_)
                 (if (gx#stx-pair? _g894924_)
                     (let ((_e897926_ (gx#stx-e _g894924_)))
                       (let ((_hd898929_ (##car _e897926_))
                             (_tl899931_ (##cdr _e897926_)))
                         (if (gx#stx-pair/null? _tl899931_)
                             (if (fx>= (gx#stx-length _tl899931_) '0)
                                 (let ((_g5852_ (gx#syntax-split-splice
                                                 _tl899931_
                                                 '0)))
                                   (begin
                                     (let ((_g5853_ (values-count _g5852_)))
                                       (if (not (fx= _g5853_ 2))
                                           (error "Context expects 2 values"
                                                  _g5853_)))
                                     (let ((_target900934_
                                            (values-ref _g5852_ 0))
                                           (_tl902936_ (values-ref _g5852_ 1)))
                                       (if (gx#stx-null? _tl902936_)
                                           (letrec ((_loop903939_
                                                     (lambda (_hd901942_
                                                              _body907944_
                                                              _hd908946_)
                                                       (if (gx#stx-pair?
                                                            _hd901942_)
                                                           (let ((_e904949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd901942_)))
                     (let ((_lp-hd905952_ (##car _e904949_))
                           (_lp-tl906954_ (##cdr _e904949_)))
                       (if (gx#stx-pair? _lp-hd905952_)
                           (let ((_e911957_ (gx#stx-e _lp-hd905952_)))
                             (let ((_hd912960_ (##car _e911957_))
                                   (_tl913962_ (##cdr _e911957_)))
                               (if (gx#stx-pair? _tl913962_)
                                   (let ((_e914965_ (gx#stx-e _tl913962_)))
                                     (let ((_hd915968_ (##car _e914965_))
                                           (_tl916970_ (##cdr _e914965_)))
                                       (if (gx#stx-null? _tl916970_)
                                           (_loop903939_
                                            _lp-tl906954_
                                            (cons _hd915968_ _body907944_)
                                            (cons _hd912960_ _hd908946_))
                                           (_g893921_ _g894924_))))
                                   (_g893921_ _g894924_))))
                           (_g893921_ _g894924_))))
                   (let ((_body909973_ (reverse _body907944_))
                         (_hd910975_ (reverse _hd908946_)))
                     ((lambda (_L978_ _L979_)
                        (for-each
                         (lambda (_g993995_) (gxc#compile-e _g993995_ _ht891_))
                         (begin
                           '#!void
                           (foldr (lambda (_g9971000_ _g9981002_)
                                    (cons _g9971000_ _g9981002_))
                                  '()
                                  _L978_))))
                      _body909973_
                      _hd910975_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop903939_
                                              _target900934_
                                              '()
                                              '()))
                                           (_g893921_ _g894924_)))))
                                 (_g893921_ _g894924_))
                             (_g893921_ _g894924_))))
                     (_g893921_ _g894924_)))))
          (_g8921005_ _stx890_)))))
  (define gxc#collect-refs-let-values%
    (lambda (_stx743_ _ht744_)
      (let ((_g746781_
             (lambda (_g747778_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g747778_))))
        (let ((_g745887_
               (lambda (_g747784_)
                 (if (gx#stx-pair? _g747784_)
                     (let ((_e751786_ (gx#stx-e _g747784_)))
                       (let ((_hd752789_ (##car _e751786_))
                             (_tl753791_ (##cdr _e751786_)))
                         (if (gx#stx-pair? _tl753791_)
                             (let ((_e754794_ (gx#stx-e _tl753791_)))
                               (let ((_hd755797_ (##car _e754794_))
                                     (_tl756799_ (##cdr _e754794_)))
                                 (if (gx#stx-pair/null? _hd755797_)
                                     (if (fx>= (gx#stx-length _hd755797_) '0)
                                         (let ((_g5854_ (gx#syntax-split-splice
                                                         _hd755797_
                                                         '0)))
                                           (begin
                                             (let ((_g5855_ (values-count
                                                             _g5854_)))
                                               (if (not (fx= _g5855_ 2))
                                                   (error "Context expects 2 values"
                                                          _g5855_)))
                                             (let ((_target757802_
                                                    (values-ref _g5854_ 0))
                                                   (_tl759804_
                                                    (values-ref _g5854_ 1)))
                                               (if (gx#stx-null? _tl759804_)
                                                   (letrec ((_loop760807_
                                                             (lambda (_hd758810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr764812_
                              _hd765814_)
                       (if (gx#stx-pair? _hd758810_)
                           (let ((_e761817_ (gx#stx-e _hd758810_)))
                             (let ((_lp-hd762820_ (##car _e761817_))
                                   (_lp-tl763822_ (##cdr _e761817_)))
                               (if (gx#stx-pair? _lp-hd762820_)
                                   (let ((_e768825_ (gx#stx-e _lp-hd762820_)))
                                     (let ((_hd769828_ (##car _e768825_))
                                           (_tl770830_ (##cdr _e768825_)))
                                       (if (gx#stx-pair? _tl770830_)
                                           (let ((_e771833_
                                                  (gx#stx-e _tl770830_)))
                                             (let ((_hd772836_
                                                    (##car _e771833_))
                                                   (_tl773838_
                                                    (##cdr _e771833_)))
                                               (if (gx#stx-null? _tl773838_)
                                                   (_loop760807_
                                                    _lp-tl763822_
                                                    (cons _hd772836_
                                                          _expr764812_)
                                                    (cons _hd769828_
                                                          _hd765814_))
                                                   (_g746781_ _g747784_))))
                                           (_g746781_ _g747784_))))
                                   (_g746781_ _g747784_))))
                           (let ((_expr766841_ (reverse _expr764812_))
                                 (_hd767843_ (reverse _hd765814_)))
                             (if (gx#stx-pair? _tl756799_)
                                 (let ((_e774846_ (gx#stx-e _tl756799_)))
                                   (let ((_hd775849_ (##car _e774846_))
                                         (_tl776851_ (##cdr _e774846_)))
                                     (if (gx#stx-null? _tl776851_)
                                         ((lambda (_L854_ _L855_ _L856_)
                                            (if (for-each
                                                 (lambda (_g875877_)
                                                   (gxc#compile-e
                                                    _g875877_
                                                    _ht744_))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g879882_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g880884_)
                    (cons _g879882_ _g880884_))
                  '()
                  _L855_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#compile-e _L854_ _ht744_)
                                                (_g746781_ _g747784_)))
                                          _hd775849_
                                          _expr766841_
                                          _hd767843_)
                                         (_g746781_ _g747784_))))
                                 (_g746781_ _g747784_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop760807_
                                                      _target757802_
                                                      '()
                                                      '()))
                                                   (_g746781_ _g747784_)))))
                                         (_g746781_ _g747784_))
                                     (_g746781_ _g747784_))))
                             (_g746781_ _g747784_))))
                     (_g746781_ _g747784_)))))
          (_g745887_ _stx743_)))))
  (define gxc#collect-refs-ref%
    (lambda (_stx686_ _ht687_)
      (let ((_g689702_
             (lambda (_g690699_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g690699_))))
        (let ((_g688740_
               (lambda (_g690705_)
                 (if (gx#stx-pair? _g690705_)
                     (let ((_e692707_ (gx#stx-e _g690705_)))
                       (let ((_hd693710_ (##car _e692707_))
                             (_tl694712_ (##cdr _e692707_)))
                         (if (gx#stx-pair? _tl694712_)
                             (let ((_e695715_ (gx#stx-e _tl694712_)))
                               (let ((_hd696718_ (##car _e695715_))
                                     (_tl697720_ (##cdr _e695715_)))
                                 (if (gx#stx-null? _tl697720_)
                                     ((lambda (_L723_)
                                        (let ((_bind735_
                                               (gx#resolve-identifier _L723_)))
                                          (let ((_eid737_
                                                 (if _bind735_
                                                     (gx#binding-id _bind735_)
                                                     (gx#stx-e _L723_))))
                                            (let ()
                                              (hash-put!
                                               _ht687_
                                               _eid737_
                                               _eid737_)))))
                                      _hd696718_)
                                     (_g689702_ _g690705_))))
                             (_g689702_ _g690705_))))
                     (_g689702_ _g690705_)))))
          (_g688740_ _stx686_)))))
  (define gxc#collect-refs-setq%
    (lambda (_stx613_ _ht614_)
      (let ((_g616633_
             (lambda (_g617630_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g617630_))))
        (let ((_g615683_
               (lambda (_g617636_)
                 (if (gx#stx-pair? _g617636_)
                     (let ((_e620638_ (gx#stx-e _g617636_)))
                       (let ((_hd621641_ (##car _e620638_))
                             (_tl622643_ (##cdr _e620638_)))
                         (if (gx#stx-pair? _tl622643_)
                             (let ((_e623646_ (gx#stx-e _tl622643_)))
                               (let ((_hd624649_ (##car _e623646_))
                                     (_tl625651_ (##cdr _e623646_)))
                                 (if (gx#stx-pair? _tl625651_)
                                     (let ((_e626654_ (gx#stx-e _tl625651_)))
                                       (let ((_hd627657_ (##car _e626654_))
                                             (_tl628659_ (##cdr _e626654_)))
                                         (if (gx#stx-null? _tl628659_)
                                             ((lambda (_L662_ _L663_)
                                                (let ((_bind678_
                                                       (gx#resolve-identifier
                                                        _L663_)))
                                                  (let ((_eid680_
                                                         (if _bind678_
                                                             (gx#binding-id
                                                              _bind678_)
                                                             (gx#stx-e
                                                              _L663_))))
                                                    (let ()
                                                      (begin
                                                        (hash-put!
                                                         _ht614_
                                                         _eid680_
                                                         _eid680_)
                                                        (gxc#compile-e
                                                         _L662_
                                                         _ht614_))))))
                                              _hd627657_
                                              _hd624649_)
                                             (_g616633_ _g617636_))))
                                     (_g616633_ _g617636_))))
                             (_g616633_ _g617636_))))
                     (_g616633_ _g617636_)))))
          (_g615683_ _stx613_)))))
  (define gxc#find-runtime-begin%
    (lambda (_stx575_)
      (let ((_g577587_
             (lambda (_g578584_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g578584_))))
        (let ((_g576610_
               (lambda (_g578590_)
                 (if (gx#stx-pair? _g578590_)
                     (let ((_e580592_ (gx#stx-e _g578590_)))
                       (let ((_hd581595_ (##car _e580592_))
                             (_tl582597_ (##cdr _e580592_)))
                         ((lambda (_L600_) (ormap gxc#compile-e _L600_))
                          _tl582597_)))
                     (_g577587_ _g578590_)))))
          (_g576610_ _stx575_))))))
