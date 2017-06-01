(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx10085_ . _args10086_)
      (let ((_g1008810098_
             (lambda (_g1008910095_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1008910095_))))
        (let ((_g1008710126_
               (lambda (_g1008910101_)
                 (if (gx#stx-pair? _g1008910101_)
                     (let ((_e1009110103_ (gx#stx-e _g1008910101_)))
                       (let ((_hd1009210106_ (##car _e1009110103_))
                             (_tl1009310108_ (##cdr _e1009110103_)))
                         ((lambda (_L10111_)
                            (let ((_$e10121_
                                   (table-ref
                                    (gxc#current-compile-methods)
                                    (gx#stx-e _L10111_)
                                    '#f)))
                              (if _$e10121_
                                  ((lambda (_method10124_)
                                     (apply _method10124_
                                            _stx10085_
                                            _args10086_))
                                   _$e10121_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile; missing method"
                                   _stx10085_
                                   _L10111_))))
                          _hd1009210106_)))
                     (_g1008810098_ _g1008910101_)))))
          (_g1008710126_ _stx10085_)))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl10082_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10082_ '%#lambda void)
           (table-set! _tbl10082_ '%#case-lambda void)
           (table-set! _tbl10082_ '%#let-values void)
           (table-set! _tbl10082_ '%#letrec-values void)
           (table-set! _tbl10082_ '%#letrec*-values void)
           (table-set! _tbl10082_ '%#quote void)
           (table-set! _tbl10082_ '%#quote-syntax void)
           (table-set! _tbl10082_ '%#call void)
           (table-set! _tbl10082_ '%#if void)
           (table-set! _tbl10082_ '%#ref void)
           (table-set! _tbl10082_ '%#set! void)
           (table-set! _tbl10082_ '%#struct-instance? void)
           (table-set! _tbl10082_ '%#struct-direct-instance? void)
           (table-set! _tbl10082_ '%#struct-ref void)
           (table-set! _tbl10082_ '%#struct-set! void)
           _tbl10082_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl10078_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10078_ '%#begin void)
           (table-set! _tbl10078_ '%#begin-syntax void)
           (table-set! _tbl10078_ '%#begin-foreign void)
           (table-set! _tbl10078_ '%#module void)
           (table-set! _tbl10078_ '%#import void)
           (table-set! _tbl10078_ '%#export void)
           (table-set! _tbl10078_ '%#provide void)
           (table-set! _tbl10078_ '%#extern void)
           (table-set! _tbl10078_ '%#define-values void)
           (table-set! _tbl10078_ '%#define-syntax void)
           (table-set! _tbl10078_ '%#define-alias void)
           (table-set! _tbl10078_ '%#declare void)
           _tbl10078_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl10074_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10074_ (force gxc#&void-special-form))
           (hash-copy! _tbl10074_ (force gxc#&void-expression))
           _tbl10074_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl10070_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10070_ (force gxc#&void-expression))
           (hash-copy! _tbl10070_ (force gxc#&void-special-form))
           (table-set! _tbl10070_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10070_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl10070_ '%#module gxc#collect-module%)
           (table-set!
            _tbl10070_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl10070_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl10070_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx10063_ . _args10065_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10063_ _args10065_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl10060_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10060_ (force gxc#&void))
           (table-set! _tbl10060_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10060_ '%#module gxc#lift-modules-module%)
           _tbl10060_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx10053_ . _args10055_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10053_ _args10055_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl10050_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10050_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl10050_ '%#begin-syntax false)
           (table-set! _tbl10050_ '%#begin-foreign true)
           (table-set! _tbl10050_ '%#module false)
           (table-set! _tbl10050_ '%#import false)
           (table-set! _tbl10050_ '%#export false)
           (table-set! _tbl10050_ '%#provide false)
           (table-set! _tbl10050_ '%#extern false)
           (table-set! _tbl10050_ '%#define-values true)
           (table-set! _tbl10050_ '%#define-syntax false)
           (table-set! _tbl10050_ '%#define-alias false)
           (table-set! _tbl10050_ '%#declare false)
           (table-set! _tbl10050_ '%#lambda true)
           (table-set! _tbl10050_ '%#case-lambda true)
           (table-set! _tbl10050_ '%#let-values true)
           (table-set! _tbl10050_ '%#letrec-values true)
           (table-set! _tbl10050_ '%#letrec*-values true)
           (table-set! _tbl10050_ '%#quote true)
           (table-set! _tbl10050_ '%#call true)
           (table-set! _tbl10050_ '%#if true)
           (table-set! _tbl10050_ '%#ref true)
           (table-set! _tbl10050_ '%#set! true)
           (table-set! _tbl10050_ '%#struct-instance? true)
           (table-set! _tbl10050_ '%#struct-direct-instance? true)
           (table-set! _tbl10050_ '%#struct-ref true)
           (table-set! _tbl10050_ '%#struct-set! true)
           _tbl10050_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx10043_ . _args10045_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10043_ _args10045_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl10040_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10040_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl10040_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl10040_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set! _tbl10040_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl10040_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl10040_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl10040_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl10040_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl10040_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl10040_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl10040_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl10040_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl10040_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl10040_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl10040_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl10040_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl10040_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl10040_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl10040_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl10040_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl10040_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl10040_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl10040_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl10040_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl10040_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl10040_ '%#struct-set! gxc#generate-runtime-empty)
           _tbl10040_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl10036_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10036_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl10036_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl10036_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl10036_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx10029_ . _args10031_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10029_ _args10031_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl10026_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10026_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl10026_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl10026_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl10026_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl10026_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl10026_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl10026_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl10026_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl10026_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl10026_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl10026_ '%#quote gxc#generate-runtime-quote%)
           (table-set! _tbl10026_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl10026_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl10026_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl10026_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl10026_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl10026_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl10026_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl10026_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           _tbl10026_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx10019_ . _args10021_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10019_ _args10021_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl10016_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10016_ (force gxc#&generate-runtime))
           (table-set!
            _tbl10016_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (table-set!
            _tbl10016_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl10016_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx10009_ . _args10011_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10009_ _args10011_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl10006_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10006_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10006_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl10006_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl10006_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl10006_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl10006_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl10006_ '%#quote void)
           (table-set! _tbl10006_ '%#quote-syntax void)
           (table-set! _tbl10006_ '%#call gxc#collect-operands)
           (table-set! _tbl10006_ '%#if gxc#collect-operands)
           (table-set! _tbl10006_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl10006_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl10006_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl10006_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl10006_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl10006_ '%#struct-set! gxc#collect-operands)
           _tbl10006_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx9999_ . _args10001_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9999_ _args10001_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl9996_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9996_ (force gxc#&void-expression))
           (table-set! _tbl9996_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl9996_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl9996_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl9996_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl9996_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl9996_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl9996_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl9996_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl9996_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl9996_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl9996_ '%#begin-foreign void)
           (table-set! _tbl9996_ '%#declare void)
           _tbl9996_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx9989_ . _args9991_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9989_ _args9991_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl9986_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl9986_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl9986_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl9986_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl9986_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl9986_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set! _tbl9986_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl9986_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl9986_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl9986_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl9986_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl9986_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl9986_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl9986_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl9986_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl9986_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl9986_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl9986_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl9986_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl9986_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl9986_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set! _tbl9986_ '%#declare void)
           _tbl9986_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx9979_ . _args9981_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9979_ _args9981_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx9936_ . _args9937_)
      (let ((_g99399949_
             (lambda (_g99409946_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g99409946_))))
        (let ((_g99389976_
               (lambda (_g99409952_)
                 (if (gx#stx-pair? _g99409952_)
                     (let ((_e99429954_ (gx#stx-e _g99409952_)))
                       (let ((_hd99439957_ (##car _e99429954_))
                             (_tl99449959_ (##cdr _e99429954_)))
                         ((lambda (_L9962_)
                            (for-each
                             (lambda (_g99719973_)
                               (apply gxc#compile-e _g99719973_ _args9937_))
                             (gx#stx-e _L9962_)))
                          _tl99449959_)))
                     (_g99399949_ _g99409952_)))))
          (_g99389976_ _stx9936_)))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx9892_ . _args9893_)
      (let ((_g98959905_
             (lambda (_g98969902_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g98969902_))))
        (let ((_g98949933_
               (lambda (_g98969908_)
                 (if (gx#stx-pair? _g98969908_)
                     (let ((_e98989910_ (gx#stx-e _g98969908_)))
                       (let ((_hd98999913_ (##car _e98989910_))
                             (_tl99009915_ (##cdr _e98989910_)))
                         ((lambda (_L9918_)
                            (call-with-parameters
                             (lambda ()
                               (for-each
                                (lambda (_g99289930_)
                                  (apply gxc#compile-e _g99289930_ _args9893_))
                                (gx#stx-e _L9918_)))
                             gx#current-expander-phi
                             (fx+ (gx#current-expander-phi) '1)))
                          _tl99009915_)))
                     (_g98959905_ _g98969908_)))))
          (_g98949933_ _stx9892_)))))
  (define gxc#collect-module%
    (lambda (_stx9834_ . _args9835_)
      (let ((_g98379851_
             (lambda (_g98389848_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g98389848_))))
        (let ((_g98369889_
               (lambda (_g98389854_)
                 (if (gx#stx-pair? _g98389854_)
                     (let ((_e98419856_ (gx#stx-e _g98389854_)))
                       (let ((_hd98429859_ (##car _e98419856_))
                             (_tl98439861_ (##cdr _e98419856_)))
                         (if (gx#stx-pair? _tl98439861_)
                             (let ((_e98449864_ (gx#stx-e _tl98439861_)))
                               (let ((_hd98459867_ (##car _e98449864_))
                                     (_tl98469869_ (##cdr _e98449864_)))
                                 ((lambda (_L9872_ _L9873_)
                                    (let ((_ctx9886_
                                           (gx#syntax-local-e__0 _L9873_)))
                                      (call-with-parameters
                                       (lambda ()
                                         (apply gxc#compile-e
                                                (##structure-ref
                                                 _ctx9886_
                                                 '11
                                                 gx#module-context::t
                                                 '#f)
                                                _args9835_))
                                       gx#current-expander-context
                                       _ctx9886_)))
                                  _tl98469869_
                                  _hd98459867_)))
                             (_g98379851_ _g98389854_))))
                     (_g98379851_ _g98389854_)))))
          (_g98369889_ _stx9834_)))))
  (define gxc#collect-body-lambda%
    (lambda (_stx9766_ . _args9767_)
      (let ((_g97699786_
             (lambda (_g97709783_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g97709783_))))
        (let ((_g97689831_
               (lambda (_g97709789_)
                 (if (gx#stx-pair? _g97709789_)
                     (let ((_e97739791_ (gx#stx-e _g97709789_)))
                       (let ((_hd97749794_ (##car _e97739791_))
                             (_tl97759796_ (##cdr _e97739791_)))
                         (if (gx#stx-pair? _tl97759796_)
                             (let ((_e97769799_ (gx#stx-e _tl97759796_)))
                               (let ((_hd97779802_ (##car _e97769799_))
                                     (_tl97789804_ (##cdr _e97769799_)))
                                 (if (gx#stx-pair? _tl97789804_)
                                     (let ((_e97799807_
                                            (gx#stx-e _tl97789804_)))
                                       (let ((_hd97809810_ (##car _e97799807_))
                                             (_tl97819812_
                                              (##cdr _e97799807_)))
                                         (if (gx#stx-null? _tl97819812_)
                                             ((lambda (_L9815_ _L9816_)
                                                (apply gxc#compile-e
                                                       _L9815_
                                                       _args9767_))
                                              _hd97809810_
                                              _hd97779802_)
                                             (_g97699786_ _g97709789_))))
                                     (_g97699786_ _g97709789_))))
                             (_g97699786_ _g97709789_))))
                     (_g97699786_ _g97709789_)))))
          (_g97689831_ _stx9766_)))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx9648_ . _args9649_)
      (let ((_g96519679_
             (lambda (_g96529676_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g96529676_))))
        (let ((_g96509763_
               (lambda (_g96529682_)
                 (if (gx#stx-pair? _g96529682_)
                     (let ((_e96559684_ (gx#stx-e _g96529682_)))
                       (let ((_hd96569687_ (##car _e96559684_))
                             (_tl96579689_ (##cdr _e96559684_)))
                         (if (gx#stx-pair/null? _tl96579689_)
                             (if (fx>= (gx#stx-length _tl96579689_) '0)
                                 (let ((_g10129_
                                        (gx#syntax-split-splice
                                         _tl96579689_
                                         '0)))
                                   (begin
                                     (let ((_g10130_ (values-count _g10129_)))
                                       (if (not (fx= _g10130_ 2))
                                           (error "Context expects 2 values"
                                                  _g10130_)))
                                     (let ((_target96589692_
                                            (values-ref _g10129_ 0))
                                           (_tl96609694_
                                            (values-ref _g10129_ 1)))
                                       (if (gx#stx-null? _tl96609694_)
                                           (letrec ((_loop96619697_
                                                     (lambda (_hd96599700_
                                                              _body96659702_
                                                              _hd96669704_)
                                                       (if (gx#stx-pair?
                                                            _hd96599700_)
                                                           (let ((_e96629707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd96599700_)))
                     (let ((_lp-hd96639710_ (##car _e96629707_))
                           (_lp-tl96649712_ (##cdr _e96629707_)))
                       (if (gx#stx-pair? _lp-hd96639710_)
                           (let ((_e96699715_ (gx#stx-e _lp-hd96639710_)))
                             (let ((_hd96709718_ (##car _e96699715_))
                                   (_tl96719720_ (##cdr _e96699715_)))
                               (if (gx#stx-pair? _tl96719720_)
                                   (let ((_e96729723_ (gx#stx-e _tl96719720_)))
                                     (let ((_hd96739726_ (##car _e96729723_))
                                           (_tl96749728_ (##cdr _e96729723_)))
                                       (if (gx#stx-null? _tl96749728_)
                                           (_loop96619697_
                                            _lp-tl96649712_
                                            (cons _hd96739726_ _body96659702_)
                                            (cons _hd96709718_ _hd96669704_))
                                           (_g96519679_ _g96529682_))))
                                   (_g96519679_ _g96529682_))))
                           (_g96519679_ _g96529682_))))
                   (let ((_body96679731_ (reverse _body96659702_))
                         (_hd96689733_ (reverse _hd96669704_)))
                     ((lambda (_L9736_ _L9737_)
                        (for-each
                         (lambda (_g97519753_)
                           (apply gxc#compile-e _g97519753_ _args9649_))
                         (begin
                           '#!void
                           (foldr1 (lambda (_g97559758_ _g97569760_)
                                     (cons _g97559758_ _g97569760_))
                                   '()
                                   _L9736_))))
                      _body96679731_
                      _hd96689733_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop96619697_
                                              _target96589692_
                                              '()
                                              '()))
                                           (_g96519679_ _g96529682_)))))
                                 (_g96519679_ _g96529682_))
                             (_g96519679_ _g96529682_))))
                     (_g96519679_ _g96529682_)))))
          (_g96509763_ _stx9648_)))))
  (define gxc#collect-body-let-values%
    (lambda (_stx9501_ . _args9502_)
      (let ((_g95049539_
             (lambda (_g95059536_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g95059536_))))
        (let ((_g95039645_
               (lambda (_g95059542_)
                 (if (gx#stx-pair? _g95059542_)
                     (let ((_e95099544_ (gx#stx-e _g95059542_)))
                       (let ((_hd95109547_ (##car _e95099544_))
                             (_tl95119549_ (##cdr _e95099544_)))
                         (if (gx#stx-pair? _tl95119549_)
                             (let ((_e95129552_ (gx#stx-e _tl95119549_)))
                               (let ((_hd95139555_ (##car _e95129552_))
                                     (_tl95149557_ (##cdr _e95129552_)))
                                 (if (gx#stx-pair/null? _hd95139555_)
                                     (if (fx>= (gx#stx-length _hd95139555_) '0)
                                         (let ((_g10131_
                                                (gx#syntax-split-splice
                                                 _hd95139555_
                                                 '0)))
                                           (begin
                                             (let ((_g10132_
                                                    (values-count _g10131_)))
                                               (if (not (fx= _g10132_ 2))
                                                   (error "Context expects 2 values"
                                                          _g10132_)))
                                             (let ((_target95159560_
                                                    (values-ref _g10131_ 0))
                                                   (_tl95179562_
                                                    (values-ref _g10131_ 1)))
                                               (if (gx#stx-null? _tl95179562_)
                                                   (letrec ((_loop95189565_
                                                             (lambda (_hd95169568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr95229570_
                              _hd95239572_)
                       (if (gx#stx-pair? _hd95169568_)
                           (let ((_e95199575_ (gx#stx-e _hd95169568_)))
                             (let ((_lp-hd95209578_ (##car _e95199575_))
                                   (_lp-tl95219580_ (##cdr _e95199575_)))
                               (if (gx#stx-pair? _lp-hd95209578_)
                                   (let ((_e95269583_
                                          (gx#stx-e _lp-hd95209578_)))
                                     (let ((_hd95279586_ (##car _e95269583_))
                                           (_tl95289588_ (##cdr _e95269583_)))
                                       (if (gx#stx-pair? _tl95289588_)
                                           (let ((_e95299591_
                                                  (gx#stx-e _tl95289588_)))
                                             (let ((_hd95309594_
                                                    (##car _e95299591_))
                                                   (_tl95319596_
                                                    (##cdr _e95299591_)))
                                               (if (gx#stx-null? _tl95319596_)
                                                   (_loop95189565_
                                                    _lp-tl95219580_
                                                    (cons _hd95309594_
                                                          _expr95229570_)
                                                    (cons _hd95279586_
                                                          _hd95239572_))
                                                   (_g95049539_ _g95059542_))))
                                           (_g95049539_ _g95059542_))))
                                   (_g95049539_ _g95059542_))))
                           (let ((_expr95249599_ (reverse _expr95229570_))
                                 (_hd95259601_ (reverse _hd95239572_)))
                             (if (gx#stx-pair? _tl95149557_)
                                 (let ((_e95329604_ (gx#stx-e _tl95149557_)))
                                   (let ((_hd95339607_ (##car _e95329604_))
                                         (_tl95349609_ (##cdr _e95329604_)))
                                     (if (gx#stx-null? _tl95349609_)
                                         ((lambda (_L9612_ _L9613_ _L9614_)
                                            (for-each
                                             (lambda (_g96339635_)
                                               (apply gxc#compile-e
                                                      _g96339635_
                                                      _args9502_))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g96379640_
                                                                _g96389642_)
                                                         (cons _g96379640_
                                                               _g96389642_))
                                                       (cons _L9612_ '())
                                                       _L9613_))))
                                          _hd95339607_
                                          _expr95249599_
                                          _hd95259601_)
                                         (_g95049539_ _g95059542_))))
                                 (_g95049539_ _g95059542_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop95189565_
                                                      _target95159560_
                                                      '()
                                                      '()))
                                                   (_g95049539_
                                                    _g95059542_)))))
                                         (_g95049539_ _g95059542_))
                                     (_g95049539_ _g95059542_))))
                             (_g95049539_ _g95059542_))))
                     (_g95049539_ _g95059542_)))))
          (_g95039645_ _stx9501_)))))
  (define gxc#collect-body-setq%
    (lambda (_stx9433_ . _args9434_)
      (let ((_g94369453_
             (lambda (_g94379450_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g94379450_))))
        (let ((_g94359498_
               (lambda (_g94379456_)
                 (if (gx#stx-pair? _g94379456_)
                     (let ((_e94409458_ (gx#stx-e _g94379456_)))
                       (let ((_hd94419461_ (##car _e94409458_))
                             (_tl94429463_ (##cdr _e94409458_)))
                         (if (gx#stx-pair? _tl94429463_)
                             (let ((_e94439466_ (gx#stx-e _tl94429463_)))
                               (let ((_hd94449469_ (##car _e94439466_))
                                     (_tl94459471_ (##cdr _e94439466_)))
                                 (if (gx#stx-pair? _tl94459471_)
                                     (let ((_e94469474_
                                            (gx#stx-e _tl94459471_)))
                                       (let ((_hd94479477_ (##car _e94469474_))
                                             (_tl94489479_
                                              (##cdr _e94469474_)))
                                         (if (gx#stx-null? _tl94489479_)
                                             ((lambda (_L9482_ _L9483_)
                                                (apply gxc#compile-e
                                                       _L9482_
                                                       _args9434_))
                                              _hd94479477_
                                              _hd94449469_)
                                             (_g94369453_ _g94379456_))))
                                     (_g94369453_ _g94379456_))))
                             (_g94369453_ _g94379456_))))
                     (_g94369453_ _g94379456_)))))
          (_g94359498_ _stx9433_)))))
  (define gxc#collect-operands
    (lambda (_stx9346_ . _args9347_)
      (let ((_g93499368_
             (lambda (_g93509365_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g93509365_))))
        (let ((_g93489430_
               (lambda (_g93509371_)
                 (if (gx#stx-pair? _g93509371_)
                     (let ((_e93529373_ (gx#stx-e _g93509371_)))
                       (let ((_hd93539376_ (##car _e93529373_))
                             (_tl93549378_ (##cdr _e93529373_)))
                         (if (gx#stx-pair/null? _tl93549378_)
                             (if (fx>= (gx#stx-length _tl93549378_) '0)
                                 (let ((_g10133_
                                        (gx#syntax-split-splice
                                         _tl93549378_
                                         '0)))
                                   (begin
                                     (let ((_g10134_ (values-count _g10133_)))
                                       (if (not (fx= _g10134_ 2))
                                           (error "Context expects 2 values"
                                                  _g10134_)))
                                     (let ((_target93559381_
                                            (values-ref _g10133_ 0))
                                           (_tl93579383_
                                            (values-ref _g10133_ 1)))
                                       (if (gx#stx-null? _tl93579383_)
                                           (letrec ((_loop93589386_
                                                     (lambda (_hd93569389_
                                                              _rands93629391_)
                                                       (if (gx#stx-pair?
                                                            _hd93569389_)
                                                           (let ((_e93599394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd93569389_)))
                     (let ((_lp-hd93609397_ (##car _e93599394_))
                           (_lp-tl93619399_ (##cdr _e93599394_)))
                       (_loop93589386_
                        _lp-tl93619399_
                        (cons _lp-hd93609397_ _rands93629391_))))
                   (let ((_rands93639402_ (reverse _rands93629391_)))
                     ((lambda (_L9405_)
                        (for-each
                         (lambda (_g94189420_)
                           (apply gxc#compile-e _g94189420_ _args9347_))
                         (begin
                           '#!void
                           (foldr1 (lambda (_g94229425_ _g94239427_)
                                     (cons _g94229425_ _g94239427_))
                                   '()
                                   _L9405_))))
                      _rands93639402_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop93589386_
                                              _target93559381_
                                              '()))
                                           (_g93499368_ _g93509371_)))))
                                 (_g93499368_ _g93509371_))
                             (_g93499368_ _g93509371_))))
                     (_g93499368_ _g93509371_)))))
          (_g93489430_ _stx9346_)))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx9277_)
      (let ((_g92799296_
             (lambda (_g92809293_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g92809293_))))
        (let ((_g92789343_
               (lambda (_g92809299_)
                 (if (gx#stx-pair? _g92809299_)
                     (let ((_e92839301_ (gx#stx-e _g92809299_)))
                       (let ((_hd92849304_ (##car _e92839301_))
                             (_tl92859306_ (##cdr _e92839301_)))
                         (if (gx#stx-pair? _tl92859306_)
                             (let ((_e92869309_ (gx#stx-e _tl92859306_)))
                               (let ((_hd92879312_ (##car _e92869309_))
                                     (_tl92889314_ (##cdr _e92869309_)))
                                 (if (gx#stx-pair? _tl92889314_)
                                     (let ((_e92899317_
                                            (gx#stx-e _tl92889314_)))
                                       (let ((_hd92909320_ (##car _e92899317_))
                                             (_tl92919322_
                                              (##cdr _e92899317_)))
                                         (if (gx#stx-null? _tl92919322_)
                                             ((lambda (_L9325_ _L9326_)
                                                (gx#stx-for-each1
                                                 (lambda (_bind9341_)
                                                   (if (gx#identifier?
                                                        _bind9341_)
                                                       (gxc#add-module-binding!
                                                        _bind9341_
                                                        '#f)
                                                       '#!void))
                                                 _L9326_))
                                              _hd92909320_
                                              _hd92879312_)
                                             (_g92799296_ _g92809299_))))
                                     (_g92799296_ _g92809299_))))
                             (_g92799296_ _g92809299_))))
                     (_g92799296_ _g92809299_)))))
          (_g92789343_ _stx9277_)))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx9210_)
      (let ((_g92129229_
             (lambda (_g92139226_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g92139226_))))
        (let ((_g92119274_
               (lambda (_g92139232_)
                 (if (gx#stx-pair? _g92139232_)
                     (let ((_e92169234_ (gx#stx-e _g92139232_)))
                       (let ((_hd92179237_ (##car _e92169234_))
                             (_tl92189239_ (##cdr _e92169234_)))
                         (if (gx#stx-pair? _tl92189239_)
                             (let ((_e92199242_ (gx#stx-e _tl92189239_)))
                               (let ((_hd92209245_ (##car _e92199242_))
                                     (_tl92219247_ (##cdr _e92199242_)))
                                 (if (gx#stx-pair? _tl92219247_)
                                     (let ((_e92229250_
                                            (gx#stx-e _tl92219247_)))
                                       (let ((_hd92239253_ (##car _e92229250_))
                                             (_tl92249255_
                                              (##cdr _e92229250_)))
                                         (if (gx#stx-null? _tl92249255_)
                                             ((lambda (_L9258_ _L9259_)
                                                (gxc#add-module-binding!
                                                 _L9259_
                                                 '#t))
                                              _hd92239253_
                                              _hd92209245_)
                                             (_g92129229_ _g92139232_))))
                                     (_g92129229_ _g92139232_))))
                             (_g92129229_ _g92139232_))))
                     (_g92129229_ _g92139232_)))))
          (_g92119274_ _stx9210_)))))
  (define gxc#lift-modules-module%
    (lambda (_stx9152_ _modules9153_)
      (let ((_g91559169_
             (lambda (_g91569166_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g91569166_))))
        (let ((_g91549207_
               (lambda (_g91569172_)
                 (if (gx#stx-pair? _g91569172_)
                     (let ((_e91599174_ (gx#stx-e _g91569172_)))
                       (let ((_hd91609177_ (##car _e91599174_))
                             (_tl91619179_ (##cdr _e91599174_)))
                         (if (gx#stx-pair? _tl91619179_)
                             (let ((_e91629182_ (gx#stx-e _tl91619179_)))
                               (let ((_hd91639185_ (##car _e91629182_))
                                     (_tl91649187_ (##cdr _e91629182_)))
                                 ((lambda (_L9190_ _L9191_)
                                    (let ((_ctx9204_
                                           (gx#syntax-local-e__0 _L9191_)))
                                      (begin
                                        (set-box!
                                         _modules9153_
                                         (cons _ctx9204_
                                               (unbox _modules9153_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gxc#compile-e
                                            (##structure-ref
                                             _ctx9204_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            _modules9153_))
                                         gx#current-expander-context
                                         _ctx9204_))))
                                  _tl91649187_
                                  _hd91639185_)))
                             (_g91559169_ _g91569172_))))
                     (_g91559169_ _g91569172_)))))
          (_g91549207_ _stx9152_)))))
  (define gxc#add-module-binding!
    (lambda (_id9146_ _syntax?9147_)
      (let ((_eid9149_
             (##structure-ref
              (gx#resolve-identifier__0 _id9146_)
              '1
              gx#binding::t
              '#f))
            (_ht9150_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid9149_)
            '#!void
            (table-set!
             _ht9150_
             _eid9149_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid9149_)
              _syntax?9147_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id9127_)
      (let ((_bind9129_ (gx#resolve-identifier__0 _id9127_)))
        (if _bind9129_
            (let ((_eid9131_ (##structure-ref _bind9129_ '1 gx#binding::t '#f))
                  (_ht9132_
                   (##structure-ref
                    (gxc#current-compile-symbol-table)
                    '2
                    gxc#symbol-table::t
                    '#f)))
              (if (interned-symbol? _eid9131_)
                  _eid9131_
                  (let ((_$e9134_ (table-ref _ht9132_ _eid9131_ '#f)))
                    (if _$e9134_
                        (values _$e9134_)
                        (if (##structure-instance-of?
                             _bind9129_
                             'gx#local-binding::t)
                            (let ((_gid9137_
                                   (gxc#generate-runtime-gensym-reference__0
                                    _eid9131_)))
                              (begin
                                (table-set! _ht9132_ _eid9131_ _gid9137_)
                                _gid9137_))
                            (if (##structure-instance-of?
                                 _bind9129_
                                 'gx#module-binding::t)
                                (let ((_gid9144_
                                       (let ((_$e9139_
                                              (##structure-ref
                                               (##structure-ref
                                                _bind9129_
                                                '4
                                                gx#module-binding::t
                                                '#f)
                                               '6
                                               gx#module-context::t
                                               '#f)))
                                         (if _$e9139_
                                             ((lambda (_ns9142_)
                                                (make-symbol
                                                 _ns9142_
                                                 '"#"
                                                 _eid9131_))
                                              _$e9139_)
                                             (gxc#generate-runtime-gensym-reference__0
                                              _eid9131_)))))
                                  (begin
                                    (table-set! _ht9132_ _eid9131_ _gid9144_)
                                    _gid9144_))
                                (gxc#raise-compile-error
                                 '"Cannot compile reference to uninterned binding"
                                 _id9127_
                                 _eid9131_
                                 _bind9129_)))))))
            (if (interned-symbol? (gx#stx-e _id9127_))
                (gx#stx-e _id9127_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id9127_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id9125_)
      (if (gx#identifier? _id9125_)
          (gxc#generate-runtime-binding-id _id9125_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__opt-lambda9103
      (lambda (_sym9105_ _quote?9106_)
        (let ((_ht9108_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '1
                gxc#symbol-table::t
                '#f)))
          (let ((_$e9110_ (table-ref _ht9108_ _sym9105_ '#f)))
            (if _$e9110_
                (values _$e9110_)
                (let ((_g9113_ (if _quote?9106_
                                   (make-symbol
                                    '"__"
                                    _sym9105_
                                    '"__"
                                    (gxc#current-compile-timestamp))
                                   (make-symbol '"_" _sym9105_ '"_"))))
                  (begin (table-set! _ht9108_ _sym9105_ _g9113_) _g9113_)))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym9118_)
          (let ((_quote?9120_ '#f))
            (gxc#generate-runtime-gensym-reference__opt-lambda9103
             _sym9118_
             _quote?9120_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g10136_
          (let ((_g10135_ (length _g10136_)))
            (cond ((fx= _g10135_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g10136_))
                  ((fx= _g10135_ 2)
                   (apply gxc#generate-runtime-gensym-reference__opt-lambda9103
                          _g10136_))
                  (else (error "No clause matching arguments" _g10136_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id9102_)
      (gxc#generate-runtime-identifier-key (gx#core-identifier-key _id9102_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key9064_)
      (if (interned-symbol? _key9064_)
          _key9064_
          (if (uninterned-symbol? _key9064_)
              (gxc#generate-runtime-gensym-reference__0 _key9064_)
              (let ((_key90659072_ _key9064_))
                (let ((_E90679076_
                       (lambda ()
                         (error '"No clause matching" _key90659072_))))
                  (let ((_K90689090_
                         (lambda (_mark9079_ _eid9080_)
                           (let ((_$e9082_
                                  (##structure-ref
                                   _mark9079_
                                   '1
                                   gx#expander-mark::t
                                   '#f)))
                             (if _$e9082_
                                 ((lambda (_ht9085_)
                                    (let ((_$e9087_
                                           (table-ref _ht9085_ _eid9080_ '#f)))
                                      (if _$e9087_
                                          (values _$e9087_)
                                          (gxc#generate-runtime-identifier-key
                                           _eid9080_))))
                                  _$e9082_)
                                 (gxc#generate-runtime-identifier-key
                                  _eid9080_))))))
                    (if (##pair? _key90659072_)
                        (let ((_hd90699093_ (##car _key90659072_))
                              (_tl90709095_ (##cdr _key90659072_)))
                          (let ((_eid9098_ _hd90699093_))
                            (let ((_mark9100_ _tl90709095_))
                              (_K90689090_ _mark9100_ _eid9098_))))
                        (_E90679076_)))))))))
  (begin
    (define gxc#generate-runtime-temporary__opt-lambda9049
      (lambda (_top9051_)
        (if _top9051_
            (let ((_ns9053_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi9054_ (gx#current-expander-phi)))
              (if (fxpositive? _phi9054_)
                  (make-symbol
                   _ns9053_
                   '"["
                   (number->string _phi9054_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns9053_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top9060_ '#f))
            (gxc#generate-runtime-temporary__opt-lambda9049 _top9060_))))
      (define gxc#generate-runtime-temporary
        (lambda _g10138_
          (let ((_g10137_ (length _g10138_)))
            (cond ((fx= _g10137_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g10138_))
                  ((fx= _g10137_ 1)
                   (apply gxc#generate-runtime-temporary__opt-lambda9049
                          _g10138_))
                  (else (error "No clause matching arguments" _g10138_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx9048_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx8968_)
      (let ((_g89708980_
             (lambda (_g89718977_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g89718977_))))
        (let ((_g89699045_
               (lambda (_g89718983_)
                 (if (gx#stx-pair? _g89718983_)
                     (let ((_e89738985_ (gx#stx-e _g89718983_)))
                       (let ((_hd89748988_ (##car _e89738985_))
                             (_tl89758990_ (##cdr _e89738985_)))
                         ((lambda (_L8993_)
                            (let ((_body9003_
                                   (gx#stx-map1 gxc#compile-e _L8993_)))
                              (let ((_body9042_
                                     (filter (lambda (_stx9005_)
                                               (let ((_g90089017_
                                                      (lambda (_g90099014_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g90099014_))))
                                                 (let ((_g90079024_
                                                        (lambda (_g90099020_)
                                                          ((lambda () '#t)))))
                                                   (let ((_g90069039_
                                                          (lambda (_g90099027_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g90099027_)
                        (let ((_e90109029_ (gx#stx-e _g90099027_)))
                          (let ((_hd90119032_ (##car _e90109029_))
                                (_tl90129034_ (##cdr _e90109029_)))
                            (if (gx#identifier? _hd90119032_)
                                (if (gx#stx-eq? 'begin _hd90119032_)
                                    (if (gx#stx-null? _tl90129034_)
                                        ((lambda () '#f))
                                        (_g90079024_ _g90099027_))
                                    (_g90079024_ _g90099027_))
                                (_g90079024_ _g90099027_))))
                        (_g90079024_ _g90099027_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g90069039_
                                                      _stx9005_)))))
                                             _body9003_)))
                                (let ()
                                  (if (fx= (length _body9042_) '1)
                                      (car _body9042_)
                                      (cons 'begin _body9042_))))))
                          _tl89758990_)))
                     (_g89708980_ _g89718983_)))))
          (_g89699045_ _stx8968_)))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx8930_)
      (let ((_g89328942_
             (lambda (_g89338939_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g89338939_))))
        (let ((_g89318965_
               (lambda (_g89338945_)
                 (if (gx#stx-pair? _g89338945_)
                     (let ((_e89358947_ (gx#stx-e _g89338945_)))
                       (let ((_hd89368950_ (##car _e89358947_))
                             (_tl89378952_ (##cdr _e89358947_)))
                         ((lambda (_L8955_)
                            (cons 'begin (gx#syntax->datum _L8955_)))
                          _tl89378952_)))
                     (_g89328942_ _g89338945_)))))
          (_g89318965_ _stx8930_)))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx8892_)
      (let ((_g88948904_
             (lambda (_g88958901_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g88958901_))))
        (let ((_g88938927_
               (lambda (_g88958907_)
                 (if (gx#stx-pair? _g88958907_)
                     (let ((_e88978909_ (gx#stx-e _g88958907_)))
                       (let ((_hd88988912_ (##car _e88978909_))
                             (_tl88998914_ (##cdr _e88978909_)))
                         ((lambda (_L8917_)
                            (cons 'declare (map gx#syntax->datum _L8917_)))
                          _tl88998914_)))
                     (_g88948904_ _g88958907_)))))
          (_g88938927_ _stx8892_)))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx8656_)
      (let ((_g86588675_
             (lambda (_g86598672_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g86598672_))))
        (let ((_g86578889_
               (lambda (_g86598678_)
                 (if (gx#stx-pair? _g86598678_)
                     (let ((_e86628680_ (gx#stx-e _g86598678_)))
                       (let ((_hd86638683_ (##car _e86628680_))
                             (_tl86648685_ (##cdr _e86628680_)))
                         (if (gx#stx-pair? _tl86648685_)
                             (let ((_e86658688_ (gx#stx-e _tl86648685_)))
                               (let ((_hd86668691_ (##car _e86658688_))
                                     (_tl86678693_ (##cdr _e86658688_)))
                                 (if (gx#stx-pair? _tl86678693_)
                                     (let ((_e86688696_
                                            (gx#stx-e _tl86678693_)))
                                       (let ((_hd86698699_ (##car _e86688696_))
                                             (_tl86708701_
                                              (##cdr _e86688696_)))
                                         (if (gx#stx-null? _tl86708701_)
                                             ((lambda (_L8704_ _L8705_)
                                                (let ((_g87228735_
                                                       (lambda (_g87238732_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g87238732_))))
                                                  (let ((_g87218849_
                                                         (lambda (_g87238738_)
                                                           ((lambda ()
                                                              (let ((_tmp8742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gxc#generate-runtime-temporary__opt-lambda9049
                              '#t)))
                        (let ((_body8846_
                               ((letrec ((_lp8744_
                                          (lambda (_rest8746_ _k8747_ _r8748_)
                                            (let ((_g87538769_
                                                   (lambda (_g87548766_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g87548766_))))
                                              (let ((_g87528776_
                                                     (lambda (_g87548772_)
                                                       ((lambda ()
                                                          (reverse _r8748_))))))
                                                (let ((_g87518797_
                                                       (lambda (_g87548779_)
                                                         ((lambda (_L8781_)
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L8781_)
                        (foldl1 cons
                                (cons (cons 'define
                                            (cons (gxc#generate-runtime-binding-id
                                                   _L8781_)
                                                  (cons (cons 'values->list
                                                              (cons _tmp8742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _k8747_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())
                                _r8748_)
                        (_g87528776_ _g87548779_)))
                  _g87548779_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g87508821_
                                                         (lambda (_g87548800_)
                                                           (if (gx#stx-pair?
                                                                _g87548800_)
                                                               (let ((_e87618802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _g87548800_)))
                         (let ((_hd87628805_ (##car _e87618802_))
                               (_tl87638807_ (##cdr _e87618802_)))
                           ((lambda (_L8810_ _L8811_)
                              (_lp8744_
                               _L8810_
                               (fx+ _k8747_ '1)
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L8811_)
                                                 (cons (cons 'values-ref
                                                             (cons _tmp8742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k8747_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _r8748_)))
                            _tl87638807_
                            _hd87628805_)))
                       (_g87518797_ _g87548800_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g87498843_
                                                           (lambda (_g87548824_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g87548824_)
                         (let ((_e87568826_ (gx#stx-e _g87548824_)))
                           (let ((_hd87578829_ (##car _e87568826_))
                                 (_tl87588831_ (##cdr _e87568826_)))
                             (if (gx#stx-datum? _hd87578829_)
                                 (if (equal? (gx#stx-e _hd87578829_) '#f)
                                     ((lambda (_L8834_)
                                        (_lp8744_
                                         _L8834_
                                         (fx+ _k8747_ '1)
                                         _r8748_))
                                      _tl87588831_)
                                     (_g87508821_ _g87548824_))
                                 (_g87508821_ _g87548824_))))
                         (_g87508821_ _g87548824_)))))
              (_g87498843_ _rest8746_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp8744_)
                                _L8705_
                                '0
                                '())))
                          (let ()
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons _tmp8742_
                                                    (cons (gxc#compile-e
                                                           _L8704_)
                                                          '())))
                                        (cons (gxc#generate-runtime-check-values
                                               _tmp8742_
                                               _L8705_)
                                              _body8846_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g87208871_
                                                           (lambda (_g87238852_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g87238852_)
                         (let ((_e87288854_ (gx#stx-e _g87238852_)))
                           (let ((_hd87298857_ (##car _e87288854_))
                                 (_tl87308859_ (##cdr _e87288854_)))
                             (if (gx#stx-null? _tl87308859_)
                                 ((lambda (_L8862_)
                                    (cons 'define
                                          (cons (gxc#generate-runtime-binding-id
                                                 _L8862_)
                                                (cons (gxc#compile-e _L8704_)
                                                      '()))))
                                  _hd87298857_)
                                 (_g87218849_ _g87238852_))))
                         (_g87218849_ _g87238852_)))))
              (let ((_g87198886_
                     (lambda (_g87238874_)
                       (if (gx#stx-pair? _g87238874_)
                           (let ((_e87248876_ (gx#stx-e _g87238874_)))
                             (let ((_hd87258879_ (##car _e87248876_))
                                   (_tl87268881_ (##cdr _e87248876_)))
                               (if (gx#stx-datum? _hd87258879_)
                                   (if (equal? (gx#stx-e _hd87258879_) '#f)
                                       (if (gx#stx-null? _tl87268881_)
                                           ((lambda ()
                                              (gxc#compile-e _L8704_)))
                                           (_g87208871_ _g87238874_))
                                       (_g87208871_ _g87238874_))
                                   (_g87208871_ _g87238874_))))
                           (_g87208871_ _g87238874_)))))
                (_g87198886_ _L8705_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd86698699_
                                              _hd86668691_)
                                             (_g86588675_ _g86598678_))))
                                     (_g86588675_ _g86598678_))))
                             (_g86588675_ _g86598678_))))
                     (_g86588675_ _g86598678_)))))
          (_g86578889_ _stx8656_)))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals8644_ _hd8645_)
      (let ((_len8647_ (gx#stx-length _hd8645_)))
        (let ((_cmp8649_ (if (gx#stx-list? _hd8645_) 'fx= 'fx>=)))
          (let ((_errmsg8651_
                 (string-append
                  (if (gx#stx-list? _hd8645_)
                      '"Context expects "
                      '"Context expects at least ")
                  (number->string _len8647_)
                  '" values")))
            (let ((_count8653_ (gxc#generate-runtime-temporary__0)))
              (let ()
                (if (if (not (gx#stx-list? _hd8645_)) (fx= _len8647_ '0) '#f)
                    '#!void
                    (cons 'let
                          (cons (cons (cons _count8653_
                                            (cons (cons 'values-count
                                                        (cons _vals8644_ '()))
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (cons _cmp8649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count8653_ (cons _len8647_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _errmsg8651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count8653_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx8577_)
      (let ((_g85798596_
             (lambda (_g85808593_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g85808593_))))
        (let ((_g85788641_
               (lambda (_g85808599_)
                 (if (gx#stx-pair? _g85808599_)
                     (let ((_e85838601_ (gx#stx-e _g85808599_)))
                       (let ((_hd85848604_ (##car _e85838601_))
                             (_tl85858606_ (##cdr _e85838601_)))
                         (if (gx#stx-pair? _tl85858606_)
                             (let ((_e85868609_ (gx#stx-e _tl85858606_)))
                               (let ((_hd85878612_ (##car _e85868609_))
                                     (_tl85888614_ (##cdr _e85868609_)))
                                 (if (gx#stx-pair? _tl85888614_)
                                     (let ((_e85898617_
                                            (gx#stx-e _tl85888614_)))
                                       (let ((_hd85908620_ (##car _e85898617_))
                                             (_tl85918622_
                                              (##cdr _e85898617_)))
                                         (if (gx#stx-null? _tl85918622_)
                                             ((lambda (_L8625_ _L8626_)
                                                (cons 'lambda
                                                      (cons (gxc#generate-runtime-lambda-head
                                                             _L8626_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L8625_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd85908620_
                                              _hd85878612_)
                                             (_g85798596_ _g85808599_))))
                                     (_g85798596_ _g85808599_))))
                             (_g85798596_ _g85808599_))))
                     (_g85798596_ _g85808599_)))))
          (_g85788641_ _stx8577_)))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd8575_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd8575_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx7112_)
      (let ((_runtime-identifier=?7114_
             (lambda (_id-stx8566_ _sym8567_)
               (let ((_bind85688570_ (gx#resolve-identifier__0 _id-stx8566_)))
                 (if _bind85688570_
                     (let ((_bind8573_ _bind85688570_))
                       (eq? (##structure-ref _bind8573_ '1 gx#binding::t '#f)
                            _sym8567_))
                     '#f)))))
        (let ((_dispatch-case?7115_
               (lambda (_hd7796_ _body7797_)
                 (let ((_form7799_ (cons _hd7796_ (cons _body7797_ '()))))
                   (let ((_g78047961_
                          (lambda (_g78057958_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g78057958_))))
                     (let ((_g78037968_
                            (lambda (_g78057964_) ((lambda () '#f)))))
                       (let ((_g78028109_
                              (lambda (_g78057971_)
                                (if (gx#stx-pair? _g78057971_)
                                    (let ((_e79217973_ (gx#stx-e _g78057971_)))
                                      (let ((_hd79227976_ (##car _e79217973_))
                                            (_tl79237978_ (##cdr _e79217973_)))
                                        (if (gx#stx-pair? _tl79237978_)
                                            (let ((_e79247981_
                                                   (gx#stx-e _tl79237978_)))
                                              (let ((_hd79257984_
                                                     (##car _e79247981_))
                                                    (_tl79267986_
                                                     (##cdr _e79247981_)))
                                                (if (gx#stx-pair? _hd79257984_)
                                                    (let ((_e79277989_
                                                           (gx#stx-e
                                                            _hd79257984_)))
                                                      (let ((_hd79287992_
                                                             (##car _e79277989_))
                                                            (_tl79297994_
                                                             (##cdr _e79277989_)))
                                                        (if (gx#identifier?
                                                             _hd79287992_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd79287992_)
                        (if (gx#stx-pair? _tl79297994_)
                            (let ((_e79307997_ (gx#stx-e _tl79297994_)))
                              (let ((_hd79318000_ (##car _e79307997_))
                                    (_tl79328002_ (##cdr _e79307997_)))
                                (if (gx#stx-pair? _hd79318000_)
                                    (let ((_e79338005_
                                           (gx#stx-e _hd79318000_)))
                                      (let ((_hd79348008_ (##car _e79338005_))
                                            (_tl79358010_ (##cdr _e79338005_)))
                                        (if (gx#identifier? _hd79348008_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd79348008_)
                                                (if (gx#stx-pair? _tl79358010_)
                                                    (let ((_e79368013_
                                                           (gx#stx-e
                                                            _tl79358010_)))
                                                      (let ((_hd79378016_
                                                             (##car _e79368013_))
                                                            (_tl79388018_
                                                             (##cdr _e79368013_)))
                                                        (if (gx#stx-null?
                                                             _tl79388018_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl79328002_)
                        (let ((_e79398021_ (gx#stx-e _tl79328002_)))
                          (let ((_hd79408024_ (##car _e79398021_))
                                (_tl79418026_ (##cdr _e79398021_)))
                            (if (gx#stx-pair? _hd79408024_)
                                (let ((_e79428029_ (gx#stx-e _hd79408024_)))
                                  (let ((_hd79438032_ (##car _e79428029_))
                                        (_tl79448034_ (##cdr _e79428029_)))
                                    (if (gx#identifier? _hd79438032_)
                                        (if (gx#stx-eq? '%#ref _hd79438032_)
                                            (if (gx#stx-pair? _tl79448034_)
                                                (let ((_e79458037_
                                                       (gx#stx-e
                                                        _tl79448034_)))
                                                  (let ((_hd79468040_
                                                         (##car _e79458037_))
                                                        (_tl79478042_
                                                         (##cdr _e79458037_)))
                                                    (if (gx#stx-null?
                                                         _tl79478042_)
                                                        (if (gx#stx-pair?
                                                             _tl79418026_)
                                                            (let ((_e79488045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl79418026_)))
                      (let ((_hd79498048_ (##car _e79488045_))
                            (_tl79508050_ (##cdr _e79488045_)))
                        (if (gx#stx-pair? _hd79498048_)
                            (let ((_e79518053_ (gx#stx-e _hd79498048_)))
                              (let ((_hd79528056_ (##car _e79518053_))
                                    (_tl79538058_ (##cdr _e79518053_)))
                                (if (gx#identifier? _hd79528056_)
                                    (if (gx#stx-eq? '%#ref _hd79528056_)
                                        (if (gx#stx-pair? _tl79538058_)
                                            (let ((_e79548061_
                                                   (gx#stx-e _tl79538058_)))
                                              (let ((_hd79558064_
                                                     (##car _e79548061_))
                                                    (_tl79568066_
                                                     (##cdr _e79548061_)))
                                                (if (gx#stx-null? _tl79568066_)
                                                    (if (gx#stx-null?
                                                         _tl79508050_)
                                                        (if (gx#stx-null?
                                                             _tl79267986_)
                                                            ((lambda (_L8069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L8070_
                              _L8071_
                              _L8072_)
                       (if (if (gx#identifier? _L8072_)
                               (if (_runtime-identifier=?7114_ _L8071_ 'apply)
                                   (if (gx#free-identifier=? _L8072_ _L8069_)
                                       (not (gx#free-identifier=?
                                             _L8070_
                                             _L8072_))
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g78037968_ _g78057971_)))
                     _hd79558064_
                     _hd79468040_
                     _hd79378016_
                     _hd79227976_)
                    (_g78037968_ _g78057971_))
                (_g78037968_ _g78057971_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78037968_
                                                     _g78057971_))))
                                            (_g78037968_ _g78057971_))
                                        (_g78037968_ _g78057971_))
                                    (_g78037968_ _g78057971_))))
                            (_g78037968_ _g78057971_))))
                    (_g78037968_ _g78057971_))
                (_g78037968_ _g78057971_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g78037968_ _g78057971_))
                                            (_g78037968_ _g78057971_))
                                        (_g78037968_ _g78057971_))))
                                (_g78037968_ _g78057971_))))
                        (_g78037968_ _g78057971_))
                    (_g78037968_ _g78057971_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78037968_ _g78057971_))
                                                (_g78037968_ _g78057971_))
                                            (_g78037968_ _g78057971_))))
                                    (_g78037968_ _g78057971_))))
                            (_g78037968_ _g78057971_))
                        (_g78037968_ _g78057971_))
                    (_g78037968_ _g78057971_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78037968_
                                                     _g78057971_))))
                                            (_g78037968_ _g78057971_))))
                                    (_g78037968_ _g78057971_)))))
                         (let ((_g78018369_
                                (lambda (_g78058112_)
                                  (if (gx#stx-pair? _g78058112_)
                                      (let ((_e78578114_
                                             (gx#stx-e _g78058112_)))
                                        (let ((_hd78588117_
                                               (##car _e78578114_))
                                              (_tl78598119_
                                               (##cdr _e78578114_)))
                                          (if (gx#stx-pair/null? _hd78588117_)
                                              (if (fx>= (gx#stx-length
                                                         _hd78588117_)
                                                        '0)
                                                  (let ((_g10147_
                                                         (gx#syntax-split-splice
                                                          _hd78588117_
                                                          '0)))
                                                    (begin
                                                      (let ((_g10148_
                                                             (values-count
                                                              _g10147_)))
                                                        (if (not (fx= _g10148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g10148_)))
              (let ((_target78608122_ (values-ref _g10147_ 0))
                    (_tl78628124_ (values-ref _g10147_ 1)))
                (letrec ((_loop78638127_
                          (lambda (_hd78618130_ _arg78678132_)
                            (if (gx#stx-pair? _hd78618130_)
                                (let ((_e78648135_ (gx#stx-e _hd78618130_)))
                                  (let ((_lp-hd78658138_ (##car _e78648135_))
                                        (_lp-tl78668140_ (##cdr _e78648135_)))
                                    (_loop78638127_
                                     _lp-tl78668140_
                                     (cons _lp-hd78658138_ _arg78678132_))))
                                (let ((_arg78688143_ (reverse _arg78678132_)))
                                  (if (gx#stx-pair? _tl78598119_)
                                      (let ((_e78698146_
                                             (gx#stx-e _tl78598119_)))
                                        (let ((_hd78708149_
                                               (##car _e78698146_))
                                              (_tl78718151_
                                               (##cdr _e78698146_)))
                                          (if (gx#stx-pair? _hd78708149_)
                                              (let ((_e78728154_
                                                     (gx#stx-e _hd78708149_)))
                                                (let ((_hd78738157_
                                                       (##car _e78728154_))
                                                      (_tl78748159_
                                                       (##cdr _e78728154_)))
                                                  (if (gx#identifier?
                                                       _hd78738157_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd78738157_)
                                                          (if (gx#stx-pair?
                                                               _tl78748159_)
                                                              (let ((_e78758162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl78748159_)))
                        (let ((_hd78768165_ (##car _e78758162_))
                              (_tl78778167_ (##cdr _e78758162_)))
                          (if (gx#stx-pair? _hd78768165_)
                              (let ((_e78788170_ (gx#stx-e _hd78768165_)))
                                (let ((_hd78798173_ (##car _e78788170_))
                                      (_tl78808175_ (##cdr _e78788170_)))
                                  (if (gx#identifier? _hd78798173_)
                                      (if (gx#stx-eq? '%#ref _hd78798173_)
                                          (if (gx#stx-pair? _tl78808175_)
                                              (let ((_e78818178_
                                                     (gx#stx-e _tl78808175_)))
                                                (let ((_hd78828181_
                                                       (##car _e78818178_))
                                                      (_tl78838183_
                                                       (##cdr _e78818178_)))
                                                  (if (gx#stx-null?
                                                       _tl78838183_)
                                                      (if (gx#stx-pair?
                                                           _tl78778167_)
                                                          (let ((_e78848186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl78778167_)))
                    (let ((_hd78858189_ (##car _e78848186_))
                          (_tl78868191_ (##cdr _e78848186_)))
                      (if (gx#stx-pair? _hd78858189_)
                          (let ((_e78878194_ (gx#stx-e _hd78858189_)))
                            (let ((_hd78888197_ (##car _e78878194_))
                                  (_tl78898199_ (##cdr _e78878194_)))
                              (if (gx#identifier? _hd78888197_)
                                  (if (gx#stx-eq? '%#ref _hd78888197_)
                                      (if (gx#stx-pair? _tl78898199_)
                                          (let ((_e78908202_
                                                 (gx#stx-e _tl78898199_)))
                                            (let ((_hd78918205_
                                                   (##car _e78908202_))
                                                  (_tl78928207_
                                                   (##cdr _e78908202_)))
                                              (if (gx#stx-null? _tl78928207_)
                                                  (if (gx#stx-pair/null?
                                                       _tl78868191_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl78868191_)
                        '1)
                  (let ((_g10149_ (gx#syntax-split-splice _tl78868191_ '1)))
                    (begin
                      (let ((_g10150_ (values-count _g10149_)))
                        (if (not (fx= _g10150_ 2))
                            (error "Context expects 2 values" _g10150_)))
                      (let ((_target78938210_ (values-ref _g10149_ 0))
                            (_tl78958212_ (values-ref _g10149_ 1)))
                        (if (gx#stx-pair? _tl78958212_)
                            (let ((_e79028215_ (gx#stx-e _tl78958212_)))
                              (let ((_hd79038218_ (##car _e79028215_))
                                    (_tl79048220_ (##cdr _e79028215_)))
                                (if (gx#stx-pair? _hd79038218_)
                                    (let ((_e79058223_
                                           (gx#stx-e _hd79038218_)))
                                      (let ((_hd79068226_ (##car _e79058223_))
                                            (_tl79078228_ (##cdr _e79058223_)))
                                        (if (gx#identifier? _hd79068226_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd79068226_)
                                                (if (gx#stx-pair? _tl79078228_)
                                                    (let ((_e79088231_
                                                           (gx#stx-e
                                                            _tl79078228_)))
                                                      (let ((_hd79098234_
                                                             (##car _e79088231_))
                                                            (_tl79108236_
                                                             (##cdr _e79088231_)))
                                                        (if (gx#stx-null?
                                                             _tl79108236_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl79048220_)
                        (letrec ((_loop78968239_
                                  (lambda (_hd78948242_ _xarg79008244_)
                                    (if (gx#stx-pair? _hd78948242_)
                                        (let ((_e78978247_
                                               (gx#stx-e _hd78948242_)))
                                          (let ((_lp-hd78988250_
                                                 (##car _e78978247_))
                                                (_lp-tl78998252_
                                                 (##cdr _e78978247_)))
                                            (if (gx#stx-pair? _lp-hd78988250_)
                                                (let ((_e79118255_
                                                       (gx#stx-e
                                                        _lp-hd78988250_)))
                                                  (let ((_hd79128258_
                                                         (##car _e79118255_))
                                                        (_tl79138260_
                                                         (##cdr _e79118255_)))
                                                    (if (gx#identifier?
                                                         _hd79128258_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd79128258_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl79138260_)
                        (let ((_e79148263_ (gx#stx-e _tl79138260_)))
                          (let ((_hd79158266_ (##car _e79148263_))
                                (_tl79168268_ (##cdr _e79148263_)))
                            (if (gx#stx-null? _tl79168268_)
                                (_loop78968239_
                                 _lp-tl78998252_
                                 (cons _hd79158266_ _xarg79008244_))
                                (_g78028109_ _g78058112_))))
                        (_g78028109_ _g78058112_))
                    (_g78028109_ _g78058112_))
                (_g78028109_ _g78058112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g78028109_ _g78058112_))))
                                        (let ((_xarg79018271_
                                               (reverse _xarg79008244_)))
                                          (if (gx#stx-null? _tl78718151_)
                                              ((lambda (_L8274_
                                                        _L8275_
                                                        _L8276_
                                                        _L8277_
                                                        _L8278_
                                                        _L8279_)
                                                 (if (if (gx#identifier-list?
                                                          (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g83228325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g83238327_)
                              (cons _g83228325_ _g83238327_))
                            '()
                            _L8279_)))
                 (if (gx#identifier? _L8278_)
                     (if (_runtime-identifier=?7114_ _L8277_ 'apply)
                         (if (fx= (length (begin
                                            '#!void
                                            (foldr1 (lambda (_g83298332_
                                                             _g83308334_)
                                                      (cons _g83298332_
                                                            _g83308334_))
                                                    '()
                                                    _L8279_)))
                                  (length (begin
                                            '#!void
                                            (foldr1 (lambda (_g83368339_
                                                             _g83378341_)
                                                      (cons _g83368339_
                                                            _g83378341_))
                                                    '()
                                                    _L8275_))))
                             (if (andmap gx#free-identifier=?
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g83438346_
                                                            _g83448348_)
                                                     (cons _g83438346_
                                                           _g83448348_))
                                                   '()
                                                   _L8279_))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g83508353_
                                                            _g83518355_)
                                                     (cons _g83508353_
                                                           _g83518355_))
                                                   '()
                                                   _L8275_)))
                                 (if (gx#free-identifier=? _L8278_ _L8274_)
                                     (not (find (lambda (_g83578359_)
                                                  (gx#free-identifier=?
                                                   _g83578359_
                                                   _L8276_))
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g83618364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g83628366_)
                    (cons _g83618364_ _g83628366_))
                  (cons _L8278_ '())
                  _L8279_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '#f)
                                 '#f)
                             '#f)
                         '#f)
                     '#f)
                 '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t
                                                     (_g78028109_
                                                      _g78058112_)))
                                               _hd79098234_
                                               _xarg79018271_
                                               _hd78918205_
                                               _hd78828181_
                                               _tl78628124_
                                               _arg78688143_)
                                              (_g78028109_ _g78058112_)))))))
                          (_loop78968239_ _target78938210_ '()))
                        (_g78028109_ _g78058112_))
                    (_g78028109_ _g78058112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78028109_ _g78058112_))
                                                (_g78028109_ _g78058112_))
                                            (_g78028109_ _g78058112_))))
                                    (_g78028109_ _g78058112_))))
                            (_g78028109_ _g78058112_)))))
                  (_g78028109_ _g78058112_))
              (_g78028109_ _g78058112_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g78028109_ _g78058112_))))
                                          (_g78028109_ _g78058112_))
                                      (_g78028109_ _g78058112_))
                                  (_g78028109_ _g78058112_))))
                          (_g78028109_ _g78058112_))))
                  (_g78028109_ _g78058112_))
              (_g78028109_ _g78058112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g78028109_ _g78058112_))
                                          (_g78028109_ _g78058112_))
                                      (_g78028109_ _g78058112_))))
                              (_g78028109_ _g78058112_))))
                      (_g78028109_ _g78058112_))
                  (_g78028109_ _g78058112_))
              (_g78028109_ _g78058112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g78028109_ _g78058112_))))
                                      (_g78028109_ _g78058112_)))))))
                  (_loop78638127_ _target78608122_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g78028109_ _g78058112_))
                                              (_g78028109_ _g78058112_))))
                                      (_g78028109_ _g78058112_)))))
                           (let ((_g78008563_
                                  (lambda (_g78058372_)
                                    (if (gx#stx-pair? _g78058372_)
                                        (let ((_e78098374_
                                               (gx#stx-e _g78058372_)))
                                          (let ((_hd78108377_
                                                 (##car _e78098374_))
                                                (_tl78118379_
                                                 (##cdr _e78098374_)))
                                            (if (gx#stx-pair/null?
                                                 _hd78108377_)
                                                (if (fx>= (gx#stx-length
                                                           _hd78108377_)
                                                          '0)
                                                    (let ((_g10151_
                                                           (gx#syntax-split-splice
                                                            _hd78108377_
                                                            '0)))
                                                      (begin
                                                        (let ((_g10152_
                                                               (values-count
                                                                _g10151_)))
                                                          (if (not (fx= _g10152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g10152_)))
                (let ((_target78128382_ (values-ref _g10151_ 0))
                      (_tl78148384_ (values-ref _g10151_ 1)))
                  (if (gx#stx-null? _tl78148384_)
                      (letrec ((_loop78158387_
                                (lambda (_hd78138390_ _arg78198392_)
                                  (if (gx#stx-pair? _hd78138390_)
                                      (let ((_e78168395_
                                             (gx#stx-e _hd78138390_)))
                                        (let ((_lp-hd78178398_
                                               (##car _e78168395_))
                                              (_lp-tl78188400_
                                               (##cdr _e78168395_)))
                                          (_loop78158387_
                                           _lp-tl78188400_
                                           (cons _lp-hd78178398_
                                                 _arg78198392_))))
                                      (let ((_arg78208403_
                                             (reverse _arg78198392_)))
                                        (if (gx#stx-pair? _tl78118379_)
                                            (let ((_e78218406_
                                                   (gx#stx-e _tl78118379_)))
                                              (let ((_hd78228409_
                                                     (##car _e78218406_))
                                                    (_tl78238411_
                                                     (##cdr _e78218406_)))
                                                (if (gx#stx-pair? _hd78228409_)
                                                    (let ((_e78248414_
                                                           (gx#stx-e
                                                            _hd78228409_)))
                                                      (let ((_hd78258417_
                                                             (##car _e78248414_))
                                                            (_tl78268419_
                                                             (##cdr _e78248414_)))
                                                        (if (gx#identifier?
                                                             _hd78258417_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd78258417_)
                        (if (gx#stx-pair? _tl78268419_)
                            (let ((_e78278422_ (gx#stx-e _tl78268419_)))
                              (let ((_hd78288425_ (##car _e78278422_))
                                    (_tl78298427_ (##cdr _e78278422_)))
                                (if (gx#stx-pair? _hd78288425_)
                                    (let ((_e78308430_
                                           (gx#stx-e _hd78288425_)))
                                      (let ((_hd78318433_ (##car _e78308430_))
                                            (_tl78328435_ (##cdr _e78308430_)))
                                        (if (gx#identifier? _hd78318433_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd78318433_)
                                                (if (gx#stx-pair? _tl78328435_)
                                                    (let ((_e78338438_
                                                           (gx#stx-e
                                                            _tl78328435_)))
                                                      (let ((_hd78348441_
                                                             (##car _e78338438_))
                                                            (_tl78358443_
                                                             (##cdr _e78338438_)))
                                                        (if (gx#stx-null?
                                                             _tl78358443_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl78298427_)
                        (if (fx>= (gx#stx-length _tl78298427_) '0)
                            (let ((_g10153_
                                   (gx#syntax-split-splice _tl78298427_ '0)))
                              (begin
                                (let ((_g10154_ (values-count _g10153_)))
                                  (if (not (fx= _g10154_ 2))
                                      (error "Context expects 2 values"
                                             _g10154_)))
                                (let ((_target78368446_
                                       (values-ref _g10153_ 0))
                                      (_tl78388448_ (values-ref _g10153_ 1)))
                                  (if (gx#stx-null? _tl78388448_)
                                      (letrec ((_loop78398451_
                                                (lambda (_hd78378454_
                                                         _xarg78438456_)
                                                  (if (gx#stx-pair?
                                                       _hd78378454_)
                                                      (let ((_e78408459_
                                                             (gx#stx-e
                                                              _hd78378454_)))
                                                        (let ((_lp-hd78418462_
                                                               (##car _e78408459_))
                                                              (_lp-tl78428464_
                                                               (##cdr _e78408459_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd78418462_)
                                                              (let ((_e78458467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd78418462_)))
                        (let ((_hd78468470_ (##car _e78458467_))
                              (_tl78478472_ (##cdr _e78458467_)))
                          (if (gx#identifier? _hd78468470_)
                              (if (gx#stx-eq? '%#ref _hd78468470_)
                                  (if (gx#stx-pair? _tl78478472_)
                                      (let ((_e78488475_
                                             (gx#stx-e _tl78478472_)))
                                        (let ((_hd78498478_
                                               (##car _e78488475_))
                                              (_tl78508480_
                                               (##cdr _e78488475_)))
                                          (if (gx#stx-null? _tl78508480_)
                                              (_loop78398451_
                                               _lp-tl78428464_
                                               (cons _hd78498478_
                                                     _xarg78438456_))
                                              (_g78018369_ _g78058372_))))
                                      (_g78018369_ _g78058372_))
                                  (_g78018369_ _g78058372_))
                              (_g78018369_ _g78058372_))))
                      (_g78018369_ _g78058372_))))
              (let ((_xarg78448483_ (reverse _xarg78438456_)))
                (if (gx#stx-null? _tl78238411_)
                    ((lambda (_L8486_ _L8487_ _L8488_)
                       (if (if (gx#identifier-list?
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g85168519_ _g85178521_)
                                            (cons _g85168519_ _g85178521_))
                                          '()
                                          _L8488_)))
                               (if (fx= (length (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g85238526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g85248528_)
                    (cons _g85238526_ _g85248528_))
                  '()
                  _L8488_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (length (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g85308533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g85318535_)
                    (cons _g85308533_ _g85318535_))
                  '()
                  _L8486_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (andmap gx#free-identifier=?
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g85378540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g85388542_)
                   (cons _g85378540_ _g85388542_))
                 '()
                 _L8488_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g85448547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g85458549_)
                   (cons _g85448547_ _g85458549_))
                 '()
                 _L8486_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (not (find (lambda (_g85518553_)
                                                    (gx#free-identifier=?
                                                     _g85518553_
                                                     _L8487_))
                                                  (begin
                                                    '#!void
                                                    (foldr1 (lambda (_g85558558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g85568560_)
                      (cons _g85558558_ _g85568560_))
                    '()
                    _L8488_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g78018369_ _g78058372_)))
                     _xarg78448483_
                     _hd78348441_
                     _arg78208403_)
                    (_g78018369_ _g78058372_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop78398451_ _target78368446_ '()))
                                      (_g78018369_ _g78058372_)))))
                            (_g78018369_ _g78058372_))
                        (_g78018369_ _g78058372_))
                    (_g78018369_ _g78058372_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78018369_ _g78058372_))
                                                (_g78018369_ _g78058372_))
                                            (_g78018369_ _g78058372_))))
                                    (_g78018369_ _g78058372_))))
                            (_g78018369_ _g78058372_))
                        (_g78018369_ _g78058372_))
                    (_g78018369_ _g78058372_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78018369_
                                                     _g78058372_))))
                                            (_g78018369_ _g78058372_)))))))
                        (_loop78158387_ _target78128382_ '()))
                      (_g78018369_ _g78058372_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78018369_ _g78058372_))
                                                (_g78018369_ _g78058372_))))
                                        (_g78018369_ _g78058372_)))))
                             (_g78008563_ _form7799_))))))))))
          (let ((_dispatch-case-e7116_
                 (lambda (_hd7260_ _body7261_)
                   (let ((_form7263_ (cons _hd7260_ (cons _body7261_ '()))))
                     (let ((_g72677391_
                            (lambda (_g72687388_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g72687388_))))
                       (let ((_g72667509_
                              (lambda (_g72687394_)
                                (if (gx#stx-pair? _g72687394_)
                                    (let ((_e73577396_ (gx#stx-e _g72687394_)))
                                      (let ((_hd73587399_ (##car _e73577396_))
                                            (_tl73597401_ (##cdr _e73577396_)))
                                        (if (gx#stx-pair? _tl73597401_)
                                            (let ((_e73607404_
                                                   (gx#stx-e _tl73597401_)))
                                              (let ((_hd73617407_
                                                     (##car _e73607404_))
                                                    (_tl73627409_
                                                     (##cdr _e73607404_)))
                                                (if (gx#stx-pair? _hd73617407_)
                                                    (let ((_e73637412_
                                                           (gx#stx-e
                                                            _hd73617407_)))
                                                      (let ((_hd73647415_
                                                             (##car _e73637412_))
                                                            (_tl73657417_
                                                             (##cdr _e73637412_)))
                                                        (if (gx#identifier?
                                                             _hd73647415_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd73647415_)
                        (if (gx#stx-pair? _tl73657417_)
                            (let ((_e73667420_ (gx#stx-e _tl73657417_)))
                              (let ((_hd73677423_ (##car _e73667420_))
                                    (_tl73687425_ (##cdr _e73667420_)))
                                (if (gx#stx-pair? _hd73677423_)
                                    (let ((_e73697428_
                                           (gx#stx-e _hd73677423_)))
                                      (let ((_hd73707431_ (##car _e73697428_))
                                            (_tl73717433_ (##cdr _e73697428_)))
                                        (if (gx#identifier? _hd73707431_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd73707431_)
                                                (if (gx#stx-pair? _tl73717433_)
                                                    (let ((_e73727436_
                                                           (gx#stx-e
                                                            _tl73717433_)))
                                                      (let ((_hd73737439_
                                                             (##car _e73727436_))
                                                            (_tl73747441_
                                                             (##cdr _e73727436_)))
                                                        (if (gx#stx-null?
                                                             _tl73747441_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl73687425_)
                        (let ((_e73757444_ (gx#stx-e _tl73687425_)))
                          (let ((_hd73767447_ (##car _e73757444_))
                                (_tl73777449_ (##cdr _e73757444_)))
                            (if (gx#stx-pair? _hd73767447_)
                                (let ((_e73787452_ (gx#stx-e _hd73767447_)))
                                  (let ((_hd73797455_ (##car _e73787452_))
                                        (_tl73807457_ (##cdr _e73787452_)))
                                    (if (gx#identifier? _hd73797455_)
                                        (if (gx#stx-eq? '%#ref _hd73797455_)
                                            (if (gx#stx-pair? _tl73807457_)
                                                (let ((_e73817460_
                                                       (gx#stx-e
                                                        _tl73807457_)))
                                                  (let ((_hd73827463_
                                                         (##car _e73817460_))
                                                        (_tl73837465_
                                                         (##cdr _e73817460_)))
                                                    (if (gx#stx-null?
                                                         _tl73837465_)
                                                        (if (gx#stx-pair?
                                                             _tl73777449_)
                                                            (let ((_e73847468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl73777449_)))
                      (let ((_hd73857471_ (##car _e73847468_))
                            (_tl73867473_ (##cdr _e73847468_)))
                        (if (gx#stx-null? _tl73867473_)
                            (if (gx#stx-null? _tl73627409_)
                                ((lambda (_L7476_ _L7477_ _L7478_)
                                   (gxc#compile-e
                                    (cons (gx#datum->syntax__0 '#f '%#ref)
                                          (cons _L7476_ '()))))
                                 _hd73827463_
                                 _hd73737439_
                                 _hd73587399_)
                                (_g72677391_ _g72687394_))
                            (_g72677391_ _g72687394_))))
                    (_g72677391_ _g72687394_))
                (_g72677391_ _g72687394_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g72677391_ _g72687394_))
                                            (_g72677391_ _g72687394_))
                                        (_g72677391_ _g72687394_))))
                                (_g72677391_ _g72687394_))))
                        (_g72677391_ _g72687394_))
                    (_g72677391_ _g72687394_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72677391_ _g72687394_))
                                                (_g72677391_ _g72687394_))
                                            (_g72677391_ _g72687394_))))
                                    (_g72677391_ _g72687394_))))
                            (_g72677391_ _g72687394_))
                        (_g72677391_ _g72687394_))
                    (_g72677391_ _g72687394_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72677391_
                                                     _g72687394_))))
                                            (_g72677391_ _g72687394_))))
                                    (_g72677391_ _g72687394_)))))
                         (let ((_g72657645_
                                (lambda (_g72687512_)
                                  (if (gx#stx-pair? _g72687512_)
                                      (let ((_e73187514_
                                             (gx#stx-e _g72687512_)))
                                        (let ((_hd73197517_
                                               (##car _e73187514_))
                                              (_tl73207519_
                                               (##cdr _e73187514_)))
                                          (if (gx#stx-pair/null? _hd73197517_)
                                              (if (fx>= (gx#stx-length
                                                         _hd73197517_)
                                                        '0)
                                                  (let ((_g10141_
                                                         (gx#syntax-split-splice
                                                          _hd73197517_
                                                          '0)))
                                                    (begin
                                                      (let ((_g10142_
                                                             (values-count
                                                              _g10141_)))
                                                        (if (not (fx= _g10142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g10142_)))
              (let ((_target73217522_ (values-ref _g10141_ 0))
                    (_tl73237524_ (values-ref _g10141_ 1)))
                (letrec ((_loop73247527_
                          (lambda (_hd73227530_ _arg73287532_)
                            (if (gx#stx-pair? _hd73227530_)
                                (let ((_e73257535_ (gx#stx-e _hd73227530_)))
                                  (let ((_lp-hd73267538_ (##car _e73257535_))
                                        (_lp-tl73277540_ (##cdr _e73257535_)))
                                    (_loop73247527_
                                     _lp-tl73277540_
                                     (cons _lp-hd73267538_ _arg73287532_))))
                                (let ((_arg73297543_ (reverse _arg73287532_)))
                                  (if (gx#stx-pair? _tl73207519_)
                                      (let ((_e73307546_
                                             (gx#stx-e _tl73207519_)))
                                        (let ((_hd73317549_
                                               (##car _e73307546_))
                                              (_tl73327551_
                                               (##cdr _e73307546_)))
                                          (if (gx#stx-pair? _hd73317549_)
                                              (let ((_e73337554_
                                                     (gx#stx-e _hd73317549_)))
                                                (let ((_hd73347557_
                                                       (##car _e73337554_))
                                                      (_tl73357559_
                                                       (##cdr _e73337554_)))
                                                  (if (gx#identifier?
                                                       _hd73347557_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd73347557_)
                                                          (if (gx#stx-pair?
                                                               _tl73357559_)
                                                              (let ((_e73367562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl73357559_)))
                        (let ((_hd73377565_ (##car _e73367562_))
                              (_tl73387567_ (##cdr _e73367562_)))
                          (if (gx#stx-pair? _hd73377565_)
                              (let ((_e73397570_ (gx#stx-e _hd73377565_)))
                                (let ((_hd73407573_ (##car _e73397570_))
                                      (_tl73417575_ (##cdr _e73397570_)))
                                  (if (gx#identifier? _hd73407573_)
                                      (if (gx#stx-eq? '%#ref _hd73407573_)
                                          (if (gx#stx-pair? _tl73417575_)
                                              (let ((_e73427578_
                                                     (gx#stx-e _tl73417575_)))
                                                (let ((_hd73437581_
                                                       (##car _e73427578_))
                                                      (_tl73447583_
                                                       (##cdr _e73427578_)))
                                                  (if (gx#stx-null?
                                                       _tl73447583_)
                                                      (if (gx#stx-pair?
                                                           _tl73387567_)
                                                          (let ((_e73457586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl73387567_)))
                    (let ((_hd73467589_ (##car _e73457586_))
                          (_tl73477591_ (##cdr _e73457586_)))
                      (if (gx#stx-pair? _hd73467589_)
                          (let ((_e73487594_ (gx#stx-e _hd73467589_)))
                            (let ((_hd73497597_ (##car _e73487594_))
                                  (_tl73507599_ (##cdr _e73487594_)))
                              (if (gx#identifier? _hd73497597_)
                                  (if (gx#stx-eq? '%#ref _hd73497597_)
                                      (if (gx#stx-pair? _tl73507599_)
                                          (let ((_e73517602_
                                                 (gx#stx-e _tl73507599_)))
                                            (let ((_hd73527605_
                                                   (##car _e73517602_))
                                                  (_tl73537607_
                                                   (##cdr _e73517602_)))
                                              (if (gx#stx-null? _tl73537607_)
                                                  (if (gx#stx-null?
                                                       _tl73327551_)
                                                      ((lambda (_L7610_
                                                                _L7611_
                                                                _L7612_
                                                                _L7613_)
                                                         (gxc#compile-e
                                                          (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '%#ref)
                        (cons _L7610_ '()))))
               _hd73527605_
               _hd73437581_
               _tl73237524_
               _arg73297543_)
              (_g72667509_ _g72687512_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g72667509_ _g72687512_))))
                                          (_g72667509_ _g72687512_))
                                      (_g72667509_ _g72687512_))
                                  (_g72667509_ _g72687512_))))
                          (_g72667509_ _g72687512_))))
                  (_g72667509_ _g72687512_))
              (_g72667509_ _g72687512_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g72667509_ _g72687512_))
                                          (_g72667509_ _g72687512_))
                                      (_g72667509_ _g72687512_))))
                              (_g72667509_ _g72687512_))))
                      (_g72667509_ _g72687512_))
                  (_g72667509_ _g72687512_))
              (_g72667509_ _g72687512_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g72667509_ _g72687512_))))
                                      (_g72667509_ _g72687512_)))))))
                  (_loop73247527_ _target73217522_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g72667509_ _g72687512_))
                                              (_g72667509_ _g72687512_))))
                                      (_g72667509_ _g72687512_)))))
                           (let ((_g72647793_
                                  (lambda (_g72687648_)
                                    (if (gx#stx-pair? _g72687648_)
                                        (let ((_e72727650_
                                               (gx#stx-e _g72687648_)))
                                          (let ((_hd72737653_
                                                 (##car _e72727650_))
                                                (_tl72747655_
                                                 (##cdr _e72727650_)))
                                            (if (gx#stx-pair/null?
                                                 _hd72737653_)
                                                (if (fx>= (gx#stx-length
                                                           _hd72737653_)
                                                          '0)
                                                    (let ((_g10143_
                                                           (gx#syntax-split-splice
                                                            _hd72737653_
                                                            '0)))
                                                      (begin
                                                        (let ((_g10144_
                                                               (values-count
                                                                _g10143_)))
                                                          (if (not (fx= _g10144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g10144_)))
                (let ((_target72757658_ (values-ref _g10143_ 0))
                      (_tl72777660_ (values-ref _g10143_ 1)))
                  (if (gx#stx-null? _tl72777660_)
                      (letrec ((_loop72787663_
                                (lambda (_hd72767666_ _arg72827668_)
                                  (if (gx#stx-pair? _hd72767666_)
                                      (let ((_e72797671_
                                             (gx#stx-e _hd72767666_)))
                                        (let ((_lp-hd72807674_
                                               (##car _e72797671_))
                                              (_lp-tl72817676_
                                               (##cdr _e72797671_)))
                                          (_loop72787663_
                                           _lp-tl72817676_
                                           (cons _lp-hd72807674_
                                                 _arg72827668_))))
                                      (let ((_arg72837679_
                                             (reverse _arg72827668_)))
                                        (if (gx#stx-pair? _tl72747655_)
                                            (let ((_e72847682_
                                                   (gx#stx-e _tl72747655_)))
                                              (let ((_hd72857685_
                                                     (##car _e72847682_))
                                                    (_tl72867687_
                                                     (##cdr _e72847682_)))
                                                (if (gx#stx-pair? _hd72857685_)
                                                    (let ((_e72877690_
                                                           (gx#stx-e
                                                            _hd72857685_)))
                                                      (let ((_hd72887693_
                                                             (##car _e72877690_))
                                                            (_tl72897695_
                                                             (##cdr _e72877690_)))
                                                        (if (gx#identifier?
                                                             _hd72887693_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd72887693_)
                        (if (gx#stx-pair? _tl72897695_)
                            (let ((_e72907698_ (gx#stx-e _tl72897695_)))
                              (let ((_hd72917701_ (##car _e72907698_))
                                    (_tl72927703_ (##cdr _e72907698_)))
                                (if (gx#stx-pair? _hd72917701_)
                                    (let ((_e72937706_
                                           (gx#stx-e _hd72917701_)))
                                      (let ((_hd72947709_ (##car _e72937706_))
                                            (_tl72957711_ (##cdr _e72937706_)))
                                        (if (gx#identifier? _hd72947709_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd72947709_)
                                                (if (gx#stx-pair? _tl72957711_)
                                                    (let ((_e72967714_
                                                           (gx#stx-e
                                                            _tl72957711_)))
                                                      (let ((_hd72977717_
                                                             (##car _e72967714_))
                                                            (_tl72987719_
                                                             (##cdr _e72967714_)))
                                                        (if (gx#stx-null?
                                                             _tl72987719_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl72927703_)
                        (if (fx>= (gx#stx-length _tl72927703_) '0)
                            (let ((_g10145_
                                   (gx#syntax-split-splice _tl72927703_ '0)))
                              (begin
                                (let ((_g10146_ (values-count _g10145_)))
                                  (if (not (fx= _g10146_ 2))
                                      (error "Context expects 2 values"
                                             _g10146_)))
                                (let ((_target72997722_
                                       (values-ref _g10145_ 0))
                                      (_tl73017724_ (values-ref _g10145_ 1)))
                                  (if (gx#stx-null? _tl73017724_)
                                      (letrec ((_loop73027727_
                                                (lambda (_hd73007730_
                                                         _xarg73067732_)
                                                  (if (gx#stx-pair?
                                                       _hd73007730_)
                                                      (let ((_e73037735_
                                                             (gx#stx-e
                                                              _hd73007730_)))
                                                        (let ((_lp-hd73047738_
                                                               (##car _e73037735_))
                                                              (_lp-tl73057740_
                                                               (##cdr _e73037735_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd73047738_)
                                                              (let ((_e73087743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd73047738_)))
                        (let ((_hd73097746_ (##car _e73087743_))
                              (_tl73107748_ (##cdr _e73087743_)))
                          (if (gx#identifier? _hd73097746_)
                              (if (gx#stx-eq? '%#ref _hd73097746_)
                                  (if (gx#stx-pair? _tl73107748_)
                                      (let ((_e73117751_
                                             (gx#stx-e _tl73107748_)))
                                        (let ((_hd73127754_
                                               (##car _e73117751_))
                                              (_tl73137756_
                                               (##cdr _e73117751_)))
                                          (if (gx#stx-null? _tl73137756_)
                                              (_loop73027727_
                                               _lp-tl73057740_
                                               (cons _hd73127754_
                                                     _xarg73067732_))
                                              (_g72657645_ _g72687648_))))
                                      (_g72657645_ _g72687648_))
                                  (_g72657645_ _g72687648_))
                              (_g72657645_ _g72687648_))))
                      (_g72657645_ _g72687648_))))
              (let ((_xarg73077759_ (reverse _xarg73067732_)))
                (if (gx#stx-null? _tl72867687_)
                    ((lambda (_L7762_ _L7763_ _L7764_)
                       (gxc#compile-e
                        (cons (gx#datum->syntax__0 '#f '%#ref)
                              (cons _L7763_ '()))))
                     _xarg73077759_
                     _hd72977717_
                     _arg72837679_)
                    (_g72657645_ _g72687648_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop73027727_ _target72997722_ '()))
                                      (_g72657645_ _g72687648_)))))
                            (_g72657645_ _g72687648_))
                        (_g72657645_ _g72687648_))
                    (_g72657645_ _g72687648_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72657645_ _g72687648_))
                                                (_g72657645_ _g72687648_))
                                            (_g72657645_ _g72687648_))))
                                    (_g72657645_ _g72687648_))))
                            (_g72657645_ _g72687648_))
                        (_g72657645_ _g72687648_))
                    (_g72657645_ _g72687648_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72657645_
                                                     _g72687648_))))
                                            (_g72657645_ _g72687648_)))))))
                        (_loop72787663_ _target72757658_ '()))
                      (_g72657645_ _g72687648_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72657645_ _g72687648_))
                                                (_g72657645_ _g72687648_))))
                                        (_g72657645_ _g72687648_)))))
                             (_g72647793_ _form7263_)))))))))
            (let ((_generate17117_
                   (lambda (_args7248_ _arglen7249_ _hd7250_ _body7251_)
                     (let ((_len7253_ (gx#stx-length _hd7250_)))
                       (let ((_condition7255_
                              (if (gx#stx-list? _hd7250_)
                                  (cons 'fx=
                                        (cons _arglen7249_
                                              (cons _len7253_ '())))
                                  (if (> _len7253_ '0)
                                      (cons 'fx>=
                                            (cons _arglen7249_
                                                  (cons _len7253_ '())))
                                      '#t))))
                         (let ((_dispatch7257_
                                (if (_dispatch-case?7115_ _hd7250_ _body7251_)
                                    (_dispatch-case-e7116_ _hd7250_ _body7251_)
                                    (cons 'lambda
                                          (cons (gxc#generate-runtime-lambda-head
                                                 _hd7250_)
                                                (cons (gxc#compile-e
                                                       _body7251_)
                                                      '()))))))
                           (let ()
                             (cons _condition7255_
                                   (cons (cons 'apply
                                               (cons _dispatch7257_
                                                     (cons _args7248_ '())))
                                         '())))))))))
              (let ((_g71197147_
                     (lambda (_g71207144_)
                       (gx#raise-syntax-error '#f '"Bad syntax" _g71207144_))))
                (let ((_g71187245_
                       (lambda (_g71207150_)
                         (if (gx#stx-pair? _g71207150_)
                             (let ((_e71237152_ (gx#stx-e _g71207150_)))
                               (let ((_hd71247155_ (##car _e71237152_))
                                     (_tl71257157_ (##cdr _e71237152_)))
                                 (if (gx#stx-pair/null? _tl71257157_)
                                     (if (fx>= (gx#stx-length _tl71257157_) '0)
                                         (let ((_g10139_
                                                (gx#syntax-split-splice
                                                 _tl71257157_
                                                 '0)))
                                           (begin
                                             (let ((_g10140_
                                                    (values-count _g10139_)))
                                               (if (not (fx= _g10140_ 2))
                                                   (error "Context expects 2 values"
                                                          _g10140_)))
                                             (let ((_target71267160_
                                                    (values-ref _g10139_ 0))
                                                   (_tl71287162_
                                                    (values-ref _g10139_ 1)))
                                               (if (gx#stx-null? _tl71287162_)
                                                   (letrec ((_loop71297165_
                                                             (lambda (_hd71277168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body71337170_
                              _hd71347172_)
                       (if (gx#stx-pair? _hd71277168_)
                           (let ((_e71307175_ (gx#stx-e _hd71277168_)))
                             (let ((_lp-hd71317178_ (##car _e71307175_))
                                   (_lp-tl71327180_ (##cdr _e71307175_)))
                               (if (gx#stx-pair? _lp-hd71317178_)
                                   (let ((_e71377183_
                                          (gx#stx-e _lp-hd71317178_)))
                                     (let ((_hd71387186_ (##car _e71377183_))
                                           (_tl71397188_ (##cdr _e71377183_)))
                                       (if (gx#stx-pair? _tl71397188_)
                                           (let ((_e71407191_
                                                  (gx#stx-e _tl71397188_)))
                                             (let ((_hd71417194_
                                                    (##car _e71407191_))
                                                   (_tl71427196_
                                                    (##cdr _e71407191_)))
                                               (if (gx#stx-null? _tl71427196_)
                                                   (_loop71297165_
                                                    _lp-tl71327180_
                                                    (cons _hd71417194_
                                                          _body71337170_)
                                                    (cons _hd71387186_
                                                          _hd71347172_))
                                                   (_g71197147_ _g71207150_))))
                                           (_g71197147_ _g71207150_))))
                                   (_g71197147_ _g71207150_))))
                           (let ((_body71357199_ (reverse _body71337170_))
                                 (_hd71367201_ (reverse _hd71347172_)))
                             ((lambda (_L7204_ _L7205_)
                                (let ((_args7221_
                                       (gxc#generate-runtime-temporary__0))
                                      (_arglen7222_
                                       (gxc#generate-runtime-temporary__0)))
                                  (cons 'lambda
                                        (cons _args7221_
                                              (cons (cons 'let
                                                          (cons (cons (cons _arglen7222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons 'length (cons _args7221_ '()))
                                          '()))
                              '())
                        (cons (cons 'cond
                                    (foldr1 cons
                                            (cons (cons 'else
                                                        (cons (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons '"No clause matching arguments"
                                  (cons _args7221_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (map (lambda (_g72237226_
                                                          _g72247228_)
                                                   (_generate17117_
                                                    _args7221_
                                                    _arglen7222_
                                                    _g72237226_
                                                    _g72247228_))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g72307233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g72317235_)
                     (cons _g72307233_ _g72317235_))
                   '()
                   _L7205_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g72377240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g72387242_)
                     (cons _g72377240_ _g72387242_))
                   '()
                   _L7204_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              _body71357199_
                              _hd71367201_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop71297165_
                                                      _target71267160_
                                                      '()
                                                      '()))
                                                   (_g71197147_
                                                    _g71207150_)))))
                                         (_g71197147_ _g71207150_))
                                     (_g71197147_ _g71207150_))))
                             (_g71197147_ _g71207150_)))))
                  (_g71187245_ _stx7112_)))))))))
  (begin
    (define gxc#generate-runtime-let-values%__opt-lambda6792
      (lambda (_stx6794_ _compiled-body?6795_)
        (let ((_generate-simple6797_
               (lambda (_hd7099_ _body7100_)
                 (gxc#generate-runtime-simple-let
                  'let
                  _hd7099_
                  _body7100_
                  _compiled-body?6795_))))
          (let ((_generate-values-post6799_
                 (lambda (_post6871_ _body6872_)
                   ((letrec ((_lp6874_
                              (lambda (_rest6876_ _body6877_)
                                (let ((_rest68786886_ _rest6876_))
                                  (let ((_E68816890_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest68786886_))))
                                    (let ((_else68806894_
                                           (lambda () _body6877_)))
                                      (let ((_K68826900_
                                             (lambda (_rest6897_ _bind6898_)
                                               (_lp6874_
                                                _rest6897_
                                                (cons 'let
                                                      (cons _bind6898_
                                                            (cons _body6877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _rest68786886_)
                                            (let ((_hd68836903_
                                                   (##car _rest68786886_))
                                                  (_tl68846905_
                                                   (##cdr _rest68786886_)))
                                              (let ((_bind6908_ _hd68836903_))
                                                (let ((_rest6910_
                                                       _tl68846905_))
                                                  (_K68826900_
                                                   _rest6910_
                                                   _bind6908_))))
                                            (_else68806894_)))))))))
                      _lp6874_)
                    _post6871_
                    _body6872_))))
            (let ((_generate-values-check6800_
                   (lambda (_check6868_ _body6869_)
                     (cons 'begin
                           (foldr1 cons
                                   (cons _body6869_ '())
                                   (reverse _check6868_))))))
              (let ((_generate-values6798_
                     (lambda (_hd6912_ _body6913_)
                       ((letrec ((_lp6915_
                                  (lambda (_rest6917_
                                           _bind6918_
                                           _check6919_
                                           _post6920_)
                                    (let ((_g69236934_
                                           (lambda (_g69246931_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g69246931_))))
                                      (let ((_g69226948_
                                             (lambda (_g69246937_)
                                               ((lambda ()
                                                  (let ((_body6941_
                                                         (if _compiled-body?6795_
                                                             _body6913_
                                                             (gxc#compile-e
                                                              _body6913_))))
                                                    (let ((_body6943_
                                                           (_generate-values-post6799_
                                                            _post6920_
                                                            _body6941_)))
                                                      (let ((_body6945_
                                                             (_generate-values-check6800_
                                                              _check6919_
                                                              _body6943_)))
                                                        (let ()
                                                          (cons 'let
                                                                (cons (reverse _bind6918_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body6945_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g69217096_
                                               (lambda (_g69246951_)
                                                 (if (gx#stx-pair? _g69246951_)
                                                     (let ((_e69276953_
                                                            (gx#stx-e
                                                             _g69246951_)))
                                                       (let ((_hd69286956_
                                                              (##car _e69276953_))
                                                             (_tl69296958_
                                                              (##cdr _e69276953_)))
                                                         ((lambda (_L6961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L6962_)
                    (let ((_g69777002_
                           (lambda (_g69786999_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g69786999_))))
                      (let ((_g69767046_
                             (lambda (_g69787005_)
                               (if (gx#stx-pair? _g69787005_)
                                   (let ((_e69927007_ (gx#stx-e _g69787005_)))
                                     (let ((_hd69937010_ (##car _e69927007_))
                                           (_tl69947012_ (##cdr _e69927007_)))
                                       (if (gx#stx-pair? _tl69947012_)
                                           (let ((_e69957015_
                                                  (gx#stx-e _tl69947012_)))
                                             (let ((_hd69967018_
                                                    (##car _e69957015_))
                                                   (_tl69977020_
                                                    (##cdr _e69957015_)))
                                               (if (gx#stx-null? _tl69977020_)
                                                   ((lambda (_L7023_ _L7024_)
                                                      (let ((_vals7037_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr7039_
                                                               (gxc#compile-e
                                                                _L7023_)))
                                                          (let ((_check-values7041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals7037_
                          _L7024_)))
                    (let ((_refs7043_
                           (gxc#generate-runtime-let-values-bind
                            _vals7037_
                            _L7024_)))
                      (let ()
                        (_lp6915_
                         _L6961_
                         (cons (cons _vals7037_ (cons _expr7039_ '()))
                               _bind6918_)
                         (cons _check-values7041_ _check6919_)
                         (cons _refs7043_ _post6920_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd69967018_
                                                    _hd69937010_)
                                                   (_g69777002_ _g69787005_))))
                                           (_g69777002_ _g69787005_))))
                                   (_g69777002_ _g69787005_)))))
                        (let ((_g69757093_
                               (lambda (_g69787049_)
                                 (if (gx#stx-pair? _g69787049_)
                                     (let ((_e69817051_
                                            (gx#stx-e _g69787049_)))
                                       (let ((_hd69827054_ (##car _e69817051_))
                                             (_tl69837056_
                                              (##cdr _e69817051_)))
                                         (if (gx#stx-pair? _hd69827054_)
                                             (let ((_e69847059_
                                                    (gx#stx-e _hd69827054_)))
                                               (let ((_hd69857062_
                                                      (##car _e69847059_))
                                                     (_tl69867064_
                                                      (##cdr _e69847059_)))
                                                 (if (gx#stx-null?
                                                      _tl69867064_)
                                                     (if (gx#stx-pair?
                                                          _tl69837056_)
                                                         (let ((_e69877067_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl69837056_)))
                   (let ((_hd69887070_ (##car _e69877067_))
                         (_tl69897072_ (##cdr _e69877067_)))
                     (if (gx#stx-null? _tl69897072_)
                         ((lambda (_L7075_ _L7076_)
                            (let ((_eid7090_
                                   (gxc#generate-runtime-binding-id* _L7076_))
                                  (_expr7091_ (gxc#compile-e _L7075_)))
                              (_lp6915_
                               _L6961_
                               (cons (cons _eid7090_ (cons _expr7091_ '()))
                                     _bind6918_)
                               _check6919_
                               _post6920_)))
                          _hd69887070_
                          _hd69857062_)
                         (_g69767046_ _g69787049_))))
                 (_g69767046_ _g69787049_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g69767046_
                                                      _g69787049_))))
                                             (_g69767046_ _g69787049_))))
                                     (_g69767046_ _g69787049_)))))
                          (_g69757093_ _L6962_)))))
                  _tl69296958_
                  _hd69286956_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g69226948_
                                                      _g69246951_)))))
                                          (_g69217096_ _rest6917_)))))))
                          _lp6915_)
                        _hd6912_
                        '()
                        '()
                        '()))))
                (let ((_g68026819_
                       (lambda (_g68036816_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g68036816_))))
                  (let ((_g68016865_
                         (lambda (_g68036822_)
                           (if (gx#stx-pair? _g68036822_)
                               (let ((_e68066824_ (gx#stx-e _g68036822_)))
                                 (let ((_hd68076827_ (##car _e68066824_))
                                       (_tl68086829_ (##cdr _e68066824_)))
                                   (if (gx#stx-pair? _tl68086829_)
                                       (let ((_e68096832_
                                              (gx#stx-e _tl68086829_)))
                                         (let ((_hd68106835_
                                                (##car _e68096832_))
                                               (_tl68116837_
                                                (##cdr _e68096832_)))
                                           (if (gx#stx-pair? _tl68116837_)
                                               (let ((_e68126840_
                                                      (gx#stx-e _tl68116837_)))
                                                 (let ((_hd68136843_
                                                        (##car _e68126840_))
                                                       (_tl68146845_
                                                        (##cdr _e68126840_)))
                                                   (if (gx#stx-null?
                                                        _tl68146845_)
                                                       ((lambda (_L6848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6849_)
                  (if (gxc#generate-runtime-simple-let? _L6849_)
                      (_generate-simple6797_ _L6849_ _L6848_)
                      (_generate-values6798_ _L6849_ _L6848_)))
                _hd68136843_
                _hd68106835_)
               (_g68026819_ _g68036822_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g68026819_ _g68036822_))))
                                       (_g68026819_ _g68036822_))))
                               (_g68026819_ _g68036822_)))))
                    (_g68016865_ _stx6794_)))))))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx7105_)
          (let ((_compiled-body?7107_ '#f))
            (gxc#generate-runtime-let-values%__opt-lambda6792
             _stx7105_
             _compiled-body?7107_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g10156_
          (let ((_g10155_ (length _g10156_)))
            (cond ((fx= _g10155_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g10156_))
                  ((fx= _g10155_ 2)
                   (apply gxc#generate-runtime-let-values%__opt-lambda6792
                          _g10156_))
                  (else (error "No clause matching arguments" _g10156_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals6693_ _hd6694_)
      ((letrec ((_lp6696_
                 (lambda (_rest6698_ _k6699_ _r6700_)
                   (let ((_g67056721_
                          (lambda (_g67066718_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g67066718_))))
                     (let ((_g67046728_
                            (lambda (_g67066724_)
                              ((lambda () (reverse _r6700_))))))
                       (let ((_g67036744_
                              (lambda (_g67066731_)
                                ((lambda (_L6733_)
                                   (if (gx#identifier? _L6733_)
                                       (foldl1 cons
                                               (cons (cons (gxc#generate-runtime-binding-id
                                                            _L6733_)
                                                           (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _vals6693_ (cons _k6699_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               _r6700_)
                                       (_g67046728_ _g67066731_)))
                                 _g67066731_))))
                         (let ((_g67026768_
                                (lambda (_g67066747_)
                                  (if (gx#stx-pair? _g67066747_)
                                      (let ((_e67136749_
                                             (gx#stx-e _g67066747_)))
                                        (let ((_hd67146752_
                                               (##car _e67136749_))
                                              (_tl67156754_
                                               (##cdr _e67136749_)))
                                          ((lambda (_L6757_ _L6758_)
                                             (_lp6696_
                                              _L6757_
                                              (fx+ _k6699_ '1)
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L6758_)
                                                          (cons (cons 'values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals6693_ (cons _k6699_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _r6700_)))
                                           _tl67156754_
                                           _hd67146752_)))
                                      (_g67036744_ _g67066747_)))))
                           (let ((_g67016790_
                                  (lambda (_g67066771_)
                                    (if (gx#stx-pair? _g67066771_)
                                        (let ((_e67086773_
                                               (gx#stx-e _g67066771_)))
                                          (let ((_hd67096776_
                                                 (##car _e67086773_))
                                                (_tl67106778_
                                                 (##cdr _e67086773_)))
                                            (if (gx#stx-datum? _hd67096776_)
                                                (if (equal? (gx#stx-e
                                                             _hd67096776_)
                                                            '#f)
                                                    ((lambda (_L6781_)
                                                       (_lp6696_
                                                        _L6781_
                                                        (fx+ _k6699_ '1)
                                                        _r6700_))
                                                     _tl67106778_)
                                                    (_g67026768_ _g67066771_))
                                                (_g67026768_ _g67066771_))))
                                        (_g67026768_ _g67066771_)))))
                             (_g67016790_ _rest6698_)))))))))
         _lp6696_)
       _hd6694_
       '0
       '())))
  (begin
    (define gxc#generate-runtime-letrec-values%__opt-lambda6371
      (lambda (_stx6373_ _compiled-body?6374_)
        (let ((_generate-simple6376_
               (lambda (_hd6680_ _body6681_)
                 (gxc#generate-runtime-simple-let
                  'letrec
                  _hd6680_
                  _body6681_
                  _compiled-body?6374_))))
          (let ((_generate-values-check6378_
                 (lambda (_check6454_ _body6455_)
                   (cons 'begin
                         (foldr1 cons
                                 (cons _body6455_ '())
                                 (reverse _check6454_))))))
            (let ((_generate-values-post6379_
                   (lambda (_post6447_ _body6448_)
                     (cons 'begin
                           (foldr1 cons
                                   (cons _body6448_ '())
                                   (map (lambda (_g64496451_)
                                          (cons 'set! _g64496451_))
                                        (reverse _post6447_)))))))
              (let ((_generate-values6377_
                     (lambda (_hd6457_ _body6458_)
                       ((letrec ((_lp6460_
                                  (lambda (_rest6462_
                                           _bind6463_
                                           _check6464_
                                           _post6465_)
                                    (let ((_g64686479_
                                           (lambda (_g64696476_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g64696476_))))
                                      (let ((_g64676493_
                                             (lambda (_g64696482_)
                                               ((lambda ()
                                                  (let ((_body6486_
                                                         (if _compiled-body?6374_
                                                             _body6458_
                                                             (gxc#compile-e
                                                              _body6458_))))
                                                    (let ((_body6488_
                                                           (_generate-values-post6379_
                                                            _post6465_
                                                            _body6486_)))
                                                      (let ((_body6490_
                                                             (_generate-values-check6378_
                                                              _check6464_
                                                              _body6488_)))
                                                        (let ()
                                                          (cons 'letrec
                                                                (cons (reverse _bind6463_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body6490_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g64666677_
                                               (lambda (_g64696496_)
                                                 (if (gx#stx-pair? _g64696496_)
                                                     (let ((_e64726498_
                                                            (gx#stx-e
                                                             _g64696496_)))
                                                       (let ((_hd64736501_
                                                              (##car _e64726498_))
                                                             (_tl64746503_
                                                              (##cdr _e64726498_)))
                                                         ((lambda (_L6506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L6507_)
                    (let ((_g65226547_
                           (lambda (_g65236544_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g65236544_))))
                      (let ((_g65216627_
                             (lambda (_g65236550_)
                               (if (gx#stx-pair? _g65236550_)
                                   (let ((_e65376552_ (gx#stx-e _g65236550_)))
                                     (let ((_hd65386555_ (##car _e65376552_))
                                           (_tl65396557_ (##cdr _e65376552_)))
                                       (if (gx#stx-pair? _tl65396557_)
                                           (let ((_e65406560_
                                                  (gx#stx-e _tl65396557_)))
                                             (let ((_hd65416563_
                                                    (##car _e65406560_))
                                                   (_tl65426565_
                                                    (##cdr _e65406560_)))
                                               (if (gx#stx-null? _tl65426565_)
                                                   ((lambda (_L6568_ _L6569_)
                                                      (let ((_vals6582_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr6584_
                                                               (gxc#compile-e
                                                                _L6568_)))
                                                          (let ((_check-values6586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals6582_
                          _L6569_)))
                    (let ((_refs6588_
                           (gxc#generate-runtime-let-values-bind
                            _vals6582_
                            _L6569_)))
                      (let ()
                        (_lp6460_
                         _L6506_
                         (foldl1 cons
                                 (cons (cons _vals6582_ (cons _expr6584_ '()))
                                       _bind6463_)
                                 (map (lambda (_e65906592_)
                                        (let ((_g65946603_ _e65906592_))
                                          (let ((_E65966607_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _g65946603_))))
                                            (let ((_K65976612_
                                                   (lambda (_eid6610_)
                                                     (cons _eid6610_
                                                           (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _g65946603_)
                                                  (let ((_hd65986615_
                                                         (##car _g65946603_))
                                                        (_tl65996617_
                                                         (##cdr _g65946603_)))
                                                    (let ((_eid6620_
                                                           _hd65986615_))
                                                      (if (##pair? _tl65996617_)
                                                          (let ((_hd66006622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _tl65996617_))
                        (_tl66016624_ (##cdr _tl65996617_)))
                    (if (##null? _tl66016624_)
                        (_K65976612_ _eid6620_)
                        (_E65966607_)))
                  (_E65966607_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E65966607_))))))
                                      _refs6588_))
                         (cons _check-values6586_ _check6464_)
                         (foldl1 cons _refs6588_ _post6465_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd65416563_
                                                    _hd65386555_)
                                                   (_g65226547_ _g65236550_))))
                                           (_g65226547_ _g65236550_))))
                                   (_g65226547_ _g65236550_)))))
                        (let ((_g65206674_
                               (lambda (_g65236630_)
                                 (if (gx#stx-pair? _g65236630_)
                                     (let ((_e65266632_
                                            (gx#stx-e _g65236630_)))
                                       (let ((_hd65276635_ (##car _e65266632_))
                                             (_tl65286637_
                                              (##cdr _e65266632_)))
                                         (if (gx#stx-pair? _hd65276635_)
                                             (let ((_e65296640_
                                                    (gx#stx-e _hd65276635_)))
                                               (let ((_hd65306643_
                                                      (##car _e65296640_))
                                                     (_tl65316645_
                                                      (##cdr _e65296640_)))
                                                 (if (gx#stx-null?
                                                      _tl65316645_)
                                                     (if (gx#stx-pair?
                                                          _tl65286637_)
                                                         (let ((_e65326648_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl65286637_)))
                   (let ((_hd65336651_ (##car _e65326648_))
                         (_tl65346653_ (##cdr _e65326648_)))
                     (if (gx#stx-null? _tl65346653_)
                         ((lambda (_L6656_ _L6657_)
                            (let ((_eid6671_
                                   (gxc#generate-runtime-binding-id* _L6657_))
                                  (_expr6672_ (gxc#compile-e _L6656_)))
                              (_lp6460_
                               _L6506_
                               (cons (cons _eid6671_ (cons _expr6672_ '()))
                                     _bind6463_)
                               _check6464_
                               _post6465_)))
                          _hd65336651_
                          _hd65306643_)
                         (_g65216627_ _g65236630_))))
                 (_g65216627_ _g65236630_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g65216627_
                                                      _g65236630_))))
                                             (_g65216627_ _g65236630_))))
                                     (_g65216627_ _g65236630_)))))
                          (_g65206674_ _L6507_)))))
                  _tl64746503_
                  _hd64736501_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g64676493_
                                                      _g64696496_)))))
                                          (_g64666677_ _rest6462_)))))))
                          _lp6460_)
                        _hd6457_
                        '()
                        '()
                        '()))))
                (let ((_g63816398_
                       (lambda (_g63826395_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g63826395_))))
                  (let ((_g63806444_
                         (lambda (_g63826401_)
                           (if (gx#stx-pair? _g63826401_)
                               (let ((_e63856403_ (gx#stx-e _g63826401_)))
                                 (let ((_hd63866406_ (##car _e63856403_))
                                       (_tl63876408_ (##cdr _e63856403_)))
                                   (if (gx#stx-pair? _tl63876408_)
                                       (let ((_e63886411_
                                              (gx#stx-e _tl63876408_)))
                                         (let ((_hd63896414_
                                                (##car _e63886411_))
                                               (_tl63906416_
                                                (##cdr _e63886411_)))
                                           (if (gx#stx-pair? _tl63906416_)
                                               (let ((_e63916419_
                                                      (gx#stx-e _tl63906416_)))
                                                 (let ((_hd63926422_
                                                        (##car _e63916419_))
                                                       (_tl63936424_
                                                        (##cdr _e63916419_)))
                                                   (if (gx#stx-null?
                                                        _tl63936424_)
                                                       ((lambda (_L6427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6428_)
                  (if (gxc#generate-runtime-simple-let? _L6428_)
                      (_generate-simple6376_ _L6428_ _L6427_)
                      (_generate-values6377_ _L6428_ _L6427_)))
                _hd63926422_
                _hd63896414_)
               (_g63816398_ _g63826401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g63816398_ _g63826401_))))
                                       (_g63816398_ _g63826401_))))
                               (_g63816398_ _g63826401_)))))
                    (_g63806444_ _stx6373_)))))))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx6686_)
          (let ((_compiled-body?6688_ '#f))
            (gxc#generate-runtime-letrec-values%__opt-lambda6371
             _stx6686_
             _compiled-body?6688_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g10158_
          (let ((_g10157_ (length _g10158_)))
            (cond ((fx= _g10157_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g10158_))
                  ((fx= _g10157_ 2)
                   (apply gxc#generate-runtime-letrec-values%__opt-lambda6371
                          _g10158_))
                  (else (error "No clause matching arguments" _g10158_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx5492_)
      (let ((_collect-closures5495_
             (lambda (_forms6313_)
               (map (lambda (_e63146316_)
                      (let ((_g63186327_ _e63146316_))
                        (let ((_E63206331_
                               (lambda ()
                                 (error '"No clause matching" _g63186327_))))
                          (let ((_K63216336_
                                 (lambda (_expr6334_)
                                   (gxc#collect-expression-refs _expr6334_))))
                            (if (##pair? _g63186327_)
                                (let ((_hd63226339_ (##car _g63186327_))
                                      (_tl63236341_ (##cdr _g63186327_)))
                                  (if (##pair? _tl63236341_)
                                      (let ((_hd63246344_ (##car _tl63236341_))
                                            (_tl63256346_
                                             (##cdr _tl63236341_)))
                                        (let ((_expr6349_ _hd63246344_))
                                          (if (##null? _tl63256346_)
                                              (_K63216336_ _expr6349_)
                                              (_E63206331_))))
                                      (_E63206331_)))
                                (_E63206331_))))))
                    _forms6313_))))
        (let ((_collect-bindings5496_
               (lambda (_forms6237_)
                 (map (lambda (_e62386240_)
                        (let ((_g62426251_ _e62386240_))
                          (let ((_E62446255_
                                 (lambda ()
                                   (error '"No clause matching" _g62426251_))))
                            (let ((_K62456298_
                                   (lambda (_bind6258_)
                                     ((letrec ((_lp6260_
                                                (lambda (_rest6262_ _r6263_)
                                                  (let ((_rest62646272_
                                                         _rest6262_))
                                                    (let ((_E62676276_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest62646272_))))
              (let ((_else62666280_
                     (lambda ()
                       (if (gx#identifier? _rest6262_)
                           (cons _rest6262_ _r6263_)
                           _r6263_))))
                (let ((_K62686286_
                       (lambda (_rest6283_ _id6284_)
                         (if (gx#identifier? _id6284_)
                             (_lp6260_
                              _rest6283_
                              (cons (##structure-ref
                                     (gx#resolve-identifier__0 _id6284_)
                                     '1
                                     gx#binding::t
                                     '#f)
                                    _r6263_))
                             (_lp6260_ _rest6283_ _r6263_)))))
                  (if (##pair? _rest62646272_)
                      (let ((_hd62696289_ (##car _rest62646272_))
                            (_tl62706291_ (##cdr _rest62646272_)))
                        (let ((_id6294_ _hd62696289_))
                          (let ((_rest6296_ _tl62706291_))
                            (_K62686286_ _rest6296_ _id6294_))))
                      (_else62666280_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp6260_)
                                      _bind6258_
                                      '()))))
                              (if (##pair? _g62426251_)
                                  (let ((_hd62466301_ (##car _g62426251_))
                                        (_tl62476303_ (##cdr _g62426251_)))
                                    (let ((_bind6306_ _hd62466301_))
                                      (if (##pair? _tl62476303_)
                                          (let ((_hd62486308_
                                                 (##car _tl62476303_))
                                                (_tl62496310_
                                                 (##cdr _tl62476303_)))
                                            (if (##null? _tl62496310_)
                                                (_K62456298_ _bind6306_)
                                                (_E62446255_)))
                                          (_E62446255_))))
                                  (_E62446255_))))))
                      _forms6237_))))
          (let ((_closure-reference?5500_
                 (lambda (_closure5789_ _bindings5790_)
                   (ormap1 (lambda (_g57915793_)
                             (table-ref _closure5789_ _g57915793_ '#f))
                           _bindings5790_))))
            (let ((_is-effect-expr?5502_
                   (lambda (_expr5700_)
                     (let ((_g57025712_
                            (lambda (_g57035709_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g57035709_))))
                       (let ((_g57015735_
                              (lambda (_g57035715_)
                                (if (gx#stx-pair? _g57035715_)
                                    (let ((_e57055717_ (gx#stx-e _g57035715_)))
                                      (let ((_hd57065720_ (##car _e57055717_))
                                            (_tl57075722_ (##cdr _e57055717_)))
                                        ((lambda (_L5725_)
                                           (not (memq (gx#stx-e _L5725_)
                                                      '(%#lambda
                                                        %#case-lambda
                                                        %#quote
                                                        %#quote-syntax
                                                        %#ref))))
                                         _hd57065720_)))
                                    (_g57025712_ _g57035715_)))))
                         (_g57015735_ _expr5700_))))))
              (let ((_is-lambda-expr?5503_
                     (lambda (_expr5662_)
                       (let ((_g56645674_
                              (lambda (_g56655671_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g56655671_))))
                         (let ((_g56635697_
                                (lambda (_g56655677_)
                                  (if (gx#stx-pair? _g56655677_)
                                      (let ((_e56675679_
                                             (gx#stx-e _g56655677_)))
                                        (let ((_hd56685682_
                                               (##car _e56675679_))
                                              (_tl56695684_
                                               (##cdr _e56675679_)))
                                          ((lambda (_L5687_)
                                             (memq (gx#stx-e _L5687_)
                                                   '(%#lambda %#case-lambda)))
                                           _hd56685682_)))
                                      (_g56645674_ _g56655677_)))))
                           (_g56635697_ _expr5662_))))))
                (let ((_lift-rec5499_
                       (lambda (_forms5796_)
                         ((letrec ((_lp5798_
                                    (lambda (_rest5800_
                                             _pre5801_
                                             _bind5802_
                                             _init5803_)
                                      (let ((_rest58045812_ _rest5800_))
                                        (let ((_E58075816_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _rest58045812_))))
                                          (let ((_else58065820_
                                                 (lambda ()
                                                   (values (reverse _pre5801_)
                                                           (reverse _bind5802_)
                                                           (reverse _init5803_)))))
                                            (let ((_K58086011_
                                                   (lambda (_rest5823_
                                                            _bind-hd5824_)
                                                     (let ((_g58285863_
                                                            (lambda (_g58295860_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g58295860_))))
                                                       (let ((_g58275920_
                                                              (lambda (_g58295866_)
                                                                (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g58295866_)
                            (let ((_e58535868_ (gx#stx-e _g58295866_)))
                              (let ((_hd58545871_ (##car _e58535868_))
                                    (_tl58555873_ (##cdr _e58535868_)))
                                (if (gx#stx-pair? _tl58555873_)
                                    (let ((_e58565876_
                                           (gx#stx-e _tl58555873_)))
                                      (let ((_hd58575879_ (##car _e58565876_))
                                            (_tl58585881_ (##cdr _e58565876_)))
                                        (if (gx#stx-null? _tl58585881_)
                                            ((lambda (_L5884_ _L5885_)
                                               (let ((_vals5904_
                                                      (gxc#generate-runtime-temporary__0)))
                                                 (let ((_expr5906_
                                                        (gxc#compile-e
                                                         _L5884_)))
                                                   (let ((_check-values5908_
                                                          (gxc#generate-runtime-check-values
                                                           _vals5904_
                                                           _L5885_)))
                                                     (let ((_refs5910_
                                                            (gxc#generate-runtime-let-values-bind
                                                             _vals5904_
                                                             _L5885_)))
                                                       (let ()
                                                         (_lp5798_
                                                          _rest5823_
                                                          (foldl1 (lambda (_ref5913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _r5914_)
                            (cons (cons (car _ref5913_) (cons '#!void '()))
                                  _r5914_))
                          _pre5801_
                          _refs5910_)
                  _bind5802_
                  (cons (cons 'let
                              (cons (cons (cons _vals5904_
                                                (cons _expr5906_ '()))
                                          '())
                                    (cons _check-values5908_
                                          (cons (map (lambda (_g59155917_)
                                                       (cons 'set!
                                                             _g59155917_))
                                                     _refs5910_)
                                                '()))))
                        _init5803_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd58575879_
                                             _hd58545871_)
                                            (_g58285863_ _g58295866_))))
                                    (_g58285863_ _g58295866_))))
                            (_g58285863_ _g58295866_)))))
                 (let ((_g58265966_
                        (lambda (_g58295923_)
                          (if (gx#stx-pair? _g58295923_)
                              (let ((_e58425925_ (gx#stx-e _g58295923_)))
                                (let ((_hd58435928_ (##car _e58425925_))
                                      (_tl58445930_ (##cdr _e58425925_)))
                                  (if (gx#stx-pair? _hd58435928_)
                                      (let ((_e58455933_
                                             (gx#stx-e _hd58435928_)))
                                        (let ((_hd58465936_
                                               (##car _e58455933_))
                                              (_tl58475938_
                                               (##cdr _e58455933_)))
                                          (if (gx#stx-null? _tl58475938_)
                                              (if (gx#stx-pair? _tl58445930_)
                                                  (let ((_e58485941_
                                                         (gx#stx-e
                                                          _tl58445930_)))
                                                    (let ((_hd58495944_
                                                           (##car _e58485941_))
                                                          (_tl58505946_
                                                           (##cdr _e58485941_)))
                                                      (if (gx#stx-null?
                                                           _tl58505946_)
                                                          ((lambda (_L5949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5950_)
                     (let ((_eid5964_
                            (gxc#generate-runtime-binding-id _L5950_)))
                       (if (_is-lambda-expr?5503_ _L5949_)
                           (_lp5798_
                            _rest5823_
                            _pre5801_
                            (cons (cons _eid5964_
                                        (cons (gxc#compile-e _L5949_) '()))
                                  _bind5802_)
                            _init5803_)
                           (_lp5798_
                            _rest5823_
                            (cons (cons _eid5964_ (cons '#!void '()))
                                  _pre5801_)
                            _bind5802_
                            (cons (cons 'set!
                                        (cons _eid5964_
                                              (cons (gxc#compile-e _L5949_)
                                                    '())))
                                  _init5803_)))))
                   _hd58495944_
                   _hd58465936_)
                  (_g58275920_ _g58295923_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g58275920_ _g58295923_))
                                              (_g58275920_ _g58295923_))))
                                      (_g58275920_ _g58295923_))))
                              (_g58275920_ _g58295923_)))))
                   (let ((_g58256008_
                          (lambda (_g58295969_)
                            (if (gx#stx-pair? _g58295969_)
                                (let ((_e58315971_ (gx#stx-e _g58295969_)))
                                  (let ((_hd58325974_ (##car _e58315971_))
                                        (_tl58335976_ (##cdr _e58315971_)))
                                    (if (gx#stx-pair? _hd58325974_)
                                        (let ((_e58345979_
                                               (gx#stx-e _hd58325974_)))
                                          (let ((_hd58355982_
                                                 (##car _e58345979_))
                                                (_tl58365984_
                                                 (##cdr _e58345979_)))
                                            (if (gx#stx-datum? _hd58355982_)
                                                (if (equal? (gx#stx-e
                                                             _hd58355982_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl58365984_)
                                                        (if (gx#stx-pair?
                                                             _tl58335976_)
                                                            (let ((_e58375987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl58335976_)))
                      (let ((_hd58385990_ (##car _e58375987_))
                            (_tl58395992_ (##cdr _e58375987_)))
                        (if (gx#stx-null? _tl58395992_)
                            ((lambda (_L5995_)
                               (_lp5798_
                                _rest5823_
                                _pre5801_
                                _bind5802_
                                (cons (gxc#compile-e _L5995_) _init5803_)))
                             _hd58385990_)
                            (_g58265966_ _g58295969_))))
                    (_g58265966_ _g58295969_))
                (_g58265966_ _g58295969_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g58265966_ _g58295969_))
                                                (_g58265966_ _g58295969_))))
                                        (_g58265966_ _g58295969_))))
                                (_g58265966_ _g58295969_)))))
                     (_g58256008_ _bind-hd5824_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _rest58045812_)
                                                  (let ((_hd58096014_
                                                         (##car _rest58045812_))
                                                        (_tl58106016_
                                                         (##cdr _rest58045812_)))
                                                    (let ((_bind-hd6019_
                                                           _hd58096014_))
                                                      (let ((_rest6021_
                                                             _tl58106016_))
                                                        (_K58086011_
                                                         _rest6021_
                                                         _bind-hd6019_))))
                                                  (_else58065820_)))))))))
                            _lp5798_)
                          _forms5796_
                          '()
                          '()
                          '()))))
                  (let ((_is-effect-bind?5501_
                         (lambda (_hd-bind5738_)
                           (let ((_g57405753_
                                  (lambda (_g57415750_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g57415750_))))
                             (let ((_g57395786_
                                    (lambda (_g57415756_)
                                      (if (gx#stx-pair? _g57415756_)
                                          (let ((_e57435758_
                                                 (gx#stx-e _g57415756_)))
                                            (let ((_hd57445761_
                                                   (##car _e57435758_))
                                                  (_tl57455763_
                                                   (##cdr _e57435758_)))
                                              (if (gx#stx-pair? _tl57455763_)
                                                  (let ((_e57465766_
                                                         (gx#stx-e
                                                          _tl57455763_)))
                                                    (let ((_hd57475769_
                                                           (##car _e57465766_))
                                                          (_tl57485771_
                                                           (##cdr _e57465766_)))
                                                      (if (gx#stx-null?
                                                           _tl57485771_)
                                                          ((lambda (_L5774_)
                                                             (_is-effect-expr?5502_
                                                              _L5774_))
                                                           _hd57475769_)
                                                          (_g57405753_
                                                           _g57415756_))))
                                                  (_g57405753_ _g57415756_))))
                                          (_g57405753_ _g57415756_)))))
                               (_g57395786_ _hd-bind5738_))))))
                    (let ((_lift-pre5497_
                           (lambda (_hd6130_ _bindings6131_ _closures6132_)
                             ((letrec ((_lp6134_
                                        (lambda (_rest-forms6136_
                                                 _rest-bindings6137_
                                                 _rest-closures6138_
                                                 _post-forms6139_
                                                 _post-bindings6140_
                                                 _post-closures6141_
                                                 _pre-forms6142_
                                                 _lifted?6143_)
                                          (let ((_rest-forms61446160_
                                                 _rest-forms6136_)
                                                (_rest-bindings61456162_
                                                 _rest-bindings6137_)
                                                (_rest-closures61466164_
                                                 _rest-closures6138_))
                                            (let ((_E61496168_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _rest-forms61446160_
                                                            _rest-bindings61456162_
                                                            _rest-closures61466164_))))
                                              (let ((_else61486172_
                                                     (lambda ()
                                                       (if _lifted?6143_
                                                           (_lp6134_
                                                            (reverse _post-forms6139_)
                                                            (reverse _post-bindings6140_)
                                                            (reverse _post-closures6141_)
                                                            '()
                                                            '()
                                                            '()
                                                            _pre-forms6142_
                                                            '#f)
                                                           (values (reverse _pre-forms6142_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _post-forms6139_)
                           (reverse _post-bindings6140_)
                           (reverse _post-closures6141_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_K61506225_
                                                       (lambda (_rest-forms6175_
                                                                _form6176_)
                                                         (let ((_K61516213_
                                                                (lambda (_rest-bindings6178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bindings6179_)
                          (let ((_K61526201_
                                 (lambda (_rest-closures6181_ _closure6182_)
                                   (if (let ((_$e6184_
                                              (_closure-reference?5500_
                                               _closure6182_
                                               _bindings6179_)))
                                         (if _$e6184_
                                             _$e6184_
                                             (let ((_$e6191_
                                                    (ormap1 (lambda (_g61866188_)
                                                              (_closure-reference?5500_
                                                               _closure6182_
                                                               _g61866188_))
                                                            _rest-bindings6178_)))
                                               (if _$e6191_
                                                   _$e6191_
                                                   (let ((_$e6198_
                                                          (ormap1 (lambda (_g61936195_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (_closure-reference?5500_
                             _closure6182_
                             _g61936195_))
                          _post-bindings6140_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e6198_
                                                         _$e6198_
                                                         (if (_is-effect-bind?5501_
                                                              _form6176_)
                                                             (find _is-effect-bind?5501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _post-forms6139_)
                     '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_lp6134_
                                        _rest-forms6175_
                                        _rest-bindings6178_
                                        _rest-closures6181_
                                        (cons _form6176_ _post-forms6139_)
                                        (cons _bindings6179_
                                              _post-bindings6140_)
                                        (cons _closure6182_
                                              _post-closures6141_)
                                        _pre-forms6142_
                                        _lifted?6143_)
                                       (_lp6134_
                                        _rest-forms6175_
                                        _rest-bindings6178_
                                        _rest-closures6181_
                                        _post-forms6139_
                                        _post-bindings6140_
                                        _post-closures6141_
                                        (cons _form6176_ _pre-forms6142_)
                                        '#t)))))
                            (if (##pair? _rest-closures61466164_)
                                (let ((_hd61536204_
                                       (##car _rest-closures61466164_))
                                      (_tl61546206_
                                       (##cdr _rest-closures61466164_)))
                                  (let ((_closure6209_ _hd61536204_))
                                    (let ((_rest-closures6211_ _tl61546206_))
                                      (_K61526201_
                                       _rest-closures6211_
                                       _closure6209_))))
                                (_else61486172_))))))
                   (if (##pair? _rest-bindings61456162_)
                       (let ((_hd61556216_ (##car _rest-bindings61456162_))
                             (_tl61566218_ (##cdr _rest-bindings61456162_)))
                         (let ((_bindings6221_ _hd61556216_))
                           (let ((_rest-bindings6223_ _tl61566218_))
                             (_K61516213_
                              _rest-bindings6223_
                              _bindings6221_))))
                       (_else61486172_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _rest-forms61446160_)
                                                      (let ((_hd61576228_
                                                             (##car _rest-forms61446160_))
                                                            (_tl61586230_
                                                             (##cdr _rest-forms61446160_)))
                                                        (let ((_form6233_
                                                               _hd61576228_))
                                                          (let ((_rest-forms6235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl61586230_))
                    (_K61506225_ _rest-forms6235_ _form6233_))))
              (_else61486172_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _lp6134_)
                              _hd6130_
                              _bindings6131_
                              _closures6132_
                              '()
                              '()
                              '()
                              '()
                              '#f))))
                      (let ((_lift-post5498_
                             (lambda (_hd6023_ _bindings6024_ _closures6025_)
                               ((letrec ((_lp6027_
                                          (lambda (_rest-forms6029_
                                                   _rest-bindings6030_
                                                   _rest-closures6031_
                                                   _pre-forms6032_
                                                   _pre-bindings6033_
                                                   _pre-closures6034_
                                                   _post-forms6035_
                                                   _lifted?6036_)
                                            (let ((_rest-forms60376053_
                                                   _rest-forms6029_)
                                                  (_rest-bindings60386055_
                                                   _rest-bindings6030_)
                                                  (_rest-closures60396057_
                                                   _rest-closures6031_))
                                              (let ((_E60426061_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _rest-forms60376053_
                                                              _rest-bindings60386055_
                                                              _rest-closures60396057_))))
                                                (let ((_else60416065_
                                                       (lambda ()
                                                         (if _lifted?6036_
                                                             (_lp6027_
                                                              (reverse _pre-forms6032_)
                                                              (reverse _pre-bindings6033_)
                                                              (reverse _pre-closures6034_)
                                                              '()
                                                              '()
                                                              '()
                                                              _post-forms6035_
                                                              '#f)
                                                             (values _post-forms6035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-forms6032_
                             _pre-bindings6033_
                             _pre-closures6034_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_K60436118_
                                                         (lambda (_rest-forms6068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _form6069_)
                   (let ((_K60446106_
                          (lambda (_rest-bindings6071_ _bindings6072_)
                            (let ((_K60456094_
                                   (lambda (_rest-closures6074_ _closure6075_)
                                     (if (let ((_$e6077_
                                                (_closure-reference?5500_
                                                 _closure6075_
                                                 _bindings6072_)))
                                           (if _$e6077_
                                               _$e6077_
                                               (let ((_$e6084_
                                                      (ormap1 (lambda (_g60796081_)
                                                                (_closure-reference?5500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g60796081_
                         _bindings6072_))
                      _rest-closures6074_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e6084_
                                                     _$e6084_
                                                     (let ((_$e6091_
                                                            (ormap1 (lambda (_g60866088_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_closure-reference?5500_
                               _g60866088_
                               _bindings6072_))
                            _pre-closures6034_)))
               (if _$e6091_
                   _$e6091_
                   (if (_is-effect-bind?5501_ _form6069_)
                       (find _is-effect-bind?5501_ _pre-forms6032_)
                       '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_lp6027_
                                          _rest-forms6068_
                                          _rest-bindings6071_
                                          _rest-closures6074_
                                          (cons _form6069_ _pre-forms6032_)
                                          (cons _bindings6072_
                                                _pre-bindings6033_)
                                          (cons _closure6075_
                                                _pre-closures6034_)
                                          _post-forms6035_
                                          _lifted?6036_)
                                         (_lp6027_
                                          _rest-forms6068_
                                          _rest-bindings6071_
                                          _rest-closures6074_
                                          _pre-forms6032_
                                          _pre-bindings6033_
                                          _pre-closures6034_
                                          (cons _form6069_ _post-forms6035_)
                                          '#t)))))
                              (if (##pair? _rest-closures60396057_)
                                  (let ((_hd60466097_
                                         (##car _rest-closures60396057_))
                                        (_tl60476099_
                                         (##cdr _rest-closures60396057_)))
                                    (let ((_closure6102_ _hd60466097_))
                                      (let ((_rest-closures6104_ _tl60476099_))
                                        (_K60456094_
                                         _rest-closures6104_
                                         _closure6102_))))
                                  (_else60416065_))))))
                     (if (##pair? _rest-bindings60386055_)
                         (let ((_hd60486109_ (##car _rest-bindings60386055_))
                               (_tl60496111_ (##cdr _rest-bindings60386055_)))
                           (let ((_bindings6114_ _hd60486109_))
                             (let ((_rest-bindings6116_ _tl60496111_))
                               (_K60446106_
                                _rest-bindings6116_
                                _bindings6114_))))
                         (_else60416065_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (##pair? _rest-forms60376053_)
                                                        (let ((_hd60506121_
                                                               (##car _rest-forms60376053_))
                                                              (_tl60516123_
                                                               (##cdr _rest-forms60376053_)))
                                                          (let ((_form6126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd60506121_))
                    (let ((_rest-forms6128_ _tl60516123_))
                      (_K60436118_ _rest-forms6128_ _form6126_))))
                (_else60416065_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp6027_)
                                (reverse _hd6023_)
                                (reverse _bindings6024_)
                                (reverse _closures6025_)
                                '()
                                '()
                                '()
                                '()
                                '#f))))
                        (let ((_linearize5494_
                               (lambda (_forms6351_)
                                 (let ((_closures6353_
                                        (_collect-closures5495_ _forms6351_)))
                                   (let ((_bindings6355_
                                          (_collect-bindings5496_
                                           _forms6351_)))
                                     (let ((_g10161_
                                            (_lift-pre5497_
                                             _forms6351_
                                             _bindings6355_
                                             _closures6353_)))
                                       (begin
                                         (let ((_g10162_
                                                (values-count _g10161_)))
                                           (if (not (fx= _g10162_ 4))
                                               (error "Context expects 4 values"
                                                      _g10162_)))
                                         (let ((_pre-bind6357_
                                                (values-ref _g10161_ 0))
                                               (_forms6358_
                                                (values-ref _g10161_ 1))
                                               (_bindings6359_
                                                (values-ref _g10161_ 2))
                                               (_closures6360_
                                                (values-ref _g10161_ 3)))
                                           (let ((_g10163_
                                                  (_lift-post5498_
                                                   _forms6358_
                                                   _bindings6359_
                                                   _closures6360_)))
                                             (begin
                                               (let ((_g10164_
                                                      (values-count _g10163_)))
                                                 (if (not (fx= _g10164_ 4))
                                                     (error "Context expects 4 values"
                                                            _g10164_)))
                                               (let ((_post-bind6362_
                                                      (values-ref _g10163_ 0))
                                                     (_forms6363_
                                                      (values-ref _g10163_ 1))
                                                     (_bindings6364_
                                                      (values-ref _g10163_ 2))
                                                     (_closures6365_
                                                      (values-ref _g10163_ 3)))
                                                 (let ((_g10165_
                                                        (_lift-rec5499_
                                                         _forms6363_)))
                                                   (begin
                                                     (let ((_g10166_
                                                            (values-count
                                                             _g10165_)))
                                                       (if (not (fx= _g10166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             3))
                   (error "Context expects 3 values" _g10166_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_rec-pre6367_
                                                            (values-ref
                                                             _g10165_
                                                             0))
                                                           (_rec-bind6368_
                                                            (values-ref
                                                             _g10165_
                                                             1))
                                                           (_rec-init6369_
                                                            (values-ref
                                                             _g10165_
                                                             2)))
                                                       (let ()
                                                         (values _pre-bind6357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rec-pre6367_
                         _rec-bind6368_
                         _rec-init6369_
                         _post-bind6362_))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (letrec ((_generate-let*5504_
                                    (lambda (_hd5591_ _body5592_)
                                      (let ((_hd55935601_ _hd5591_))
                                        (let ((_E55965605_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _hd55935601_))))
                                          (let ((_else55955609_
                                                 (lambda () _body5592_)))
                                            (let ((_K55975650_
                                                   (lambda (_rest5612_
                                                            _bind5613_)
                                                     (let ((_bind56145623_
                                                            _bind5613_))
                                                       (let ((_E56165627_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind56145623_))))
                 (let ((_K56175633_
                        (lambda (_expr5630_ _hd5631_)
                          (if (gx#stx-ormap gx#identifier? _hd5631_)
                              (gxc#generate-runtime-let-values%__opt-lambda6792
                               (cons '%#let-values
                                     (cons (cons _bind5613_ '())
                                           (cons (_generate-let*5504_
                                                  _rest5612_
                                                  _body5592_)
                                                 '())))
                               '#t)
                              (cons 'begin
                                    (cons (gxc#compile-e _expr5630_)
                                          (cons (_generate-let*5504_
                                                 _rest5612_
                                                 _body5592_)
                                                '())))))))
                   (if (##pair? _bind56145623_)
                       (let ((_hd56185636_ (##car _bind56145623_))
                             (_tl56195638_ (##cdr _bind56145623_)))
                         (let ((_hd5641_ _hd56185636_))
                           (if (##pair? _tl56195638_)
                               (let ((_hd56205643_ (##car _tl56195638_))
                                     (_tl56215645_ (##cdr _tl56195638_)))
                                 (let ((_expr5648_ _hd56205643_))
                                   (if (##null? _tl56215645_)
                                       (_K56175633_ _expr5648_ _hd5641_)
                                       (_E56165627_))))
                               (_E56165627_))))
                       (_E56165627_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _hd55935601_)
                                                  (let ((_hd55985653_
                                                         (##car _hd55935601_))
                                                        (_tl55995655_
                                                         (##cdr _hd55935601_)))
                                                    (let ((_bind5658_
                                                           _hd55985653_))
                                                      (let ((_rest5660_
                                                             _tl55995655_))
                                                        (_K55975650_
                                                         _rest5660_
                                                         _bind5658_))))
                                                  (_else55955609_)))))))))
                            (let ((_g55065523_
                                   (lambda (_g55075520_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g55075520_))))
                              (let ((_g55055588_
                                     (lambda (_g55075526_)
                                       (if (gx#stx-pair? _g55075526_)
                                           (let ((_e55105528_
                                                  (gx#stx-e _g55075526_)))
                                             (let ((_hd55115531_
                                                    (##car _e55105528_))
                                                   (_tl55125533_
                                                    (##cdr _e55105528_)))
                                               (if (gx#stx-pair? _tl55125533_)
                                                   (let ((_e55135536_
                                                          (gx#stx-e
                                                           _tl55125533_)))
                                                     (let ((_hd55145539_
                                                            (##car _e55135536_))
                                                           (_tl55155541_
                                                            (##cdr _e55135536_)))
                                                       (if (gx#stx-pair?
                                                            _tl55155541_)
                                                           (let ((_e55165544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl55155541_)))
                     (let ((_hd55175547_ (##car _e55165544_))
                           (_tl55185549_ (##cdr _e55165544_)))
                       (if (gx#stx-null? _tl55185549_)
                           ((lambda (_L5552_ _L5553_)
                              (let ((_g10159_ (_linearize5494_ _L5553_)))
                                (begin
                                  (let ((_g10160_ (values-count _g10159_)))
                                    (if (not (fx= _g10160_ 5))
                                        (error "Context expects 5 values"
                                               _g10160_)))
                                  (let ((_pre5569_ (values-ref _g10159_ 0))
                                        (_rec-pre5570_ (values-ref _g10159_ 1))
                                        (_rec-bind5571_
                                         (values-ref _g10159_ 2))
                                        (_rec-init5572_
                                         (values-ref _g10159_ 3))
                                        (_post5573_ (values-ref _g10159_ 4)))
                                    (let ((_body5575_ (gxc#compile-e _L5552_)))
                                      (let ((_body5577_
                                             (if (null? _post5573_)
                                                 _body5575_
                                                 (_generate-let*5504_
                                                  _post5573_
                                                  _body5575_))))
                                        (let ((_body5579_
                                               (if (null? _rec-init5572_)
                                                   _body5577_
                                                   (cons 'begin
                                                         (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body5577_ '())
                         _rec-init5572_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_body5581_
                                                 (if (null? _rec-bind5571_)
                                                     _body5579_
                                                     (cons 'letrec
                                                           (cons _rec-bind5571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body5579_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_body5583_
                                                   (if (null? _rec-pre5570_)
                                                       _body5581_
                                                       (cons 'let
                                                             (cons _rec-pre5570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body5581_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_body5585_
                                                     (if (null? _pre5569_)
                                                         _body5583_
                                                         (_generate-let*5504_
                                                          _pre5569_
                                                          _body5583_))))
                                                (let () _body5585_)))))))))))
                            _hd55175547_
                            _hd55145539_)
                           (_g55065523_ _g55075526_))))
                   (_g55065523_ _g55075526_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g55065523_ _g55075526_))))
                                           (_g55065523_ _g55075526_)))))
                                (_g55055588_ _stx5492_))))))))))))))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd5385_)
      ((letrec ((_lp5387_
                 (lambda (_rest5389_)
                   (let ((_g53935414_
                          (lambda (_g53945411_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g53945411_))))
                     (let ((_g53925421_
                            (lambda (_g53945417_) ((lambda () '#f)))))
                       (let ((_g53915428_
                              (lambda (_g53945424_)
                                (if (gx#stx-null? _g53945424_)
                                    ((lambda () '#t))
                                    (_g53925421_ _g53945424_)))))
                         (let ((_g53905489_
                                (lambda (_g53945431_)
                                  (if (gx#stx-pair? _g53945431_)
                                      (let ((_e53985433_
                                             (gx#stx-e _g53945431_)))
                                        (let ((_hd53995436_
                                               (##car _e53985433_))
                                              (_tl54005438_
                                               (##cdr _e53985433_)))
                                          (if (gx#stx-pair? _hd53995436_)
                                              (let ((_e54015441_
                                                     (gx#stx-e _hd53995436_)))
                                                (let ((_hd54025444_
                                                       (##car _e54015441_))
                                                      (_tl54035446_
                                                       (##cdr _e54015441_)))
                                                  (if (gx#stx-pair?
                                                       _hd54025444_)
                                                      (let ((_e54045449_
                                                             (gx#stx-e
                                                              _hd54025444_)))
                                                        (let ((_hd54055452_
                                                               (##car _e54045449_))
                                                              (_tl54065454_
                                                               (##cdr _e54045449_)))
                                                          (if (gx#stx-null?
                                                               _tl54065454_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl54035446_)
                          (let ((_e54075457_ (gx#stx-e _tl54035446_)))
                            (let ((_hd54085460_ (##car _e54075457_))
                                  (_tl54095462_ (##cdr _e54075457_)))
                              (if (gx#stx-null? _tl54095462_)
                                  ((lambda (_L5465_ _L5466_ _L5467_)
                                     (_lp5387_ _L5465_))
                                   _tl54005438_
                                   _hd54085460_
                                   _hd54055452_)
                                  (_g53915428_ _g53945431_))))
                          (_g53915428_ _g53945431_))
                      (_g53915428_ _g53945431_))))
              (_g53915428_ _g53945431_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g53915428_ _g53945431_))))
                                      (_g53915428_ _g53945431_)))))
                           (_g53905489_ _rest5389_))))))))
         _lp5387_)
       _hd5385_)))
  (define gxc#generate-runtime-simple-let
    (lambda (_form5309_ _hd5310_ _body5311_ _compiled-body?5312_)
      (let ((_generate15314_
             (lambda (_bind5316_)
               (let ((_g53185335_
                      (lambda (_g53195332_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g53195332_))))
                 (let ((_g53175382_
                        (lambda (_g53195338_)
                          (if (gx#stx-pair? _g53195338_)
                              (let ((_e53225340_ (gx#stx-e _g53195338_)))
                                (let ((_hd53235343_ (##car _e53225340_))
                                      (_tl53245345_ (##cdr _e53225340_)))
                                  (if (gx#stx-pair? _hd53235343_)
                                      (let ((_e53255348_
                                             (gx#stx-e _hd53235343_)))
                                        (let ((_hd53265351_
                                               (##car _e53255348_))
                                              (_tl53275353_
                                               (##cdr _e53255348_)))
                                          (if (gx#stx-null? _tl53275353_)
                                              (if (gx#stx-pair? _tl53245345_)
                                                  (let ((_e53285356_
                                                         (gx#stx-e
                                                          _tl53245345_)))
                                                    (let ((_hd53295359_
                                                           (##car _e53285356_))
                                                          (_tl53305361_
                                                           (##cdr _e53285356_)))
                                                      (if (gx#stx-null?
                                                           _tl53305361_)
                                                          ((lambda (_L5364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5365_)
                     (cons (gxc#generate-runtime-binding-id* _L5365_)
                           (cons (gxc#compile-e _L5364_) '())))
                   _hd53295359_
                   _hd53265351_)
                  (_g53185335_ _g53195338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g53185335_ _g53195338_))
                                              (_g53185335_ _g53195338_))))
                                      (_g53185335_ _g53195338_))))
                              (_g53185335_ _g53195338_)))))
                   (_g53175382_ _bind5316_))))))
        (cons _form5309_
              (cons (map _generate15314_ _hd5310_)
                    (cons (if _compiled-body?5312_
                              _body5311_
                              (gxc#compile-e _body5311_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx5220_)
      (letrec ((_generate15222_
                (lambda (_datum5274_)
                  (if (let ((_$e5276_ (null? _datum5274_)))
                        (if _$e5276_
                            _$e5276_
                            (let ((_$e5279_ (interned-symbol? _datum5274_)))
                              (if _$e5279_
                                  _$e5279_
                                  (gx#self-quoting? _datum5274_)))))
                      _datum5274_
                      (if (uninterned-symbol? _datum5274_)
                          (gxc#generate-runtime-gensym-reference__opt-lambda9103
                           _datum5274_
                           '#t)
                          (if (pair? _datum5274_)
                              (cons (_generate15222_ (car _datum5274_))
                                    (_generate15222_ (cdr _datum5274_)))
                              (if (box? _datum5274_)
                                  (box (_generate15222_ (unbox _datum5274_)))
                                  (if (vector? _datum5274_)
                                      (vector-map _generate15222_ _datum5274_)
                                      (if (let ((_$e5282_
                                                 (s8vector? _datum5274_)))
                                            (if _$e5282_
                                                _$e5282_
                                                (let ((_$e5285_
                                                       (u8vector?
                                                        _datum5274_)))
                                                  (if _$e5285_
                                                      _$e5285_
                                                      (let ((_$e5288_
                                                             (s16vector?
                                                              _datum5274_)))
                                                        (if _$e5288_
                                                            _$e5288_
                                                            (let ((_$e5291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum5274_)))
                      (if _$e5291_
                          _$e5291_
                          (let ((_$e5294_ (s32vector? _datum5274_)))
                            (if _$e5294_
                                _$e5294_
                                (let ((_$e5297_ (u32vector? _datum5274_)))
                                  (if _$e5297_
                                      _$e5297_
                                      (let ((_$e5300_
                                             (s64vector? _datum5274_)))
                                        (if _$e5300_
                                            _$e5300_
                                            (let ((_$e5303_
                                                   (u64vector? _datum5274_)))
                                              (if _$e5303_
                                                  _$e5303_
                                                  (let ((_$e5306_
                                                         (f32vector?
                                                          _datum5274_)))
                                                    (if _$e5306_
                                                        _$e5306_
                                                        (f64vector?
                                                         _datum5274_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum5274_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx5220_))))))))))
        (let ((_g52245237_
               (lambda (_g52255234_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g52255234_))))
          (let ((_g52235271_
                 (lambda (_g52255240_)
                   (if (gx#stx-pair? _g52255240_)
                       (let ((_e52275242_ (gx#stx-e _g52255240_)))
                         (let ((_hd52285245_ (##car _e52275242_))
                               (_tl52295247_ (##cdr _e52275242_)))
                           (if (gx#stx-pair? _tl52295247_)
                               (let ((_e52305250_ (gx#stx-e _tl52295247_)))
                                 (let ((_hd52315253_ (##car _e52305250_))
                                       (_tl52325255_ (##cdr _e52305250_)))
                                   (if (gx#stx-null? _tl52325255_)
                                       ((lambda (_L5258_)
                                          (cons 'quote
                                                (cons (_generate15222_
                                                       (gx#stx-e _L5258_))
                                                      '())))
                                        _hd52315253_)
                                       (_g52245237_ _g52255240_))))
                               (_g52245237_ _g52255240_))))
                       (_g52245237_ _g52255240_)))))
            (_g52235271_ _stx5220_))))))
  (define gxc#generate-runtime-call%
    (lambda (_stx5182_)
      (let ((_g51845194_
             (lambda (_g51855191_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g51855191_))))
        (let ((_g51835217_
               (lambda (_g51855197_)
                 (if (gx#stx-pair? _g51855197_)
                     (let ((_e51875199_ (gx#stx-e _g51855197_)))
                       (let ((_hd51885202_ (##car _e51875199_))
                             (_tl51895204_ (##cdr _e51875199_)))
                         ((lambda (_L5207_) (map gxc#compile-e _L5207_))
                          _tl51895204_)))
                     (_g51845194_ _g51855197_)))))
          (_g51835217_ _stx5182_)))))
  (define gxc#generate-runtime-if%
    (lambda (_stx5144_)
      (let ((_g51465156_
             (lambda (_g51475153_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g51475153_))))
        (let ((_g51455179_
               (lambda (_g51475159_)
                 (if (gx#stx-pair? _g51475159_)
                     (let ((_e51495161_ (gx#stx-e _g51475159_)))
                       (let ((_hd51505164_ (##car _e51495161_))
                             (_tl51515166_ (##cdr _e51495161_)))
                         ((lambda (_L5169_)
                            (cons 'if (map gxc#compile-e _L5169_)))
                          _tl51515166_)))
                     (_g51465156_ _g51475159_)))))
          (_g51455179_ _stx5144_)))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx5093_)
      (let ((_g50955108_
             (lambda (_g50965105_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g50965105_))))
        (let ((_g50945141_
               (lambda (_g50965111_)
                 (if (gx#stx-pair? _g50965111_)
                     (let ((_e50985113_ (gx#stx-e _g50965111_)))
                       (let ((_hd50995116_ (##car _e50985113_))
                             (_tl51005118_ (##cdr _e50985113_)))
                         (if (gx#stx-pair? _tl51005118_)
                             (let ((_e51015121_ (gx#stx-e _tl51005118_)))
                               (let ((_hd51025124_ (##car _e51015121_))
                                     (_tl51035126_ (##cdr _e51015121_)))
                                 (if (gx#stx-null? _tl51035126_)
                                     ((lambda (_L5129_)
                                        (gxc#generate-runtime-binding-id
                                         _L5129_))
                                      _hd51025124_)
                                     (_g50955108_ _g50965111_))))
                             (_g50955108_ _g50965111_))))
                     (_g50955108_ _g50965111_)))))
          (_g50945141_ _stx5093_)))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx5026_)
      (let ((_g50285045_
             (lambda (_g50295042_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g50295042_))))
        (let ((_g50275090_
               (lambda (_g50295048_)
                 (if (gx#stx-pair? _g50295048_)
                     (let ((_e50325050_ (gx#stx-e _g50295048_)))
                       (let ((_hd50335053_ (##car _e50325050_))
                             (_tl50345055_ (##cdr _e50325050_)))
                         (if (gx#stx-pair? _tl50345055_)
                             (let ((_e50355058_ (gx#stx-e _tl50345055_)))
                               (let ((_hd50365061_ (##car _e50355058_))
                                     (_tl50375063_ (##cdr _e50355058_)))
                                 (if (gx#stx-pair? _tl50375063_)
                                     (let ((_e50385066_
                                            (gx#stx-e _tl50375063_)))
                                       (let ((_hd50395069_ (##car _e50385066_))
                                             (_tl50405071_
                                              (##cdr _e50385066_)))
                                         (if (gx#stx-null? _tl50405071_)
                                             ((lambda (_L5074_ _L5075_)
                                                (cons 'set!
                                                      (cons (gxc#generate-runtime-binding-id
                                                             _L5075_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5074_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd50395069_
                                              _hd50365061_)
                                             (_g50285045_ _g50295048_))))
                                     (_g50285045_ _g50295048_))))
                             (_g50285045_ _g50295048_))))
                     (_g50285045_ _g50295048_)))))
          (_g50275090_ _stx5026_)))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx4959_)
      (let ((_g49614978_
             (lambda (_g49624975_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g49624975_))))
        (let ((_g49605023_
               (lambda (_g49624981_)
                 (if (gx#stx-pair? _g49624981_)
                     (let ((_e49654983_ (gx#stx-e _g49624981_)))
                       (let ((_hd49664986_ (##car _e49654983_))
                             (_tl49674988_ (##cdr _e49654983_)))
                         (if (gx#stx-pair? _tl49674988_)
                             (let ((_e49684991_ (gx#stx-e _tl49674988_)))
                               (let ((_hd49694994_ (##car _e49684991_))
                                     (_tl49704996_ (##cdr _e49684991_)))
                                 (if (gx#stx-pair? _tl49704996_)
                                     (let ((_e49714999_
                                            (gx#stx-e _tl49704996_)))
                                       (let ((_hd49725002_ (##car _e49714999_))
                                             (_tl49735004_
                                              (##cdr _e49714999_)))
                                         (if (gx#stx-null? _tl49735004_)
                                             ((lambda (_L5007_ _L5008_)
                                                (cons '##structure-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L5007_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5008_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd49725002_
                                              _hd49694994_)
                                             (_g49614978_ _g49624981_))))
                                     (_g49614978_ _g49624981_))))
                             (_g49614978_ _g49624981_))))
                     (_g49614978_ _g49624981_)))))
          (_g49605023_ _stx4959_)))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx4892_)
      (let ((_g48944911_
             (lambda (_g48954908_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g48954908_))))
        (let ((_g48934956_
               (lambda (_g48954914_)
                 (if (gx#stx-pair? _g48954914_)
                     (let ((_e48984916_ (gx#stx-e _g48954914_)))
                       (let ((_hd48994919_ (##car _e48984916_))
                             (_tl49004921_ (##cdr _e48984916_)))
                         (if (gx#stx-pair? _tl49004921_)
                             (let ((_e49014924_ (gx#stx-e _tl49004921_)))
                               (let ((_hd49024927_ (##car _e49014924_))
                                     (_tl49034929_ (##cdr _e49014924_)))
                                 (if (gx#stx-pair? _tl49034929_)
                                     (let ((_e49044932_
                                            (gx#stx-e _tl49034929_)))
                                       (let ((_hd49054935_ (##car _e49044932_))
                                             (_tl49064937_
                                              (##cdr _e49044932_)))
                                         (if (gx#stx-null? _tl49064937_)
                                             ((lambda (_L4940_ _L4941_)
                                                (cons '##structure-direct-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L4940_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4941_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd49054935_
                                              _hd49024927_)
                                             (_g48944911_ _g48954914_))))
                                     (_g48944911_ _g48954914_))))
                             (_g48944911_ _g48954914_))))
                     (_g48944911_ _g48954914_)))))
          (_g48934956_ _stx4892_)))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx4809_)
      (let ((_g48114832_
             (lambda (_g48124829_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g48124829_))))
        (let ((_g48104889_
               (lambda (_g48124835_)
                 (if (gx#stx-pair? _g48124835_)
                     (let ((_e48164837_ (gx#stx-e _g48124835_)))
                       (let ((_hd48174840_ (##car _e48164837_))
                             (_tl48184842_ (##cdr _e48164837_)))
                         (if (gx#stx-pair? _tl48184842_)
                             (let ((_e48194845_ (gx#stx-e _tl48184842_)))
                               (let ((_hd48204848_ (##car _e48194845_))
                                     (_tl48214850_ (##cdr _e48194845_)))
                                 (if (gx#stx-pair? _tl48214850_)
                                     (let ((_e48224853_
                                            (gx#stx-e _tl48214850_)))
                                       (let ((_hd48234856_ (##car _e48224853_))
                                             (_tl48244858_
                                              (##cdr _e48224853_)))
                                         (if (gx#stx-pair? _tl48244858_)
                                             (let ((_e48254861_
                                                    (gx#stx-e _tl48244858_)))
                                               (let ((_hd48264864_
                                                      (##car _e48254861_))
                                                     (_tl48274866_
                                                      (##cdr _e48254861_)))
                                                 (if (gx#stx-null?
                                                      _tl48274866_)
                                                     ((lambda (_L4869_
                                                               _L4870_
                                                               _L4871_)
                                                        (cons '##structure-ref
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L4869_)
                            (cons (gxc#compile-e _L4870_)
                                  (cons (gxc#compile-e _L4871_)
                                        (cons ''#f '()))))))
              _hd48264864_
              _hd48234856_
              _hd48204848_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g48114832_
                                                      _g48124835_))))
                                             (_g48114832_ _g48124835_))))
                                     (_g48114832_ _g48124835_))))
                             (_g48114832_ _g48124835_))))
                     (_g48114832_ _g48124835_)))))
          (_g48104889_ _stx4809_)))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx4710_)
      (let ((_g47124737_
             (lambda (_g47134734_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g47134734_))))
        (let ((_g47114806_
               (lambda (_g47134740_)
                 (if (gx#stx-pair? _g47134740_)
                     (let ((_e47184742_ (gx#stx-e _g47134740_)))
                       (let ((_hd47194745_ (##car _e47184742_))
                             (_tl47204747_ (##cdr _e47184742_)))
                         (if (gx#stx-pair? _tl47204747_)
                             (let ((_e47214750_ (gx#stx-e _tl47204747_)))
                               (let ((_hd47224753_ (##car _e47214750_))
                                     (_tl47234755_ (##cdr _e47214750_)))
                                 (if (gx#stx-pair? _tl47234755_)
                                     (let ((_e47244758_
                                            (gx#stx-e _tl47234755_)))
                                       (let ((_hd47254761_ (##car _e47244758_))
                                             (_tl47264763_
                                              (##cdr _e47244758_)))
                                         (if (gx#stx-pair? _tl47264763_)
                                             (let ((_e47274766_
                                                    (gx#stx-e _tl47264763_)))
                                               (let ((_hd47284769_
                                                      (##car _e47274766_))
                                                     (_tl47294771_
                                                      (##cdr _e47274766_)))
                                                 (if (gx#stx-pair?
                                                      _tl47294771_)
                                                     (let ((_e47304774_
                                                            (gx#stx-e
                                                             _tl47294771_)))
                                                       (let ((_hd47314777_
                                                              (##car _e47304774_))
                                                             (_tl47324779_
                                                              (##cdr _e47304774_)))
                                                         (if (gx#stx-null?
                                                              _tl47324779_)
                                                             ((lambda (_L4782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L4783_
                               _L4784_
                               _L4785_)
                        (cons '##structure-set!
                              (cons (gxc#compile-e _L4783_)
                                    (cons (gxc#compile-e _L4782_)
                                          (cons (gxc#compile-e _L4784_)
                                                (cons (gxc#compile-e _L4785_)
                                                      (cons ''#f '())))))))
                      _hd47314777_
                      _hd47284769_
                      _hd47254761_
                      _hd47224753_)
                     (_g47124737_ _g47134740_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g47124737_
                                                      _g47134740_))))
                                             (_g47124737_ _g47134740_))))
                                     (_g47124737_ _g47134740_))))
                             (_g47124737_ _g47134740_))))
                     (_g47124737_ _g47134740_)))))
          (_g47114806_ _stx4710_)))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx4619_)
      (let ((_g46214631_
             (lambda (_g46224628_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g46224628_))))
        (let ((_g46204707_
               (lambda (_g46224634_)
                 (if (gx#stx-pair? _g46224634_)
                     (let ((_e46244636_ (gx#stx-e _g46224634_)))
                       (let ((_hd46254639_ (##car _e46244636_))
                             (_tl46264641_ (##cdr _e46244636_)))
                         ((lambda (_L4644_)
                            (let ((_ht4654_ (make-hash-table-eq)))
                              ((letrec ((_lp4656_
                                         (lambda (_rest4658_ _loads4659_)
                                           (let ((_K4661_ (lambda (_ctx4700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest4701_)
                    (let ((_id4703_
                           (##structure-ref
                            _ctx4700_
                            '1
                            gx#expander-context::t
                            '#f)))
                      (if (table-ref _ht4654_ _id4703_ '#f)
                          (_lp4656_ _rest4701_ _loads4659_)
                          (let ((_rt4705_
                                 (string-append
                                  (symbol->string _id4703_)
                                  '"__rt")))
                            (begin
                              (table-set! _ht4654_ _id4703_ _rt4705_)
                              (_lp4656_
                               _rest4701_
                               (cons _rt4705_ _loads4659_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_rest46624670_ _rest4658_))
                                               (let ((_E46654674_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest46624670_))))
                                                 (let ((_else46644682_
                                                        (lambda ()
                                                          (cons 'begin
                                                                (map (lambda (_g46774679_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (list 'load-module _g46774679_))
                             (reverse _loads4659_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K46664688_
                                                          (lambda (_rest4685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in4686_)
                    (if (##structure-instance-of?
                         _in4686_
                         'gx#module-context::t)
                        (_K4661_ _in4686_ _rest4685_)
                        (if (##structure-direct-instance-of?
                             _in4686_
                             'gx#module-import::t)
                            (if (fxpositive?
                                 (##structure-ref
                                  _in4686_
                                  '3
                                  gx#module-import::t
                                  '#f))
                                (_lp4656_ _rest4685_ _loads4659_)
                                (_K4661_ (##structure-ref
                                          (##structure-ref
                                           _in4686_
                                           '1
                                           gx#module-import::t
                                           '#f)
                                          '1
                                          gx#module-export::t
                                          '#f)
                                         _rest4685_))
                            (if (##structure-direct-instance-of?
                                 _in4686_
                                 'gx#import-set::t)
                                (if (fxpositive?
                                     (##structure-ref
                                      _in4686_
                                      '2
                                      gx#import-set::t
                                      '#f))
                                    (_lp4656_ _rest4685_ _loads4659_)
                                    (_K4661_ (##structure-ref
                                              _in4686_
                                              '1
                                              gx#import-set::t
                                              '#f)
                                             _rest4685_))
                                (gxc#raise-compile-error
                                 '"Unexpected import"
                                 _stx4619_
                                 _in4686_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest46624670_)
                                                         (let ((_hd46674691_
                                                                (##car _rest46624670_))
                                                               (_tl46684693_
                                                                (##cdr _rest46624670_)))
                                                           (let ((_in4696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd46674691_))
                     (let ((_rest4698_ _tl46684693_))
                       (_K46664688_ _rest4698_ _in4696_))))
                 (_else46644682_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp4656_)
                               _L4644_
                               '())))
                          _tl46264641_)))
                     (_g46214631_ _g46224634_)))))
          (_g46204707_ _stx4619_)))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx4560_)
      (let ((_generate-quote4562_
             (lambda (_q4617_)
               (if (gx#identifier? _q4617_)
                   (gxc#generate-runtime-identifier _q4617_)
                   (gxc#raise-compile-error
                    '"Cannot quote non-identifier syntax"
                    _stx4560_
                    _q4617_)))))
        (let ((_g45644577_
               (lambda (_g45654574_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g45654574_))))
          (let ((_g45634614_
                 (lambda (_g45654580_)
                   (if (gx#stx-pair? _g45654580_)
                       (let ((_e45674582_ (gx#stx-e _g45654580_)))
                         (let ((_hd45684585_ (##car _e45674582_))
                               (_tl45694587_ (##cdr _e45674582_)))
                           (if (gx#stx-pair? _tl45694587_)
                               (let ((_e45704590_ (gx#stx-e _tl45694587_)))
                                 (let ((_hd45714593_ (##car _e45704590_))
                                       (_tl45724595_ (##cdr _e45704590_)))
                                   (if (gx#stx-null? _tl45724595_)
                                       ((lambda (_L4598_)
                                          (let ((_gid4611_
                                                 (gxc#generate-runtime-temporary__opt-lambda9049
                                                  '#t))
                                                (_quote-e4612_
                                                 (_generate-quote4562_
                                                  _L4598_)))
                                            (begin
                                              (set-box!
                                               (gxc#current-compile-lift)
                                               (cons (cons 'define
                                                           (cons _gid4611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'gx#core-quote-syntax
                                     (cons (cons 'quote
                                                 (cons _quote-e4612_ '()))
                                           '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (unbox (gxc#current-compile-lift))))
                                              _gid4611_)))
                                        _hd45714593_)
                                       (_g45644577_ _g45654580_))))
                               (_g45644577_ _g45654580_))))
                       (_g45644577_ _g45654580_)))))
            (_g45634614_ _stx4560_))))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx4493_)
      (let ((_g44954512_
             (lambda (_g44964509_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g44964509_))))
        (let ((_g44944557_
               (lambda (_g44964515_)
                 (if (gx#stx-pair? _g44964515_)
                     (let ((_e44994517_ (gx#stx-e _g44964515_)))
                       (let ((_hd45004520_ (##car _e44994517_))
                             (_tl45014522_ (##cdr _e44994517_)))
                         (if (gx#stx-pair? _tl45014522_)
                             (let ((_e45024525_ (gx#stx-e _tl45014522_)))
                               (let ((_hd45034528_ (##car _e45024525_))
                                     (_tl45044530_ (##cdr _e45024525_)))
                                 (if (gx#stx-pair? _tl45044530_)
                                     (let ((_e45054533_
                                            (gx#stx-e _tl45044530_)))
                                       (let ((_hd45064536_ (##car _e45054533_))
                                             (_tl45074538_
                                              (##cdr _e45054533_)))
                                         (if (gx#stx-null? _tl45074538_)
                                             ((lambda (_L4541_ _L4542_)
                                                (cons 'define
                                                      (cons (gx#stx-e _L4542_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4541_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd45064536_
                                              _hd45034528_)
                                             (_g44954512_ _g44964515_))))
                                     (_g44954512_ _g44964515_))))
                             (_g44954512_ _g44964515_))))
                     (_g44954512_ _g44964515_)))))
          (_g44944557_ _stx4493_)))))
  (define gxc#generate-meta-begin%
    (lambda (_stx4442_ _state4443_)
      (let ((_g44454455_
             (lambda (_g44464452_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g44464452_))))
        (let ((_g44444490_
               (lambda (_g44464458_)
                 (if (gx#stx-pair? _g44464458_)
                     (let ((_e44484460_ (gx#stx-e _g44464458_)))
                       (let ((_hd44494463_ (##car _e44484460_))
                             (_tl44504465_ (##cdr _e44484460_)))
                         ((lambda (_L4468_)
                            (let ((_c-body4482_
                                   (map (lambda (_g44774479_)
                                          (gxc#compile-e
                                           _g44774479_
                                           _state4443_))
                                        _L4468_)))
                              (let ((_c-body4487_
                                     (filter (lambda (_$obj4484_)
                                               (not (eq? _$obj4484_ '#!void)))
                                             _c-body4482_)))
                                (let () (cons '%#begin _c-body4487_)))))
                          _tl44504465_)))
                     (_g44454455_ _g44464458_)))))
          (_g44444490_ _stx4442_)))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx4350_ _state4351_)
      (let ((_g43534363_
             (lambda (_g43544360_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g43544360_))))
        (let ((_g43524439_
               (lambda (_g43544366_)
                 (if (gx#stx-pair? _g43544366_)
                     (let ((_e43564368_ (gx#stx-e _g43544366_)))
                       (let ((_hd43574371_ (##car _e43564368_))
                             (_tl43584373_ (##cdr _e43564368_)))
                         ((lambda (_L4376_)
                            (let ((_phi4386_
                                   (fx+ (gx#current-expander-phi) '1)))
                              (let ((_block4388_
                                     (gxc#meta-state-begin-phi!
                                      _state4351_
                                      _phi4386_)))
                                (let ((_compiled4391_
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#apply-generate-meta-phi
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin)
                                                 _L4376_)
                                           _state4351_))
                                        gx#current-expander-phi
                                        _phi4386_)))
                                  (let ()
                                    (let ((_g43944404_
                                           (lambda (_g43954401_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g43954401_))))
                                      (let ((_g43934436_
                                             (lambda (_g43954407_)
                                               (if (gx#stx-pair? _g43954407_)
                                                   (let ((_e43974409_
                                                          (gx#stx-e
                                                           _g43954407_)))
                                                     (let ((_hd43984412_
                                                            (##car _e43974409_))
                                                           (_tl43994414_
                                                            (##cdr _e43974409_)))
                                                       (if (gx#identifier?
                                                            _hd43984412_)
                                                           (if (gx#stx-eq?
                                                                '%#begin
                                                                _hd43984412_)
                                                               ((lambda (_L4417_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_c-body4434_
                                 (filter (lambda (_$obj4431_)
                                           (not (eq? _$obj4431_ '#!void)))
                                         _L4417_)))
                            (if _block4388_
                                (cons '%#begin-syntax
                                      (cons (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons _block4388_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _c-body4434_))
                                (if (null? _c-body4434_)
                                    '#!void
                                    (cons '%#begin-syntax _c-body4434_)))))
                        _tl43994414_)
                       (_g43944404_ _g43954407_))
                   (_g43944404_ _g43954407_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g43944404_
                                                    _g43954407_)))))
                                        (_g43934436_ _compiled4391_))))))))
                          _tl43584373_)))
                     (_g43534363_ _g43544366_)))))
          (_g43524439_ _stx4350_)))))
  (define gxc#generate-meta-module%
    (lambda (_stx4281_ _state4282_)
      (begin
        (gxc#meta-state-end-phi! _state4282_)
        (let ((_g42844298_
               (lambda (_g42854295_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g42854295_))))
          (let ((_g42834347_
                 (lambda (_g42854301_)
                   (if (gx#stx-pair? _g42854301_)
                       (let ((_e42884303_ (gx#stx-e _g42854301_)))
                         (let ((_hd42894306_ (##car _e42884303_))
                               (_tl42904308_ (##cdr _e42884303_)))
                           (if (gx#stx-pair? _tl42904308_)
                               (let ((_e42914311_ (gx#stx-e _tl42904308_)))
                                 (let ((_hd42924314_ (##car _e42914311_))
                                       (_tl42934316_ (##cdr _e42914311_)))
                                   ((lambda (_L4319_ _L4320_)
                                      (let ((_key4333_
                                             (gx#core-identifier-key _L4320_)))
                                        (begin
                                          (if (interned-symbol? _key4333_)
                                              '#!void
                                              (gxc#raise-compile-error
                                               '"Cannot compile module with uninterned id"
                                               _stx4281_
                                               _L4320_
                                               _key4333_))
                                          (let ((_ctx4335_
                                                 (gx#syntax-local-e__0
                                                  _L4320_)))
                                            (let ((_code4338_
                                                   (call-with-parameters
                                                    (lambda ()
                                                      (gxc#compile-e
                                                       (##structure-ref
                                                        _ctx4335_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       _state4282_))
                                                    gx#current-expander-context
                                                    _ctx4335_)))
                                              (let ((_rt4340_
                                                     (table-ref
                                                      (gxc#current-compile-runtime-sections)
                                                      _ctx4335_
                                                      '#f)))
                                                (let ((_loader4342_
                                                       (if _rt4340_
                                                           (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons '%#ref (cons '_gx#load-module '()))
                                     (cons (cons '%#quote (cons _rt4340_ '()))
                                           '())))
                         '())
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_modid4344_
                                                         (gx#stx-e _L4320_)))
                                                    (let ()
                                                      (begin
                                                        (gxc#meta-state-end-phi!
                                                         _state4282_)
                                                        (cons '%#module
                                                              (cons _modid4344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _code4338_ _loader4342_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl42934316_
                                    _hd42924314_)))
                               (_g42844298_ _g42854301_))))
                       (_g42844298_ _g42854301_)))))
            (_g42834347_ _stx4281_))))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx4271_ _context-chain4272_)
      ((letrec ((_lp4274_
                 (lambda (_ctx4276_ _path4277_)
                   (let ((_super4279_
                          (##structure-ref
                           _ctx4276_
                           '3
                           gx#phi-context::t
                           '#f)))
                     (if (memq _super4279_ _context-chain4272_)
                         (cons* '#f
                                (car (##structure-ref
                                      _ctx4276_
                                      '7
                                      gx#module-context::t
                                      '#f))
                                _path4277_)
                         (if (##structure-instance-of?
                              _super4279_
                              'gx#module-context::t)
                             (_lp4274_
                              _super4279_
                              (cons (car (##structure-ref
                                          _ctx4276_
                                          '7
                                          gx#module-context::t
                                          '#f))
                                    _path4277_))
                             (cons (make-symbol
                                    '":"
                                    (##structure-ref
                                     _ctx4276_
                                     '1
                                     gx#expander-context::t
                                     '#f))
                                   _path4277_)))))))
         _lp4274_)
       _ctx4271_
       '())))
  (define gxc#current-context-chain
    (lambda ()
      ((letrec ((_lp4266_
                 (lambda (_ctx4268_ _r4269_)
                   (if (##structure-instance-of?
                        _ctx4268_
                        'gx#module-context::t)
                       (_lp4266_
                        (##structure-ref _ctx4268_ '3 gx#phi-context::t '#f)
                        (cons _ctx4268_ _r4269_))
                       _r4269_))))
         _lp4266_)
       (gx#current-expander-context)
       '())))
  (define gxc#generate-meta-import%
    (lambda (_stx4035_ _state4036_)
      (let ((_context-chain4038_ (gxc#current-context-chain)))
        (let ((_make-import-spec4039_
               (lambda (_in4202_)
                 (let ((_in42034215_ _in4202_))
                   (let ((_E42054219_
                          (lambda ()
                            (error '"No clause matching" _in42034215_))))
                     (let ((_K42064229_
                            (lambda (_phi4222_
                                     _name4223_
                                     _src-name4224_
                                     _src-phi4225_
                                     _src-key4226_
                                     _src-ctx4227_)
                              (cons _phi4222_
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name4223_)
                                          (cons _src-phi4225_
                                                (cons (gxc#generate-runtime-identifier-key
                                                       _src-name4224_)
                                                      '())))))))
                       (if (##structure-direct-instance-of?
                            _in42034215_
                            (##type-id gx#module-import::t))
                           (let ((_e42074232_ (##vector-ref _in42034215_ '1)))
                             (if (##structure-direct-instance-of?
                                  _e42074232_
                                  (##type-id gx#module-export::t))
                                 (let ((_e42104235_
                                        (##vector-ref _e42074232_ '1)))
                                   (let ((_src-ctx4238_ _e42104235_))
                                     (let ((_e42114240_
                                            (##vector-ref _e42074232_ '2)))
                                       (let ((_src-key4243_ _e42114240_))
                                         (let ((_e42124245_
                                                (##vector-ref _e42074232_ '3)))
                                           (let ((_src-phi4248_ _e42124245_))
                                             (let ((_e42134250_
                                                    (##vector-ref
                                                     _e42074232_
                                                     '4)))
                                               (let ((_src-name4253_
                                                      _e42134250_))
                                                 (let ((_e42084255_
                                                        (##vector-ref
                                                         _in42034215_
                                                         '2)))
                                                   (let ((_name4258_
                                                          _e42084255_))
                                                     (let ((_e42094260_
                                                            (##vector-ref
                                                             _in42034215_
                                                             '3)))
                                                       (let ((_phi4263_
                                                              _e42094260_))
                                                         (_K42064229_
                                                          _phi4263_
                                                          _name4258_
                                                          _src-name4253_
                                                          _src-phi4248_
                                                          _src-key4243_
                                                          _src-ctx4238_)))))))))))))
                                 (_E42054219_)))
                           (_E42054219_))))))))
          (let ((_make-import-path4040_
                 (lambda (_ctx4200_)
                   (gxc#generate-meta-import-path
                    _ctx4200_
                    _context-chain4038_))))
            (let ((_make-import-spec-in4041_
                   (lambda (_ctx4197_ _in4198_)
                     (cons 'spec:
                           (cons (_make-import-path4040_ _ctx4197_)
                                 (reverse _in4198_))))))
              (begin
                (gxc#meta-state-end-phi! _state4036_)
                (let ((_g40434053_
                       (lambda (_g40444050_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g40444050_))))
                  (let ((_g40424194_
                         (lambda (_g40444056_)
                           (if (gx#stx-pair? _g40444056_)
                               (let ((_e40464058_ (gx#stx-e _g40444056_)))
                                 (let ((_hd40474061_ (##car _e40464058_))
                                       (_tl40484063_ (##cdr _e40464058_)))
                                   ((lambda (_L4066_)
                                      ((letrec ((_lp4077_
                                                 (lambda (_rest4079_
                                                          _current-src4080_
                                                          _current-in4081_
                                                          _r4082_)
                                                   (let ((_rest40834091_
                                                          _rest4079_))
                                                     (let ((_E40864095_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _rest40834091_))))
               (let ((_else40854101_
                      (lambda ()
                        (let ((_r4099_ (if _current-src4080_
                                           (cons (_make-import-spec-in4041_
                                                  _current-src4080_
                                                  _current-in4081_)
                                                 _r4082_)
                                           _r4082_)))
                          (cons '%#import (reverse _r4099_))))))
                 (let ((_K40874182_
                        (lambda (_rest4104_ _in4105_)
                          (if (##structure-direct-instance-of?
                               _in4105_
                               'gx#module-import::t)
                              (let ((_in41064113_ _in4105_))
                                (let ((_E41084117_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _in41064113_))))
                                  (let ((_K41094122_
                                         (lambda (_src-ctx4120_)
                                           (if (eq? _current-src4080_
                                                    _src-ctx4120_)
                                               (_lp4077_
                                                _rest4104_
                                                _current-src4080_
                                                (cons (_make-import-spec4039_
                                                       _in4105_)
                                                      _current-in4081_)
                                                _r4082_)
                                               (if _current-src4080_
                                                   (_lp4077_
                                                    _rest4104_
                                                    _src-ctx4120_
                                                    (cons (_make-import-spec4039_
                                                           _in4105_)
                                                          '())
                                                    (cons (_make-import-spec-in4041_
                                                           _current-src4080_
                                                           _current-in4081_)
                                                          _r4082_))
                                                   (_lp4077_
                                                    _rest4104_
                                                    _src-ctx4120_
                                                    (cons (_make-import-spec4039_
                                                           _in4105_)
                                                          '())
                                                    _r4082_))))))
                                    (if (##structure-direct-instance-of?
                                         _in41064113_
                                         (##type-id gx#module-import::t))
                                        (let ((_e41104125_
                                               (##vector-ref _in41064113_ '1)))
                                          (if (##structure-direct-instance-of?
                                               _e41104125_
                                               (##type-id gx#module-export::t))
                                              (let ((_e41114128_
                                                     (##vector-ref
                                                      _e41104125_
                                                      '1)))
                                                (let ((_src-ctx4131_
                                                       _e41114128_))
                                                  (_K41094122_ _src-ctx4131_)))
                                              (_E41084117_)))
                                        (_E41084117_)))))
                              (if (##structure-direct-instance-of?
                                   _in4105_
                                   'gx#import-set::t)
                                  (let ((_phi4133_
                                         (##structure-ref
                                          _in4105_
                                          '2
                                          gx#import-set::t
                                          '#f)))
                                    (let ((_src4135_
                                           (##structure-ref
                                            _in4105_
                                            '1
                                            gx#import-set::t
                                            '#f)))
                                      (let ((_src-in4175_
                                             (let ((_g41364145_
                                                    (_make-import-path4040_
                                                     _src4135_)))
                                               (let ((_E41394149_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _g41364145_))))
                                                 (let ((_try-match41384160_
                                                        (lambda ()
                                                          (let ((_K41404155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_path4153_) (cons 'in: _path4153_))))
                    (let ((_path4158_ _g41364145_))
                      (_K41404155_ _path4158_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K41414165_
                                                          (lambda (_path4163_)
                                                            _path4163_)))
                                                     (if (##pair? _g41364145_)
                                                         (let ((_hd41424168_
                                                                (##car _g41364145_))
                                                               (_tl41434170_
                                                                (##cdr _g41364145_)))
                                                           (let ((_path4173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd41424168_))
                     (if (##null? _tl41434170_)
                         (_K41414165_ _path4173_)
                         (_try-match41384160_))))
                 (_try-match41384160_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_r4177_ (if _current-src4080_
                                                           (cons (_make-import-spec-in4041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _current-src4080_
                          _current-in4081_)
                         _r4082_)
                   _r4082_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (_lp4077_
                                             _rest4104_
                                             '#f
                                             '()
                                             (cons (if (fxzero? _phi4133_)
                                                       _src-in4175_
                                                       (cons 'phi:
                                                             (cons _phi4133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _src-in4175_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r4177_)))))))
                                  (if (##structure-instance-of?
                                       _in4105_
                                       'gx#module-context::t)
                                      (let ((_r4180_ (if _current-src4080_
                                                         (cons (_make-import-spec-in4041_
                                                                _current-src4080_
                                                                _current-in4081_)
                                                               _r4082_)
                                                         _r4082_)))
                                        (_lp4077_
                                         _rest4104_
                                         '#f
                                         '()
                                         (cons (cons 'runtime:
                                                     (_make-import-path4040_
                                                      _in4105_))
                                               _r4180_)))
                                      '#!void))))))
                   (if (##pair? _rest40834091_)
                       (let ((_hd40884185_ (##car _rest40834091_))
                             (_tl40894187_ (##cdr _rest40834091_)))
                         (let ((_in4190_ _hd40884185_))
                           (let ((_rest4192_ _tl40894187_))
                             (_K40874182_ _rest4192_ _in4190_))))
                       (_else40854101_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _lp4077_)
                                       _L4066_
                                       '#f
                                       '()
                                       '()))
                                    _tl40484063_)))
                               (_g40434053_ _g40444056_)))))
                    (_g40424194_ _stx4035_))))))))))
  (define gxc#generate-meta-export%
    (lambda (_stx3845_ _state3846_)
      (let ((_context-chain3848_ (gxc#current-context-chain)))
        (let ((_make-import-path3849_
               (lambda (_ctx4033_)
                 (gxc#generate-meta-import-path
                  _ctx4033_
                  _context-chain3848_))))
          (let ((_g38513861_
                 (lambda (_g38523858_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g38523858_))))
            (let ((_g38504030_
                   (lambda (_g38523864_)
                     (if (gx#stx-pair? _g38523864_)
                         (let ((_e38543866_ (gx#stx-e _g38523864_)))
                           (let ((_hd38553869_ (##car _e38543866_))
                                 (_tl38563871_ (##cdr _e38543866_)))
                             ((lambda (_L3874_)
                                ((letrec ((_lp3885_
                                           (lambda (_rest3887_ _r3888_)
                                             (let ((_rest38893897_ _rest3887_))
                                               (let ((_E38923901_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest38893897_))))
                                                 (let ((_else38913905_
                                                        (lambda ()
                                                          (cons '%#export
                                                                (reverse _r3888_)))))
                                                   (let ((_K38934018_
                                                          (lambda (_rest3908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out3909_)
                    (let ((_out39103923_ _out3909_))
                      (let ((_E39133927_
                             (lambda ()
                               (error '"No clause matching" _out39103923_))))
                        (let ((_try-match39123990_
                               (lambda ()
                                 (let ((_K39143977_
                                        (lambda (_phi3931_ _src3932_)
                                          (let ((_out3972_
                                                 (if _src3932_
                                                     (cons 'import:
                                                           (cons (let ((_g39333942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (_make-import-path3849_ _src3932_)))
                           (let ((_E39363946_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g39333942_))))
                             (let ((_try-match39353957_
                                    (lambda ()
                                      (let ((_K39373952_
                                             (lambda (_path3950_)
                                               (cons 'in: _path3950_))))
                                        (let ((_path3955_ _g39333942_))
                                          (_K39373952_ _path3955_))))))
                               (let ((_K39383962_
                                      (lambda (_path3960_) _path3960_)))
                                 (if (##pair? _g39333942_)
                                     (let ((_hd39393965_ (##car _g39333942_))
                                           (_tl39403967_ (##cdr _g39333942_)))
                                       (let ((_path3970_ _hd39393965_))
                                         (if (##null? _tl39403967_)
                                             (_K39383962_ _path3970_)
                                             (_try-match39353957_))))
                                     (_try-match39353957_))))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t)))
                                            (let ((_out3974_
                                                   (if (fxzero? _phi3931_)
                                                       _out3972_
                                                       (cons 'phi:
                                                             (cons _phi3931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _out3972_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (_lp3885_
                                                 _rest3908_
                                                 (cons _out3974_
                                                       _r3888_))))))))
                                   (if (##structure-direct-instance-of?
                                        _out39103923_
                                        (##type-id gx#export-set::t))
                                       (let ((_e39153980_
                                              (##vector-ref _out39103923_ '1)))
                                         (let ((_src3983_ _e39153980_))
                                           (let ((_e39163985_
                                                  (##vector-ref
                                                   _out39103923_
                                                   '2)))
                                             (let ((_phi3988_ _e39163985_))
                                               (_K39143977_
                                                _phi3988_
                                                _src3983_)))))
                                       (_E39133927_))))))
                          (let ((_K39173997_
                                 (lambda (_name3993_ _phi3994_ _key3995_)
                                   (_lp3885_
                                    _rest3908_
                                    (cons (cons 'spec:
                                                (cons _phi3994_
                                                      (cons (gxc#generate-runtime-identifier-key
                                                             _key3995_)
                                                            (cons (gxc#generate-runtime-identifier-key
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _name3993_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _r3888_)))))
                            (if (##structure-direct-instance-of?
                                 _out39103923_
                                 (##type-id gx#module-export::t))
                                (let ((_e39184000_
                                       (##vector-ref _out39103923_ '1)))
                                  (let ((_e39194003_
                                         (##vector-ref _out39103923_ '2)))
                                    (let ((_key4006_ _e39194003_))
                                      (let ((_e39204008_
                                             (##vector-ref _out39103923_ '3)))
                                        (let ((_phi4011_ _e39204008_))
                                          (let ((_e39214013_
                                                 (##vector-ref
                                                  _out39103923_
                                                  '4)))
                                            (let ((_name4016_ _e39214013_))
                                              (_K39173997_
                                               _name4016_
                                               _phi4011_
                                               _key4006_))))))))
                                (_try-match39123990_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest38893897_)
                                                         (let ((_hd38944021_
                                                                (##car _rest38893897_))
                                                               (_tl38954023_
                                                                (##cdr _rest38893897_)))
                                                           (let ((_out4026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd38944021_))
                     (let ((_rest4028_ _tl38954023_))
                       (_K38934018_ _rest4028_ _out4026_))))
                 (_else38913905_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp3885_)
                                 _L3874_
                                 '()))
                              _tl38563871_)))
                         (_g38513861_ _g38523864_)))))
              (_g38504030_ _stx3845_)))))))
  (define gxc#generate-meta-provide%
    (lambda (_stx3806_ _state3807_)
      (begin
        (gxc#meta-state-end-phi! _state3807_)
        (let ((_g38093819_
               (lambda (_g38103816_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g38103816_))))
          (let ((_g38083842_
                 (lambda (_g38103822_)
                   (if (gx#stx-pair? _g38103822_)
                       (let ((_e38123824_ (gx#stx-e _g38103822_)))
                         (let ((_hd38133827_ (##car _e38123824_))
                               (_tl38143829_ (##cdr _e38123824_)))
                           ((lambda (_L3832_)
                              (cons '%#provide
                                    (map gxc#generate-runtime-identifier
                                         _L3832_)))
                            _tl38143829_)))
                       (_g38093819_ _g38103822_)))))
            (_g38083842_ _stx3806_))))))
  (define gxc#generate-meta-extern%
    (lambda (_stx3677_ _state3678_)
      (let ((_generate13680_
             (lambda (_id3801_ _eid3802_)
               (let ((_eid3804_ (gx#stx-e _eid3802_)))
                 (begin
                   (if (interned-symbol? _eid3804_)
                       '#!void
                       (gxc#raise-compile-error
                        '"Cannot compile extern reference"
                        _stx3677_
                        _eid3804_))
                   (cons (gxc#generate-runtime-identifier _id3801_)
                         (cons _eid3804_ '())))))))
        (let ((_g36823710_
               (lambda (_g36833707_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g36833707_))))
          (let ((_g36813798_
                 (lambda (_g36833713_)
                   (if (gx#stx-pair? _g36833713_)
                       (let ((_e36863715_ (gx#stx-e _g36833713_)))
                         (let ((_hd36873718_ (##car _e36863715_))
                               (_tl36883720_ (##cdr _e36863715_)))
                           (if (gx#stx-pair/null? _tl36883720_)
                               (if (fx>= (gx#stx-length _tl36883720_) '0)
                                   (let ((_g10167_
                                          (gx#syntax-split-splice
                                           _tl36883720_
                                           '0)))
                                     (begin
                                       (let ((_g10168_
                                              (values-count _g10167_)))
                                         (if (not (fx= _g10168_ 2))
                                             (error "Context expects 2 values"
                                                    _g10168_)))
                                       (let ((_target36893723_
                                              (values-ref _g10167_ 0))
                                             (_tl36913725_
                                              (values-ref _g10167_ 1)))
                                         (if (gx#stx-null? _tl36913725_)
                                             (letrec ((_loop36923728_
                                                       (lambda (_hd36903731_
                                                                _eid36963733_
                                                                _id36973735_)
                                                         (if (gx#stx-pair?
                                                              _hd36903731_)
                                                             (let ((_e36933738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd36903731_)))
                       (let ((_lp-hd36943741_ (##car _e36933738_))
                             (_lp-tl36953743_ (##cdr _e36933738_)))
                         (if (gx#stx-pair? _lp-hd36943741_)
                             (let ((_e37003746_ (gx#stx-e _lp-hd36943741_)))
                               (let ((_hd37013749_ (##car _e37003746_))
                                     (_tl37023751_ (##cdr _e37003746_)))
                                 (if (gx#stx-pair? _tl37023751_)
                                     (let ((_e37033754_
                                            (gx#stx-e _tl37023751_)))
                                       (let ((_hd37043757_ (##car _e37033754_))
                                             (_tl37053759_
                                              (##cdr _e37033754_)))
                                         (if (gx#stx-null? _tl37053759_)
                                             (_loop36923728_
                                              _lp-tl36953743_
                                              (cons _hd37043757_ _eid36963733_)
                                              (cons _hd37013749_ _id36973735_))
                                             (_g36823710_ _g36833713_))))
                                     (_g36823710_ _g36833713_))))
                             (_g36823710_ _g36833713_))))
                     (let ((_eid36983762_ (reverse _eid36963733_))
                           (_id36993764_ (reverse _id36973735_)))
                       ((lambda (_L3767_ _L3768_)
                          (cons '%#extern
                                (map _generate13680_
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g37833786_
                                                        _g37843788_)
                                                 (cons _g37833786_
                                                       _g37843788_))
                                               '()
                                               _L3768_))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g37903793_
                                                        _g37913795_)
                                                 (cons _g37903793_
                                                       _g37913795_))
                                               '()
                                               _L3767_)))))
                        _eid36983762_
                        _id36993764_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop36923728_
                                                _target36893723_
                                                '()
                                                '()))
                                             (_g36823710_ _g36833713_)))))
                                   (_g36823710_ _g36833713_))
                               (_g36823710_ _g36833713_))))
                       (_g36823710_ _g36833713_)))))
            (_g36813798_ _stx3677_))))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx3472_ _state3473_)
      (let ((_generate13475_
             (lambda (_id3672_)
               (let ((_eid3674_ (gxc#generate-runtime-binding-id _id3672_))
                     (_ident3675_ (gxc#generate-runtime-identifier _id3672_)))
                 (cons '%#define-runtime
                       (cons _ident3675_ (cons _eid3674_ '())))))))
        (let ((_generate*3476_
               (lambda (_all3640_)
                 (let ((_all36413649_ _all3640_))
                   (let ((_E36443653_
                          (lambda ()
                            (error '"No clause matching" _all36413649_))))
                     (let ((_else36433657_
                            (lambda () (cons '%#begin _all3640_))))
                       (let ((_K36453662_ (lambda (_one3660_) _one3660_)))
                         (if (##pair? _all36413649_)
                             (let ((_hd36463665_ (##car _all36413649_))
                                   (_tl36473667_ (##cdr _all36413649_)))
                               (let ((_one3670_ _hd36463665_))
                                 (if (##null? _tl36473667_)
                                     (_K36453662_ _one3670_)
                                     (_else36433657_))))
                             (_else36433657_)))))))))
          (let ((_g34783495_
                 (lambda (_g34793492_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g34793492_))))
            (let ((_g34773637_
                   (lambda (_g34793498_)
                     (if (gx#stx-pair? _g34793498_)
                         (let ((_e34823500_ (gx#stx-e _g34793498_)))
                           (let ((_hd34833503_ (##car _e34823500_))
                                 (_tl34843505_ (##cdr _e34823500_)))
                             (if (gx#stx-pair? _tl34843505_)
                                 (let ((_e34853508_ (gx#stx-e _tl34843505_)))
                                   (let ((_hd34863511_ (##car _e34853508_))
                                         (_tl34873513_ (##cdr _e34853508_)))
                                     (if (gx#stx-pair? _tl34873513_)
                                         (let ((_e34883516_
                                                (gx#stx-e _tl34873513_)))
                                           (let ((_hd34893519_
                                                  (##car _e34883516_))
                                                 (_tl34903521_
                                                  (##cdr _e34883516_)))
                                             (if (gx#stx-null? _tl34903521_)
                                                 ((lambda (_L3524_ _L3525_)
                                                    ((letrec ((_lp3541_
                                                               (lambda (_rest3543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _r3544_)
                         (let ((_g35493565_
                                (lambda (_g35503562_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g35503562_))))
                           (let ((_g35483572_
                                  (lambda (_g35503568_)
                                    ((lambda ()
                                       (_generate*3476_ (reverse _r3544_)))))))
                             (let ((_g35473588_
                                    (lambda (_g35503575_)
                                      ((lambda (_L3577_)
                                         (if (gx#identifier? _L3577_)
                                             (_generate*3476_
                                              (foldl1 cons
                                                      (cons (_generate13475_
                                                             _L3577_)
                                                            '())
                                                      _r3544_))
                                             (_g35483572_ _g35503575_)))
                                       _g35503575_))))
                               (let ((_g35463612_
                                      (lambda (_g35503591_)
                                        (if (gx#stx-pair? _g35503591_)
                                            (let ((_e35573593_
                                                   (gx#stx-e _g35503591_)))
                                              (let ((_hd35583596_
                                                     (##car _e35573593_))
                                                    (_tl35593598_
                                                     (##cdr _e35573593_)))
                                                ((lambda (_L3601_ _L3602_)
                                                   (_lp3541_
                                                    _L3601_
                                                    (cons (_generate13475_
                                                           _L3602_)
                                                          _r3544_)))
                                                 _tl35593598_
                                                 _hd35583596_)))
                                            (_g35473588_ _g35503591_)))))
                                 (let ((_g35453634_
                                        (lambda (_g35503615_)
                                          (if (gx#stx-pair? _g35503615_)
                                              (let ((_e35523617_
                                                     (gx#stx-e _g35503615_)))
                                                (let ((_hd35533620_
                                                       (##car _e35523617_))
                                                      (_tl35543622_
                                                       (##cdr _e35523617_)))
                                                  (if (gx#stx-datum?
                                                       _hd35533620_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd35533620_)
                          '#f)
                  ((lambda (_L3625_) (_lp3541_ _L3625_ _r3544_)) _tl35543622_)
                  (_g35463612_ _g35503615_))
              (_g35463612_ _g35503615_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g35463612_ _g35503615_)))))
                                   (_g35453634_ _rest3543_)))))))))
               _lp3541_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _L3525_
                                                     '()))
                                                  _hd34893519_
                                                  _hd34863511_)
                                                 (_g34783495_ _g34793498_))))
                                         (_g34783495_ _g34793498_))))
                                 (_g34783495_ _g34793498_))))
                         (_g34783495_ _g34793498_)))))
              (_g34773637_ _stx3472_)))))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx3369_ _state3370_)
      (let ((_g33723389_
             (lambda (_g33733386_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g33733386_))))
        (let ((_g33713469_
               (lambda (_g33733392_)
                 (if (gx#stx-pair? _g33733392_)
                     (let ((_e33763394_ (gx#stx-e _g33733392_)))
                       (let ((_hd33773397_ (##car _e33763394_))
                             (_tl33783399_ (##cdr _e33763394_)))
                         (if (gx#stx-pair? _tl33783399_)
                             (let ((_e33793402_ (gx#stx-e _tl33783399_)))
                               (let ((_hd33803405_ (##car _e33793402_))
                                     (_tl33813407_ (##cdr _e33793402_)))
                                 (if (gx#stx-pair? _tl33813407_)
                                     (let ((_e33823410_
                                            (gx#stx-e _tl33813407_)))
                                       (let ((_hd33833413_ (##car _e33823410_))
                                             (_tl33843415_
                                              (##cdr _e33823410_)))
                                         (if (gx#stx-null? _tl33843415_)
                                             ((lambda (_L3418_ _L3419_)
                                                (let ((_eid3434_
                                                       (gxc#generate-runtime-binding-id
                                                        _L3419_)))
                                                  (let ((_phi3436_
                                                         (fx+ (gx#current-expander-phi)
                                                              '1)))
                                                    (let ((_block3438_
                                                           (gxc#meta-state-begin-phi!
                                                            _state3370_
                                                            _phi3436_)))
                                                      (let ()
                                                        (begin
                                                          (let ((_g34413448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g34423445_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g34423445_))))
                    (let ((_g34403466_
                           (lambda (_g34423451_)
                             ((lambda (_L3453_)
                                (let ()
                                  (gxc#meta-state-add-phi!
                                   _state3370_
                                   _phi3436_
                                   (cons (gx#datum->syntax__0
                                          '#f
                                          '%#define-runtime)
                                         (cons _L3453_ (cons _L3418_ '()))))))
                              _g34423451_))))
                      (_g34403466_ _eid3434_)))
                  (if _block3438_
                      (cons '%#begin
                            (cons (cons '%#begin-syntax
                                        (cons (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote (cons _block3438_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons '%#define-syntax
                                              (cons (gxc#generate-runtime-identifier
                                                     _L3419_)
                                                    (cons _eid3434_ '())))
                                        '())))
                      (cons '%#define-syntax
                            (cons (gxc#generate-runtime-identifier _L3419_)
                                  (cons _eid3434_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd33833413_
                                              _hd33803405_)
                                             (_g33723389_ _g33733392_))))
                                     (_g33723389_ _g33733392_))))
                             (_g33723389_ _g33733392_))))
                     (_g33723389_ _g33733392_)))))
          (_g33713469_ _stx3369_)))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx3301_ _state3302_)
      (let ((_g33043321_
             (lambda (_g33053318_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g33053318_))))
        (let ((_g33033366_
               (lambda (_g33053324_)
                 (if (gx#stx-pair? _g33053324_)
                     (let ((_e33083326_ (gx#stx-e _g33053324_)))
                       (let ((_hd33093329_ (##car _e33083326_))
                             (_tl33103331_ (##cdr _e33083326_)))
                         (if (gx#stx-pair? _tl33103331_)
                             (let ((_e33113334_ (gx#stx-e _tl33103331_)))
                               (let ((_hd33123337_ (##car _e33113334_))
                                     (_tl33133339_ (##cdr _e33113334_)))
                                 (if (gx#stx-pair? _tl33133339_)
                                     (let ((_e33143342_
                                            (gx#stx-e _tl33133339_)))
                                       (let ((_hd33153345_ (##car _e33143342_))
                                             (_tl33163347_
                                              (##cdr _e33143342_)))
                                         (if (gx#stx-null? _tl33163347_)
                                             ((lambda (_L3350_ _L3351_)
                                                (cons '%#define-alias
                                                      (cons (gxc#generate-runtime-identifier
                                                             _L3351_)
                                                            (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3350_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd33153345_
                                              _hd33123337_)
                                             (_g33043321_ _g33053324_))))
                                     (_g33043321_ _g33053324_))))
                             (_g33043321_ _g33053324_))))
                     (_g33043321_ _g33053324_)))))
          (_g33033366_ _stx3301_)))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx3298_ _state3299_)
      (begin
        (gxc#meta-state-add-phi!
         _state3299_
         (gx#current-expander-phi)
         _stx3298_)
        (gxc#generate-meta-define-values% _stx3298_ _state3299_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx3295_ _state3296_)
      (begin
        (gxc#meta-state-add-phi!
         _state3296_
         (gx#current-expander-phi)
         _stx3295_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type 'gxc#meta-state::t '#f '4 'meta-state '() ':init!))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args3292_
      (apply make-struct-instance gxc#meta-state::t _$args3292_)))
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
    (lambda (_self3289_ _ctx3290_)
      (struct-instance-init!
       _self3289_
       (symbol->string
        (##structure-ref _ctx3290_ '1 gx#expander-context::t '#f))
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
    (lambda _$args3286_
      (apply make-struct-instance gxc#meta-state-block::t _$args3286_)))
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
    (lambda (_state3245_ _phi3246_)
      (let ((_state32473255_ _state3245_))
        (let ((_E32493259_
               (lambda () (error '"No clause matching" _state32473255_))))
          (let ((_K32503268_
                 (lambda (_open3262_ _n3263_ _src3264_)
                   (if (table-ref _open3262_ _phi3246_ '#f)
                       '#f
                       (let ((_block-ref3266_
                              (string-append
                               _src3264_
                               '"__"
                               (number->string _n3263_))))
                         (begin
                           (##structure-set!
                            _state3245_
                            (fx+ _n3263_ '1)
                            '2
                            gxc#meta-state::t
                            '#f)
                           (table-set!
                            _open3262_
                            _phi3246_
                            (##structure
                             gxc#meta-state-block::t
                             (gx#current-expander-context)
                             _phi3246_
                             _n3263_
                             '()))
                           _block-ref3266_))))))
            (if (##structure-instance-of?
                 _state32473255_
                 (##type-id gxc#meta-state::t))
                (let ((_e32513271_ (##vector-ref _state32473255_ '1)))
                  (let ((_src3274_ _e32513271_))
                    (let ((_e32523276_ (##vector-ref _state32473255_ '2)))
                      (let ((_n3279_ _e32523276_))
                        (let ((_e32533281_ (##vector-ref _state32473255_ '3)))
                          (let ((_open3284_ _e32533281_))
                            (_K32503268_ _open3284_ _n3279_ _src3274_)))))))
                (_E32493259_)))))))
  (define gxc#meta-state-add-phi!
    (lambda (_state3239_ _phi3240_ _stx3241_)
      (let ((_block3243_
             (table-ref
              (##structure-ref _state3239_ '3 gxc#meta-state::t '#f)
              _phi3240_
              '#f)))
        (##structure-set!
         _block3243_
         (cons _stx3241_
               (##structure-ref _block3243_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state3234_)
      (begin
        (##structure-set!
         _state3234_
         (hash-fold
          (lambda (_g10169_ _block3236_ _r3237_) (cons _block3236_ _r3237_))
          (##structure-ref _state3234_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state3234_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state3234_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state3186_)
      (begin
        (gxc#meta-state-end-phi! _state3186_)
        (foldl1 (lambda (_block3188_ _r3189_)
                  (let ((_block31903199_ _block3188_))
                    (let ((_E31923203_
                           (lambda ()
                             (error '"No clause matching" _block31903199_))))
                      (let ((_K31933211_
                             (lambda (_code3206_ _n3207_ _phi3208_ _ctx3209_)
                               (if (null? _code3206_)
                                   _r3189_
                                   (cons (cons _ctx3209_
                                               (cons _phi3208_
                                                     (cons _n3207_
                                                           (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (reverse _code3206_))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _r3189_)))))
                        (if (##structure-instance-of?
                             _block31903199_
                             (##type-id gxc#meta-state-block::t))
                            (let ((_e31943214_
                                   (##vector-ref _block31903199_ '1)))
                              (let ((_ctx3217_ _e31943214_))
                                (let ((_e31953219_
                                       (##vector-ref _block31903199_ '2)))
                                  (let ((_phi3222_ _e31953219_))
                                    (let ((_e31963224_
                                           (##vector-ref _block31903199_ '3)))
                                      (let ((_n3227_ _e31963224_))
                                        (let ((_e31973229_
                                               (##vector-ref
                                                _block31903199_
                                                '4)))
                                          (let ((_code3232_ _e31973229_))
                                            (_K31933211_
                                             _code3232_
                                             _n3227_
                                             _phi3222_
                                             _ctx3217_)))))))))
                            (_E31923203_))))))
                '()
                (##structure-ref _state3186_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx3182_)
      (let ((_ht3184_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx3182_ _ht3184_)
          _ht3184_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx3125_ _ht3126_)
      (let ((_g31283141_
             (lambda (_g31293138_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g31293138_))))
        (let ((_g31273179_
               (lambda (_g31293144_)
                 (if (gx#stx-pair? _g31293144_)
                     (let ((_e31313146_ (gx#stx-e _g31293144_)))
                       (let ((_hd31323149_ (##car _e31313146_))
                             (_tl31333151_ (##cdr _e31313146_)))
                         (if (gx#stx-pair? _tl31333151_)
                             (let ((_e31343154_ (gx#stx-e _tl31333151_)))
                               (let ((_hd31353157_ (##car _e31343154_))
                                     (_tl31363159_ (##cdr _e31343154_)))
                                 (if (gx#stx-null? _tl31363159_)
                                     ((lambda (_L3162_)
                                        (let ((_bind3174_
                                               (gx#resolve-identifier__0
                                                _L3162_)))
                                          (let ((_eid3176_
                                                 (if _bind3174_
                                                     (##structure-ref
                                                      _bind3174_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (gx#stx-e _L3162_))))
                                            (let ()
                                              (table-set!
                                               _ht3126_
                                               _eid3176_
                                               _eid3176_)))))
                                      _hd31353157_)
                                     (_g31283141_ _g31293144_))))
                             (_g31283141_ _g31293144_))))
                     (_g31283141_ _g31293144_)))))
          (_g31273179_ _stx3125_)))))
  (define gxc#collect-refs-setq%
    (lambda (_stx3052_ _ht3053_)
      (let ((_g30553072_
             (lambda (_g30563069_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g30563069_))))
        (let ((_g30543122_
               (lambda (_g30563075_)
                 (if (gx#stx-pair? _g30563075_)
                     (let ((_e30593077_ (gx#stx-e _g30563075_)))
                       (let ((_hd30603080_ (##car _e30593077_))
                             (_tl30613082_ (##cdr _e30593077_)))
                         (if (gx#stx-pair? _tl30613082_)
                             (let ((_e30623085_ (gx#stx-e _tl30613082_)))
                               (let ((_hd30633088_ (##car _e30623085_))
                                     (_tl30643090_ (##cdr _e30623085_)))
                                 (if (gx#stx-pair? _tl30643090_)
                                     (let ((_e30653093_
                                            (gx#stx-e _tl30643090_)))
                                       (let ((_hd30663096_ (##car _e30653093_))
                                             (_tl30673098_
                                              (##cdr _e30653093_)))
                                         (if (gx#stx-null? _tl30673098_)
                                             ((lambda (_L3101_ _L3102_)
                                                (let ((_bind3117_
                                                       (gx#resolve-identifier__0
                                                        _L3102_)))
                                                  (let ((_eid3119_
                                                         (if _bind3117_
                                                             (##structure-ref
                                                              _bind3117_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (gx#stx-e
                                                              _L3102_))))
                                                    (let ()
                                                      (begin
                                                        (table-set!
                                                         _ht3053_
                                                         _eid3119_
                                                         _eid3119_)
                                                        (gxc#compile-e
                                                         _L3101_
                                                         _ht3053_))))))
                                              _hd30663096_
                                              _hd30633088_)
                                             (_g30553072_ _g30563075_))))
                                     (_g30553072_ _g30563075_))))
                             (_g30553072_ _g30563075_))))
                     (_g30553072_ _g30563075_)))))
          (_g30543122_ _stx3052_)))))
  (define gxc#find-runtime-begin%
    (lambda (_stx3014_)
      (let ((_g30163026_
             (lambda (_g30173023_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g30173023_))))
        (let ((_g30153049_
               (lambda (_g30173029_)
                 (if (gx#stx-pair? _g30173029_)
                     (let ((_e30193031_ (gx#stx-e _g30173029_)))
                       (let ((_hd30203034_ (##car _e30193031_))
                             (_tl30213036_ (##cdr _e30193031_)))
                         ((lambda (_L3039_) (ormap1 gxc#compile-e _L3039_))
                          _tl30213036_)))
                     (_g30163026_ _g30173029_)))))
          (_g30153049_ _stx3014_))))))
