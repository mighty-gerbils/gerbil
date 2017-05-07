(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx5816_ . _args5817_)
      (let ((_g58195829_
             (lambda (_g58205826_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g58205826_))))
        (let ((_g58185857_
               (lambda (_g58205832_)
                 (if (gx#stx-pair? _g58205832_)
                     (let ((_e58225834_ (gx#stx-e _g58205832_)))
                       (let ((_hd58235837_ (##car _e58225834_))
                             (_tl58245839_ (##cdr _e58225834_)))
                         ((lambda (_L5842_)
                            (let ((_$e5852_
                                   (hash-get
                                    (gxc#current-compile-methods)
                                    (gx#stx-e _L5842_))))
                              (if _$e5852_
                                  ((lambda (_method5855_)
                                     (apply _method5855_ _stx5816_ _args5817_))
                                   _$e5852_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile; missing method"
                                   _stx5816_
                                   _L5842_))))
                          _hd58235837_)))
                     (_g58195829_ _g58205832_)))))
          (_g58185857_ _stx5816_)))))
  (begin)
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl5813_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl5813_ '%#lambda void)
           (hash-put! _tbl5813_ '%#case-lambda void)
           (hash-put! _tbl5813_ '%#let-values void)
           (hash-put! _tbl5813_ '%#letrec-values void)
           (hash-put! _tbl5813_ '%#letrec*-values void)
           (hash-put! _tbl5813_ '%#quote void)
           (hash-put! _tbl5813_ '%#quote-syntax void)
           (hash-put! _tbl5813_ '%#call void)
           (hash-put! _tbl5813_ '%#if void)
           (hash-put! _tbl5813_ '%#ref void)
           (hash-put! _tbl5813_ '%#set! void)
           _tbl5813_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl5809_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl5809_ '%#begin void)
           (hash-put! _tbl5809_ '%#begin-syntax void)
           (hash-put! _tbl5809_ '%#begin-foreign void)
           (hash-put! _tbl5809_ '%#module void)
           (hash-put! _tbl5809_ '%#import void)
           (hash-put! _tbl5809_ '%#export void)
           (hash-put! _tbl5809_ '%#provide void)
           (hash-put! _tbl5809_ '%#extern void)
           (hash-put! _tbl5809_ '%#define-values void)
           (hash-put! _tbl5809_ '%#define-syntax void)
           (hash-put! _tbl5809_ '%#define-alias void)
           (hash-put! _tbl5809_ '%#declare void)
           _tbl5809_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl5805_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl5805_ (force gxc#&void-special-form))
           (hash-copy! _tbl5805_ (force gxc#&void-expression))
           _tbl5805_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl5801_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl5801_ (force gxc#&void-expression))
           (hash-copy! _tbl5801_ (force gxc#&void-special-form))
           (hash-put! _tbl5801_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl5801_ '%#begin-syntax gxc#collect-begin-syntax%)
           (hash-put! _tbl5801_ '%#module gxc#collect-module%)
           (hash-put!
            _tbl5801_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (hash-put!
            _tbl5801_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl5801_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx5794_ . _args5796_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx5794_ _args5796_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl5791_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl5791_ (force gxc#&void))
           (hash-put! _tbl5791_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl5791_ '%#module gxc#lift-modules-module%)
           _tbl5791_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx5784_ . _args5786_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx5784_ _args5786_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl5781_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl5781_ '%#begin gxc#find-runtime-begin%)
           (hash-put! _tbl5781_ '%#begin-syntax false)
           (hash-put! _tbl5781_ '%#begin-foreign true)
           (hash-put! _tbl5781_ '%#module false)
           (hash-put! _tbl5781_ '%#import false)
           (hash-put! _tbl5781_ '%#export false)
           (hash-put! _tbl5781_ '%#provide false)
           (hash-put! _tbl5781_ '%#extern false)
           (hash-put! _tbl5781_ '%#define-values true)
           (hash-put! _tbl5781_ '%#define-syntax false)
           (hash-put! _tbl5781_ '%#define-alias false)
           (hash-put! _tbl5781_ '%#declare false)
           (hash-put! _tbl5781_ '%#lambda true)
           (hash-put! _tbl5781_ '%#case-lambda true)
           (hash-put! _tbl5781_ '%#let-values true)
           (hash-put! _tbl5781_ '%#letrec-values true)
           (hash-put! _tbl5781_ '%#letrec*-values true)
           (hash-put! _tbl5781_ '%#quote true)
           (hash-put! _tbl5781_ '%#call true)
           (hash-put! _tbl5781_ '%#if true)
           (hash-put! _tbl5781_ '%#ref true)
           (hash-put! _tbl5781_ '%#set! true)
           _tbl5781_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx5774_ . _args5776_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx5774_ _args5776_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl5771_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl5771_ '%#begin gxc#generate-runtime-begin%)
           (hash-put! _tbl5771_ '%#begin-syntax gxc#generate-runtime-empty)
           (hash-put! _tbl5771_ '%#begin-foreign gxc#generate-runtime-empty)
           (hash-put! _tbl5771_ '%#module gxc#generate-runtime-empty)
           (hash-put! _tbl5771_ '%#import gxc#generate-runtime-loader-import%)
           (hash-put! _tbl5771_ '%#export gxc#generate-runtime-empty)
           (hash-put! _tbl5771_ '%#provide gxc#generate-runtime-empty)
           (hash-put! _tbl5771_ '%#extern gxc#generate-runtime-empty)
           (hash-put! _tbl5771_ '%#define-values gxc#generate-runtime-empty)
           (hash-put! _tbl5771_ '%#define-syntax gxc#generate-runtime-empty)
           (hash-put! _tbl5771_ '%#define-alias gxc#generate-runtime-empty)
           (hash-put! _tbl5771_ '%#declare gxc#generate-runtime-empty)
           (hash-put! _tbl5771_ '%#lambda gxc#generate-runtime-empty)
           (hash-put! _tbl5771_ '%#case-lambda gxc#generate-runtime-empty)
           (hash-put! _tbl5771_ '%#let-values gxc#generate-runtime-empty)
           (hash-put! _tbl5771_ '%#letrec-values gxc#generate-runtime-empty)
           (hash-put! _tbl5771_ '%#letrec*-values gxc#generate-runtime-empty)
           (hash-put! _tbl5771_ '%#quote gxc#generate-runtime-empty)
           (hash-put! _tbl5771_ '%#call gxc#generate-runtime-empty)
           (hash-put! _tbl5771_ '%#if gxc#generate-runtime-empty)
           (hash-put! _tbl5771_ '%#ref gxc#generate-runtime-empty)
           (hash-put! _tbl5771_ '%#set! gxc#generate-runtime-empty)
           _tbl5771_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx5764_ . _args5766_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx5764_ _args5766_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl5761_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl5761_ '%#begin gxc#generate-runtime-begin%)
           (hash-put! _tbl5761_ '%#begin-syntax gxc#generate-runtime-empty)
           (hash-put!
            _tbl5761_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (hash-put! _tbl5761_ '%#module gxc#generate-runtime-empty)
           (hash-put! _tbl5761_ '%#import gxc#generate-runtime-empty)
           (hash-put! _tbl5761_ '%#export gxc#generate-runtime-empty)
           (hash-put! _tbl5761_ '%#provide gxc#generate-runtime-empty)
           (hash-put! _tbl5761_ '%#extern gxc#generate-runtime-empty)
           (hash-put!
            _tbl5761_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (hash-put! _tbl5761_ '%#define-syntax gxc#generate-runtime-empty)
           (hash-put! _tbl5761_ '%#define-alias gxc#generate-runtime-empty)
           (hash-put! _tbl5761_ '%#declare gxc#generate-runtime-declare%)
           (hash-put! _tbl5761_ '%#lambda gxc#generate-runtime-lambda%)
           (hash-put!
            _tbl5761_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (hash-put! _tbl5761_ '%#let-values gxc#generate-runtime-let-values%)
           (hash-put!
            _tbl5761_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (hash-put!
            _tbl5761_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (hash-put! _tbl5761_ '%#quote gxc#generate-runtime-quote%)
           (hash-put! _tbl5761_ '%#call gxc#generate-runtime-call%)
           (hash-put! _tbl5761_ '%#if gxc#generate-runtime-if%)
           (hash-put! _tbl5761_ '%#ref gxc#generate-runtime-ref%)
           (hash-put! _tbl5761_ '%#set! gxc#generate-runtime-setq%)
           _tbl5761_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx5754_ . _args5756_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx5754_ _args5756_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl5751_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl5751_ (force gxc#&generate-runtime))
           (hash-put!
            _tbl5751_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (hash-put!
            _tbl5751_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl5751_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx5744_ . _args5746_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx5744_ _args5746_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl5741_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl5741_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl5741_ '%#lambda gxc#collect-refs-lambda%)
           (hash-put! _tbl5741_ '%#case-lambda gxc#collect-refs-case-lambda%)
           (hash-put! _tbl5741_ '%#let-values gxc#collect-refs-let-values%)
           (hash-put! _tbl5741_ '%#letrec-values gxc#collect-refs-let-values%)
           (hash-put! _tbl5741_ '%#letrec*-values gxc#collect-refs-let-values%)
           (hash-put! _tbl5741_ '%#quote void)
           (hash-put! _tbl5741_ '%#quote-syntax void)
           (hash-put! _tbl5741_ '%#call gxc#collect-begin%)
           (hash-put! _tbl5741_ '%#if gxc#collect-begin%)
           (hash-put! _tbl5741_ '%#ref gxc#collect-refs-ref%)
           (hash-put! _tbl5741_ '%#set! gxc#collect-refs-setq%)
           _tbl5741_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx5734_ . _args5736_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx5734_ _args5736_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl5731_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl5731_ (force gxc#&void-expression))
           (hash-put! _tbl5731_ '%#begin gxc#generate-meta-begin%)
           (hash-put!
            _tbl5731_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (hash-put! _tbl5731_ '%#module gxc#generate-meta-module%)
           (hash-put! _tbl5731_ '%#import gxc#generate-meta-import%)
           (hash-put! _tbl5731_ '%#export gxc#generate-meta-export%)
           (hash-put! _tbl5731_ '%#provide gxc#generate-meta-provide%)
           (hash-put! _tbl5731_ '%#extern gxc#generate-meta-extern%)
           (hash-put!
            _tbl5731_
            '%#define-values
            gxc#generate-meta-define-values%)
           (hash-put!
            _tbl5731_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (hash-put!
            _tbl5731_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (hash-put! _tbl5731_ '%#begin-foreign void)
           (hash-put! _tbl5731_ '%#declare void)
           _tbl5731_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx5724_ . _args5726_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx5724_ _args5726_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl5721_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl5721_ '%#begin gxc#generate-meta-begin%)
           (hash-put!
            _tbl5721_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (hash-put!
            _tbl5721_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (hash-put!
            _tbl5721_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (hash-put!
            _tbl5721_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (hash-put! _tbl5721_ '%#lambda gxc#generate-meta-phi-expr)
           (hash-put! _tbl5721_ '%#case-lambda gxc#generate-meta-phi-expr)
           (hash-put! _tbl5721_ '%#let-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl5721_ '%#letrec-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl5721_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl5721_ '%#quote gxc#generate-meta-phi-expr)
           (hash-put! _tbl5721_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (hash-put! _tbl5721_ '%#call gxc#generate-meta-phi-expr)
           (hash-put! _tbl5721_ '%#if gxc#generate-meta-phi-expr)
           (hash-put! _tbl5721_ '%#ref gxc#generate-meta-phi-expr)
           (hash-put! _tbl5721_ '%#set! gxc#generate-meta-phi-expr)
           (hash-put! _tbl5721_ '%#declare void)
           _tbl5721_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx5714_ . _args5716_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx5714_ _args5716_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx5671_ . _args5672_)
      (let ((_g56745684_
             (lambda (_g56755681_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g56755681_))))
        (let ((_g56735711_
               (lambda (_g56755687_)
                 (if (gx#stx-pair? _g56755687_)
                     (let ((_e56775689_ (gx#stx-e _g56755687_)))
                       (let ((_hd56785692_ (##car _e56775689_))
                             (_tl56795694_ (##cdr _e56775689_)))
                         ((lambda (_L5697_)
                            (for-each
                             (lambda (_g57065708_)
                               (apply gxc#compile-e _g57065708_ _args5672_))
                             (gx#stx-e _L5697_)))
                          _tl56795694_)))
                     (_g56745684_ _g56755687_)))))
          (_g56735711_ _stx5671_)))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx5627_ . _args5628_)
      (let ((_g56305640_
             (lambda (_g56315637_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g56315637_))))
        (let ((_g56295668_
               (lambda (_g56315643_)
                 (if (gx#stx-pair? _g56315643_)
                     (let ((_e56335645_ (gx#stx-e _g56315643_)))
                       (let ((_hd56345648_ (##car _e56335645_))
                             (_tl56355650_ (##cdr _e56335645_)))
                         ((lambda (_L5653_)
                            (call-with-parameters
                             (lambda ()
                               (for-each
                                (lambda (_g56635665_)
                                  (apply gxc#compile-e _g56635665_ _args5628_))
                                (gx#stx-e _L5653_)))
                             gx#current-expander-phi
                             (fx1+ (gx#current-expander-phi))))
                          _tl56355650_)))
                     (_g56305640_ _g56315643_)))))
          (_g56295668_ _stx5627_)))))
  (define gxc#collect-module%
    (lambda (_stx5569_ . _args5570_)
      (let ((_g55725586_
             (lambda (_g55735583_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g55735583_))))
        (let ((_g55715624_
               (lambda (_g55735589_)
                 (if (gx#stx-pair? _g55735589_)
                     (let ((_e55765591_ (gx#stx-e _g55735589_)))
                       (let ((_hd55775594_ (##car _e55765591_))
                             (_tl55785596_ (##cdr _e55765591_)))
                         (if (gx#stx-pair? _tl55785596_)
                             (let ((_e55795599_ (gx#stx-e _tl55785596_)))
                               (let ((_hd55805602_ (##car _e55795599_))
                                     (_tl55815604_ (##cdr _e55795599_)))
                                 ((lambda (_L5607_ _L5608_)
                                    (let ((_ctx5621_
                                           (gx#syntax-local-e _L5608_)))
                                      (call-with-parameters
                                       (lambda ()
                                         (apply gxc#compile-e
                                                (gx#module-context-code
                                                 _ctx5621_)
                                                _args5570_))
                                       gx#current-expander-context
                                       _ctx5621_)))
                                  _tl55815604_
                                  _hd55805602_)))
                             (_g55725586_ _g55735589_))))
                     (_g55725586_ _g55735589_)))))
          (_g55715624_ _stx5569_)))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx5500_)
      (let ((_g55025519_
             (lambda (_g55035516_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g55035516_))))
        (let ((_g55015566_
               (lambda (_g55035522_)
                 (if (gx#stx-pair? _g55035522_)
                     (let ((_e55065524_ (gx#stx-e _g55035522_)))
                       (let ((_hd55075527_ (##car _e55065524_))
                             (_tl55085529_ (##cdr _e55065524_)))
                         (if (gx#stx-pair? _tl55085529_)
                             (let ((_e55095532_ (gx#stx-e _tl55085529_)))
                               (let ((_hd55105535_ (##car _e55095532_))
                                     (_tl55115537_ (##cdr _e55095532_)))
                                 (if (gx#stx-pair? _tl55115537_)
                                     (let ((_e55125540_
                                            (gx#stx-e _tl55115537_)))
                                       (let ((_hd55135543_ (##car _e55125540_))
                                             (_tl55145545_
                                              (##cdr _e55125540_)))
                                         (if (gx#stx-null? _tl55145545_)
                                             ((lambda (_L5548_ _L5549_)
                                                (gx#stx-for-each
                                                 (lambda (_bind5564_)
                                                   (if (gx#identifier?
                                                        _bind5564_)
                                                       (gxc#add-module-binding!
                                                        _bind5564_
                                                        '#f)
                                                       '#!void))
                                                 _L5549_))
                                              _hd55135543_
                                              _hd55105535_)
                                             (_g55025519_ _g55035522_))))
                                     (_g55025519_ _g55035522_))))
                             (_g55025519_ _g55035522_))))
                     (_g55025519_ _g55035522_)))))
          (_g55015566_ _stx5500_)))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx5433_)
      (let ((_g54355452_
             (lambda (_g54365449_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g54365449_))))
        (let ((_g54345497_
               (lambda (_g54365455_)
                 (if (gx#stx-pair? _g54365455_)
                     (let ((_e54395457_ (gx#stx-e _g54365455_)))
                       (let ((_hd54405460_ (##car _e54395457_))
                             (_tl54415462_ (##cdr _e54395457_)))
                         (if (gx#stx-pair? _tl54415462_)
                             (let ((_e54425465_ (gx#stx-e _tl54415462_)))
                               (let ((_hd54435468_ (##car _e54425465_))
                                     (_tl54445470_ (##cdr _e54425465_)))
                                 (if (gx#stx-pair? _tl54445470_)
                                     (let ((_e54455473_
                                            (gx#stx-e _tl54445470_)))
                                       (let ((_hd54465476_ (##car _e54455473_))
                                             (_tl54475478_
                                              (##cdr _e54455473_)))
                                         (if (gx#stx-null? _tl54475478_)
                                             ((lambda (_L5481_ _L5482_)
                                                (gxc#add-module-binding!
                                                 _L5482_
                                                 '#t))
                                              _hd54465476_
                                              _hd54435468_)
                                             (_g54355452_ _g54365455_))))
                                     (_g54355452_ _g54365455_))))
                             (_g54355452_ _g54365455_))))
                     (_g54355452_ _g54365455_)))))
          (_g54345497_ _stx5433_)))))
  (define gxc#lift-modules-module%
    (lambda (_stx5375_ _modules5376_)
      (let ((_g53785392_
             (lambda (_g53795389_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g53795389_))))
        (let ((_g53775430_
               (lambda (_g53795395_)
                 (if (gx#stx-pair? _g53795395_)
                     (let ((_e53825397_ (gx#stx-e _g53795395_)))
                       (let ((_hd53835400_ (##car _e53825397_))
                             (_tl53845402_ (##cdr _e53825397_)))
                         (if (gx#stx-pair? _tl53845402_)
                             (let ((_e53855405_ (gx#stx-e _tl53845402_)))
                               (let ((_hd53865408_ (##car _e53855405_))
                                     (_tl53875410_ (##cdr _e53855405_)))
                                 ((lambda (_L5413_ _L5414_)
                                    (let ((_ctx5427_
                                           (gx#syntax-local-e _L5414_)))
                                      (begin
                                        (set-box!
                                         _modules5376_
                                         (cons _ctx5427_
                                               (unbox _modules5376_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gxc#compile-e
                                            (gx#module-context-code _ctx5427_)
                                            _modules5376_))
                                         gx#current-expander-context
                                         _ctx5427_))))
                                  _tl53875410_
                                  _hd53865408_)))
                             (_g53785392_ _g53795395_))))
                     (_g53785392_ _g53795395_)))))
          (_g53775430_ _stx5375_)))))
  (define gxc#add-module-binding!
    (lambda (_id5369_ _syntax?5370_)
      (let ((_eid5372_ (gx#binding-id (gx#resolve-identifier _id5369_)))
            (_ht5373_
             (gxc#symbol-table-bindings (gxc#current-compile-symbol-table))))
        (if (interned-symbol? _eid5372_)
            '#!void
            (hash-put!
             _ht5373_
             _eid5372_
             (gx#make-binding-id
              (gxc#generate-runtime-gensym-reference _eid5372_)
              _syntax?5370_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id5357_)
      (let ((_bind5359_ (gx#resolve-identifier _id5357_)))
        (if _bind5359_
            (let ((_eid5361_ (gx#binding-id _bind5359_))
                  (_ht5362_
                   (gxc#symbol-table-bindings
                    (gxc#current-compile-symbol-table))))
              (if (interned-symbol? _eid5361_)
                  _eid5361_
                  (let ((_$e5364_ (hash-get _ht5362_ _eid5361_)))
                    (if _$e5364_
                        (values _$e5364_)
                        (if (gx#local-binding? _bind5359_)
                            (let ((_gid5367_
                                   (gxc#generate-runtime-gensym-reference
                                    _eid5361_)))
                              (begin
                                (hash-put! _ht5362_ _eid5361_ _gid5367_)
                                _gid5367_))
                            (gxc#raise-compile-error
                             '"Cannot compile reference to uninterned binding"
                             _id5357_
                             _eid5361_
                             _bind5359_))))))
            (if (interned-symbol? (gx#stx-e _id5357_))
                (gx#stx-e _id5357_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id5357_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id5355_)
      (if (gx#identifier? _id5355_)
          (gxc#generate-runtime-binding-id _id5355_)
          (gxc#generate-runtime-temporary))))
  (define gxc#generate-runtime-gensym-reference
    (lambda (_sym5346_)
      (let ((_ht5348_
             (gxc#symbol-table-gensyms (gxc#current-compile-symbol-table))))
        (let ((_$e5350_ (hash-get _ht5348_ _sym5346_)))
          (if _$e5350_
              (values _$e5350_)
              (let ((_g5353_ (make-symbol '"_" _sym5346_ '"_")))
                (begin (hash-put! _ht5348_ _sym5346_ _g5353_) _g5353_)))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id5344_)
      (gxc#generate-runtime-identifier-key (gx#core-identifier-key _id5344_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key5306_)
      (if (interned-symbol? _key5306_)
          _key5306_
          (if (uninterned-symbol? _key5306_)
              (gxc#generate-runtime-gensym-reference _key5306_)
              (let ((_key53075314_ _key5306_))
                (let ((_E53095318_
                       (lambda ()
                         (error '"No clause matching" _key53075314_))))
                  (let ((_K53105332_
                         (lambda (_mark5321_ _eid5322_)
                           (let ((_$e5324_
                                  (gx#expander-mark-subst _mark5321_)))
                             (if _$e5324_
                                 ((lambda (_ht5327_)
                                    (let ((_$e5329_
                                           (hash-get _ht5327_ _eid5322_)))
                                      (if _$e5329_
                                          (values _$e5329_)
                                          (gxc#generate-runtime-identifier-key
                                           _eid5322_))))
                                  _$e5324_)
                                 (gxc#generate-runtime-identifier-key
                                  _eid5322_))))))
                    (if (##pair? _key53075314_)
                        (let ((_hd53115335_ (##car _key53075314_))
                              (_tl53125337_ (##cdr _key53075314_)))
                          (let ((_eid5340_ _hd53115335_))
                            (let ((_mark5342_ _tl53125337_))
                              (_K53105332_ _mark5342_ _eid5340_))))
                        (_E53095318_)))))))))
  (define gxc#generate-runtime-temporary
    (let ((_opt-lambda52915298_
           (lambda (_top5293_)
             (if _top5293_
                 (let ((_ns5295_
                        (gx#module-context-ns (gx#current-expander-context)))
                       (_phi5296_ (gx#current-expander-phi)))
                   (if (fxpositive? _phi5296_)
                       (make-symbol
                        _ns5295_
                        '"["
                        (number->string _phi5296_)
                        '"]#_"
                        (gensym)
                        '"_")
                       (make-symbol _ns5295_ '"#_" (gensym) '"_")))
                 (make-symbol '"_" (gensym) '"_")))))
      (lambda _g5860_
        (let ((_g5859_ (length _g5860_)))
          (cond ((fx= _g5859_ 0)
                 (apply (lambda ()
                          (let ((_top5302_ '#f))
                            (_opt-lambda52915298_ _top5302_)))
                        _g5860_))
                ((fx= _g5859_ 1)
                 (apply (lambda (_top5304_) (_opt-lambda52915298_ _top5304_))
                        _g5860_))
                (else (error "No clause matching arguments" _g5860_)))))))
  (define gxc#generate-runtime-empty (lambda (_stx5290_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx5252_)
      (let ((_g52545264_
             (lambda (_g52555261_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g52555261_))))
        (let ((_g52535287_
               (lambda (_g52555267_)
                 (if (gx#stx-pair? _g52555267_)
                     (let ((_e52575269_ (gx#stx-e _g52555267_)))
                       (let ((_hd52585272_ (##car _e52575269_))
                             (_tl52595274_ (##cdr _e52575269_)))
                         ((lambda (_L5277_)
                            (cons 'begin
                                  (map gxc#compile-e (gx#stx-e _L5277_))))
                          _tl52595274_)))
                     (_g52545264_ _g52555267_)))))
          (_g52535287_ _stx5252_)))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx5214_)
      (let ((_g52165226_
             (lambda (_g52175223_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g52175223_))))
        (let ((_g52155249_
               (lambda (_g52175229_)
                 (if (gx#stx-pair? _g52175229_)
                     (let ((_e52195231_ (gx#stx-e _g52175229_)))
                       (let ((_hd52205234_ (##car _e52195231_))
                             (_tl52215236_ (##cdr _e52195231_)))
                         ((lambda (_L5239_)
                            (cons 'begin (gx#syntax->datum _L5239_)))
                          _tl52215236_)))
                     (_g52165226_ _g52175229_)))))
          (_g52155249_ _stx5214_)))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx5176_)
      (let ((_g51785188_
             (lambda (_g51795185_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g51795185_))))
        (let ((_g51775211_
               (lambda (_g51795191_)
                 (if (gx#stx-pair? _g51795191_)
                     (let ((_e51815193_ (gx#stx-e _g51795191_)))
                       (let ((_hd51825196_ (##car _e51815193_))
                             (_tl51835198_ (##cdr _e51815193_)))
                         ((lambda (_L5201_)
                            (cons 'declare (map gx#syntax->datum _L5201_)))
                          _tl51835198_)))
                     (_g51785188_ _g51795191_)))))
          (_g51775211_ _stx5176_)))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx4940_)
      (let ((_g49424959_
             (lambda (_g49434956_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g49434956_))))
        (let ((_g49415173_
               (lambda (_g49434962_)
                 (if (gx#stx-pair? _g49434962_)
                     (let ((_e49464964_ (gx#stx-e _g49434962_)))
                       (let ((_hd49474967_ (##car _e49464964_))
                             (_tl49484969_ (##cdr _e49464964_)))
                         (if (gx#stx-pair? _tl49484969_)
                             (let ((_e49494972_ (gx#stx-e _tl49484969_)))
                               (let ((_hd49504975_ (##car _e49494972_))
                                     (_tl49514977_ (##cdr _e49494972_)))
                                 (if (gx#stx-pair? _tl49514977_)
                                     (let ((_e49524980_
                                            (gx#stx-e _tl49514977_)))
                                       (let ((_hd49534983_ (##car _e49524980_))
                                             (_tl49544985_
                                              (##cdr _e49524980_)))
                                         (if (gx#stx-null? _tl49544985_)
                                             ((lambda (_L4988_ _L4989_)
                                                (let ((_g50065019_
                                                       (lambda (_g50075016_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g50075016_))))
                                                  (let ((_g50055133_
                                                         (lambda (_g50075022_)
                                                           ((lambda ()
                                                              (let ((_tmp5026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gxc#generate-runtime-temporary '#t)))
                        (let ((_body5130_
                               ((letrec ((_lp5028_
                                          (lambda (_rest5030_ _k5031_ _r5032_)
                                            (let ((_g50375053_
                                                   (lambda (_g50385050_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g50385050_))))
                                              (let ((_g50365060_
                                                     (lambda (_g50385056_)
                                                       ((lambda ()
                                                          (reverse _r5032_))))))
                                                (let ((_g50355081_
                                                       (lambda (_g50385063_)
                                                         ((lambda (_L5065_)
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L5065_)
                        (foldl cons
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L5065_)
                                                 (cons (cons 'values->list
                                                             (cons _tmp5026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k5031_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())
                               _r5032_)
                        (_g50365060_ _g50385063_)))
                  _g50385063_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g50345105_
                                                         (lambda (_g50385084_)
                                                           (if (gx#stx-pair?
                                                                _g50385084_)
                                                               (let ((_e50455086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _g50385084_)))
                         (let ((_hd50465089_ (##car _e50455086_))
                               (_tl50475091_ (##cdr _e50455086_)))
                           ((lambda (_L5094_ _L5095_)
                              (_lp5028_
                               _L5094_
                               (fx1+ _k5031_)
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L5095_)
                                                 (cons (cons 'values-ref
                                                             (cons _tmp5026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k5031_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _r5032_)))
                            _tl50475091_
                            _hd50465089_)))
                       (_g50355081_ _g50385084_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g50335127_
                                                           (lambda (_g50385108_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g50385108_)
                         (let ((_e50405110_ (gx#stx-e _g50385108_)))
                           (let ((_hd50415113_ (##car _e50405110_))
                                 (_tl50425115_ (##cdr _e50405110_)))
                             (if (gx#stx-datum? _hd50415113_)
                                 (if (equal? (gx#stx-e _hd50415113_) '#f)
                                     ((lambda (_L5118_)
                                        (_lp5028_
                                         _L5118_
                                         (fx1+ _k5031_)
                                         _r5032_))
                                      _tl50425115_)
                                     (_g50345105_ _g50385108_))
                                 (_g50345105_ _g50385108_))))
                         (_g50345105_ _g50385108_)))))
              (_g50335127_ _rest5030_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp5028_)
                                _L4989_
                                '0
                                '())))
                          (let ()
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons _tmp5026_
                                                    (cons (gxc#compile-e
                                                           _L4988_)
                                                          '())))
                                        (cons (gxc#generate-runtime-check-values
                                               _tmp5026_
                                               _L4989_)
                                              _body5130_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g50045155_
                                                           (lambda (_g50075136_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g50075136_)
                         (let ((_e50125138_ (gx#stx-e _g50075136_)))
                           (let ((_hd50135141_ (##car _e50125138_))
                                 (_tl50145143_ (##cdr _e50125138_)))
                             (if (gx#stx-null? _tl50145143_)
                                 ((lambda (_L5146_)
                                    (cons 'define
                                          (cons (gxc#generate-runtime-binding-id
                                                 _L5146_)
                                                (cons (gxc#compile-e _L4988_)
                                                      '()))))
                                  _hd50135141_)
                                 (_g50055133_ _g50075136_))))
                         (_g50055133_ _g50075136_)))))
              (let ((_g50035170_
                     (lambda (_g50075158_)
                       (if (gx#stx-pair? _g50075158_)
                           (let ((_e50085160_ (gx#stx-e _g50075158_)))
                             (let ((_hd50095163_ (##car _e50085160_))
                                   (_tl50105165_ (##cdr _e50085160_)))
                               (if (gx#stx-datum? _hd50095163_)
                                   (if (equal? (gx#stx-e _hd50095163_) '#f)
                                       (if (gx#stx-null? _tl50105165_)
                                           ((lambda ()
                                              (gxc#compile-e _L4988_)))
                                           (_g50045155_ _g50075158_))
                                       (_g50045155_ _g50075158_))
                                   (_g50045155_ _g50075158_))))
                           (_g50045155_ _g50075158_)))))
                (_g50035170_ _L4989_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd49534983_
                                              _hd49504975_)
                                             (_g49424959_ _g49434962_))))
                                     (_g49424959_ _g49434962_))))
                             (_g49424959_ _g49434962_))))
                     (_g49424959_ _g49434962_)))))
          (_g49415173_ _stx4940_)))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals4928_ _hd4929_)
      (let ((_len4931_ (gx#stx-length _hd4929_)))
        (let ((_cmp4933_ (if (gx#stx-list? _hd4929_) 'fx= 'fx>=)))
          (let ((_errmsg4935_
                 (string-append
                  (if (gx#stx-list? _hd4929_)
                      '"Context expects "
                      '"Context expects at least ")
                  (number->string _len4931_)
                  '" values")))
            (let ((_count4937_ (gxc#generate-runtime-temporary)))
              (let ()
                (if (if (not (gx#stx-list? _hd4929_)) (fx= _len4931_ '0) '#f)
                    '#!void
                    (cons 'let
                          (cons (cons (cons _count4937_
                                            (cons (cons 'values-count
                                                        (cons _vals4928_ '()))
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (cons _cmp4933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count4937_ (cons _len4931_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _errmsg4935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count4937_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx4861_)
      (let ((_g48634880_
             (lambda (_g48644877_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g48644877_))))
        (let ((_g48624925_
               (lambda (_g48644883_)
                 (if (gx#stx-pair? _g48644883_)
                     (let ((_e48674885_ (gx#stx-e _g48644883_)))
                       (let ((_hd48684888_ (##car _e48674885_))
                             (_tl48694890_ (##cdr _e48674885_)))
                         (if (gx#stx-pair? _tl48694890_)
                             (let ((_e48704893_ (gx#stx-e _tl48694890_)))
                               (let ((_hd48714896_ (##car _e48704893_))
                                     (_tl48724898_ (##cdr _e48704893_)))
                                 (if (gx#stx-pair? _tl48724898_)
                                     (let ((_e48734901_
                                            (gx#stx-e _tl48724898_)))
                                       (let ((_hd48744904_ (##car _e48734901_))
                                             (_tl48754906_
                                              (##cdr _e48734901_)))
                                         (if (gx#stx-null? _tl48754906_)
                                             ((lambda (_L4909_ _L4910_)
                                                (cons 'lambda
                                                      (cons (gxc#generate-runtime-lambda-head
                                                             _L4910_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4909_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd48744904_
                                              _hd48714896_)
                                             (_g48634880_ _g48644883_))))
                                     (_g48634880_ _g48644883_))))
                             (_g48634880_ _g48644883_))))
                     (_g48634880_ _g48644883_)))))
          (_g48624925_ _stx4861_)))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd4859_) (gx#stx-map gxc#generate-runtime-binding-id* _hd4859_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx4716_)
      (let ((_generate14718_
             (lambda (_args4849_ _arglen4850_ _hd4851_ _body4852_)
               (let ((_len4854_ (gx#stx-length _hd4851_)))
                 (let ((_condition4856_
                        (if (gx#stx-list? _hd4851_)
                            (cons 'fx=
                                  (cons _arglen4850_ (cons _len4854_ '())))
                            (if (> _len4854_ '0)
                                (cons 'fx>=
                                      (cons _arglen4850_ (cons _len4854_ '())))
                                '#t))))
                   (let ()
                     (cons _condition4856_
                           (cons (cons 'apply
                                       (cons (cons 'lambda
                                                   (cons (gxc#generate-runtime-lambda-head
                                                          _hd4851_)
                                                         (cons (gxc#compile-e
                                                                _body4852_)
                                                               '())))
                                             (cons _args4849_ '())))
                                 '()))))))))
        (let ((_g47204748_
               (lambda (_g47214745_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g47214745_))))
          (let ((_g47194846_
                 (lambda (_g47214751_)
                   (if (gx#stx-pair? _g47214751_)
                       (let ((_e47244753_ (gx#stx-e _g47214751_)))
                         (let ((_hd47254756_ (##car _e47244753_))
                               (_tl47264758_ (##cdr _e47244753_)))
                           (if (gx#stx-pair/null? _tl47264758_)
                               (if (fx>= (gx#stx-length _tl47264758_) '0)
                                   (let ((_g5861_ (gx#syntax-split-splice
                                                   _tl47264758_
                                                   '0)))
                                     (begin
                                       (let ((_g5862_ (values-count _g5861_)))
                                         (if (not (fx= _g5862_ 2))
                                             (error "Context expects 2 values"
                                                    _g5862_)))
                                       (let ((_target47274761_
                                              (values-ref _g5861_ 0))
                                             (_tl47294763_
                                              (values-ref _g5861_ 1)))
                                         (if (gx#stx-null? _tl47294763_)
                                             (letrec ((_loop47304766_
                                                       (lambda (_hd47284769_
                                                                _body47344771_
                                                                _hd47354773_)
                                                         (if (gx#stx-pair?
                                                              _hd47284769_)
                                                             (let ((_e47314776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd47284769_)))
                       (let ((_lp-hd47324779_ (##car _e47314776_))
                             (_lp-tl47334781_ (##cdr _e47314776_)))
                         (if (gx#stx-pair? _lp-hd47324779_)
                             (let ((_e47384784_ (gx#stx-e _lp-hd47324779_)))
                               (let ((_hd47394787_ (##car _e47384784_))
                                     (_tl47404789_ (##cdr _e47384784_)))
                                 (if (gx#stx-pair? _tl47404789_)
                                     (let ((_e47414792_
                                            (gx#stx-e _tl47404789_)))
                                       (let ((_hd47424795_ (##car _e47414792_))
                                             (_tl47434797_
                                              (##cdr _e47414792_)))
                                         (if (gx#stx-null? _tl47434797_)
                                             (_loop47304766_
                                              _lp-tl47334781_
                                              (cons _hd47424795_
                                                    _body47344771_)
                                              (cons _hd47394787_ _hd47354773_))
                                             (_g47204748_ _g47214751_))))
                                     (_g47204748_ _g47214751_))))
                             (_g47204748_ _g47214751_))))
                     (let ((_body47364800_ (reverse _body47344771_))
                           (_hd47374802_ (reverse _hd47354773_)))
                       ((lambda (_L4805_ _L4806_)
                          (let ((_args4822_ (gxc#generate-runtime-temporary))
                                (_arglen4823_
                                 (gxc#generate-runtime-temporary)))
                            (cons 'lambda
                                  (cons _args4822_
                                        (cons (cons 'let
                                                    (cons (cons (cons _arglen4823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons 'length (cons _args4822_ '())) '()))
                        '())
                  (cons (cons 'cond
                              (foldr cons
                                     (cons (cons 'else
                                                 (cons (cons 'error
                                                             (cons '"No clause matching arguments"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args4822_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (map (lambda (_g48244827_ _g48254829_)
                                            (_generate14718_
                                             _args4822_
                                             _arglen4823_
                                             _g48244827_
                                             _g48254829_))
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g48314834_
                                                            _g48324836_)
                                                     (cons _g48314834_
                                                           _g48324836_))
                                                   '()
                                                   _L4806_))
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g48384841_
                                                            _g48394843_)
                                                     (cons _g48384841_
                                                           _g48394843_))
                                                   '()
                                                   _L4805_)))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                        _body47364800_
                        _hd47374802_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop47304766_
                                                _target47274761_
                                                '()
                                                '()))
                                             (_g47204748_ _g47214751_)))))
                                   (_g47204748_ _g47214751_))
                               (_g47204748_ _g47214751_))))
                       (_g47204748_ _g47214751_)))))
            (_g47194846_ _stx4716_))))))
  (define gxc#generate-runtime-let-values%
    (let ((_opt-lambda43964706_
           (lambda (_stx4398_ _compiled-body?4399_)
             (let ((_generate-simple4401_
                    (lambda (_hd4703_ _body4704_)
                      (gxc#generate-runtime-simple-let
                       'let
                       _hd4703_
                       _body4704_
                       _compiled-body?4399_))))
               (let ((_generate-values-post4403_
                      (lambda (_post4475_ _body4476_)
                        ((letrec ((_lp4478_
                                   (lambda (_rest4480_ _body4481_)
                                     (let ((_rest44824490_ _rest4480_))
                                       (let ((_E44854494_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _rest44824490_))))
                                         (let ((_else44844498_
                                                (lambda () _body4481_)))
                                           (let ((_K44864504_
                                                  (lambda (_rest4501_
                                                           _bind4502_)
                                                    (_lp4478_
                                                     _rest4501_
                                                     (cons 'let
                                                           (cons _bind4502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body4481_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _rest44824490_)
                                                 (let ((_hd44874507_
                                                        (##car _rest44824490_))
                                                       (_tl44884509_
                                                        (##cdr _rest44824490_)))
                                                   (let ((_bind4512_
                                                          _hd44874507_))
                                                     (let ((_rest4514_
                                                            _tl44884509_))
                                                       (_K44864504_
                                                        _rest4514_
                                                        _bind4512_))))
                                                 (_else44844498_)))))))))
                           _lp4478_)
                         _post4475_
                         _body4476_))))
                 (let ((_generate-values-check4404_
                        (lambda (_check4472_ _body4473_)
                          (cons 'begin
                                (foldr cons
                                       (cons _body4473_ '())
                                       (reverse _check4472_))))))
                   (let ((_generate-values4402_
                          (lambda (_hd4516_ _body4517_)
                            ((letrec ((_lp4519_
                                       (lambda (_rest4521_
                                                _bind4522_
                                                _check4523_
                                                _post4524_)
                                         (let ((_g45274538_
                                                (lambda (_g45284535_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g45284535_))))
                                           (let ((_g45264552_
                                                  (lambda (_g45284541_)
                                                    ((lambda ()
                                                       (let ((_body4545_
                                                              (if _compiled-body?4399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body4517_
                          (gxc#compile-e _body4517_))))
                 (let ((_body4547_
                        (_generate-values-post4403_ _post4524_ _body4545_)))
                   (let ((_body4549_
                          (_generate-values-check4404_
                           _check4523_
                           _body4547_)))
                     (let ()
                       (cons 'let
                             (cons (reverse _bind4522_)
                                   (cons _body4549_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g45254700_
                                                    (lambda (_g45284555_)
                                                      (if (gx#stx-pair?
                                                           _g45284555_)
                                                          (let ((_e45314557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _g45284555_)))
                    (let ((_hd45324560_ (##car _e45314557_))
                          (_tl45334562_ (##cdr _e45314557_)))
                      ((lambda (_L4565_ _L4566_)
                         (let ((_g45814606_
                                (lambda (_g45824603_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g45824603_))))
                           (let ((_g45804650_
                                  (lambda (_g45824609_)
                                    (if (gx#stx-pair? _g45824609_)
                                        (let ((_e45964611_
                                               (gx#stx-e _g45824609_)))
                                          (let ((_hd45974614_
                                                 (##car _e45964611_))
                                                (_tl45984616_
                                                 (##cdr _e45964611_)))
                                            (if (gx#stx-pair? _tl45984616_)
                                                (let ((_e45994619_
                                                       (gx#stx-e
                                                        _tl45984616_)))
                                                  (let ((_hd46004622_
                                                         (##car _e45994619_))
                                                        (_tl46014624_
                                                         (##cdr _e45994619_)))
                                                    (if (gx#stx-null?
                                                         _tl46014624_)
                                                        ((lambda (_L4627_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L4628_)
                   (let ((_vals4641_ (gxc#generate-runtime-temporary)))
                     (let ((_expr4643_ (gxc#compile-e _L4627_)))
                       (let ((_check-values4645_
                              (gxc#generate-runtime-check-values
                               _vals4641_
                               _L4628_)))
                         (let ((_refs4647_
                                (gxc#generate-runtime-let-values-bind
                                 _vals4641_
                                 _L4628_)))
                           (let ()
                             (_lp4519_
                              _L4565_
                              (cons (cons _vals4641_ (cons _expr4643_ '()))
                                    _bind4522_)
                              (cons _check-values4645_ _check4523_)
                              (cons _refs4647_ _post4524_))))))))
                 _hd46004622_
                 _hd45974614_)
                (_g45814606_ _g45824609_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g45814606_ _g45824609_))))
                                        (_g45814606_ _g45824609_)))))
                             (let ((_g45794697_
                                    (lambda (_g45824653_)
                                      (if (gx#stx-pair? _g45824653_)
                                          (let ((_e45854655_
                                                 (gx#stx-e _g45824653_)))
                                            (let ((_hd45864658_
                                                   (##car _e45854655_))
                                                  (_tl45874660_
                                                   (##cdr _e45854655_)))
                                              (if (gx#stx-pair? _hd45864658_)
                                                  (let ((_e45884663_
                                                         (gx#stx-e
                                                          _hd45864658_)))
                                                    (let ((_hd45894666_
                                                           (##car _e45884663_))
                                                          (_tl45904668_
                                                           (##cdr _e45884663_)))
                                                      (if (gx#stx-null?
                                                           _tl45904668_)
                                                          (if (gx#stx-pair?
                                                               _tl45874660_)
                                                              (let ((_e45914671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl45874660_)))
                        (let ((_hd45924674_ (##car _e45914671_))
                              (_tl45934676_ (##cdr _e45914671_)))
                          (if (gx#stx-null? _tl45934676_)
                              ((lambda (_L4679_ _L4680_)
                                 (let ((_eid4694_
                                        (gxc#generate-runtime-binding-id*
                                         _L4680_))
                                       (_expr4695_ (gxc#compile-e _L4679_)))
                                   (_lp4519_
                                    _L4565_
                                    (cons (cons _eid4694_
                                                (cons _expr4695_ '()))
                                          _bind4522_)
                                    _check4523_
                                    _post4524_)))
                               _hd45924674_
                               _hd45894666_)
                              (_g45804650_ _g45824653_))))
                      (_g45804650_ _g45824653_))
                  (_g45804650_ _g45824653_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g45804650_ _g45824653_))))
                                          (_g45804650_ _g45824653_)))))
                               (_g45794697_ _L4566_)))))
                       _tl45334562_
                       _hd45324560_)))
                  (_g45264552_ _g45284555_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g45254700_ _rest4521_)))))))
                               _lp4519_)
                             _hd4516_
                             '()
                             '()
                             '()))))
                     (let ((_g44064423_
                            (lambda (_g44074420_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g44074420_))))
                       (let ((_g44054469_
                              (lambda (_g44074426_)
                                (if (gx#stx-pair? _g44074426_)
                                    (let ((_e44104428_ (gx#stx-e _g44074426_)))
                                      (let ((_hd44114431_ (##car _e44104428_))
                                            (_tl44124433_ (##cdr _e44104428_)))
                                        (if (gx#stx-pair? _tl44124433_)
                                            (let ((_e44134436_
                                                   (gx#stx-e _tl44124433_)))
                                              (let ((_hd44144439_
                                                     (##car _e44134436_))
                                                    (_tl44154441_
                                                     (##cdr _e44134436_)))
                                                (if (gx#stx-pair? _tl44154441_)
                                                    (let ((_e44164444_
                                                           (gx#stx-e
                                                            _tl44154441_)))
                                                      (let ((_hd44174447_
                                                             (##car _e44164444_))
                                                            (_tl44184449_
                                                             (##cdr _e44164444_)))
                                                        (if (gx#stx-null?
                                                             _tl44184449_)
                                                            ((lambda (_L4452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L4453_)
                       (if (gxc#generate-runtime-simple-let? _L4453_)
                           (_generate-simple4401_ _L4453_ _L4452_)
                           (_generate-values4402_ _L4453_ _L4452_)))
                     _hd44174447_
                     _hd44144439_)
                    (_g44064423_ _g44074426_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g44064423_
                                                     _g44074426_))))
                                            (_g44064423_ _g44074426_))))
                                    (_g44064423_ _g44074426_)))))
                         (_g44054469_ _stx4398_))))))))))
      (lambda _g5864_
        (let ((_g5863_ (length _g5864_)))
          (cond ((fx= _g5863_ 1)
                 (apply (lambda (_stx4709_)
                          (let ((_compiled-body?4711_ '#f))
                            (_opt-lambda43964706_
                             _stx4709_
                             _compiled-body?4711_)))
                        _g5864_))
                ((fx= _g5863_ 2)
                 (apply (lambda (_stx4713_ _compiled-body?4714_)
                          (_opt-lambda43964706_
                           _stx4713_
                           _compiled-body?4714_))
                        _g5864_))
                (else (error "No clause matching arguments" _g5864_)))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals4297_ _hd4298_)
      ((letrec ((_lp4300_
                 (lambda (_rest4302_ _k4303_ _r4304_)
                   (let ((_g43094325_
                          (lambda (_g43104322_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g43104322_))))
                     (let ((_g43084332_
                            (lambda (_g43104328_)
                              ((lambda () (reverse _r4304_))))))
                       (let ((_g43074348_
                              (lambda (_g43104335_)
                                ((lambda (_L4337_)
                                   (if (gx#identifier? _L4337_)
                                       (foldl cons
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L4337_)
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals4297_ (cons _k4303_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              _r4304_)
                                       (_g43084332_ _g43104335_)))
                                 _g43104335_))))
                         (let ((_g43064372_
                                (lambda (_g43104351_)
                                  (if (gx#stx-pair? _g43104351_)
                                      (let ((_e43174353_
                                             (gx#stx-e _g43104351_)))
                                        (let ((_hd43184356_
                                               (##car _e43174353_))
                                              (_tl43194358_
                                               (##cdr _e43174353_)))
                                          ((lambda (_L4361_ _L4362_)
                                             (_lp4300_
                                              _L4361_
                                              (fx1+ _k4303_)
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L4362_)
                                                          (cons (cons 'values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals4297_ (cons _k4303_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _r4304_)))
                                           _tl43194358_
                                           _hd43184356_)))
                                      (_g43074348_ _g43104351_)))))
                           (let ((_g43054394_
                                  (lambda (_g43104375_)
                                    (if (gx#stx-pair? _g43104375_)
                                        (let ((_e43124377_
                                               (gx#stx-e _g43104375_)))
                                          (let ((_hd43134380_
                                                 (##car _e43124377_))
                                                (_tl43144382_
                                                 (##cdr _e43124377_)))
                                            (if (gx#stx-datum? _hd43134380_)
                                                (if (equal? (gx#stx-e
                                                             _hd43134380_)
                                                            '#f)
                                                    ((lambda (_L4385_)
                                                       (_lp4300_
                                                        _L4385_
                                                        (fx1+ _k4303_)
                                                        _r4304_))
                                                     _tl43144382_)
                                                    (_g43064372_ _g43104375_))
                                                (_g43064372_ _g43104375_))))
                                        (_g43064372_ _g43104375_)))))
                             (_g43054394_ _rest4302_)))))))))
         _lp4300_)
       _hd4298_
       '0
       '())))
  (define gxc#generate-runtime-letrec-values%
    (let ((_opt-lambda39754287_
           (lambda (_stx3977_ _compiled-body?3978_)
             (let ((_generate-simple3980_
                    (lambda (_hd4284_ _body4285_)
                      (gxc#generate-runtime-simple-let
                       'letrec
                       _hd4284_
                       _body4285_
                       _compiled-body?3978_))))
               (let ((_generate-values-check3982_
                      (lambda (_check4058_ _body4059_)
                        (cons 'begin
                              (foldr cons
                                     (cons _body4059_ '())
                                     (reverse _check4058_))))))
                 (let ((_generate-values-post3983_
                        (lambda (_post4051_ _body4052_)
                          (cons 'begin
                                (foldr cons
                                       (cons _body4052_ '())
                                       (map (lambda (_g40534055_)
                                              (cons 'set! _g40534055_))
                                            (reverse _post4051_)))))))
                   (let ((_generate-values3981_
                          (lambda (_hd4061_ _body4062_)
                            ((letrec ((_lp4064_
                                       (lambda (_rest4066_
                                                _bind4067_
                                                _check4068_
                                                _post4069_)
                                         (let ((_g40724083_
                                                (lambda (_g40734080_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g40734080_))))
                                           (let ((_g40714097_
                                                  (lambda (_g40734086_)
                                                    ((lambda ()
                                                       (let ((_body4090_
                                                              (if _compiled-body?3978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body4062_
                          (gxc#compile-e _body4062_))))
                 (let ((_body4092_
                        (_generate-values-post3983_ _post4069_ _body4090_)))
                   (let ((_body4094_
                          (_generate-values-check3982_
                           _check4068_
                           _body4092_)))
                     (let ()
                       (cons 'letrec
                             (cons (reverse _bind4067_)
                                   (cons _body4094_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g40704281_
                                                    (lambda (_g40734100_)
                                                      (if (gx#stx-pair?
                                                           _g40734100_)
                                                          (let ((_e40764102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _g40734100_)))
                    (let ((_hd40774105_ (##car _e40764102_))
                          (_tl40784107_ (##cdr _e40764102_)))
                      ((lambda (_L4110_ _L4111_)
                         (let ((_g41264151_
                                (lambda (_g41274148_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g41274148_))))
                           (let ((_g41254231_
                                  (lambda (_g41274154_)
                                    (if (gx#stx-pair? _g41274154_)
                                        (let ((_e41414156_
                                               (gx#stx-e _g41274154_)))
                                          (let ((_hd41424159_
                                                 (##car _e41414156_))
                                                (_tl41434161_
                                                 (##cdr _e41414156_)))
                                            (if (gx#stx-pair? _tl41434161_)
                                                (let ((_e41444164_
                                                       (gx#stx-e
                                                        _tl41434161_)))
                                                  (let ((_hd41454167_
                                                         (##car _e41444164_))
                                                        (_tl41464169_
                                                         (##cdr _e41444164_)))
                                                    (if (gx#stx-null?
                                                         _tl41464169_)
                                                        ((lambda (_L4172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L4173_)
                   (let ((_vals4186_ (gxc#generate-runtime-temporary)))
                     (let ((_expr4188_ (gxc#compile-e _L4172_)))
                       (let ((_check-values4190_
                              (gxc#generate-runtime-check-values
                               _vals4186_
                               _L4173_)))
                         (let ((_refs4192_
                                (gxc#generate-runtime-let-values-bind
                                 _vals4186_
                                 _L4173_)))
                           (let ()
                             (_lp4064_
                              _L4110_
                              (foldl cons
                                     (cons (cons _vals4186_
                                                 (cons _expr4188_ '()))
                                           _bind4067_)
                                     (map (lambda (_e41944196_)
                                            (let ((_g41984207_ _e41944196_))
                                              (let ((_E42004211_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _g41984207_))))
                                                (let ((_K42014216_
                                                       (lambda (_eid4214_)
                                                         (cons _eid4214_
                                                               (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _g41984207_)
                                                      (let ((_hd42024219_
                                                             (##car _g41984207_))
                                                            (_tl42034221_
                                                             (##cdr _g41984207_)))
                                                        (let ((_eid4224_
                                                               _hd42024219_))
                                                          (if (##pair? _tl42034221_)
                                                              (let ((_hd42044226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##car _tl42034221_))
                            (_tl42054228_ (##cdr _tl42034221_)))
                        (if (##null? _tl42054228_)
                            (_K42014216_ _eid4224_)
                            (_E42004211_)))
                      (_E42004211_))))
              (_E42004211_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _refs4192_))
                              (cons _check-values4190_ _check4068_)
                              (foldl cons _refs4192_ _post4069_))))))))
                 _hd41454167_
                 _hd41424159_)
                (_g41264151_ _g41274154_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g41264151_ _g41274154_))))
                                        (_g41264151_ _g41274154_)))))
                             (let ((_g41244278_
                                    (lambda (_g41274234_)
                                      (if (gx#stx-pair? _g41274234_)
                                          (let ((_e41304236_
                                                 (gx#stx-e _g41274234_)))
                                            (let ((_hd41314239_
                                                   (##car _e41304236_))
                                                  (_tl41324241_
                                                   (##cdr _e41304236_)))
                                              (if (gx#stx-pair? _hd41314239_)
                                                  (let ((_e41334244_
                                                         (gx#stx-e
                                                          _hd41314239_)))
                                                    (let ((_hd41344247_
                                                           (##car _e41334244_))
                                                          (_tl41354249_
                                                           (##cdr _e41334244_)))
                                                      (if (gx#stx-null?
                                                           _tl41354249_)
                                                          (if (gx#stx-pair?
                                                               _tl41324241_)
                                                              (let ((_e41364252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl41324241_)))
                        (let ((_hd41374255_ (##car _e41364252_))
                              (_tl41384257_ (##cdr _e41364252_)))
                          (if (gx#stx-null? _tl41384257_)
                              ((lambda (_L4260_ _L4261_)
                                 (let ((_eid4275_
                                        (gxc#generate-runtime-binding-id*
                                         _L4261_))
                                       (_expr4276_ (gxc#compile-e _L4260_)))
                                   (_lp4064_
                                    _L4110_
                                    (cons (cons _eid4275_
                                                (cons _expr4276_ '()))
                                          _bind4067_)
                                    _check4068_
                                    _post4069_)))
                               _hd41374255_
                               _hd41344247_)
                              (_g41254231_ _g41274234_))))
                      (_g41254231_ _g41274234_))
                  (_g41254231_ _g41274234_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g41254231_ _g41274234_))))
                                          (_g41254231_ _g41274234_)))))
                               (_g41244278_ _L4111_)))))
                       _tl40784107_
                       _hd40774105_)))
                  (_g40714097_ _g40734100_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g40704281_ _rest4066_)))))))
                               _lp4064_)
                             _hd4061_
                             '()
                             '()
                             '()))))
                     (let ((_g39854002_
                            (lambda (_g39863999_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g39863999_))))
                       (let ((_g39844048_
                              (lambda (_g39864005_)
                                (if (gx#stx-pair? _g39864005_)
                                    (let ((_e39894007_ (gx#stx-e _g39864005_)))
                                      (let ((_hd39904010_ (##car _e39894007_))
                                            (_tl39914012_ (##cdr _e39894007_)))
                                        (if (gx#stx-pair? _tl39914012_)
                                            (let ((_e39924015_
                                                   (gx#stx-e _tl39914012_)))
                                              (let ((_hd39934018_
                                                     (##car _e39924015_))
                                                    (_tl39944020_
                                                     (##cdr _e39924015_)))
                                                (if (gx#stx-pair? _tl39944020_)
                                                    (let ((_e39954023_
                                                           (gx#stx-e
                                                            _tl39944020_)))
                                                      (let ((_hd39964026_
                                                             (##car _e39954023_))
                                                            (_tl39974028_
                                                             (##cdr _e39954023_)))
                                                        (if (gx#stx-null?
                                                             _tl39974028_)
                                                            ((lambda (_L4031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L4032_)
                       (if (gxc#generate-runtime-simple-let? _L4032_)
                           (_generate-simple3980_ _L4032_ _L4031_)
                           (_generate-values3981_ _L4032_ _L4031_)))
                     _hd39964026_
                     _hd39934018_)
                    (_g39854002_ _g39864005_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g39854002_
                                                     _g39864005_))))
                                            (_g39854002_ _g39864005_))))
                                    (_g39854002_ _g39864005_)))))
                         (_g39844048_ _stx3977_))))))))))
      (lambda _g5866_
        (let ((_g5865_ (length _g5866_)))
          (cond ((fx= _g5865_ 1)
                 (apply (lambda (_stx4290_)
                          (let ((_compiled-body?4292_ '#f))
                            (_opt-lambda39754287_
                             _stx4290_
                             _compiled-body?4292_)))
                        _g5866_))
                ((fx= _g5865_ 2)
                 (apply (lambda (_stx4294_ _compiled-body?4295_)
                          (_opt-lambda39754287_
                           _stx4294_
                           _compiled-body?4295_))
                        _g5866_))
                (else (error "No clause matching arguments" _g5866_)))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx3096_)
      (let ((_collect-closures3099_
             (lambda (_forms3917_)
               (map (lambda (_e39183920_)
                      (let ((_g39223931_ _e39183920_))
                        (let ((_E39243935_
                               (lambda ()
                                 (error '"No clause matching" _g39223931_))))
                          (let ((_K39253940_
                                 (lambda (_expr3938_)
                                   (gxc#collect-expression-refs _expr3938_))))
                            (if (##pair? _g39223931_)
                                (let ((_hd39263943_ (##car _g39223931_))
                                      (_tl39273945_ (##cdr _g39223931_)))
                                  (if (##pair? _tl39273945_)
                                      (let ((_hd39283948_ (##car _tl39273945_))
                                            (_tl39293950_
                                             (##cdr _tl39273945_)))
                                        (let ((_expr3953_ _hd39283948_))
                                          (if (##null? _tl39293950_)
                                              (_K39253940_ _expr3953_)
                                              (_E39243935_))))
                                      (_E39243935_)))
                                (_E39243935_))))))
                    _forms3917_))))
        (let ((_collect-bindings3100_
               (lambda (_forms3841_)
                 (map (lambda (_e38423844_)
                        (let ((_g38463855_ _e38423844_))
                          (let ((_E38483859_
                                 (lambda ()
                                   (error '"No clause matching" _g38463855_))))
                            (let ((_K38493902_
                                   (lambda (_bind3862_)
                                     ((letrec ((_lp3864_
                                                (lambda (_rest3866_ _r3867_)
                                                  (let ((_rest38683876_
                                                         _rest3866_))
                                                    (let ((_E38713880_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest38683876_))))
              (let ((_else38703884_
                     (lambda ()
                       (if (gx#identifier? _rest3866_)
                           (cons _rest3866_ _r3867_)
                           _r3867_))))
                (let ((_K38723890_
                       (lambda (_rest3887_ _id3888_)
                         (if (gx#identifier? _id3888_)
                             (_lp3864_
                              _rest3887_
                              (cons (gx#binding-id
                                     (gx#resolve-identifier _id3888_))
                                    _r3867_))
                             (_lp3864_ _rest3887_ _r3867_)))))
                  (if (##pair? _rest38683876_)
                      (let ((_hd38733893_ (##car _rest38683876_))
                            (_tl38743895_ (##cdr _rest38683876_)))
                        (let ((_id3898_ _hd38733893_))
                          (let ((_rest3900_ _tl38743895_))
                            (_K38723890_ _rest3900_ _id3898_))))
                      (_else38703884_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp3864_)
                                      _bind3862_
                                      '()))))
                              (if (##pair? _g38463855_)
                                  (let ((_hd38503905_ (##car _g38463855_))
                                        (_tl38513907_ (##cdr _g38463855_)))
                                    (let ((_bind3910_ _hd38503905_))
                                      (if (##pair? _tl38513907_)
                                          (let ((_hd38523912_
                                                 (##car _tl38513907_))
                                                (_tl38533914_
                                                 (##cdr _tl38513907_)))
                                            (if (##null? _tl38533914_)
                                                (_K38493902_ _bind3910_)
                                                (_E38483859_)))
                                          (_E38483859_))))
                                  (_E38483859_))))))
                      _forms3841_))))
          (let ((_closure-reference?3104_
                 (lambda (_closure3393_ _bindings3394_)
                   (ormap (lambda (_g33953397_)
                            (hash-get _closure3393_ _g33953397_))
                          _bindings3394_))))
            (let ((_is-effect-expr?3106_
                   (lambda (_expr3304_)
                     (let ((_g33063316_
                            (lambda (_g33073313_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g33073313_))))
                       (let ((_g33053339_
                              (lambda (_g33073319_)
                                (if (gx#stx-pair? _g33073319_)
                                    (let ((_e33093321_ (gx#stx-e _g33073319_)))
                                      (let ((_hd33103324_ (##car _e33093321_))
                                            (_tl33113326_ (##cdr _e33093321_)))
                                        ((lambda (_L3329_)
                                           (not (memq (gx#stx-e _L3329_)
                                                      '(%#lambda
                                                        %#case-lambda
                                                        %#quote
                                                        %#quote-syntax
                                                        %#ref))))
                                         _hd33103324_)))
                                    (_g33063316_ _g33073319_)))))
                         (_g33053339_ _expr3304_))))))
              (let ((_is-lambda-expr?3107_
                     (lambda (_expr3266_)
                       (let ((_g32683278_
                              (lambda (_g32693275_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g32693275_))))
                         (let ((_g32673301_
                                (lambda (_g32693281_)
                                  (if (gx#stx-pair? _g32693281_)
                                      (let ((_e32713283_
                                             (gx#stx-e _g32693281_)))
                                        (let ((_hd32723286_
                                               (##car _e32713283_))
                                              (_tl32733288_
                                               (##cdr _e32713283_)))
                                          ((lambda (_L3291_)
                                             (memq (gx#stx-e _L3291_)
                                                   '(%#lambda %#case-lambda)))
                                           _hd32723286_)))
                                      (_g32683278_ _g32693281_)))))
                           (_g32673301_ _expr3266_))))))
                (let ((_lift-rec3103_
                       (lambda (_forms3400_)
                         ((letrec ((_lp3402_
                                    (lambda (_rest3404_
                                             _pre3405_
                                             _bind3406_
                                             _init3407_)
                                      (let ((_rest34083416_ _rest3404_))
                                        (let ((_E34113420_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _rest34083416_))))
                                          (let ((_else34103424_
                                                 (lambda ()
                                                   (values (reverse _pre3405_)
                                                           (reverse _bind3406_)
                                                           (reverse _init3407_)))))
                                            (let ((_K34123615_
                                                   (lambda (_rest3427_
                                                            _bind-hd3428_)
                                                     (let ((_g34323467_
                                                            (lambda (_g34333464_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g34333464_))))
                                                       (let ((_g34313524_
                                                              (lambda (_g34333470_)
                                                                (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g34333470_)
                            (let ((_e34573472_ (gx#stx-e _g34333470_)))
                              (let ((_hd34583475_ (##car _e34573472_))
                                    (_tl34593477_ (##cdr _e34573472_)))
                                (if (gx#stx-pair? _tl34593477_)
                                    (let ((_e34603480_
                                           (gx#stx-e _tl34593477_)))
                                      (let ((_hd34613483_ (##car _e34603480_))
                                            (_tl34623485_ (##cdr _e34603480_)))
                                        (if (gx#stx-null? _tl34623485_)
                                            ((lambda (_L3488_ _L3489_)
                                               (let ((_vals3508_
                                                      (gxc#generate-runtime-temporary)))
                                                 (let ((_expr3510_
                                                        (gxc#compile-e
                                                         _L3488_)))
                                                   (let ((_check-values3512_
                                                          (gxc#generate-runtime-check-values
                                                           _vals3508_
                                                           _L3489_)))
                                                     (let ((_refs3514_
                                                            (gxc#generate-runtime-let-values-bind
                                                             _vals3508_
                                                             _L3489_)))
                                                       (let ()
                                                         (_lp3402_
                                                          _rest3427_
                                                          (foldl (lambda (_ref3517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _r3518_)
                           (cons (cons (car _ref3517_) (cons '#!void '()))
                                 _r3518_))
                         _pre3405_
                         _refs3514_)
                  _bind3406_
                  (cons (cons 'let
                              (cons (cons (cons _vals3508_
                                                (cons _expr3510_ '()))
                                          '())
                                    (cons _check-values3512_
                                          (cons (map (lambda (_g35193521_)
                                                       (cons 'set!
                                                             _g35193521_))
                                                     _refs3514_)
                                                '()))))
                        _init3407_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd34613483_
                                             _hd34583475_)
                                            (_g34323467_ _g34333470_))))
                                    (_g34323467_ _g34333470_))))
                            (_g34323467_ _g34333470_)))))
                 (let ((_g34303570_
                        (lambda (_g34333527_)
                          (if (gx#stx-pair? _g34333527_)
                              (let ((_e34463529_ (gx#stx-e _g34333527_)))
                                (let ((_hd34473532_ (##car _e34463529_))
                                      (_tl34483534_ (##cdr _e34463529_)))
                                  (if (gx#stx-pair? _hd34473532_)
                                      (let ((_e34493537_
                                             (gx#stx-e _hd34473532_)))
                                        (let ((_hd34503540_
                                               (##car _e34493537_))
                                              (_tl34513542_
                                               (##cdr _e34493537_)))
                                          (if (gx#stx-null? _tl34513542_)
                                              (if (gx#stx-pair? _tl34483534_)
                                                  (let ((_e34523545_
                                                         (gx#stx-e
                                                          _tl34483534_)))
                                                    (let ((_hd34533548_
                                                           (##car _e34523545_))
                                                          (_tl34543550_
                                                           (##cdr _e34523545_)))
                                                      (if (gx#stx-null?
                                                           _tl34543550_)
                                                          ((lambda (_L3553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L3554_)
                     (let ((_eid3568_
                            (gxc#generate-runtime-binding-id _L3554_)))
                       (if (_is-lambda-expr?3107_ _L3553_)
                           (_lp3402_
                            _rest3427_
                            _pre3405_
                            (cons (cons _eid3568_
                                        (cons (gxc#compile-e _L3553_) '()))
                                  _bind3406_)
                            _init3407_)
                           (_lp3402_
                            _rest3427_
                            (cons (cons _eid3568_ (cons '#!void '()))
                                  _pre3405_)
                            _bind3406_
                            (cons (cons 'set!
                                        (cons _eid3568_
                                              (cons (gxc#compile-e _L3553_)
                                                    '())))
                                  _init3407_)))))
                   _hd34533548_
                   _hd34503540_)
                  (_g34313524_ _g34333527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g34313524_ _g34333527_))
                                              (_g34313524_ _g34333527_))))
                                      (_g34313524_ _g34333527_))))
                              (_g34313524_ _g34333527_)))))
                   (let ((_g34293612_
                          (lambda (_g34333573_)
                            (if (gx#stx-pair? _g34333573_)
                                (let ((_e34353575_ (gx#stx-e _g34333573_)))
                                  (let ((_hd34363578_ (##car _e34353575_))
                                        (_tl34373580_ (##cdr _e34353575_)))
                                    (if (gx#stx-pair? _hd34363578_)
                                        (let ((_e34383583_
                                               (gx#stx-e _hd34363578_)))
                                          (let ((_hd34393586_
                                                 (##car _e34383583_))
                                                (_tl34403588_
                                                 (##cdr _e34383583_)))
                                            (if (gx#stx-datum? _hd34393586_)
                                                (if (equal? (gx#stx-e
                                                             _hd34393586_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl34403588_)
                                                        (if (gx#stx-pair?
                                                             _tl34373580_)
                                                            (let ((_e34413591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl34373580_)))
                      (let ((_hd34423594_ (##car _e34413591_))
                            (_tl34433596_ (##cdr _e34413591_)))
                        (if (gx#stx-null? _tl34433596_)
                            ((lambda (_L3599_)
                               (_lp3402_
                                _rest3427_
                                _pre3405_
                                _bind3406_
                                (cons (gxc#compile-e _L3599_) _init3407_)))
                             _hd34423594_)
                            (_g34303570_ _g34333573_))))
                    (_g34303570_ _g34333573_))
                (_g34303570_ _g34333573_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g34303570_ _g34333573_))
                                                (_g34303570_ _g34333573_))))
                                        (_g34303570_ _g34333573_))))
                                (_g34303570_ _g34333573_)))))
                     (_g34293612_ _bind-hd3428_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _rest34083416_)
                                                  (let ((_hd34133618_
                                                         (##car _rest34083416_))
                                                        (_tl34143620_
                                                         (##cdr _rest34083416_)))
                                                    (let ((_bind-hd3623_
                                                           _hd34133618_))
                                                      (let ((_rest3625_
                                                             _tl34143620_))
                                                        (_K34123615_
                                                         _rest3625_
                                                         _bind-hd3623_))))
                                                  (_else34103424_)))))))))
                            _lp3402_)
                          _forms3400_
                          '()
                          '()
                          '()))))
                  (let ((_is-effect-bind?3105_
                         (lambda (_hd-bind3342_)
                           (let ((_g33443357_
                                  (lambda (_g33453354_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g33453354_))))
                             (let ((_g33433390_
                                    (lambda (_g33453360_)
                                      (if (gx#stx-pair? _g33453360_)
                                          (let ((_e33473362_
                                                 (gx#stx-e _g33453360_)))
                                            (let ((_hd33483365_
                                                   (##car _e33473362_))
                                                  (_tl33493367_
                                                   (##cdr _e33473362_)))
                                              (if (gx#stx-pair? _tl33493367_)
                                                  (let ((_e33503370_
                                                         (gx#stx-e
                                                          _tl33493367_)))
                                                    (let ((_hd33513373_
                                                           (##car _e33503370_))
                                                          (_tl33523375_
                                                           (##cdr _e33503370_)))
                                                      (if (gx#stx-null?
                                                           _tl33523375_)
                                                          ((lambda (_L3378_)
                                                             (_is-effect-expr?3106_
                                                              _L3378_))
                                                           _hd33513373_)
                                                          (_g33443357_
                                                           _g33453360_))))
                                                  (_g33443357_ _g33453360_))))
                                          (_g33443357_ _g33453360_)))))
                               (_g33433390_ _hd-bind3342_))))))
                    (let ((_lift-pre3101_
                           (lambda (_hd3734_ _bindings3735_ _closures3736_)
                             ((letrec ((_lp3738_
                                        (lambda (_rest-forms3740_
                                                 _rest-bindings3741_
                                                 _rest-closures3742_
                                                 _post-forms3743_
                                                 _post-bindings3744_
                                                 _post-closures3745_
                                                 _pre-forms3746_
                                                 _lifted?3747_)
                                          (let ((_rest-forms37483764_
                                                 _rest-forms3740_)
                                                (_rest-bindings37493766_
                                                 _rest-bindings3741_)
                                                (_rest-closures37503768_
                                                 _rest-closures3742_))
                                            (let ((_E37533772_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _rest-forms37483764_
                                                            _rest-bindings37493766_
                                                            _rest-closures37503768_))))
                                              (let ((_else37523776_
                                                     (lambda ()
                                                       (if _lifted?3747_
                                                           (_lp3738_
                                                            (reverse _post-forms3743_)
                                                            (reverse _post-bindings3744_)
                                                            (reverse _post-closures3745_)
                                                            '()
                                                            '()
                                                            '()
                                                            _pre-forms3746_
                                                            '#f)
                                                           (values (reverse _pre-forms3746_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _post-forms3743_)
                           (reverse _post-bindings3744_)
                           (reverse _post-closures3745_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_K37543829_
                                                       (lambda (_rest-forms3779_
                                                                _form3780_)
                                                         (let ((_K37553817_
                                                                (lambda (_rest-bindings3782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bindings3783_)
                          (let ((_K37563805_
                                 (lambda (_rest-closures3785_ _closure3786_)
                                   (if (let ((_$e3788_
                                              (_closure-reference?3104_
                                               _closure3786_
                                               _bindings3783_)))
                                         (if _$e3788_
                                             _$e3788_
                                             (let ((_$e3795_
                                                    (ormap (lambda (_g37903792_)
                                                             (_closure-reference?3104_
                                                              _closure3786_
                                                              _g37903792_))
                                                           _rest-bindings3782_)))
                                               (if _$e3795_
                                                   _$e3795_
                                                   (let ((_$e3802_
                                                          (ormap (lambda (_g37973799_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_closure-reference?3104_
                            _closure3786_
                            _g37973799_))
                         _post-bindings3744_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e3802_
                                                         _$e3802_
                                                         (if (_is-effect-bind?3105_
                                                              _form3780_)
                                                             (find _is-effect-bind?3105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _post-forms3743_)
                     '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_lp3738_
                                        _rest-forms3779_
                                        _rest-bindings3782_
                                        _rest-closures3785_
                                        (cons _form3780_ _post-forms3743_)
                                        (cons _bindings3783_
                                              _post-bindings3744_)
                                        (cons _closure3786_
                                              _post-closures3745_)
                                        _pre-forms3746_
                                        _lifted?3747_)
                                       (_lp3738_
                                        _rest-forms3779_
                                        _rest-bindings3782_
                                        _rest-closures3785_
                                        _post-forms3743_
                                        _post-bindings3744_
                                        _post-closures3745_
                                        (cons _form3780_ _pre-forms3746_)
                                        '#t)))))
                            (if (##pair? _rest-closures37503768_)
                                (let ((_hd37573808_
                                       (##car _rest-closures37503768_))
                                      (_tl37583810_
                                       (##cdr _rest-closures37503768_)))
                                  (let ((_closure3813_ _hd37573808_))
                                    (let ((_rest-closures3815_ _tl37583810_))
                                      (_K37563805_
                                       _rest-closures3815_
                                       _closure3813_))))
                                (_else37523776_))))))
                   (if (##pair? _rest-bindings37493766_)
                       (let ((_hd37593820_ (##car _rest-bindings37493766_))
                             (_tl37603822_ (##cdr _rest-bindings37493766_)))
                         (let ((_bindings3825_ _hd37593820_))
                           (let ((_rest-bindings3827_ _tl37603822_))
                             (_K37553817_
                              _rest-bindings3827_
                              _bindings3825_))))
                       (_else37523776_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _rest-forms37483764_)
                                                      (let ((_hd37613832_
                                                             (##car _rest-forms37483764_))
                                                            (_tl37623834_
                                                             (##cdr _rest-forms37483764_)))
                                                        (let ((_form3837_
                                                               _hd37613832_))
                                                          (let ((_rest-forms3839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl37623834_))
                    (_K37543829_ _rest-forms3839_ _form3837_))))
              (_else37523776_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _lp3738_)
                              _hd3734_
                              _bindings3735_
                              _closures3736_
                              '()
                              '()
                              '()
                              '()
                              '#f))))
                      (let ((_lift-post3102_
                             (lambda (_hd3627_ _bindings3628_ _closures3629_)
                               ((letrec ((_lp3631_
                                          (lambda (_rest-forms3633_
                                                   _rest-bindings3634_
                                                   _rest-closures3635_
                                                   _pre-forms3636_
                                                   _pre-bindings3637_
                                                   _pre-closures3638_
                                                   _post-forms3639_
                                                   _lifted?3640_)
                                            (let ((_rest-forms36413657_
                                                   _rest-forms3633_)
                                                  (_rest-bindings36423659_
                                                   _rest-bindings3634_)
                                                  (_rest-closures36433661_
                                                   _rest-closures3635_))
                                              (let ((_E36463665_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _rest-forms36413657_
                                                              _rest-bindings36423659_
                                                              _rest-closures36433661_))))
                                                (let ((_else36453669_
                                                       (lambda ()
                                                         (if _lifted?3640_
                                                             (_lp3631_
                                                              (reverse _pre-forms3636_)
                                                              (reverse _pre-bindings3637_)
                                                              (reverse _pre-closures3638_)
                                                              '()
                                                              '()
                                                              '()
                                                              _post-forms3639_
                                                              '#f)
                                                             (values _post-forms3639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-forms3636_
                             _pre-bindings3637_
                             _pre-closures3638_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_K36473722_
                                                         (lambda (_rest-forms3672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _form3673_)
                   (let ((_K36483710_
                          (lambda (_rest-bindings3675_ _bindings3676_)
                            (let ((_K36493698_
                                   (lambda (_rest-closures3678_ _closure3679_)
                                     (if (let ((_$e3681_
                                                (_closure-reference?3104_
                                                 _closure3679_
                                                 _bindings3676_)))
                                           (if _$e3681_
                                               _$e3681_
                                               (let ((_$e3688_
                                                      (ormap (lambda (_g36833685_)
                                                               (_closure-reference?3104_
                                                                _g36833685_
                                                                _bindings3676_))
                                                             _rest-closures3678_)))
                                                 (if _$e3688_
                                                     _$e3688_
                                                     (let ((_$e3695_
                                                            (ormap (lambda (_g36903692_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (_closure-reference?3104_
                              _g36903692_
                              _bindings3676_))
                           _pre-closures3638_)))
               (if _$e3695_
                   _$e3695_
                   (if (_is-effect-bind?3105_ _form3673_)
                       (find _is-effect-bind?3105_ _pre-forms3636_)
                       '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_lp3631_
                                          _rest-forms3672_
                                          _rest-bindings3675_
                                          _rest-closures3678_
                                          (cons _form3673_ _pre-forms3636_)
                                          (cons _bindings3676_
                                                _pre-bindings3637_)
                                          (cons _closure3679_
                                                _pre-closures3638_)
                                          _post-forms3639_
                                          _lifted?3640_)
                                         (_lp3631_
                                          _rest-forms3672_
                                          _rest-bindings3675_
                                          _rest-closures3678_
                                          _pre-forms3636_
                                          _pre-bindings3637_
                                          _pre-closures3638_
                                          (cons _form3673_ _post-forms3639_)
                                          '#t)))))
                              (if (##pair? _rest-closures36433661_)
                                  (let ((_hd36503701_
                                         (##car _rest-closures36433661_))
                                        (_tl36513703_
                                         (##cdr _rest-closures36433661_)))
                                    (let ((_closure3706_ _hd36503701_))
                                      (let ((_rest-closures3708_ _tl36513703_))
                                        (_K36493698_
                                         _rest-closures3708_
                                         _closure3706_))))
                                  (_else36453669_))))))
                     (if (##pair? _rest-bindings36423659_)
                         (let ((_hd36523713_ (##car _rest-bindings36423659_))
                               (_tl36533715_ (##cdr _rest-bindings36423659_)))
                           (let ((_bindings3718_ _hd36523713_))
                             (let ((_rest-bindings3720_ _tl36533715_))
                               (_K36483710_
                                _rest-bindings3720_
                                _bindings3718_))))
                         (_else36453669_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (##pair? _rest-forms36413657_)
                                                        (let ((_hd36543725_
                                                               (##car _rest-forms36413657_))
                                                              (_tl36553727_
                                                               (##cdr _rest-forms36413657_)))
                                                          (let ((_form3730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd36543725_))
                    (let ((_rest-forms3732_ _tl36553727_))
                      (_K36473722_ _rest-forms3732_ _form3730_))))
                (_else36453669_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp3631_)
                                (reverse _hd3627_)
                                (reverse _bindings3628_)
                                (reverse _closures3629_)
                                '()
                                '()
                                '()
                                '()
                                '#f))))
                        (let ((_linearize3098_
                               (lambda (_forms3955_)
                                 (let ((_closures3957_
                                        (_collect-closures3099_ _forms3955_)))
                                   (let ((_bindings3959_
                                          (_collect-bindings3100_
                                           _forms3955_)))
                                     (let ((_g5869_ (_lift-pre3101_
                                                     _forms3955_
                                                     _bindings3959_
                                                     _closures3957_)))
                                       (begin
                                         (let ((_g5870_ (values-count
                                                         _g5869_)))
                                           (if (not (fx= _g5870_ 4))
                                               (error "Context expects 4 values"
                                                      _g5870_)))
                                         (let ((_pre-bind3961_
                                                (values-ref _g5869_ 0))
                                               (_forms3962_
                                                (values-ref _g5869_ 1))
                                               (_bindings3963_
                                                (values-ref _g5869_ 2))
                                               (_closures3964_
                                                (values-ref _g5869_ 3)))
                                           (let ((_g5871_ (_lift-post3102_
                                                           _forms3962_
                                                           _bindings3963_
                                                           _closures3964_)))
                                             (begin
                                               (let ((_g5872_ (values-count
                                                               _g5871_)))
                                                 (if (not (fx= _g5872_ 4))
                                                     (error "Context expects 4 values"
                                                            _g5872_)))
                                               (let ((_post-bind3966_
                                                      (values-ref _g5871_ 0))
                                                     (_forms3967_
                                                      (values-ref _g5871_ 1))
                                                     (_bindings3968_
                                                      (values-ref _g5871_ 2))
                                                     (_closures3969_
                                                      (values-ref _g5871_ 3)))
                                                 (let ((_g5873_ (_lift-rec3103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _forms3967_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     (let ((_g5874_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g5873_)))
               (if (not (fx= _g5874_ 3))
                   (error "Context expects 3 values" _g5874_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_rec-pre3971_
                                                            (values-ref
                                                             _g5873_
                                                             0))
                                                           (_rec-bind3972_
                                                            (values-ref
                                                             _g5873_
                                                             1))
                                                           (_rec-init3973_
                                                            (values-ref
                                                             _g5873_
                                                             2)))
                                                       (let ()
                                                         (values _pre-bind3961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rec-pre3971_
                         _rec-bind3972_
                         _rec-init3973_
                         _post-bind3966_))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (letrec ((_generate-let*3108_
                                    (lambda (_hd3195_ _body3196_)
                                      (let ((_hd31973205_ _hd3195_))
                                        (let ((_E32003209_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _hd31973205_))))
                                          (let ((_else31993213_
                                                 (lambda () _body3196_)))
                                            (let ((_K32013254_
                                                   (lambda (_rest3216_
                                                            _bind3217_)
                                                     (let ((_bind32183227_
                                                            _bind3217_))
                                                       (let ((_E32203231_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind32183227_))))
                 (let ((_K32213237_
                        (lambda (_expr3234_ _hd3235_)
                          (if (gx#stx-ormap gx#identifier? _hd3235_)
                              (gxc#generate-runtime-let-values%
                               (cons '%#let-values
                                     (cons (cons _bind3217_ '())
                                           (cons (_generate-let*3108_
                                                  _rest3216_
                                                  _body3196_)
                                                 '())))
                               '#t)
                              (cons 'begin
                                    (cons (gxc#compile-e _expr3234_)
                                          (cons (_generate-let*3108_
                                                 _rest3216_
                                                 _body3196_)
                                                '())))))))
                   (if (##pair? _bind32183227_)
                       (let ((_hd32223240_ (##car _bind32183227_))
                             (_tl32233242_ (##cdr _bind32183227_)))
                         (let ((_hd3245_ _hd32223240_))
                           (if (##pair? _tl32233242_)
                               (let ((_hd32243247_ (##car _tl32233242_))
                                     (_tl32253249_ (##cdr _tl32233242_)))
                                 (let ((_expr3252_ _hd32243247_))
                                   (if (##null? _tl32253249_)
                                       (_K32213237_ _expr3252_ _hd3245_)
                                       (_E32203231_))))
                               (_E32203231_))))
                       (_E32203231_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _hd31973205_)
                                                  (let ((_hd32023257_
                                                         (##car _hd31973205_))
                                                        (_tl32033259_
                                                         (##cdr _hd31973205_)))
                                                    (let ((_bind3262_
                                                           _hd32023257_))
                                                      (let ((_rest3264_
                                                             _tl32033259_))
                                                        (_K32013254_
                                                         _rest3264_
                                                         _bind3262_))))
                                                  (_else31993213_)))))))))
                            (let ((_g31103127_
                                   (lambda (_g31113124_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g31113124_))))
                              (let ((_g31093192_
                                     (lambda (_g31113130_)
                                       (if (gx#stx-pair? _g31113130_)
                                           (let ((_e31143132_
                                                  (gx#stx-e _g31113130_)))
                                             (let ((_hd31153135_
                                                    (##car _e31143132_))
                                                   (_tl31163137_
                                                    (##cdr _e31143132_)))
                                               (if (gx#stx-pair? _tl31163137_)
                                                   (let ((_e31173140_
                                                          (gx#stx-e
                                                           _tl31163137_)))
                                                     (let ((_hd31183143_
                                                            (##car _e31173140_))
                                                           (_tl31193145_
                                                            (##cdr _e31173140_)))
                                                       (if (gx#stx-pair?
                                                            _tl31193145_)
                                                           (let ((_e31203148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl31193145_)))
                     (let ((_hd31213151_ (##car _e31203148_))
                           (_tl31223153_ (##cdr _e31203148_)))
                       (if (gx#stx-null? _tl31223153_)
                           ((lambda (_L3156_ _L3157_)
                              (let ((_g5867_ (_linearize3098_ _L3157_)))
                                (begin
                                  (let ((_g5868_ (values-count _g5867_)))
                                    (if (not (fx= _g5868_ 5))
                                        (error "Context expects 5 values"
                                               _g5868_)))
                                  (let ((_pre3173_ (values-ref _g5867_ 0))
                                        (_rec-pre3174_ (values-ref _g5867_ 1))
                                        (_rec-bind3175_ (values-ref _g5867_ 2))
                                        (_rec-init3176_ (values-ref _g5867_ 3))
                                        (_post3177_ (values-ref _g5867_ 4)))
                                    (let ((_body3179_ (gxc#compile-e _L3156_)))
                                      (let ((_body3181_
                                             (if (null? _post3177_)
                                                 _body3179_
                                                 (_generate-let*3108_
                                                  _post3177_
                                                  _body3179_))))
                                        (let ((_body3183_
                                               (if (null? _rec-init3176_)
                                                   _body3181_
                                                   (cons 'begin
                                                         (foldr cons
                                                                (cons _body3181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        _rec-init3176_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_body3185_
                                                 (if (null? _rec-bind3175_)
                                                     _body3183_
                                                     (cons 'letrec
                                                           (cons _rec-bind3175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body3183_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_body3187_
                                                   (if (null? _rec-pre3174_)
                                                       _body3185_
                                                       (cons 'let
                                                             (cons _rec-pre3174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body3185_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_body3189_
                                                     (if (null? _pre3173_)
                                                         _body3187_
                                                         (_generate-let*3108_
                                                          _pre3173_
                                                          _body3187_))))
                                                (let () _body3189_)))))))))))
                            _hd31213151_
                            _hd31183143_)
                           (_g31103127_ _g31113130_))))
                   (_g31103127_ _g31113130_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g31103127_ _g31113130_))))
                                           (_g31103127_ _g31113130_)))))
                                (_g31093192_ _stx3096_))))))))))))))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd2989_)
      ((letrec ((_lp2991_
                 (lambda (_rest2993_)
                   (let ((_g29973018_
                          (lambda (_g29983015_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g29983015_))))
                     (let ((_g29963025_
                            (lambda (_g29983021_) ((lambda () '#f)))))
                       (let ((_g29953032_
                              (lambda (_g29983028_)
                                (if (gx#stx-null? _g29983028_)
                                    ((lambda () '#t))
                                    (_g29963025_ _g29983028_)))))
                         (let ((_g29943093_
                                (lambda (_g29983035_)
                                  (if (gx#stx-pair? _g29983035_)
                                      (let ((_e30023037_
                                             (gx#stx-e _g29983035_)))
                                        (let ((_hd30033040_
                                               (##car _e30023037_))
                                              (_tl30043042_
                                               (##cdr _e30023037_)))
                                          (if (gx#stx-pair? _hd30033040_)
                                              (let ((_e30053045_
                                                     (gx#stx-e _hd30033040_)))
                                                (let ((_hd30063048_
                                                       (##car _e30053045_))
                                                      (_tl30073050_
                                                       (##cdr _e30053045_)))
                                                  (if (gx#stx-pair?
                                                       _hd30063048_)
                                                      (let ((_e30083053_
                                                             (gx#stx-e
                                                              _hd30063048_)))
                                                        (let ((_hd30093056_
                                                               (##car _e30083053_))
                                                              (_tl30103058_
                                                               (##cdr _e30083053_)))
                                                          (if (gx#stx-null?
                                                               _tl30103058_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl30073050_)
                          (let ((_e30113061_ (gx#stx-e _tl30073050_)))
                            (let ((_hd30123064_ (##car _e30113061_))
                                  (_tl30133066_ (##cdr _e30113061_)))
                              (if (gx#stx-null? _tl30133066_)
                                  ((lambda (_L3069_ _L3070_ _L3071_)
                                     (_lp2991_ _L3069_))
                                   _tl30043042_
                                   _hd30123064_
                                   _hd30093056_)
                                  (_g29953032_ _g29983035_))))
                          (_g29953032_ _g29983035_))
                      (_g29953032_ _g29983035_))))
              (_g29953032_ _g29983035_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g29953032_ _g29983035_))))
                                      (_g29953032_ _g29983035_)))))
                           (_g29943093_ _rest2993_))))))))
         _lp2991_)
       _hd2989_)))
  (define gxc#generate-runtime-simple-let
    (lambda (_form2913_ _hd2914_ _body2915_ _compiled-body?2916_)
      (let ((_generate12918_
             (lambda (_bind2920_)
               (let ((_g29222939_
                      (lambda (_g29232936_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g29232936_))))
                 (let ((_g29212986_
                        (lambda (_g29232942_)
                          (if (gx#stx-pair? _g29232942_)
                              (let ((_e29262944_ (gx#stx-e _g29232942_)))
                                (let ((_hd29272947_ (##car _e29262944_))
                                      (_tl29282949_ (##cdr _e29262944_)))
                                  (if (gx#stx-pair? _hd29272947_)
                                      (let ((_e29292952_
                                             (gx#stx-e _hd29272947_)))
                                        (let ((_hd29302955_
                                               (##car _e29292952_))
                                              (_tl29312957_
                                               (##cdr _e29292952_)))
                                          (if (gx#stx-null? _tl29312957_)
                                              (if (gx#stx-pair? _tl29282949_)
                                                  (let ((_e29322960_
                                                         (gx#stx-e
                                                          _tl29282949_)))
                                                    (let ((_hd29332963_
                                                           (##car _e29322960_))
                                                          (_tl29342965_
                                                           (##cdr _e29322960_)))
                                                      (if (gx#stx-null?
                                                           _tl29342965_)
                                                          ((lambda (_L2968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L2969_)
                     (cons (gxc#generate-runtime-binding-id* _L2969_)
                           (cons (gxc#compile-e _L2968_) '())))
                   _hd29332963_
                   _hd29302955_)
                  (_g29222939_ _g29232942_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g29222939_ _g29232942_))
                                              (_g29222939_ _g29232942_))))
                                      (_g29222939_ _g29232942_))))
                              (_g29222939_ _g29232942_)))))
                   (_g29212986_ _bind2920_))))))
        (cons _form2913_
              (cons (map _generate12918_ _hd2914_)
                    (cons (if _compiled-body?2916_
                              _body2915_
                              (gxc#compile-e _body2915_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx2824_)
      (letrec ((_generate12826_
                (lambda (_datum2878_)
                  (if (let ((_$e2880_ (null? _datum2878_)))
                        (if _$e2880_
                            _$e2880_
                            (let ((_$e2883_ (symbol? _datum2878_)))
                              (if _$e2883_
                                  _$e2883_
                                  (gx#self-quoting? _datum2878_)))))
                      _datum2878_
                      (if (uninterned-symbol? _datum2878_)
                          (gxc#generate-runtime-gensym-reference _datum2878_)
                          (if (pair? _datum2878_)
                              (cons (_generate12826_ (car _datum2878_))
                                    (_generate12826_ (cdr _datum2878_)))
                              (if (box? _datum2878_)
                                  (box (_generate12826_ (unbox _datum2878_)))
                                  (if (vector? _datum2878_)
                                      (vector-map _generate12826_ _datum2878_)
                                      (if (let ((_$e2886_
                                                 (s8vector? _datum2878_)))
                                            (if _$e2886_
                                                _$e2886_
                                                (let ((_$e2889_
                                                       (u8vector?
                                                        _datum2878_)))
                                                  (if _$e2889_
                                                      _$e2889_
                                                      (let ((_$e2892_
                                                             (s16vector?
                                                              _datum2878_)))
                                                        (if _$e2892_
                                                            _$e2892_
                                                            (let ((_$e2895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum2878_)))
                      (if _$e2895_
                          _$e2895_
                          (let ((_$e2898_ (s32vector? _datum2878_)))
                            (if _$e2898_
                                _$e2898_
                                (let ((_$e2901_ (u32vector? _datum2878_)))
                                  (if _$e2901_
                                      _$e2901_
                                      (let ((_$e2904_
                                             (s64vector? _datum2878_)))
                                        (if _$e2904_
                                            _$e2904_
                                            (let ((_$e2907_
                                                   (u64vector? _datum2878_)))
                                              (if _$e2907_
                                                  _$e2907_
                                                  (let ((_$e2910_
                                                         (f32vector?
                                                          _datum2878_)))
                                                    (if _$e2910_
                                                        _$e2910_
                                                        (f64vector?
                                                         _datum2878_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum2878_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx2824_))))))))))
        (let ((_g28282841_
               (lambda (_g28292838_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g28292838_))))
          (let ((_g28272875_
                 (lambda (_g28292844_)
                   (if (gx#stx-pair? _g28292844_)
                       (let ((_e28312846_ (gx#stx-e _g28292844_)))
                         (let ((_hd28322849_ (##car _e28312846_))
                               (_tl28332851_ (##cdr _e28312846_)))
                           (if (gx#stx-pair? _tl28332851_)
                               (let ((_e28342854_ (gx#stx-e _tl28332851_)))
                                 (let ((_hd28352857_ (##car _e28342854_))
                                       (_tl28362859_ (##cdr _e28342854_)))
                                   (if (gx#stx-null? _tl28362859_)
                                       ((lambda (_L2862_)
                                          (cons 'quote
                                                (cons (_generate12826_
                                                       (gx#stx-e _L2862_))
                                                      '())))
                                        _hd28352857_)
                                       (_g28282841_ _g28292844_))))
                               (_g28282841_ _g28292844_))))
                       (_g28282841_ _g28292844_)))))
            (_g28272875_ _stx2824_))))))
  (define gxc#generate-runtime-call%
    (lambda (_stx2786_)
      (let ((_g27882798_
             (lambda (_g27892795_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g27892795_))))
        (let ((_g27872821_
               (lambda (_g27892801_)
                 (if (gx#stx-pair? _g27892801_)
                     (let ((_e27912803_ (gx#stx-e _g27892801_)))
                       (let ((_hd27922806_ (##car _e27912803_))
                             (_tl27932808_ (##cdr _e27912803_)))
                         ((lambda (_L2811_) (map gxc#compile-e _L2811_))
                          _tl27932808_)))
                     (_g27882798_ _g27892801_)))))
          (_g27872821_ _stx2786_)))))
  (define gxc#generate-runtime-if%
    (lambda (_stx2748_)
      (let ((_g27502760_
             (lambda (_g27512757_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g27512757_))))
        (let ((_g27492783_
               (lambda (_g27512763_)
                 (if (gx#stx-pair? _g27512763_)
                     (let ((_e27532765_ (gx#stx-e _g27512763_)))
                       (let ((_hd27542768_ (##car _e27532765_))
                             (_tl27552770_ (##cdr _e27532765_)))
                         ((lambda (_L2773_)
                            (cons 'if (map gxc#compile-e _L2773_)))
                          _tl27552770_)))
                     (_g27502760_ _g27512763_)))))
          (_g27492783_ _stx2748_)))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx2697_)
      (let ((_g26992712_
             (lambda (_g27002709_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g27002709_))))
        (let ((_g26982745_
               (lambda (_g27002715_)
                 (if (gx#stx-pair? _g27002715_)
                     (let ((_e27022717_ (gx#stx-e _g27002715_)))
                       (let ((_hd27032720_ (##car _e27022717_))
                             (_tl27042722_ (##cdr _e27022717_)))
                         (if (gx#stx-pair? _tl27042722_)
                             (let ((_e27052725_ (gx#stx-e _tl27042722_)))
                               (let ((_hd27062728_ (##car _e27052725_))
                                     (_tl27072730_ (##cdr _e27052725_)))
                                 (if (gx#stx-null? _tl27072730_)
                                     ((lambda (_L2733_)
                                        (gxc#generate-runtime-binding-id
                                         _L2733_))
                                      _hd27062728_)
                                     (_g26992712_ _g27002715_))))
                             (_g26992712_ _g27002715_))))
                     (_g26992712_ _g27002715_)))))
          (_g26982745_ _stx2697_)))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx2630_)
      (let ((_g26322649_
             (lambda (_g26332646_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g26332646_))))
        (let ((_g26312694_
               (lambda (_g26332652_)
                 (if (gx#stx-pair? _g26332652_)
                     (let ((_e26362654_ (gx#stx-e _g26332652_)))
                       (let ((_hd26372657_ (##car _e26362654_))
                             (_tl26382659_ (##cdr _e26362654_)))
                         (if (gx#stx-pair? _tl26382659_)
                             (let ((_e26392662_ (gx#stx-e _tl26382659_)))
                               (let ((_hd26402665_ (##car _e26392662_))
                                     (_tl26412667_ (##cdr _e26392662_)))
                                 (if (gx#stx-pair? _tl26412667_)
                                     (let ((_e26422670_
                                            (gx#stx-e _tl26412667_)))
                                       (let ((_hd26432673_ (##car _e26422670_))
                                             (_tl26442675_
                                              (##cdr _e26422670_)))
                                         (if (gx#stx-null? _tl26442675_)
                                             ((lambda (_L2678_ _L2679_)
                                                (cons 'set!
                                                      (cons (gxc#generate-runtime-binding-id
                                                             _L2679_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L2678_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd26432673_
                                              _hd26402665_)
                                             (_g26322649_ _g26332652_))))
                                     (_g26322649_ _g26332652_))))
                             (_g26322649_ _g26332652_))))
                     (_g26322649_ _g26332652_)))))
          (_g26312694_ _stx2630_)))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx2539_)
      (let ((_g25412551_
             (lambda (_g25422548_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g25422548_))))
        (let ((_g25402627_
               (lambda (_g25422554_)
                 (if (gx#stx-pair? _g25422554_)
                     (let ((_e25442556_ (gx#stx-e _g25422554_)))
                       (let ((_hd25452559_ (##car _e25442556_))
                             (_tl25462561_ (##cdr _e25442556_)))
                         ((lambda (_L2564_)
                            (let ((_ht2574_ (make-hash-table-eq)))
                              ((letrec ((_lp2576_
                                         (lambda (_rest2578_ _loads2579_)
                                           (let ((_K2581_ (lambda (_ctx2620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest2621_)
                    (let ((_id2623_ (gx#expander-context-id _ctx2620_)))
                      (if (hash-get _ht2574_ _id2623_)
                          (_lp2576_ _rest2621_ _loads2579_)
                          (let ((_rt2625_
                                 (string-append
                                  (symbol->string _id2623_)
                                  '"__rt")))
                            (begin
                              (hash-put! _ht2574_ _id2623_ _rt2625_)
                              (_lp2576_
                               _rest2621_
                               (cons _rt2625_ _loads2579_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_rest25822590_ _rest2578_))
                                               (let ((_E25852594_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest25822590_))))
                                                 (let ((_else25842602_
                                                        (lambda ()
                                                          (cons 'begin
                                                                (map (lambda (_g25972599_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (list 'load-module _g25972599_))
                             (reverse _loads2579_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K25862608_
                                                          (lambda (_rest2605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in2606_)
                    (if (gx#module-context? _in2606_)
                        (_K2581_ _in2606_ _rest2605_)
                        (if (gx#module-import? _in2606_)
                            (if (fxpositive? (gx#module-import-phi _in2606_))
                                (_lp2576_ _rest2605_ _loads2579_)
                                (_K2581_ (gx#module-export-context
                                          (gx#module-import-source _in2606_))
                                         _rest2605_))
                            (if (gx#import-set? _in2606_)
                                (if (fxpositive? (gx#import-set-phi _in2606_))
                                    (_lp2576_ _rest2605_ _loads2579_)
                                    (_K2581_ (gx#import-set-source _in2606_)
                                             _rest2605_))
                                (gxc#raise-compile-error
                                 '"Unexpected import"
                                 _stx2539_
                                 _in2606_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest25822590_)
                                                         (let ((_hd25872611_
                                                                (##car _rest25822590_))
                                                               (_tl25882613_
                                                                (##cdr _rest25822590_)))
                                                           (let ((_in2616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd25872611_))
                     (let ((_rest2618_ _tl25882613_))
                       (_K25862608_ _rest2618_ _in2616_))))
                 (_else25842602_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp2576_)
                               _L2564_
                               '())))
                          _tl25462561_)))
                     (_g25412551_ _g25422554_)))))
          (_g25402627_ _stx2539_)))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx2480_)
      (let ((_generate-quote2482_
             (lambda (_q2537_)
               (if (gx#identifier? _q2537_)
                   (gxc#generate-runtime-identifier _q2537_)
                   (gxc#raise-compile-error
                    '"Cannot quote non-identifier syntax"
                    _stx2480_
                    _q2537_)))))
        (let ((_g24842497_
               (lambda (_g24852494_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g24852494_))))
          (let ((_g24832534_
                 (lambda (_g24852500_)
                   (if (gx#stx-pair? _g24852500_)
                       (let ((_e24872502_ (gx#stx-e _g24852500_)))
                         (let ((_hd24882505_ (##car _e24872502_))
                               (_tl24892507_ (##cdr _e24872502_)))
                           (if (gx#stx-pair? _tl24892507_)
                               (let ((_e24902510_ (gx#stx-e _tl24892507_)))
                                 (let ((_hd24912513_ (##car _e24902510_))
                                       (_tl24922515_ (##cdr _e24902510_)))
                                   (if (gx#stx-null? _tl24922515_)
                                       ((lambda (_L2518_)
                                          (let ((_gid2531_
                                                 (gxc#generate-runtime-temporary
                                                  '#t))
                                                (_quote-e2532_
                                                 (_generate-quote2482_
                                                  _L2518_)))
                                            (begin
                                              (set-box!
                                               (gxc#current-compile-lift)
                                               (cons (cons 'define
                                                           (cons _gid2531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'gx#core-quote-syntax
                                     (cons (cons 'quote
                                                 (cons _quote-e2532_ '()))
                                           '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (unbox (gxc#current-compile-lift))))
                                              _gid2531_)))
                                        _hd24912513_)
                                       (_g24842497_ _g24852500_))))
                               (_g24842497_ _g24852500_))))
                       (_g24842497_ _g24852500_)))))
            (_g24832534_ _stx2480_))))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx2413_)
      (let ((_g24152432_
             (lambda (_g24162429_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g24162429_))))
        (let ((_g24142477_
               (lambda (_g24162435_)
                 (if (gx#stx-pair? _g24162435_)
                     (let ((_e24192437_ (gx#stx-e _g24162435_)))
                       (let ((_hd24202440_ (##car _e24192437_))
                             (_tl24212442_ (##cdr _e24192437_)))
                         (if (gx#stx-pair? _tl24212442_)
                             (let ((_e24222445_ (gx#stx-e _tl24212442_)))
                               (let ((_hd24232448_ (##car _e24222445_))
                                     (_tl24242450_ (##cdr _e24222445_)))
                                 (if (gx#stx-pair? _tl24242450_)
                                     (let ((_e24252453_
                                            (gx#stx-e _tl24242450_)))
                                       (let ((_hd24262456_ (##car _e24252453_))
                                             (_tl24272458_
                                              (##cdr _e24252453_)))
                                         (if (gx#stx-null? _tl24272458_)
                                             ((lambda (_L2461_ _L2462_)
                                                (cons 'define
                                                      (cons (gx#stx-e _L2462_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L2461_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd24262456_
                                              _hd24232448_)
                                             (_g24152432_ _g24162435_))))
                                     (_g24152432_ _g24162435_))))
                             (_g24152432_ _g24162435_))))
                     (_g24152432_ _g24162435_)))))
          (_g24142477_ _stx2413_)))))
  (define gxc#generate-meta-begin%
    (lambda (_stx2362_ _state2363_)
      (let ((_g23652375_
             (lambda (_g23662372_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g23662372_))))
        (let ((_g23642410_
               (lambda (_g23662378_)
                 (if (gx#stx-pair? _g23662378_)
                     (let ((_e23682380_ (gx#stx-e _g23662378_)))
                       (let ((_hd23692383_ (##car _e23682380_))
                             (_tl23702385_ (##cdr _e23682380_)))
                         ((lambda (_L2388_)
                            (let ((_c-body2402_
                                   (map (lambda (_g23972399_)
                                          (gxc#compile-e
                                           _g23972399_
                                           _state2363_))
                                        _L2388_)))
                              (let ((_c-body2407_
                                     (filter (lambda (_$obj2404_)
                                               (not (void? _$obj2404_)))
                                             _c-body2402_)))
                                (let () (cons '%#begin _c-body2407_)))))
                          _tl23702385_)))
                     (_g23652375_ _g23662378_)))))
          (_g23642410_ _stx2362_)))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx2270_ _state2271_)
      (let ((_g22732283_
             (lambda (_g22742280_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g22742280_))))
        (let ((_g22722359_
               (lambda (_g22742286_)
                 (if (gx#stx-pair? _g22742286_)
                     (let ((_e22762288_ (gx#stx-e _g22742286_)))
                       (let ((_hd22772291_ (##car _e22762288_))
                             (_tl22782293_ (##cdr _e22762288_)))
                         ((lambda (_L2296_)
                            (let ((_phi2306_ (fx1+ (gx#current-expander-phi))))
                              (let ((_block2308_
                                     (gxc#meta-state-begin-phi!
                                      _state2271_
                                      _phi2306_)))
                                (let ((_compiled2311_
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#apply-generate-meta-phi
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  '%#begin)
                                                 _L2296_)
                                           _state2271_))
                                        gx#current-expander-phi
                                        _phi2306_)))
                                  (let ()
                                    (let ((_g23142324_
                                           (lambda (_g23152321_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g23152321_))))
                                      (let ((_g23132356_
                                             (lambda (_g23152327_)
                                               (if (gx#stx-pair? _g23152327_)
                                                   (let ((_e23172329_
                                                          (gx#stx-e
                                                           _g23152327_)))
                                                     (let ((_hd23182332_
                                                            (##car _e23172329_))
                                                           (_tl23192334_
                                                            (##cdr _e23172329_)))
                                                       (if (gx#identifier?
                                                            _hd23182332_)
                                                           (if (gx#stx-eq?
                                                                '%#begin
                                                                _hd23182332_)
                                                               ((lambda (_L2337_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_c-body2354_
                                 (filter (lambda (_$obj2351_)
                                           (not (void? _$obj2351_)))
                                         _L2337_)))
                            (if _block2308_
                                (cons '%#begin-syntax
                                      (cons (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons _block2308_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _c-body2354_))
                                (if (null? _c-body2354_)
                                    '#!void
                                    (cons '%#begin-syntax _c-body2354_)))))
                        _tl23192334_)
                       (_g23142324_ _g23152327_))
                   (_g23142324_ _g23152327_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g23142324_
                                                    _g23152327_)))))
                                        (_g23132356_ _compiled2311_))))))))
                          _tl22782293_)))
                     (_g22732283_ _g22742286_)))))
          (_g22722359_ _stx2270_)))))
  (define gxc#generate-meta-module%
    (lambda (_stx2201_ _state2202_)
      (begin
        (gxc#meta-state-end-phi! _state2202_)
        (let ((_g22042218_
               (lambda (_g22052215_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g22052215_))))
          (let ((_g22032267_
                 (lambda (_g22052221_)
                   (if (gx#stx-pair? _g22052221_)
                       (let ((_e22082223_ (gx#stx-e _g22052221_)))
                         (let ((_hd22092226_ (##car _e22082223_))
                               (_tl22102228_ (##cdr _e22082223_)))
                           (if (gx#stx-pair? _tl22102228_)
                               (let ((_e22112231_ (gx#stx-e _tl22102228_)))
                                 (let ((_hd22122234_ (##car _e22112231_))
                                       (_tl22132236_ (##cdr _e22112231_)))
                                   ((lambda (_L2239_ _L2240_)
                                      (let ((_key2253_
                                             (gx#core-identifier-key _L2240_)))
                                        (begin
                                          (if (interned-symbol? _key2253_)
                                              '#!void
                                              (gxc#raise-compile-error
                                               '"Cannot compile module with uninterned id"
                                               _stx2201_
                                               _L2240_
                                               _key2253_))
                                          (let ((_ctx2255_
                                                 (gx#syntax-local-e _L2240_)))
                                            (let ((_code2258_
                                                   (call-with-parameters
                                                    (lambda ()
                                                      (gxc#compile-e
                                                       (gx#module-context-code
                                                        _ctx2255_)
                                                       _state2202_))
                                                    gx#current-expander-context
                                                    _ctx2255_)))
                                              (let ((_rt2260_
                                                     (hash-get
                                                      (gxc#current-compile-runtime-sections)
                                                      _ctx2255_)))
                                                (let ((_loader2262_
                                                       (if _rt2260_
                                                           (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons '%#ref (cons '_gx#load-module '()))
                                     (cons (cons '%#quote (cons _rt2260_ '()))
                                           '())))
                         '())
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_modid2264_
                                                         (gx#stx-e _L2240_)))
                                                    (let ()
                                                      (begin
                                                        (gxc#meta-state-end-phi!
                                                         _state2202_)
                                                        (cons '%#module
                                                              (cons _modid2264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _code2258_ _loader2262_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl22132236_
                                    _hd22122234_)))
                               (_g22042218_ _g22052221_))))
                       (_g22042218_ _g22052221_)))))
            (_g22032267_ _stx2201_))))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx2191_ _context-chain2192_)
      ((letrec ((_lp2194_
                 (lambda (_ctx2196_ _path2197_)
                   (let ((_super2199_ (gx#phi-context-super _ctx2196_)))
                     (if (memq _super2199_ _context-chain2192_)
                         (cons* '#f
                                (car (gx#module-context-path _ctx2196_))
                                _path2197_)
                         (if (gx#module-context? _super2199_)
                             (_lp2194_
                              _super2199_
                              (cons (car (gx#module-context-path _ctx2196_))
                                    _path2197_))
                             (cons (make-symbol
                                    '":"
                                    (gx#expander-context-id _ctx2196_))
                                   _path2197_)))))))
         _lp2194_)
       _ctx2191_
       '())))
  (define gxc#current-context-chain
    (lambda ()
      ((letrec ((_lp2186_
                 (lambda (_ctx2188_ _r2189_)
                   (if (gx#module-context? _ctx2188_)
                       (_lp2186_
                        (gx#phi-context-super _ctx2188_)
                        (cons _ctx2188_ _r2189_))
                       _r2189_))))
         _lp2186_)
       (gx#current-expander-context)
       '())))
  (define gxc#generate-meta-import%
    (lambda (_stx1955_ _state1956_)
      (let ((_context-chain1958_ (gxc#current-context-chain)))
        (let ((_make-import-spec1959_
               (lambda (_in2122_)
                 (let ((_in21232135_ _in2122_))
                   (let ((_E21252139_
                          (lambda ()
                            (error '"No clause matching" _in21232135_))))
                     (let ((_K21262149_
                            (lambda (_phi2142_
                                     _name2143_
                                     _src-name2144_
                                     _src-phi2145_
                                     _src-key2146_
                                     _src-ctx2147_)
                              (cons _phi2142_
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name2143_)
                                          (cons _src-phi2145_
                                                (cons (gxc#generate-runtime-identifier-key
                                                       _src-name2144_)
                                                      '())))))))
                       (if (direct-struct-instance?
                            gx#module-import::t
                            _in21232135_)
                           (let ((_e21272152_ (##vector-ref _in21232135_ '1)))
                             (if (direct-struct-instance?
                                  gx#module-export::t
                                  _e21272152_)
                                 (let ((_e21302155_
                                        (##vector-ref _e21272152_ '1)))
                                   (let ((_src-ctx2158_ _e21302155_))
                                     (let ((_e21312160_
                                            (##vector-ref _e21272152_ '2)))
                                       (let ((_src-key2163_ _e21312160_))
                                         (let ((_e21322165_
                                                (##vector-ref _e21272152_ '3)))
                                           (let ((_src-phi2168_ _e21322165_))
                                             (let ((_e21332170_
                                                    (##vector-ref
                                                     _e21272152_
                                                     '4)))
                                               (let ((_src-name2173_
                                                      _e21332170_))
                                                 (let ((_e21282175_
                                                        (##vector-ref
                                                         _in21232135_
                                                         '2)))
                                                   (let ((_name2178_
                                                          _e21282175_))
                                                     (let ((_e21292180_
                                                            (##vector-ref
                                                             _in21232135_
                                                             '3)))
                                                       (let ((_phi2183_
                                                              _e21292180_))
                                                         (_K21262149_
                                                          _phi2183_
                                                          _name2178_
                                                          _src-name2173_
                                                          _src-phi2168_
                                                          _src-key2163_
                                                          _src-ctx2158_)))))))))))))
                                 (_E21252139_)))
                           (_E21252139_))))))))
          (let ((_make-import-path1960_
                 (lambda (_ctx2120_)
                   (gxc#generate-meta-import-path
                    _ctx2120_
                    _context-chain1958_))))
            (let ((_make-import-spec-in1961_
                   (lambda (_ctx2117_ _in2118_)
                     (cons 'spec:
                           (cons (_make-import-path1960_ _ctx2117_)
                                 (reverse _in2118_))))))
              (begin
                (gxc#meta-state-end-phi! _state1956_)
                (let ((_g19631973_
                       (lambda (_g19641970_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g19641970_))))
                  (let ((_g19622114_
                         (lambda (_g19641976_)
                           (if (gx#stx-pair? _g19641976_)
                               (let ((_e19661978_ (gx#stx-e _g19641976_)))
                                 (let ((_hd19671981_ (##car _e19661978_))
                                       (_tl19681983_ (##cdr _e19661978_)))
                                   ((lambda (_L1986_)
                                      ((letrec ((_lp1997_
                                                 (lambda (_rest1999_
                                                          _current-src2000_
                                                          _current-in2001_
                                                          _r2002_)
                                                   (let ((_rest20032011_
                                                          _rest1999_))
                                                     (let ((_E20062015_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _rest20032011_))))
               (let ((_else20052021_
                      (lambda ()
                        (let ((_r2019_ (if _current-src2000_
                                           (cons (_make-import-spec-in1961_
                                                  _current-src2000_
                                                  _current-in2001_)
                                                 _r2002_)
                                           _r2002_)))
                          (cons '%#import (reverse _r2019_))))))
                 (let ((_K20072102_
                        (lambda (_rest2024_ _in2025_)
                          (if (gx#module-import? _in2025_)
                              (let ((_in20262033_ _in2025_))
                                (let ((_E20282037_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _in20262033_))))
                                  (let ((_K20292042_
                                         (lambda (_src-ctx2040_)
                                           (if (eq? _current-src2000_
                                                    _src-ctx2040_)
                                               (_lp1997_
                                                _rest2024_
                                                _current-src2000_
                                                (cons (_make-import-spec1959_
                                                       _in2025_)
                                                      _current-in2001_)
                                                _r2002_)
                                               (if _current-src2000_
                                                   (_lp1997_
                                                    _rest2024_
                                                    _src-ctx2040_
                                                    (cons (_make-import-spec1959_
                                                           _in2025_)
                                                          '())
                                                    (cons (_make-import-spec-in1961_
                                                           _current-src2000_
                                                           _current-in2001_)
                                                          _r2002_))
                                                   (_lp1997_
                                                    _rest2024_
                                                    _src-ctx2040_
                                                    (cons (_make-import-spec1959_
                                                           _in2025_)
                                                          '())
                                                    _r2002_))))))
                                    (if (direct-struct-instance?
                                         gx#module-import::t
                                         _in20262033_)
                                        (let ((_e20302045_
                                               (##vector-ref _in20262033_ '1)))
                                          (if (direct-struct-instance?
                                               gx#module-export::t
                                               _e20302045_)
                                              (let ((_e20312048_
                                                     (##vector-ref
                                                      _e20302045_
                                                      '1)))
                                                (let ((_src-ctx2051_
                                                       _e20312048_))
                                                  (_K20292042_ _src-ctx2051_)))
                                              (_E20282037_)))
                                        (_E20282037_)))))
                              (if (gx#import-set? _in2025_)
                                  (let ((_phi2053_
                                         (gx#import-set-phi _in2025_)))
                                    (let ((_src2055_
                                           (gx#import-set-source _in2025_)))
                                      (let ((_src-in2095_
                                             (let ((_g20562065_
                                                    (_make-import-path1960_
                                                     _src2055_)))
                                               (let ((_E20592069_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _g20562065_))))
                                                 (let ((_try-match20582080_
                                                        (lambda ()
                                                          (let ((_K20602075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_path2073_) (cons 'in: _path2073_))))
                    (let ((_path2078_ _g20562065_))
                      (_K20602075_ _path2078_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K20612085_
                                                          (lambda (_path2083_)
                                                            _path2083_)))
                                                     (if (##pair? _g20562065_)
                                                         (let ((_hd20622088_
                                                                (##car _g20562065_))
                                                               (_tl20632090_
                                                                (##cdr _g20562065_)))
                                                           (let ((_path2093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd20622088_))
                     (if (##null? _tl20632090_)
                         (_K20612085_ _path2093_)
                         (_try-match20582080_))))
                 (_try-match20582080_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_r2097_ (if _current-src2000_
                                                           (cons (_make-import-spec-in1961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _current-src2000_
                          _current-in2001_)
                         _r2002_)
                   _r2002_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (_lp1997_
                                             _rest2024_
                                             '#f
                                             '()
                                             (cons (if (fxzero? _phi2053_)
                                                       _src-in2095_
                                                       (cons 'phi:
                                                             (cons _phi2053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _src-in2095_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r2097_)))))))
                                  (if (gx#module-context? _in2025_)
                                      (let ((_r2100_ (if _current-src2000_
                                                         (cons (_make-import-spec-in1961_
                                                                _current-src2000_
                                                                _current-in2001_)
                                                               _r2002_)
                                                         _r2002_)))
                                        (_lp1997_
                                         _rest2024_
                                         '#f
                                         '()
                                         (cons (cons 'runtime:
                                                     (_make-import-path1960_
                                                      _in2025_))
                                               _r2100_)))
                                      '#!void))))))
                   (if (##pair? _rest20032011_)
                       (let ((_hd20082105_ (##car _rest20032011_))
                             (_tl20092107_ (##cdr _rest20032011_)))
                         (let ((_in2110_ _hd20082105_))
                           (let ((_rest2112_ _tl20092107_))
                             (_K20072102_ _rest2112_ _in2110_))))
                       (_else20052021_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _lp1997_)
                                       _L1986_
                                       '#f
                                       '()
                                       '()))
                                    _tl19681983_)))
                               (_g19631973_ _g19641976_)))))
                    (_g19622114_ _stx1955_))))))))))
  (define gxc#generate-meta-export%
    (lambda (_stx1765_ _state1766_)
      (let ((_context-chain1768_ (gxc#current-context-chain)))
        (let ((_make-import-path1769_
               (lambda (_ctx1953_)
                 (gxc#generate-meta-import-path
                  _ctx1953_
                  _context-chain1768_))))
          (let ((_g17711781_
                 (lambda (_g17721778_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g17721778_))))
            (let ((_g17701950_
                   (lambda (_g17721784_)
                     (if (gx#stx-pair? _g17721784_)
                         (let ((_e17741786_ (gx#stx-e _g17721784_)))
                           (let ((_hd17751789_ (##car _e17741786_))
                                 (_tl17761791_ (##cdr _e17741786_)))
                             ((lambda (_L1794_)
                                ((letrec ((_lp1805_
                                           (lambda (_rest1807_ _r1808_)
                                             (let ((_rest18091817_ _rest1807_))
                                               (let ((_E18121821_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest18091817_))))
                                                 (let ((_else18111825_
                                                        (lambda ()
                                                          (cons '%#export
                                                                (reverse _r1808_)))))
                                                   (let ((_K18131938_
                                                          (lambda (_rest1828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out1829_)
                    (let ((_out18301843_ _out1829_))
                      (let ((_E18331847_
                             (lambda ()
                               (error '"No clause matching" _out18301843_))))
                        (let ((_try-match18321910_
                               (lambda ()
                                 (let ((_K18341897_
                                        (lambda (_phi1851_ _src1852_)
                                          (let ((_out1892_
                                                 (if _src1852_
                                                     (cons 'import:
                                                           (cons (let ((_g18531862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (_make-import-path1769_ _src1852_)))
                           (let ((_E18561866_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g18531862_))))
                             (let ((_try-match18551877_
                                    (lambda ()
                                      (let ((_K18571872_
                                             (lambda (_path1870_)
                                               (cons 'in: _path1870_))))
                                        (let ((_path1875_ _g18531862_))
                                          (_K18571872_ _path1875_))))))
                               (let ((_K18581882_
                                      (lambda (_path1880_) _path1880_)))
                                 (if (##pair? _g18531862_)
                                     (let ((_hd18591885_ (##car _g18531862_))
                                           (_tl18601887_ (##cdr _g18531862_)))
                                       (let ((_path1890_ _hd18591885_))
                                         (if (##null? _tl18601887_)
                                             (_K18581882_ _path1890_)
                                             (_try-match18551877_))))
                                     (_try-match18551877_))))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t)))
                                            (let ((_out1894_
                                                   (if (fxzero? _phi1851_)
                                                       _out1892_
                                                       (cons 'phi:
                                                             (cons _phi1851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _out1892_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (_lp1805_
                                                 _rest1828_
                                                 (cons _out1894_
                                                       _r1808_))))))))
                                   (if (direct-struct-instance?
                                        gx#export-set::t
                                        _out18301843_)
                                       (let ((_e18351900_
                                              (##vector-ref _out18301843_ '1)))
                                         (let ((_src1903_ _e18351900_))
                                           (let ((_e18361905_
                                                  (##vector-ref
                                                   _out18301843_
                                                   '2)))
                                             (let ((_phi1908_ _e18361905_))
                                               (_K18341897_
                                                _phi1908_
                                                _src1903_)))))
                                       (_E18331847_))))))
                          (let ((_K18371917_
                                 (lambda (_name1913_ _phi1914_ _key1915_)
                                   (_lp1805_
                                    _rest1828_
                                    (cons (cons 'spec:
                                                (cons _phi1914_
                                                      (cons (gxc#generate-runtime-identifier-key
                                                             _key1915_)
                                                            (cons (gxc#generate-runtime-identifier-key
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _name1913_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _r1808_)))))
                            (if (direct-struct-instance?
                                 gx#module-export::t
                                 _out18301843_)
                                (let ((_e18381920_
                                       (##vector-ref _out18301843_ '1)))
                                  (let ((_e18391923_
                                         (##vector-ref _out18301843_ '2)))
                                    (let ((_key1926_ _e18391923_))
                                      (let ((_e18401928_
                                             (##vector-ref _out18301843_ '3)))
                                        (let ((_phi1931_ _e18401928_))
                                          (let ((_e18411933_
                                                 (##vector-ref
                                                  _out18301843_
                                                  '4)))
                                            (let ((_name1936_ _e18411933_))
                                              (_K18371917_
                                               _name1936_
                                               _phi1931_
                                               _key1926_))))))))
                                (_try-match18321910_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest18091817_)
                                                         (let ((_hd18141941_
                                                                (##car _rest18091817_))
                                                               (_tl18151943_
                                                                (##cdr _rest18091817_)))
                                                           (let ((_out1946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd18141941_))
                     (let ((_rest1948_ _tl18151943_))
                       (_K18131938_ _rest1948_ _out1946_))))
                 (_else18111825_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp1805_)
                                 _L1794_
                                 '()))
                              _tl17761791_)))
                         (_g17711781_ _g17721784_)))))
              (_g17701950_ _stx1765_)))))))
  (define gxc#generate-meta-provide%
    (lambda (_stx1726_ _state1727_)
      (begin
        (gxc#meta-state-end-phi! _state1727_)
        (let ((_g17291739_
               (lambda (_g17301736_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g17301736_))))
          (let ((_g17281762_
                 (lambda (_g17301742_)
                   (if (gx#stx-pair? _g17301742_)
                       (let ((_e17321744_ (gx#stx-e _g17301742_)))
                         (let ((_hd17331747_ (##car _e17321744_))
                               (_tl17341749_ (##cdr _e17321744_)))
                           ((lambda (_L1752_)
                              (cons '%#provide
                                    (map gxc#generate-runtime-identifier
                                         _L1752_)))
                            _tl17341749_)))
                       (_g17291739_ _g17301742_)))))
            (_g17281762_ _stx1726_))))))
  (define gxc#generate-meta-extern%
    (lambda (_stx1597_ _state1598_)
      (let ((_generate11600_
             (lambda (_id1721_ _eid1722_)
               (let ((_eid1724_ (gx#stx-e _eid1722_)))
                 (begin
                   (if (interned-symbol? _eid1724_)
                       '#!void
                       (gxc#raise-compile-error
                        '"Cannot compile extern reference"
                        _stx1597_
                        _eid1724_))
                   (cons (gxc#generate-runtime-identifier _id1721_)
                         (cons _eid1724_ '())))))))
        (let ((_g16021630_
               (lambda (_g16031627_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g16031627_))))
          (let ((_g16011718_
                 (lambda (_g16031633_)
                   (if (gx#stx-pair? _g16031633_)
                       (let ((_e16061635_ (gx#stx-e _g16031633_)))
                         (let ((_hd16071638_ (##car _e16061635_))
                               (_tl16081640_ (##cdr _e16061635_)))
                           (if (gx#stx-pair/null? _tl16081640_)
                               (if (fx>= (gx#stx-length _tl16081640_) '0)
                                   (let ((_g5875_ (gx#syntax-split-splice
                                                   _tl16081640_
                                                   '0)))
                                     (begin
                                       (let ((_g5876_ (values-count _g5875_)))
                                         (if (not (fx= _g5876_ 2))
                                             (error "Context expects 2 values"
                                                    _g5876_)))
                                       (let ((_target16091643_
                                              (values-ref _g5875_ 0))
                                             (_tl16111645_
                                              (values-ref _g5875_ 1)))
                                         (if (gx#stx-null? _tl16111645_)
                                             (letrec ((_loop16121648_
                                                       (lambda (_hd16101651_
                                                                _eid16161653_
                                                                _id16171655_)
                                                         (if (gx#stx-pair?
                                                              _hd16101651_)
                                                             (let ((_e16131658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd16101651_)))
                       (let ((_lp-hd16141661_ (##car _e16131658_))
                             (_lp-tl16151663_ (##cdr _e16131658_)))
                         (if (gx#stx-pair? _lp-hd16141661_)
                             (let ((_e16201666_ (gx#stx-e _lp-hd16141661_)))
                               (let ((_hd16211669_ (##car _e16201666_))
                                     (_tl16221671_ (##cdr _e16201666_)))
                                 (if (gx#stx-pair? _tl16221671_)
                                     (let ((_e16231674_
                                            (gx#stx-e _tl16221671_)))
                                       (let ((_hd16241677_ (##car _e16231674_))
                                             (_tl16251679_
                                              (##cdr _e16231674_)))
                                         (if (gx#stx-null? _tl16251679_)
                                             (_loop16121648_
                                              _lp-tl16151663_
                                              (cons _hd16241677_ _eid16161653_)
                                              (cons _hd16211669_ _id16171655_))
                                             (_g16021630_ _g16031633_))))
                                     (_g16021630_ _g16031633_))))
                             (_g16021630_ _g16031633_))))
                     (let ((_eid16181682_ (reverse _eid16161653_))
                           (_id16191684_ (reverse _id16171655_)))
                       ((lambda (_L1687_ _L1688_)
                          (cons '%#extern
                                (map _generate11600_
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g17031706_ _g17041708_)
                                                (cons _g17031706_ _g17041708_))
                                              '()
                                              _L1688_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g17101713_ _g17111715_)
                                                (cons _g17101713_ _g17111715_))
                                              '()
                                              _L1687_)))))
                        _eid16181682_
                        _id16191684_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop16121648_
                                                _target16091643_
                                                '()
                                                '()))
                                             (_g16021630_ _g16031633_)))))
                                   (_g16021630_ _g16031633_))
                               (_g16021630_ _g16031633_))))
                       (_g16021630_ _g16031633_)))))
            (_g16011718_ _stx1597_))))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx1392_ _state1393_)
      (let ((_generate11395_
             (lambda (_id1592_)
               (let ((_eid1594_ (gxc#generate-runtime-binding-id _id1592_))
                     (_ident1595_ (gxc#generate-runtime-identifier _id1592_)))
                 (cons '%#define-runtime
                       (cons _ident1595_ (cons _eid1594_ '())))))))
        (let ((_generate*1396_
               (lambda (_all1560_)
                 (let ((_all15611569_ _all1560_))
                   (let ((_E15641573_
                          (lambda ()
                            (error '"No clause matching" _all15611569_))))
                     (let ((_else15631577_
                            (lambda () (cons '%#begin _all1560_))))
                       (let ((_K15651582_ (lambda (_one1580_) _one1580_)))
                         (if (##pair? _all15611569_)
                             (let ((_hd15661585_ (##car _all15611569_))
                                   (_tl15671587_ (##cdr _all15611569_)))
                               (let ((_one1590_ _hd15661585_))
                                 (if (##null? _tl15671587_)
                                     (_K15651582_ _one1590_)
                                     (_else15631577_))))
                             (_else15631577_)))))))))
          (let ((_g13981415_
                 (lambda (_g13991412_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g13991412_))))
            (let ((_g13971557_
                   (lambda (_g13991418_)
                     (if (gx#stx-pair? _g13991418_)
                         (let ((_e14021420_ (gx#stx-e _g13991418_)))
                           (let ((_hd14031423_ (##car _e14021420_))
                                 (_tl14041425_ (##cdr _e14021420_)))
                             (if (gx#stx-pair? _tl14041425_)
                                 (let ((_e14051428_ (gx#stx-e _tl14041425_)))
                                   (let ((_hd14061431_ (##car _e14051428_))
                                         (_tl14071433_ (##cdr _e14051428_)))
                                     (if (gx#stx-pair? _tl14071433_)
                                         (let ((_e14081436_
                                                (gx#stx-e _tl14071433_)))
                                           (let ((_hd14091439_
                                                  (##car _e14081436_))
                                                 (_tl14101441_
                                                  (##cdr _e14081436_)))
                                             (if (gx#stx-null? _tl14101441_)
                                                 ((lambda (_L1444_ _L1445_)
                                                    ((letrec ((_lp1461_
                                                               (lambda (_rest1463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _r1464_)
                         (let ((_g14691485_
                                (lambda (_g14701482_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g14701482_))))
                           (let ((_g14681492_
                                  (lambda (_g14701488_)
                                    ((lambda ()
                                       (_generate*1396_ (reverse _r1464_)))))))
                             (let ((_g14671508_
                                    (lambda (_g14701495_)
                                      ((lambda (_L1497_)
                                         (if (gx#identifier? _L1497_)
                                             (_generate*1396_
                                              (foldl cons
                                                     (cons (_generate11395_
                                                            _L1497_)
                                                           '())
                                                     _r1464_))
                                             (_g14681492_ _g14701495_)))
                                       _g14701495_))))
                               (let ((_g14661532_
                                      (lambda (_g14701511_)
                                        (if (gx#stx-pair? _g14701511_)
                                            (let ((_e14771513_
                                                   (gx#stx-e _g14701511_)))
                                              (let ((_hd14781516_
                                                     (##car _e14771513_))
                                                    (_tl14791518_
                                                     (##cdr _e14771513_)))
                                                ((lambda (_L1521_ _L1522_)
                                                   (_lp1461_
                                                    _L1521_
                                                    (cons (_generate11395_
                                                           _L1522_)
                                                          _r1464_)))
                                                 _tl14791518_
                                                 _hd14781516_)))
                                            (_g14671508_ _g14701511_)))))
                                 (let ((_g14651554_
                                        (lambda (_g14701535_)
                                          (if (gx#stx-pair? _g14701535_)
                                              (let ((_e14721537_
                                                     (gx#stx-e _g14701535_)))
                                                (let ((_hd14731540_
                                                       (##car _e14721537_))
                                                      (_tl14741542_
                                                       (##cdr _e14721537_)))
                                                  (if (gx#stx-datum?
                                                       _hd14731540_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd14731540_)
                          '#f)
                  ((lambda (_L1545_) (_lp1461_ _L1545_ _r1464_)) _tl14741542_)
                  (_g14661532_ _g14701535_))
              (_g14661532_ _g14701535_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g14661532_ _g14701535_)))))
                                   (_g14651554_ _rest1463_)))))))))
               _lp1461_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _L1445_
                                                     '()))
                                                  _hd14091439_
                                                  _hd14061431_)
                                                 (_g13981415_ _g13991418_))))
                                         (_g13981415_ _g13991418_))))
                                 (_g13981415_ _g13991418_))))
                         (_g13981415_ _g13991418_)))))
              (_g13971557_ _stx1392_)))))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx1289_ _state1290_)
      (let ((_g12921309_
             (lambda (_g12931306_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g12931306_))))
        (let ((_g12911389_
               (lambda (_g12931312_)
                 (if (gx#stx-pair? _g12931312_)
                     (let ((_e12961314_ (gx#stx-e _g12931312_)))
                       (let ((_hd12971317_ (##car _e12961314_))
                             (_tl12981319_ (##cdr _e12961314_)))
                         (if (gx#stx-pair? _tl12981319_)
                             (let ((_e12991322_ (gx#stx-e _tl12981319_)))
                               (let ((_hd13001325_ (##car _e12991322_))
                                     (_tl13011327_ (##cdr _e12991322_)))
                                 (if (gx#stx-pair? _tl13011327_)
                                     (let ((_e13021330_
                                            (gx#stx-e _tl13011327_)))
                                       (let ((_hd13031333_ (##car _e13021330_))
                                             (_tl13041335_
                                              (##cdr _e13021330_)))
                                         (if (gx#stx-null? _tl13041335_)
                                             ((lambda (_L1338_ _L1339_)
                                                (let ((_eid1354_
                                                       (gxc#generate-runtime-binding-id
                                                        _L1339_)))
                                                  (let ((_phi1356_
                                                         (fx1+ (gx#current-expander-phi))))
                                                    (let ((_block1358_
                                                           (gxc#meta-state-begin-phi!
                                                            _state1290_
                                                            _phi1356_)))
                                                      (let ()
                                                        (begin
                                                          (let ((_g13611368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g13621365_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g13621365_))))
                    (let ((_g13601386_
                           (lambda (_g13621371_)
                             ((lambda (_L1373_)
                                (let ()
                                  (gxc#meta-state-add-phi!
                                   _state1290_
                                   _phi1356_
                                   (cons (gx#datum->syntax
                                          '#f
                                          '%#define-runtime)
                                         (cons _L1373_ (cons _L1338_ '()))))))
                              _g13621371_))))
                      (_g13601386_ _eid1354_)))
                  (if _block1358_
                      (cons '%#begin
                            (cons (cons '%#begin-syntax
                                        (cons (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote (cons _block1358_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons '%#define-syntax
                                              (cons (gxc#generate-runtime-identifier
                                                     _L1339_)
                                                    (cons _eid1354_ '())))
                                        '())))
                      (cons '%#define-syntax
                            (cons (gxc#generate-runtime-identifier _L1339_)
                                  (cons _eid1354_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd13031333_
                                              _hd13001325_)
                                             (_g12921309_ _g12931312_))))
                                     (_g12921309_ _g12931312_))))
                             (_g12921309_ _g12931312_))))
                     (_g12921309_ _g12931312_)))))
          (_g12911389_ _stx1289_)))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx1221_ _state1222_)
      (let ((_g12241241_
             (lambda (_g12251238_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g12251238_))))
        (let ((_g12231286_
               (lambda (_g12251244_)
                 (if (gx#stx-pair? _g12251244_)
                     (let ((_e12281246_ (gx#stx-e _g12251244_)))
                       (let ((_hd12291249_ (##car _e12281246_))
                             (_tl12301251_ (##cdr _e12281246_)))
                         (if (gx#stx-pair? _tl12301251_)
                             (let ((_e12311254_ (gx#stx-e _tl12301251_)))
                               (let ((_hd12321257_ (##car _e12311254_))
                                     (_tl12331259_ (##cdr _e12311254_)))
                                 (if (gx#stx-pair? _tl12331259_)
                                     (let ((_e12341262_
                                            (gx#stx-e _tl12331259_)))
                                       (let ((_hd12351265_ (##car _e12341262_))
                                             (_tl12361267_
                                              (##cdr _e12341262_)))
                                         (if (gx#stx-null? _tl12361267_)
                                             ((lambda (_L1270_ _L1271_)
                                                (cons '%#define-alias
                                                      (cons (gxc#generate-runtime-identifier
                                                             _L1271_)
                                                            (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L1270_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd12351265_
                                              _hd12321257_)
                                             (_g12241241_ _g12251244_))))
                                     (_g12241241_ _g12251244_))))
                             (_g12241241_ _g12251244_))))
                     (_g12241241_ _g12251244_)))))
          (_g12231286_ _stx1221_)))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx1218_ _state1219_)
      (begin
        (gxc#meta-state-add-phi!
         _state1219_
         (gx#current-expander-phi)
         _stx1218_)
        (gxc#generate-meta-define-values% _stx1218_ _state1219_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx1215_ _state1216_)
      (begin
        (gxc#meta-state-add-phi!
         _state1216_
         (gx#current-expander-phi)
         _stx1215_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type 'gxc#meta-state::t '#f '4 'meta-state '() ':init!))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args1212_
      (apply make-struct-instance gxc#meta-state::t _$args1212_)))
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
    (lambda (_self1209_ _ctx1210_)
      (direct-struct-instance-init!
       _self1209_
       (symbol->string (gx#expander-context-id _ctx1210_))
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
    (lambda _$args1206_
      (apply make-struct-instance gxc#meta-state-block::t _$args1206_)))
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
    (lambda (_state1165_ _phi1166_)
      (let ((_state11671175_ _state1165_))
        (let ((_E11691179_
               (lambda () (error '"No clause matching" _state11671175_))))
          (let ((_K11701188_
                 (lambda (_open1182_ _n1183_ _src1184_)
                   (if (hash-get _open1182_ _phi1166_)
                       '#f
                       (let ((_block-ref1186_
                              (string-append
                               _src1184_
                               '"__"
                               (number->string _n1183_))))
                         (begin
                           (gxc#meta-state-n-set! _state1165_ (fx1+ _n1183_))
                           (hash-put!
                            _open1182_
                            _phi1166_
                            (gxc#make-meta-state-block
                             (gx#current-expander-context)
                             _phi1166_
                             _n1183_
                             '()))
                           _block-ref1186_))))))
            (if (struct-instance? gxc#meta-state::t _state11671175_)
                (let ((_e11711191_ (##vector-ref _state11671175_ '1)))
                  (let ((_src1194_ _e11711191_))
                    (let ((_e11721196_ (##vector-ref _state11671175_ '2)))
                      (let ((_n1199_ _e11721196_))
                        (let ((_e11731201_ (##vector-ref _state11671175_ '3)))
                          (let ((_open1204_ _e11731201_))
                            (_K11701188_ _open1204_ _n1199_ _src1194_)))))))
                (_E11691179_)))))))
  (define gxc#meta-state-add-phi!
    (lambda (_state1159_ _phi1160_ _stx1161_)
      (let ((_block1163_
             (hash-get (gxc#meta-state-open _state1159_) _phi1160_)))
        (gxc#meta-state-block-code-set!
         _block1163_
         (cons _stx1161_ (gxc#meta-state-block-code _block1163_))))))
  (define gxc#meta-state-end-phi!
    (lambda (_state1154_)
      (begin
        (gxc#meta-state-blocks-set!
         _state1154_
         (hash-fold
          (lambda (_g5877_ _block1156_ _r1157_) (cons _block1156_ _r1157_))
          (gxc#meta-state-blocks _state1154_)
          (gxc#meta-state-open _state1154_)))
        (gxc#meta-state-open-set! _state1154_ (make-hash-table-eq)))))
  (define gxc#meta-state-end!
    (lambda (_state1106_)
      (begin
        (gxc#meta-state-end-phi! _state1106_)
        (foldl (lambda (_block1108_ _r1109_)
                 (let ((_block11101119_ _block1108_))
                   (let ((_E11121123_
                          (lambda ()
                            (error '"No clause matching" _block11101119_))))
                     (let ((_K11131131_
                            (lambda (_code1126_ _n1127_ _phi1128_ _ctx1129_)
                              (if (null? _code1126_)
                                  _r1109_
                                  (cons (cons _ctx1129_
                                              (cons _phi1128_
                                                    (cons _n1127_
                                                          (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (reverse _code1126_))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _r1109_)))))
                       (if (struct-instance?
                            gxc#meta-state-block::t
                            _block11101119_)
                           (let ((_e11141134_
                                  (##vector-ref _block11101119_ '1)))
                             (let ((_ctx1137_ _e11141134_))
                               (let ((_e11151139_
                                      (##vector-ref _block11101119_ '2)))
                                 (let ((_phi1142_ _e11151139_))
                                   (let ((_e11161144_
                                          (##vector-ref _block11101119_ '3)))
                                     (let ((_n1147_ _e11161144_))
                                       (let ((_e11171149_
                                              (##vector-ref
                                               _block11101119_
                                               '4)))
                                         (let ((_code1152_ _e11171149_))
                                           (_K11131131_
                                            _code1152_
                                            _n1147_
                                            _phi1142_
                                            _ctx1137_)))))))))
                           (_E11121123_))))))
               '()
               (gxc#meta-state-blocks _state1106_)))))
  (define gxc#collect-expression-refs
    (lambda (_stx1102_)
      (let ((_ht1104_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx1102_ _ht1104_)
          _ht1104_))))
  (define gxc#collect-refs-lambda%
    (lambda (_stx1034_ _ht1035_)
      (let ((_g10371054_
             (lambda (_g10381051_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g10381051_))))
        (let ((_g10361099_
               (lambda (_g10381057_)
                 (if (gx#stx-pair? _g10381057_)
                     (let ((_e10411059_ (gx#stx-e _g10381057_)))
                       (let ((_hd10421062_ (##car _e10411059_))
                             (_tl10431064_ (##cdr _e10411059_)))
                         (if (gx#stx-pair? _tl10431064_)
                             (let ((_e10441067_ (gx#stx-e _tl10431064_)))
                               (let ((_hd10451070_ (##car _e10441067_))
                                     (_tl10461072_ (##cdr _e10441067_)))
                                 (if (gx#stx-pair? _tl10461072_)
                                     (let ((_e10471075_
                                            (gx#stx-e _tl10461072_)))
                                       (let ((_hd10481078_ (##car _e10471075_))
                                             (_tl10491080_
                                              (##cdr _e10471075_)))
                                         (if (gx#stx-null? _tl10491080_)
                                             ((lambda (_L1083_ _L1084_)
                                                (gxc#compile-e
                                                 _L1083_
                                                 _ht1035_))
                                              _hd10481078_
                                              _hd10451070_)
                                             (_g10371054_ _g10381057_))))
                                     (_g10371054_ _g10381057_))))
                             (_g10371054_ _g10381057_))))
                     (_g10371054_ _g10381057_)))))
          (_g10361099_ _stx1034_)))))
  (define gxc#collect-refs-case-lambda%
    (lambda (_stx916_ _ht917_)
      (let ((_g919947_
             (lambda (_g920944_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g920944_))))
        (let ((_g9181031_
               (lambda (_g920950_)
                 (if (gx#stx-pair? _g920950_)
                     (let ((_e923952_ (gx#stx-e _g920950_)))
                       (let ((_hd924955_ (##car _e923952_))
                             (_tl925957_ (##cdr _e923952_)))
                         (if (gx#stx-pair/null? _tl925957_)
                             (if (fx>= (gx#stx-length _tl925957_) '0)
                                 (let ((_g5878_ (gx#syntax-split-splice
                                                 _tl925957_
                                                 '0)))
                                   (begin
                                     (let ((_g5879_ (values-count _g5878_)))
                                       (if (not (fx= _g5879_ 2))
                                           (error "Context expects 2 values"
                                                  _g5879_)))
                                     (let ((_target926960_
                                            (values-ref _g5878_ 0))
                                           (_tl928962_ (values-ref _g5878_ 1)))
                                       (if (gx#stx-null? _tl928962_)
                                           (letrec ((_loop929965_
                                                     (lambda (_hd927968_
                                                              _body933970_
                                                              _hd934972_)
                                                       (if (gx#stx-pair?
                                                            _hd927968_)
                                                           (let ((_e930975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd927968_)))
                     (let ((_lp-hd931978_ (##car _e930975_))
                           (_lp-tl932980_ (##cdr _e930975_)))
                       (if (gx#stx-pair? _lp-hd931978_)
                           (let ((_e937983_ (gx#stx-e _lp-hd931978_)))
                             (let ((_hd938986_ (##car _e937983_))
                                   (_tl939988_ (##cdr _e937983_)))
                               (if (gx#stx-pair? _tl939988_)
                                   (let ((_e940991_ (gx#stx-e _tl939988_)))
                                     (let ((_hd941994_ (##car _e940991_))
                                           (_tl942996_ (##cdr _e940991_)))
                                       (if (gx#stx-null? _tl942996_)
                                           (_loop929965_
                                            _lp-tl932980_
                                            (cons _hd941994_ _body933970_)
                                            (cons _hd938986_ _hd934972_))
                                           (_g919947_ _g920950_))))
                                   (_g919947_ _g920950_))))
                           (_g919947_ _g920950_))))
                   (let ((_body935999_ (reverse _body933970_))
                         (_hd9361001_ (reverse _hd934972_)))
                     ((lambda (_L1004_ _L1005_)
                        (for-each
                         (lambda (_g10191021_)
                           (gxc#compile-e _g10191021_ _ht917_))
                         (begin
                           '#!void
                           (foldr (lambda (_g10231026_ _g10241028_)
                                    (cons _g10231026_ _g10241028_))
                                  '()
                                  _L1004_))))
                      _body935999_
                      _hd9361001_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop929965_
                                              _target926960_
                                              '()
                                              '()))
                                           (_g919947_ _g920950_)))))
                                 (_g919947_ _g920950_))
                             (_g919947_ _g920950_))))
                     (_g919947_ _g920950_)))))
          (_g9181031_ _stx916_)))))
  (define gxc#collect-refs-let-values%
    (lambda (_stx769_ _ht770_)
      (let ((_g772807_
             (lambda (_g773804_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g773804_))))
        (let ((_g771913_
               (lambda (_g773810_)
                 (if (gx#stx-pair? _g773810_)
                     (let ((_e777812_ (gx#stx-e _g773810_)))
                       (let ((_hd778815_ (##car _e777812_))
                             (_tl779817_ (##cdr _e777812_)))
                         (if (gx#stx-pair? _tl779817_)
                             (let ((_e780820_ (gx#stx-e _tl779817_)))
                               (let ((_hd781823_ (##car _e780820_))
                                     (_tl782825_ (##cdr _e780820_)))
                                 (if (gx#stx-pair/null? _hd781823_)
                                     (if (fx>= (gx#stx-length _hd781823_) '0)
                                         (let ((_g5880_ (gx#syntax-split-splice
                                                         _hd781823_
                                                         '0)))
                                           (begin
                                             (let ((_g5881_ (values-count
                                                             _g5880_)))
                                               (if (not (fx= _g5881_ 2))
                                                   (error "Context expects 2 values"
                                                          _g5881_)))
                                             (let ((_target783828_
                                                    (values-ref _g5880_ 0))
                                                   (_tl785830_
                                                    (values-ref _g5880_ 1)))
                                               (if (gx#stx-null? _tl785830_)
                                                   (letrec ((_loop786833_
                                                             (lambda (_hd784836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr790838_
                              _hd791840_)
                       (if (gx#stx-pair? _hd784836_)
                           (let ((_e787843_ (gx#stx-e _hd784836_)))
                             (let ((_lp-hd788846_ (##car _e787843_))
                                   (_lp-tl789848_ (##cdr _e787843_)))
                               (if (gx#stx-pair? _lp-hd788846_)
                                   (let ((_e794851_ (gx#stx-e _lp-hd788846_)))
                                     (let ((_hd795854_ (##car _e794851_))
                                           (_tl796856_ (##cdr _e794851_)))
                                       (if (gx#stx-pair? _tl796856_)
                                           (let ((_e797859_
                                                  (gx#stx-e _tl796856_)))
                                             (let ((_hd798862_
                                                    (##car _e797859_))
                                                   (_tl799864_
                                                    (##cdr _e797859_)))
                                               (if (gx#stx-null? _tl799864_)
                                                   (_loop786833_
                                                    _lp-tl789848_
                                                    (cons _hd798862_
                                                          _expr790838_)
                                                    (cons _hd795854_
                                                          _hd791840_))
                                                   (_g772807_ _g773810_))))
                                           (_g772807_ _g773810_))))
                                   (_g772807_ _g773810_))))
                           (let ((_expr792867_ (reverse _expr790838_))
                                 (_hd793869_ (reverse _hd791840_)))
                             (if (gx#stx-pair? _tl782825_)
                                 (let ((_e800872_ (gx#stx-e _tl782825_)))
                                   (let ((_hd801875_ (##car _e800872_))
                                         (_tl802877_ (##cdr _e800872_)))
                                     (if (gx#stx-null? _tl802877_)
                                         ((lambda (_L880_ _L881_ _L882_)
                                            (if (for-each
                                                 (lambda (_g901903_)
                                                   (gxc#compile-e
                                                    _g901903_
                                                    _ht770_))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g905908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g906910_)
                    (cons _g905908_ _g906910_))
                  '()
                  _L881_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#compile-e _L880_ _ht770_)
                                                (_g772807_ _g773810_)))
                                          _hd801875_
                                          _expr792867_
                                          _hd793869_)
                                         (_g772807_ _g773810_))))
                                 (_g772807_ _g773810_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop786833_
                                                      _target783828_
                                                      '()
                                                      '()))
                                                   (_g772807_ _g773810_)))))
                                         (_g772807_ _g773810_))
                                     (_g772807_ _g773810_))))
                             (_g772807_ _g773810_))))
                     (_g772807_ _g773810_)))))
          (_g771913_ _stx769_)))))
  (define gxc#collect-refs-ref%
    (lambda (_stx712_ _ht713_)
      (let ((_g715728_
             (lambda (_g716725_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g716725_))))
        (let ((_g714766_
               (lambda (_g716731_)
                 (if (gx#stx-pair? _g716731_)
                     (let ((_e718733_ (gx#stx-e _g716731_)))
                       (let ((_hd719736_ (##car _e718733_))
                             (_tl720738_ (##cdr _e718733_)))
                         (if (gx#stx-pair? _tl720738_)
                             (let ((_e721741_ (gx#stx-e _tl720738_)))
                               (let ((_hd722744_ (##car _e721741_))
                                     (_tl723746_ (##cdr _e721741_)))
                                 (if (gx#stx-null? _tl723746_)
                                     ((lambda (_L749_)
                                        (let ((_bind761_
                                               (gx#resolve-identifier _L749_)))
                                          (let ((_eid763_
                                                 (if _bind761_
                                                     (gx#binding-id _bind761_)
                                                     (gx#stx-e _L749_))))
                                            (let ()
                                              (hash-put!
                                               _ht713_
                                               _eid763_
                                               _eid763_)))))
                                      _hd722744_)
                                     (_g715728_ _g716731_))))
                             (_g715728_ _g716731_))))
                     (_g715728_ _g716731_)))))
          (_g714766_ _stx712_)))))
  (define gxc#collect-refs-setq%
    (lambda (_stx639_ _ht640_)
      (let ((_g642659_
             (lambda (_g643656_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g643656_))))
        (let ((_g641709_
               (lambda (_g643662_)
                 (if (gx#stx-pair? _g643662_)
                     (let ((_e646664_ (gx#stx-e _g643662_)))
                       (let ((_hd647667_ (##car _e646664_))
                             (_tl648669_ (##cdr _e646664_)))
                         (if (gx#stx-pair? _tl648669_)
                             (let ((_e649672_ (gx#stx-e _tl648669_)))
                               (let ((_hd650675_ (##car _e649672_))
                                     (_tl651677_ (##cdr _e649672_)))
                                 (if (gx#stx-pair? _tl651677_)
                                     (let ((_e652680_ (gx#stx-e _tl651677_)))
                                       (let ((_hd653683_ (##car _e652680_))
                                             (_tl654685_ (##cdr _e652680_)))
                                         (if (gx#stx-null? _tl654685_)
                                             ((lambda (_L688_ _L689_)
                                                (let ((_bind704_
                                                       (gx#resolve-identifier
                                                        _L689_)))
                                                  (let ((_eid706_
                                                         (if _bind704_
                                                             (gx#binding-id
                                                              _bind704_)
                                                             (gx#stx-e
                                                              _L689_))))
                                                    (let ()
                                                      (begin
                                                        (hash-put!
                                                         _ht640_
                                                         _eid706_
                                                         _eid706_)
                                                        (gxc#compile-e
                                                         _L688_
                                                         _ht640_))))))
                                              _hd653683_
                                              _hd650675_)
                                             (_g642659_ _g643662_))))
                                     (_g642659_ _g643662_))))
                             (_g642659_ _g643662_))))
                     (_g642659_ _g643662_)))))
          (_g641709_ _stx639_)))))
  (define gxc#find-runtime-begin%
    (lambda (_stx601_)
      (let ((_g603613_
             (lambda (_g604610_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g604610_))))
        (let ((_g602636_
               (lambda (_g604616_)
                 (if (gx#stx-pair? _g604616_)
                     (let ((_e606618_ (gx#stx-e _g604616_)))
                       (let ((_hd607621_ (##car _e606618_))
                             (_tl608623_ (##cdr _e606618_)))
                         ((lambda (_L626_) (ormap gxc#compile-e _L626_))
                          _tl608623_)))
                     (_g603613_ _g604616_)))))
          (_g602636_ _stx601_))))))
