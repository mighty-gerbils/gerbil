(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx7058_ . _args7059_)
      (let ((_g70617071_
             (lambda (_g70627068_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g70627068_))))
        (let ((_g70607099_
               (lambda (_g70627074_)
                 (if (gx#stx-pair? _g70627074_)
                     (let ((_e70647076_ (gx#stx-e _g70627074_)))
                       (let ((_hd70657079_ (##car _e70647076_))
                             (_tl70667081_ (##cdr _e70647076_)))
                         ((lambda (_L7084_)
                            (let ((_$e7094_
                                   (hash-get
                                    (gxc#current-compile-methods)
                                    (gx#stx-e _L7084_))))
                              (if _$e7094_
                                  ((lambda (_method7097_)
                                     (apply _method7097_ _stx7058_ _args7059_))
                                   _$e7094_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile; missing method"
                                   _stx7058_
                                   _L7084_))))
                          _hd70657079_)))
                     (_g70617071_ _g70627074_)))))
          (_g70607099_ _stx7058_)))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl7055_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl7055_ '%#lambda void)
           (hash-put! _tbl7055_ '%#case-lambda void)
           (hash-put! _tbl7055_ '%#let-values void)
           (hash-put! _tbl7055_ '%#letrec-values void)
           (hash-put! _tbl7055_ '%#letrec*-values void)
           (hash-put! _tbl7055_ '%#quote void)
           (hash-put! _tbl7055_ '%#quote-syntax void)
           (hash-put! _tbl7055_ '%#call void)
           (hash-put! _tbl7055_ '%#if void)
           (hash-put! _tbl7055_ '%#ref void)
           (hash-put! _tbl7055_ '%#set! void)
           (hash-put! _tbl7055_ '%#struct-instance? void)
           (hash-put! _tbl7055_ '%#struct-direct-instance? void)
           (hash-put! _tbl7055_ '%#struct-ref void)
           (hash-put! _tbl7055_ '%#struct-set! void)
           _tbl7055_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl7051_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl7051_ '%#begin void)
           (hash-put! _tbl7051_ '%#begin-syntax void)
           (hash-put! _tbl7051_ '%#begin-foreign void)
           (hash-put! _tbl7051_ '%#module void)
           (hash-put! _tbl7051_ '%#import void)
           (hash-put! _tbl7051_ '%#export void)
           (hash-put! _tbl7051_ '%#provide void)
           (hash-put! _tbl7051_ '%#extern void)
           (hash-put! _tbl7051_ '%#define-values void)
           (hash-put! _tbl7051_ '%#define-syntax void)
           (hash-put! _tbl7051_ '%#define-alias void)
           (hash-put! _tbl7051_ '%#declare void)
           _tbl7051_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl7047_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl7047_ (force gxc#&void-special-form))
           (hash-copy! _tbl7047_ (force gxc#&void-expression))
           _tbl7047_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl7043_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl7043_ (force gxc#&void-expression))
           (hash-copy! _tbl7043_ (force gxc#&void-special-form))
           (hash-put! _tbl7043_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl7043_ '%#begin-syntax gxc#collect-begin-syntax%)
           (hash-put! _tbl7043_ '%#module gxc#collect-module%)
           (hash-put!
            _tbl7043_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (hash-put!
            _tbl7043_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl7043_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx7036_ . _args7038_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx7036_ _args7038_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl7033_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl7033_ (force gxc#&void))
           (hash-put! _tbl7033_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl7033_ '%#module gxc#lift-modules-module%)
           _tbl7033_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx7026_ . _args7028_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx7026_ _args7028_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl7023_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl7023_ '%#begin gxc#find-runtime-begin%)
           (hash-put! _tbl7023_ '%#begin-syntax false)
           (hash-put! _tbl7023_ '%#begin-foreign true)
           (hash-put! _tbl7023_ '%#module false)
           (hash-put! _tbl7023_ '%#import false)
           (hash-put! _tbl7023_ '%#export false)
           (hash-put! _tbl7023_ '%#provide false)
           (hash-put! _tbl7023_ '%#extern false)
           (hash-put! _tbl7023_ '%#define-values true)
           (hash-put! _tbl7023_ '%#define-syntax false)
           (hash-put! _tbl7023_ '%#define-alias false)
           (hash-put! _tbl7023_ '%#declare false)
           (hash-put! _tbl7023_ '%#lambda true)
           (hash-put! _tbl7023_ '%#case-lambda true)
           (hash-put! _tbl7023_ '%#let-values true)
           (hash-put! _tbl7023_ '%#letrec-values true)
           (hash-put! _tbl7023_ '%#letrec*-values true)
           (hash-put! _tbl7023_ '%#quote true)
           (hash-put! _tbl7023_ '%#call true)
           (hash-put! _tbl7023_ '%#if true)
           (hash-put! _tbl7023_ '%#ref true)
           (hash-put! _tbl7023_ '%#set! true)
           (hash-put! _tbl7023_ '%#struct-instance? true)
           (hash-put! _tbl7023_ '%#struct-direct-instance? true)
           (hash-put! _tbl7023_ '%#struct-ref true)
           (hash-put! _tbl7023_ '%#struct-set! true)
           _tbl7023_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx7016_ . _args7018_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx7016_ _args7018_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl7013_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl7013_ '%#begin gxc#generate-runtime-empty)
           (hash-put! _tbl7013_ '%#begin-syntax gxc#generate-runtime-empty)
           (hash-put! _tbl7013_ '%#begin-foreign gxc#generate-runtime-empty)
           (hash-put! _tbl7013_ '%#module gxc#generate-runtime-empty)
           (hash-put! _tbl7013_ '%#import gxc#generate-runtime-empty)
           (hash-put! _tbl7013_ '%#export gxc#generate-runtime-empty)
           (hash-put! _tbl7013_ '%#provide gxc#generate-runtime-empty)
           (hash-put! _tbl7013_ '%#extern gxc#generate-runtime-empty)
           (hash-put! _tbl7013_ '%#define-values gxc#generate-runtime-empty)
           (hash-put! _tbl7013_ '%#define-syntax gxc#generate-runtime-empty)
           (hash-put! _tbl7013_ '%#define-alias gxc#generate-runtime-empty)
           (hash-put! _tbl7013_ '%#declare gxc#generate-runtime-empty)
           (hash-put! _tbl7013_ '%#lambda gxc#generate-runtime-empty)
           (hash-put! _tbl7013_ '%#case-lambda gxc#generate-runtime-empty)
           (hash-put! _tbl7013_ '%#let-values gxc#generate-runtime-empty)
           (hash-put! _tbl7013_ '%#letrec-values gxc#generate-runtime-empty)
           (hash-put! _tbl7013_ '%#letrec*-values gxc#generate-runtime-empty)
           (hash-put! _tbl7013_ '%#quote gxc#generate-runtime-empty)
           (hash-put! _tbl7013_ '%#call gxc#generate-runtime-empty)
           (hash-put! _tbl7013_ '%#if gxc#generate-runtime-empty)
           (hash-put! _tbl7013_ '%#ref gxc#generate-runtime-empty)
           (hash-put! _tbl7013_ '%#set! gxc#generate-runtime-empty)
           (hash-put! _tbl7013_ '%#struct-instance? gxc#generate-runtime-empty)
           (hash-put!
            _tbl7013_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (hash-put! _tbl7013_ '%#struct-ref gxc#generate-runtime-empty)
           (hash-put! _tbl7013_ '%#struct-set! gxc#generate-runtime-empty)
           _tbl7013_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl7009_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl7009_ (force gxc#&generate-runtime-empty))
           (hash-put! _tbl7009_ '%#begin gxc#generate-runtime-begin%)
           (hash-put! _tbl7009_ '%#import gxc#generate-runtime-loader-import%)
           _tbl7009_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx7002_ . _args7004_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx7002_ _args7004_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl6999_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl6999_ (force gxc#&generate-runtime-empty))
           (hash-put! _tbl6999_ '%#begin gxc#generate-runtime-begin%)
           (hash-put!
            _tbl6999_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (hash-put!
            _tbl6999_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (hash-put! _tbl6999_ '%#declare gxc#generate-runtime-declare%)
           (hash-put! _tbl6999_ '%#lambda gxc#generate-runtime-lambda%)
           (hash-put!
            _tbl6999_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (hash-put! _tbl6999_ '%#let-values gxc#generate-runtime-let-values%)
           (hash-put!
            _tbl6999_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (hash-put!
            _tbl6999_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (hash-put! _tbl6999_ '%#quote gxc#generate-runtime-quote%)
           (hash-put! _tbl6999_ '%#call gxc#generate-runtime-call%)
           (hash-put! _tbl6999_ '%#if gxc#generate-runtime-if%)
           (hash-put! _tbl6999_ '%#ref gxc#generate-runtime-ref%)
           (hash-put! _tbl6999_ '%#set! gxc#generate-runtime-setq%)
           (hash-put!
            _tbl6999_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (hash-put!
            _tbl6999_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (hash-put! _tbl6999_ '%#struct-ref gxc#generate-runtime-struct-ref%)
           (hash-put!
            _tbl6999_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           _tbl6999_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx6992_ . _args6994_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx6992_ _args6994_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl6989_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl6989_ (force gxc#&generate-runtime))
           (hash-put!
            _tbl6989_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (hash-put!
            _tbl6989_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl6989_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx6982_ . _args6984_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx6982_ _args6984_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl6979_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl6979_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl6979_ '%#lambda gxc#collect-refs-lambda%)
           (hash-put! _tbl6979_ '%#case-lambda gxc#collect-refs-case-lambda%)
           (hash-put! _tbl6979_ '%#let-values gxc#collect-refs-let-values%)
           (hash-put! _tbl6979_ '%#letrec-values gxc#collect-refs-let-values%)
           (hash-put! _tbl6979_ '%#letrec*-values gxc#collect-refs-let-values%)
           (hash-put! _tbl6979_ '%#quote void)
           (hash-put! _tbl6979_ '%#quote-syntax void)
           (hash-put! _tbl6979_ '%#call gxc#collect-begin%)
           (hash-put! _tbl6979_ '%#if gxc#collect-begin%)
           (hash-put! _tbl6979_ '%#ref gxc#collect-refs-ref%)
           (hash-put! _tbl6979_ '%#set! gxc#collect-refs-setq%)
           (hash-put!
            _tbl6979_
            '%#struct-instance?
            gxc#collect-refs-struct-instancep%)
           (hash-put!
            _tbl6979_
            '%#struct-direct-instance?
            gxc#collect-refs-struct-instancep%)
           (hash-put! _tbl6979_ '%#struct-ref gxc#collect-refs-struct-ref%)
           (hash-put! _tbl6979_ '%#struct-set! gxc#collect-refs-struct-setq%)
           _tbl6979_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx6972_ . _args6974_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx6972_ _args6974_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl6969_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl6969_ (force gxc#&void-expression))
           (hash-put! _tbl6969_ '%#begin gxc#generate-meta-begin%)
           (hash-put!
            _tbl6969_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (hash-put! _tbl6969_ '%#module gxc#generate-meta-module%)
           (hash-put! _tbl6969_ '%#import gxc#generate-meta-import%)
           (hash-put! _tbl6969_ '%#export gxc#generate-meta-export%)
           (hash-put! _tbl6969_ '%#provide gxc#generate-meta-provide%)
           (hash-put! _tbl6969_ '%#extern gxc#generate-meta-extern%)
           (hash-put!
            _tbl6969_
            '%#define-values
            gxc#generate-meta-define-values%)
           (hash-put!
            _tbl6969_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (hash-put!
            _tbl6969_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (hash-put! _tbl6969_ '%#begin-foreign void)
           (hash-put! _tbl6969_ '%#declare void)
           _tbl6969_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx6962_ . _args6964_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx6962_ _args6964_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl6959_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl6959_ '%#begin gxc#generate-meta-begin%)
           (hash-put!
            _tbl6959_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (hash-put!
            _tbl6959_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (hash-put!
            _tbl6959_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (hash-put!
            _tbl6959_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (hash-put! _tbl6959_ '%#lambda gxc#generate-meta-phi-expr)
           (hash-put! _tbl6959_ '%#case-lambda gxc#generate-meta-phi-expr)
           (hash-put! _tbl6959_ '%#let-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl6959_ '%#letrec-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl6959_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl6959_ '%#quote gxc#generate-meta-phi-expr)
           (hash-put! _tbl6959_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (hash-put! _tbl6959_ '%#call gxc#generate-meta-phi-expr)
           (hash-put! _tbl6959_ '%#if gxc#generate-meta-phi-expr)
           (hash-put! _tbl6959_ '%#ref gxc#generate-meta-phi-expr)
           (hash-put! _tbl6959_ '%#set! gxc#generate-meta-phi-expr)
           (hash-put! _tbl6959_ '%#struct-instance? gxc#generate-meta-phi-expr)
           (hash-put!
            _tbl6959_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (hash-put! _tbl6959_ '%#struct-ref gxc#generate-meta-phi-expr)
           (hash-put! _tbl6959_ '%#struct-set! gxc#generate-meta-phi-expr)
           (hash-put! _tbl6959_ '%#declare void)
           _tbl6959_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx6952_ . _args6954_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx6952_ _args6954_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx6909_ . _args6910_)
      (let ((_g69126922_
             (lambda (_g69136919_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g69136919_))))
        (let ((_g69116949_
               (lambda (_g69136925_)
                 (if (gx#stx-pair? _g69136925_)
                     (let ((_e69156927_ (gx#stx-e _g69136925_)))
                       (let ((_hd69166930_ (##car _e69156927_))
                             (_tl69176932_ (##cdr _e69156927_)))
                         ((lambda (_L6935_)
                            (for-each
                             (lambda (_g69446946_)
                               (apply gxc#compile-e _g69446946_ _args6910_))
                             (gx#stx-e _L6935_)))
                          _tl69176932_)))
                     (_g69126922_ _g69136925_)))))
          (_g69116949_ _stx6909_)))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx6865_ . _args6866_)
      (let ((_g68686878_
             (lambda (_g68696875_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g68696875_))))
        (let ((_g68676906_
               (lambda (_g68696881_)
                 (if (gx#stx-pair? _g68696881_)
                     (let ((_e68716883_ (gx#stx-e _g68696881_)))
                       (let ((_hd68726886_ (##car _e68716883_))
                             (_tl68736888_ (##cdr _e68716883_)))
                         ((lambda (_L6891_)
                            (call-with-parameters
                             (lambda ()
                               (for-each
                                (lambda (_g69016903_)
                                  (apply gxc#compile-e _g69016903_ _args6866_))
                                (gx#stx-e _L6891_)))
                             gx#current-expander-phi
                             (fx1+ (gx#current-expander-phi))))
                          _tl68736888_)))
                     (_g68686878_ _g68696881_)))))
          (_g68676906_ _stx6865_)))))
  (define gxc#collect-module%
    (lambda (_stx6807_ . _args6808_)
      (let ((_g68106824_
             (lambda (_g68116821_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g68116821_))))
        (let ((_g68096862_
               (lambda (_g68116827_)
                 (if (gx#stx-pair? _g68116827_)
                     (let ((_e68146829_ (gx#stx-e _g68116827_)))
                       (let ((_hd68156832_ (##car _e68146829_))
                             (_tl68166834_ (##cdr _e68146829_)))
                         (if (gx#stx-pair? _tl68166834_)
                             (let ((_e68176837_ (gx#stx-e _tl68166834_)))
                               (let ((_hd68186840_ (##car _e68176837_))
                                     (_tl68196842_ (##cdr _e68176837_)))
                                 ((lambda (_L6845_ _L6846_)
                                    (let ((_ctx6859_
                                           (gx#syntax-local-e _L6846_)))
                                      (call-with-parameters
                                       (lambda ()
                                         (apply gxc#compile-e
                                                (##structure-ref
                                                 _ctx6859_
                                                 '11
                                                 gx#module-context::t
                                                 '#f)
                                                _args6808_))
                                       gx#current-expander-context
                                       _ctx6859_)))
                                  _tl68196842_
                                  _hd68186840_)))
                             (_g68106824_ _g68116827_))))
                     (_g68106824_ _g68116827_)))))
          (_g68096862_ _stx6807_)))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx6738_)
      (let ((_g67406757_
             (lambda (_g67416754_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g67416754_))))
        (let ((_g67396804_
               (lambda (_g67416760_)
                 (if (gx#stx-pair? _g67416760_)
                     (let ((_e67446762_ (gx#stx-e _g67416760_)))
                       (let ((_hd67456765_ (##car _e67446762_))
                             (_tl67466767_ (##cdr _e67446762_)))
                         (if (gx#stx-pair? _tl67466767_)
                             (let ((_e67476770_ (gx#stx-e _tl67466767_)))
                               (let ((_hd67486773_ (##car _e67476770_))
                                     (_tl67496775_ (##cdr _e67476770_)))
                                 (if (gx#stx-pair? _tl67496775_)
                                     (let ((_e67506778_
                                            (gx#stx-e _tl67496775_)))
                                       (let ((_hd67516781_ (##car _e67506778_))
                                             (_tl67526783_
                                              (##cdr _e67506778_)))
                                         (if (gx#stx-null? _tl67526783_)
                                             ((lambda (_L6786_ _L6787_)
                                                (gx#stx-for-each
                                                 (lambda (_bind6802_)
                                                   (if (gx#identifier?
                                                        _bind6802_)
                                                       (gxc#add-module-binding!
                                                        _bind6802_
                                                        '#f)
                                                       '#!void))
                                                 _L6787_))
                                              _hd67516781_
                                              _hd67486773_)
                                             (_g67406757_ _g67416760_))))
                                     (_g67406757_ _g67416760_))))
                             (_g67406757_ _g67416760_))))
                     (_g67406757_ _g67416760_)))))
          (_g67396804_ _stx6738_)))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx6671_)
      (let ((_g66736690_
             (lambda (_g66746687_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g66746687_))))
        (let ((_g66726735_
               (lambda (_g66746693_)
                 (if (gx#stx-pair? _g66746693_)
                     (let ((_e66776695_ (gx#stx-e _g66746693_)))
                       (let ((_hd66786698_ (##car _e66776695_))
                             (_tl66796700_ (##cdr _e66776695_)))
                         (if (gx#stx-pair? _tl66796700_)
                             (let ((_e66806703_ (gx#stx-e _tl66796700_)))
                               (let ((_hd66816706_ (##car _e66806703_))
                                     (_tl66826708_ (##cdr _e66806703_)))
                                 (if (gx#stx-pair? _tl66826708_)
                                     (let ((_e66836711_
                                            (gx#stx-e _tl66826708_)))
                                       (let ((_hd66846714_ (##car _e66836711_))
                                             (_tl66856716_
                                              (##cdr _e66836711_)))
                                         (if (gx#stx-null? _tl66856716_)
                                             ((lambda (_L6719_ _L6720_)
                                                (gxc#add-module-binding!
                                                 _L6720_
                                                 '#t))
                                              _hd66846714_
                                              _hd66816706_)
                                             (_g66736690_ _g66746693_))))
                                     (_g66736690_ _g66746693_))))
                             (_g66736690_ _g66746693_))))
                     (_g66736690_ _g66746693_)))))
          (_g66726735_ _stx6671_)))))
  (define gxc#lift-modules-module%
    (lambda (_stx6613_ _modules6614_)
      (let ((_g66166630_
             (lambda (_g66176627_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g66176627_))))
        (let ((_g66156668_
               (lambda (_g66176633_)
                 (if (gx#stx-pair? _g66176633_)
                     (let ((_e66206635_ (gx#stx-e _g66176633_)))
                       (let ((_hd66216638_ (##car _e66206635_))
                             (_tl66226640_ (##cdr _e66206635_)))
                         (if (gx#stx-pair? _tl66226640_)
                             (let ((_e66236643_ (gx#stx-e _tl66226640_)))
                               (let ((_hd66246646_ (##car _e66236643_))
                                     (_tl66256648_ (##cdr _e66236643_)))
                                 ((lambda (_L6651_ _L6652_)
                                    (let ((_ctx6665_
                                           (gx#syntax-local-e _L6652_)))
                                      (begin
                                        (set-box!
                                         _modules6614_
                                         (cons _ctx6665_
                                               (unbox _modules6614_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gxc#compile-e
                                            (##structure-ref
                                             _ctx6665_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            _modules6614_))
                                         gx#current-expander-context
                                         _ctx6665_))))
                                  _tl66256648_
                                  _hd66246646_)))
                             (_g66166630_ _g66176633_))))
                     (_g66166630_ _g66176633_)))))
          (_g66156668_ _stx6613_)))))
  (define gxc#add-module-binding!
    (lambda (_id6607_ _syntax?6608_)
      (let ((_eid6610_
             (##structure-ref
              (gx#resolve-identifier _id6607_)
              '1
              gx#binding::t
              '#f))
            (_ht6611_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid6610_)
            '#!void
            (hash-put!
             _ht6611_
             _eid6610_
             (gx#make-binding-id
              (gxc#generate-runtime-gensym-reference _eid6610_)
              _syntax?6608_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id6595_)
      (let ((_bind6597_ (gx#resolve-identifier _id6595_)))
        (if _bind6597_
            (let ((_eid6599_ (##structure-ref _bind6597_ '1 gx#binding::t '#f))
                  (_ht6600_
                   (##structure-ref
                    (gxc#current-compile-symbol-table)
                    '2
                    gxc#symbol-table::t
                    '#f)))
              (if (interned-symbol? _eid6599_)
                  _eid6599_
                  (let ((_$e6602_ (hash-get _ht6600_ _eid6599_)))
                    (if _$e6602_
                        (values _$e6602_)
                        (if (##structure-instance-of?
                             _bind6597_
                             'gx#local-binding::t)
                            (let ((_gid6605_
                                   (gxc#generate-runtime-gensym-reference
                                    _eid6599_)))
                              (begin
                                (hash-put! _ht6600_ _eid6599_ _gid6605_)
                                _gid6605_))
                            (gxc#raise-compile-error
                             '"Cannot compile reference to uninterned binding"
                             _id6595_
                             _eid6599_
                             _bind6597_))))))
            (if (interned-symbol? (gx#stx-e _id6595_))
                (gx#stx-e _id6595_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id6595_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id6593_)
      (if (gx#identifier? _id6593_)
          (gxc#generate-runtime-binding-id _id6593_)
          (gxc#generate-runtime-temporary))))
  (define gxc#generate-runtime-gensym-reference
    (lambda (_sym6584_)
      (let ((_ht6586_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '1
              gxc#symbol-table::t
              '#f)))
        (let ((_$e6588_ (hash-get _ht6586_ _sym6584_)))
          (if _$e6588_
              (values _$e6588_)
              (let ((_g6591_ (make-symbol '"_" _sym6584_ '"_")))
                (begin (hash-put! _ht6586_ _sym6584_ _g6591_) _g6591_)))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id6582_)
      (gxc#generate-runtime-identifier-key (gx#core-identifier-key _id6582_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key6544_)
      (if (interned-symbol? _key6544_)
          _key6544_
          (if (uninterned-symbol? _key6544_)
              (gxc#generate-runtime-gensym-reference _key6544_)
              (let ((_key65456552_ _key6544_))
                (let ((_E65476556_
                       (lambda ()
                         (error '"No clause matching" _key65456552_))))
                  (let ((_K65486570_
                         (lambda (_mark6559_ _eid6560_)
                           (let ((_$e6562_
                                  (##structure-ref
                                   _mark6559_
                                   '1
                                   gx#expander-mark::t
                                   '#f)))
                             (if _$e6562_
                                 ((lambda (_ht6565_)
                                    (let ((_$e6567_
                                           (hash-get _ht6565_ _eid6560_)))
                                      (if _$e6567_
                                          (values _$e6567_)
                                          (gxc#generate-runtime-identifier-key
                                           _eid6560_))))
                                  _$e6562_)
                                 (gxc#generate-runtime-identifier-key
                                  _eid6560_))))))
                    (if (##pair? _key65456552_)
                        (let ((_hd65496573_ (##car _key65456552_))
                              (_tl65506575_ (##cdr _key65456552_)))
                          (let ((_eid6578_ _hd65496573_))
                            (let ((_mark6580_ _tl65506575_))
                              (_K65486570_ _mark6580_ _eid6578_))))
                        (_E65476556_)))))))))
  (define gxc#generate-runtime-temporary
    (let ((_opt-lambda65296536_
           (lambda (_top6531_)
             (if _top6531_
                 (let ((_ns6533_
                        (##structure-ref
                         (gx#current-expander-context)
                         '6
                         gx#module-context::t
                         '#f))
                       (_phi6534_ (gx#current-expander-phi)))
                   (if (fxpositive? _phi6534_)
                       (make-symbol
                        _ns6533_
                        '"["
                        (number->string _phi6534_)
                        '"]#_"
                        (gensym)
                        '"_")
                       (make-symbol _ns6533_ '"#_" (gensym) '"_")))
                 (make-symbol '"_" (gensym) '"_")))))
      (lambda _g7102_
        (let ((_g7101_ (length _g7102_)))
          (cond ((fx= _g7101_ 0)
                 (apply (lambda ()
                          (let ((_top6540_ '#f))
                            (_opt-lambda65296536_ _top6540_)))
                        _g7102_))
                ((fx= _g7101_ 1)
                 (apply (lambda (_top6542_) (_opt-lambda65296536_ _top6542_))
                        _g7102_))
                (else (error "No clause matching arguments" _g7102_)))))))
  (define gxc#generate-runtime-empty (lambda (_stx6528_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx6448_)
      (let ((_g64506460_
             (lambda (_g64516457_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g64516457_))))
        (let ((_g64496525_
               (lambda (_g64516463_)
                 (if (gx#stx-pair? _g64516463_)
                     (let ((_e64536465_ (gx#stx-e _g64516463_)))
                       (let ((_hd64546468_ (##car _e64536465_))
                             (_tl64556470_ (##cdr _e64536465_)))
                         ((lambda (_L6473_)
                            (let ((_body6483_
                                   (gx#stx-map gxc#compile-e _L6473_)))
                              (let ((_body6522_
                                     (filter (lambda (_stx6485_)
                                               (let ((_g64886497_
                                                      (lambda (_g64896494_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g64896494_))))
                                                 (let ((_g64876504_
                                                        (lambda (_g64896500_)
                                                          ((lambda () '#t)))))
                                                   (let ((_g64866519_
                                                          (lambda (_g64896507_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g64896507_)
                        (let ((_e64906509_ (gx#stx-e _g64896507_)))
                          (let ((_hd64916512_ (##car _e64906509_))
                                (_tl64926514_ (##cdr _e64906509_)))
                            (if (gx#identifier? _hd64916512_)
                                (if (gx#stx-eq? 'begin _hd64916512_)
                                    (if (gx#stx-null? _tl64926514_)
                                        ((lambda () '#f))
                                        (_g64876504_ _g64896507_))
                                    (_g64876504_ _g64896507_))
                                (_g64876504_ _g64896507_))))
                        (_g64876504_ _g64896507_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g64866519_
                                                      _stx6485_)))))
                                             _body6483_)))
                                (let () (cons 'begin _body6522_)))))
                          _tl64556470_)))
                     (_g64506460_ _g64516463_)))))
          (_g64496525_ _stx6448_)))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx6410_)
      (let ((_g64126422_
             (lambda (_g64136419_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g64136419_))))
        (let ((_g64116445_
               (lambda (_g64136425_)
                 (if (gx#stx-pair? _g64136425_)
                     (let ((_e64156427_ (gx#stx-e _g64136425_)))
                       (let ((_hd64166430_ (##car _e64156427_))
                             (_tl64176432_ (##cdr _e64156427_)))
                         ((lambda (_L6435_)
                            (cons 'begin (gx#syntax->datum _L6435_)))
                          _tl64176432_)))
                     (_g64126422_ _g64136425_)))))
          (_g64116445_ _stx6410_)))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx6372_)
      (let ((_g63746384_
             (lambda (_g63756381_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g63756381_))))
        (let ((_g63736407_
               (lambda (_g63756387_)
                 (if (gx#stx-pair? _g63756387_)
                     (let ((_e63776389_ (gx#stx-e _g63756387_)))
                       (let ((_hd63786392_ (##car _e63776389_))
                             (_tl63796394_ (##cdr _e63776389_)))
                         ((lambda (_L6397_)
                            (cons 'declare (map gx#syntax->datum _L6397_)))
                          _tl63796394_)))
                     (_g63746384_ _g63756387_)))))
          (_g63736407_ _stx6372_)))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx6136_)
      (let ((_g61386155_
             (lambda (_g61396152_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g61396152_))))
        (let ((_g61376369_
               (lambda (_g61396158_)
                 (if (gx#stx-pair? _g61396158_)
                     (let ((_e61426160_ (gx#stx-e _g61396158_)))
                       (let ((_hd61436163_ (##car _e61426160_))
                             (_tl61446165_ (##cdr _e61426160_)))
                         (if (gx#stx-pair? _tl61446165_)
                             (let ((_e61456168_ (gx#stx-e _tl61446165_)))
                               (let ((_hd61466171_ (##car _e61456168_))
                                     (_tl61476173_ (##cdr _e61456168_)))
                                 (if (gx#stx-pair? _tl61476173_)
                                     (let ((_e61486176_
                                            (gx#stx-e _tl61476173_)))
                                       (let ((_hd61496179_ (##car _e61486176_))
                                             (_tl61506181_
                                              (##cdr _e61486176_)))
                                         (if (gx#stx-null? _tl61506181_)
                                             ((lambda (_L6184_ _L6185_)
                                                (let ((_g62026215_
                                                       (lambda (_g62036212_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g62036212_))))
                                                  (let ((_g62016329_
                                                         (lambda (_g62036218_)
                                                           ((lambda ()
                                                              (let ((_tmp6222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gxc#generate-runtime-temporary '#t)))
                        (let ((_body6326_
                               ((letrec ((_lp6224_
                                          (lambda (_rest6226_ _k6227_ _r6228_)
                                            (let ((_g62336249_
                                                   (lambda (_g62346246_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g62346246_))))
                                              (let ((_g62326256_
                                                     (lambda (_g62346252_)
                                                       ((lambda ()
                                                          (reverse _r6228_))))))
                                                (let ((_g62316277_
                                                       (lambda (_g62346259_)
                                                         ((lambda (_L6261_)
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6261_)
                        (foldl cons
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L6261_)
                                                 (cons (cons 'values->list
                                                             (cons _tmp6222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k6227_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())
                               _r6228_)
                        (_g62326256_ _g62346259_)))
                  _g62346259_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g62306301_
                                                         (lambda (_g62346280_)
                                                           (if (gx#stx-pair?
                                                                _g62346280_)
                                                               (let ((_e62416282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _g62346280_)))
                         (let ((_hd62426285_ (##car _e62416282_))
                               (_tl62436287_ (##cdr _e62416282_)))
                           ((lambda (_L6290_ _L6291_)
                              (_lp6224_
                               _L6290_
                               (fx1+ _k6227_)
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L6291_)
                                                 (cons (cons 'values-ref
                                                             (cons _tmp6222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k6227_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _r6228_)))
                            _tl62436287_
                            _hd62426285_)))
                       (_g62316277_ _g62346280_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g62296323_
                                                           (lambda (_g62346304_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g62346304_)
                         (let ((_e62366306_ (gx#stx-e _g62346304_)))
                           (let ((_hd62376309_ (##car _e62366306_))
                                 (_tl62386311_ (##cdr _e62366306_)))
                             (if (gx#stx-datum? _hd62376309_)
                                 (if (equal? (gx#stx-e _hd62376309_) '#f)
                                     ((lambda (_L6314_)
                                        (_lp6224_
                                         _L6314_
                                         (fx1+ _k6227_)
                                         _r6228_))
                                      _tl62386311_)
                                     (_g62306301_ _g62346304_))
                                 (_g62306301_ _g62346304_))))
                         (_g62306301_ _g62346304_)))))
              (_g62296323_ _rest6226_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp6224_)
                                _L6185_
                                '0
                                '())))
                          (let ()
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons _tmp6222_
                                                    (cons (gxc#compile-e
                                                           _L6184_)
                                                          '())))
                                        (cons (gxc#generate-runtime-check-values
                                               _tmp6222_
                                               _L6185_)
                                              _body6326_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g62006351_
                                                           (lambda (_g62036332_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g62036332_)
                         (let ((_e62086334_ (gx#stx-e _g62036332_)))
                           (let ((_hd62096337_ (##car _e62086334_))
                                 (_tl62106339_ (##cdr _e62086334_)))
                             (if (gx#stx-null? _tl62106339_)
                                 ((lambda (_L6342_)
                                    (cons 'define
                                          (cons (gxc#generate-runtime-binding-id
                                                 _L6342_)
                                                (cons (gxc#compile-e _L6184_)
                                                      '()))))
                                  _hd62096337_)
                                 (_g62016329_ _g62036332_))))
                         (_g62016329_ _g62036332_)))))
              (let ((_g61996366_
                     (lambda (_g62036354_)
                       (if (gx#stx-pair? _g62036354_)
                           (let ((_e62046356_ (gx#stx-e _g62036354_)))
                             (let ((_hd62056359_ (##car _e62046356_))
                                   (_tl62066361_ (##cdr _e62046356_)))
                               (if (gx#stx-datum? _hd62056359_)
                                   (if (equal? (gx#stx-e _hd62056359_) '#f)
                                       (if (gx#stx-null? _tl62066361_)
                                           ((lambda ()
                                              (gxc#compile-e _L6184_)))
                                           (_g62006351_ _g62036354_))
                                       (_g62006351_ _g62036354_))
                                   (_g62006351_ _g62036354_))))
                           (_g62006351_ _g62036354_)))))
                (_g61996366_ _L6185_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd61496179_
                                              _hd61466171_)
                                             (_g61386155_ _g61396158_))))
                                     (_g61386155_ _g61396158_))))
                             (_g61386155_ _g61396158_))))
                     (_g61386155_ _g61396158_)))))
          (_g61376369_ _stx6136_)))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals6124_ _hd6125_)
      (let ((_len6127_ (gx#stx-length _hd6125_)))
        (let ((_cmp6129_ (if (gx#stx-list? _hd6125_) 'fx= 'fx>=)))
          (let ((_errmsg6131_
                 (string-append
                  (if (gx#stx-list? _hd6125_)
                      '"Context expects "
                      '"Context expects at least ")
                  (number->string _len6127_)
                  '" values")))
            (let ((_count6133_ (gxc#generate-runtime-temporary)))
              (let ()
                (if (if (not (gx#stx-list? _hd6125_)) (fx= _len6127_ '0) '#f)
                    '#!void
                    (cons 'let
                          (cons (cons (cons _count6133_
                                            (cons (cons 'values-count
                                                        (cons _vals6124_ '()))
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (cons _cmp6129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count6133_ (cons _len6127_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _errmsg6131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count6133_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx6057_)
      (let ((_g60596076_
             (lambda (_g60606073_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g60606073_))))
        (let ((_g60586121_
               (lambda (_g60606079_)
                 (if (gx#stx-pair? _g60606079_)
                     (let ((_e60636081_ (gx#stx-e _g60606079_)))
                       (let ((_hd60646084_ (##car _e60636081_))
                             (_tl60656086_ (##cdr _e60636081_)))
                         (if (gx#stx-pair? _tl60656086_)
                             (let ((_e60666089_ (gx#stx-e _tl60656086_)))
                               (let ((_hd60676092_ (##car _e60666089_))
                                     (_tl60686094_ (##cdr _e60666089_)))
                                 (if (gx#stx-pair? _tl60686094_)
                                     (let ((_e60696097_
                                            (gx#stx-e _tl60686094_)))
                                       (let ((_hd60706100_ (##car _e60696097_))
                                             (_tl60716102_
                                              (##cdr _e60696097_)))
                                         (if (gx#stx-null? _tl60716102_)
                                             ((lambda (_L6105_ _L6106_)
                                                (cons 'lambda
                                                      (cons (gxc#generate-runtime-lambda-head
                                                             _L6106_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L6105_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd60706100_
                                              _hd60676092_)
                                             (_g60596076_ _g60606079_))))
                                     (_g60596076_ _g60606079_))))
                             (_g60596076_ _g60606079_))))
                     (_g60596076_ _g60606079_)))))
          (_g60586121_ _stx6057_)))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd6055_) (gx#stx-map gxc#generate-runtime-binding-id* _hd6055_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx5912_)
      (let ((_generate15914_
             (lambda (_args6045_ _arglen6046_ _hd6047_ _body6048_)
               (let ((_len6050_ (gx#stx-length _hd6047_)))
                 (let ((_condition6052_
                        (if (gx#stx-list? _hd6047_)
                            (cons 'fx=
                                  (cons _arglen6046_ (cons _len6050_ '())))
                            (if (> _len6050_ '0)
                                (cons 'fx>=
                                      (cons _arglen6046_ (cons _len6050_ '())))
                                '#t))))
                   (let ()
                     (cons _condition6052_
                           (cons (cons 'apply
                                       (cons (cons 'lambda
                                                   (cons (gxc#generate-runtime-lambda-head
                                                          _hd6047_)
                                                         (cons (gxc#compile-e
                                                                _body6048_)
                                                               '())))
                                             (cons _args6045_ '())))
                                 '()))))))))
        (let ((_g59165944_
               (lambda (_g59175941_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g59175941_))))
          (let ((_g59156042_
                 (lambda (_g59175947_)
                   (if (gx#stx-pair? _g59175947_)
                       (let ((_e59205949_ (gx#stx-e _g59175947_)))
                         (let ((_hd59215952_ (##car _e59205949_))
                               (_tl59225954_ (##cdr _e59205949_)))
                           (if (gx#stx-pair/null? _tl59225954_)
                               (if (fx>= (gx#stx-length _tl59225954_) '0)
                                   (let ((_g7103_ (gx#syntax-split-splice
                                                   _tl59225954_
                                                   '0)))
                                     (begin
                                       (let ((_g7104_ (values-count _g7103_)))
                                         (if (not (fx= _g7104_ 2))
                                             (error "Context expects 2 values"
                                                    _g7104_)))
                                       (let ((_target59235957_
                                              (values-ref _g7103_ 0))
                                             (_tl59255959_
                                              (values-ref _g7103_ 1)))
                                         (if (gx#stx-null? _tl59255959_)
                                             (letrec ((_loop59265962_
                                                       (lambda (_hd59245965_
                                                                _body59305967_
                                                                _hd59315969_)
                                                         (if (gx#stx-pair?
                                                              _hd59245965_)
                                                             (let ((_e59275972_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd59245965_)))
                       (let ((_lp-hd59285975_ (##car _e59275972_))
                             (_lp-tl59295977_ (##cdr _e59275972_)))
                         (if (gx#stx-pair? _lp-hd59285975_)
                             (let ((_e59345980_ (gx#stx-e _lp-hd59285975_)))
                               (let ((_hd59355983_ (##car _e59345980_))
                                     (_tl59365985_ (##cdr _e59345980_)))
                                 (if (gx#stx-pair? _tl59365985_)
                                     (let ((_e59375988_
                                            (gx#stx-e _tl59365985_)))
                                       (let ((_hd59385991_ (##car _e59375988_))
                                             (_tl59395993_
                                              (##cdr _e59375988_)))
                                         (if (gx#stx-null? _tl59395993_)
                                             (_loop59265962_
                                              _lp-tl59295977_
                                              (cons _hd59385991_
                                                    _body59305967_)
                                              (cons _hd59355983_ _hd59315969_))
                                             (_g59165944_ _g59175947_))))
                                     (_g59165944_ _g59175947_))))
                             (_g59165944_ _g59175947_))))
                     (let ((_body59325996_ (reverse _body59305967_))
                           (_hd59335998_ (reverse _hd59315969_)))
                       ((lambda (_L6001_ _L6002_)
                          (let ((_args6018_ (gxc#generate-runtime-temporary))
                                (_arglen6019_
                                 (gxc#generate-runtime-temporary)))
                            (cons 'lambda
                                  (cons _args6018_
                                        (cons (cons 'let
                                                    (cons (cons (cons _arglen6019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons 'length (cons _args6018_ '())) '()))
                        '())
                  (cons (cons 'cond
                              (foldr cons
                                     (cons (cons 'else
                                                 (cons (cons 'error
                                                             (cons '"No clause matching arguments"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args6018_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (map (lambda (_g60206023_ _g60216025_)
                                            (_generate15914_
                                             _args6018_
                                             _arglen6019_
                                             _g60206023_
                                             _g60216025_))
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g60276030_
                                                            _g60286032_)
                                                     (cons _g60276030_
                                                           _g60286032_))
                                                   '()
                                                   _L6002_))
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g60346037_
                                                            _g60356039_)
                                                     (cons _g60346037_
                                                           _g60356039_))
                                                   '()
                                                   _L6001_)))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                        _body59325996_
                        _hd59335998_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop59265962_
                                                _target59235957_
                                                '()
                                                '()))
                                             (_g59165944_ _g59175947_)))))
                                   (_g59165944_ _g59175947_))
                               (_g59165944_ _g59175947_))))
                       (_g59165944_ _g59175947_)))))
            (_g59156042_ _stx5912_))))))
  (define gxc#generate-runtime-let-values%
    (let ((_opt-lambda55925902_
           (lambda (_stx5594_ _compiled-body?5595_)
             (let ((_generate-simple5597_
                    (lambda (_hd5899_ _body5900_)
                      (gxc#generate-runtime-simple-let
                       'let
                       _hd5899_
                       _body5900_
                       _compiled-body?5595_))))
               (let ((_generate-values-post5599_
                      (lambda (_post5671_ _body5672_)
                        ((letrec ((_lp5674_
                                   (lambda (_rest5676_ _body5677_)
                                     (let ((_rest56785686_ _rest5676_))
                                       (let ((_E56815690_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _rest56785686_))))
                                         (let ((_else56805694_
                                                (lambda () _body5677_)))
                                           (let ((_K56825700_
                                                  (lambda (_rest5697_
                                                           _bind5698_)
                                                    (_lp5674_
                                                     _rest5697_
                                                     (cons 'let
                                                           (cons _bind5698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body5677_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _rest56785686_)
                                                 (let ((_hd56835703_
                                                        (##car _rest56785686_))
                                                       (_tl56845705_
                                                        (##cdr _rest56785686_)))
                                                   (let ((_bind5708_
                                                          _hd56835703_))
                                                     (let ((_rest5710_
                                                            _tl56845705_))
                                                       (_K56825700_
                                                        _rest5710_
                                                        _bind5708_))))
                                                 (_else56805694_)))))))))
                           _lp5674_)
                         _post5671_
                         _body5672_))))
                 (let ((_generate-values-check5600_
                        (lambda (_check5668_ _body5669_)
                          (cons 'begin
                                (foldr cons
                                       (cons _body5669_ '())
                                       (reverse _check5668_))))))
                   (let ((_generate-values5598_
                          (lambda (_hd5712_ _body5713_)
                            ((letrec ((_lp5715_
                                       (lambda (_rest5717_
                                                _bind5718_
                                                _check5719_
                                                _post5720_)
                                         (let ((_g57235734_
                                                (lambda (_g57245731_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g57245731_))))
                                           (let ((_g57225748_
                                                  (lambda (_g57245737_)
                                                    ((lambda ()
                                                       (let ((_body5741_
                                                              (if _compiled-body?5595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body5713_
                          (gxc#compile-e _body5713_))))
                 (let ((_body5743_
                        (_generate-values-post5599_ _post5720_ _body5741_)))
                   (let ((_body5745_
                          (_generate-values-check5600_
                           _check5719_
                           _body5743_)))
                     (let ()
                       (cons 'let
                             (cons (reverse _bind5718_)
                                   (cons _body5745_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g57215896_
                                                    (lambda (_g57245751_)
                                                      (if (gx#stx-pair?
                                                           _g57245751_)
                                                          (let ((_e57275753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _g57245751_)))
                    (let ((_hd57285756_ (##car _e57275753_))
                          (_tl57295758_ (##cdr _e57275753_)))
                      ((lambda (_L5761_ _L5762_)
                         (let ((_g57775802_
                                (lambda (_g57785799_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g57785799_))))
                           (let ((_g57765846_
                                  (lambda (_g57785805_)
                                    (if (gx#stx-pair? _g57785805_)
                                        (let ((_e57925807_
                                               (gx#stx-e _g57785805_)))
                                          (let ((_hd57935810_
                                                 (##car _e57925807_))
                                                (_tl57945812_
                                                 (##cdr _e57925807_)))
                                            (if (gx#stx-pair? _tl57945812_)
                                                (let ((_e57955815_
                                                       (gx#stx-e
                                                        _tl57945812_)))
                                                  (let ((_hd57965818_
                                                         (##car _e57955815_))
                                                        (_tl57975820_
                                                         (##cdr _e57955815_)))
                                                    (if (gx#stx-null?
                                                         _tl57975820_)
                                                        ((lambda (_L5823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L5824_)
                   (let ((_vals5837_ (gxc#generate-runtime-temporary)))
                     (let ((_expr5839_ (gxc#compile-e _L5823_)))
                       (let ((_check-values5841_
                              (gxc#generate-runtime-check-values
                               _vals5837_
                               _L5824_)))
                         (let ((_refs5843_
                                (gxc#generate-runtime-let-values-bind
                                 _vals5837_
                                 _L5824_)))
                           (let ()
                             (_lp5715_
                              _L5761_
                              (cons (cons _vals5837_ (cons _expr5839_ '()))
                                    _bind5718_)
                              (cons _check-values5841_ _check5719_)
                              (cons _refs5843_ _post5720_))))))))
                 _hd57965818_
                 _hd57935810_)
                (_g57775802_ _g57785805_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g57775802_ _g57785805_))))
                                        (_g57775802_ _g57785805_)))))
                             (let ((_g57755893_
                                    (lambda (_g57785849_)
                                      (if (gx#stx-pair? _g57785849_)
                                          (let ((_e57815851_
                                                 (gx#stx-e _g57785849_)))
                                            (let ((_hd57825854_
                                                   (##car _e57815851_))
                                                  (_tl57835856_
                                                   (##cdr _e57815851_)))
                                              (if (gx#stx-pair? _hd57825854_)
                                                  (let ((_e57845859_
                                                         (gx#stx-e
                                                          _hd57825854_)))
                                                    (let ((_hd57855862_
                                                           (##car _e57845859_))
                                                          (_tl57865864_
                                                           (##cdr _e57845859_)))
                                                      (if (gx#stx-null?
                                                           _tl57865864_)
                                                          (if (gx#stx-pair?
                                                               _tl57835856_)
                                                              (let ((_e57875867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl57835856_)))
                        (let ((_hd57885870_ (##car _e57875867_))
                              (_tl57895872_ (##cdr _e57875867_)))
                          (if (gx#stx-null? _tl57895872_)
                              ((lambda (_L5875_ _L5876_)
                                 (let ((_eid5890_
                                        (gxc#generate-runtime-binding-id*
                                         _L5876_))
                                       (_expr5891_ (gxc#compile-e _L5875_)))
                                   (_lp5715_
                                    _L5761_
                                    (cons (cons _eid5890_
                                                (cons _expr5891_ '()))
                                          _bind5718_)
                                    _check5719_
                                    _post5720_)))
                               _hd57885870_
                               _hd57855862_)
                              (_g57765846_ _g57785849_))))
                      (_g57765846_ _g57785849_))
                  (_g57765846_ _g57785849_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g57765846_ _g57785849_))))
                                          (_g57765846_ _g57785849_)))))
                               (_g57755893_ _L5762_)))))
                       _tl57295758_
                       _hd57285756_)))
                  (_g57225748_ _g57245751_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g57215896_ _rest5717_)))))))
                               _lp5715_)
                             _hd5712_
                             '()
                             '()
                             '()))))
                     (let ((_g56025619_
                            (lambda (_g56035616_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g56035616_))))
                       (let ((_g56015665_
                              (lambda (_g56035622_)
                                (if (gx#stx-pair? _g56035622_)
                                    (let ((_e56065624_ (gx#stx-e _g56035622_)))
                                      (let ((_hd56075627_ (##car _e56065624_))
                                            (_tl56085629_ (##cdr _e56065624_)))
                                        (if (gx#stx-pair? _tl56085629_)
                                            (let ((_e56095632_
                                                   (gx#stx-e _tl56085629_)))
                                              (let ((_hd56105635_
                                                     (##car _e56095632_))
                                                    (_tl56115637_
                                                     (##cdr _e56095632_)))
                                                (if (gx#stx-pair? _tl56115637_)
                                                    (let ((_e56125640_
                                                           (gx#stx-e
                                                            _tl56115637_)))
                                                      (let ((_hd56135643_
                                                             (##car _e56125640_))
                                                            (_tl56145645_
                                                             (##cdr _e56125640_)))
                                                        (if (gx#stx-null?
                                                             _tl56145645_)
                                                            ((lambda (_L5648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L5649_)
                       (if (gxc#generate-runtime-simple-let? _L5649_)
                           (_generate-simple5597_ _L5649_ _L5648_)
                           (_generate-values5598_ _L5649_ _L5648_)))
                     _hd56135643_
                     _hd56105635_)
                    (_g56025619_ _g56035622_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g56025619_
                                                     _g56035622_))))
                                            (_g56025619_ _g56035622_))))
                                    (_g56025619_ _g56035622_)))))
                         (_g56015665_ _stx5594_))))))))))
      (lambda _g7106_
        (let ((_g7105_ (length _g7106_)))
          (cond ((fx= _g7105_ 1)
                 (apply (lambda (_stx5905_)
                          (let ((_compiled-body?5907_ '#f))
                            (_opt-lambda55925902_
                             _stx5905_
                             _compiled-body?5907_)))
                        _g7106_))
                ((fx= _g7105_ 2)
                 (apply (lambda (_stx5909_ _compiled-body?5910_)
                          (_opt-lambda55925902_
                           _stx5909_
                           _compiled-body?5910_))
                        _g7106_))
                (else (error "No clause matching arguments" _g7106_)))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals5493_ _hd5494_)
      ((letrec ((_lp5496_
                 (lambda (_rest5498_ _k5499_ _r5500_)
                   (let ((_g55055521_
                          (lambda (_g55065518_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g55065518_))))
                     (let ((_g55045528_
                            (lambda (_g55065524_)
                              ((lambda () (reverse _r5500_))))))
                       (let ((_g55035544_
                              (lambda (_g55065531_)
                                ((lambda (_L5533_)
                                   (if (gx#identifier? _L5533_)
                                       (foldl cons
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L5533_)
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals5493_ (cons _k5499_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              _r5500_)
                                       (_g55045528_ _g55065531_)))
                                 _g55065531_))))
                         (let ((_g55025568_
                                (lambda (_g55065547_)
                                  (if (gx#stx-pair? _g55065547_)
                                      (let ((_e55135549_
                                             (gx#stx-e _g55065547_)))
                                        (let ((_hd55145552_
                                               (##car _e55135549_))
                                              (_tl55155554_
                                               (##cdr _e55135549_)))
                                          ((lambda (_L5557_ _L5558_)
                                             (_lp5496_
                                              _L5557_
                                              (fx1+ _k5499_)
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L5558_)
                                                          (cons (cons 'values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals5493_ (cons _k5499_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _r5500_)))
                                           _tl55155554_
                                           _hd55145552_)))
                                      (_g55035544_ _g55065547_)))))
                           (let ((_g55015590_
                                  (lambda (_g55065571_)
                                    (if (gx#stx-pair? _g55065571_)
                                        (let ((_e55085573_
                                               (gx#stx-e _g55065571_)))
                                          (let ((_hd55095576_
                                                 (##car _e55085573_))
                                                (_tl55105578_
                                                 (##cdr _e55085573_)))
                                            (if (gx#stx-datum? _hd55095576_)
                                                (if (equal? (gx#stx-e
                                                             _hd55095576_)
                                                            '#f)
                                                    ((lambda (_L5581_)
                                                       (_lp5496_
                                                        _L5581_
                                                        (fx1+ _k5499_)
                                                        _r5500_))
                                                     _tl55105578_)
                                                    (_g55025568_ _g55065571_))
                                                (_g55025568_ _g55065571_))))
                                        (_g55025568_ _g55065571_)))))
                             (_g55015590_ _rest5498_)))))))))
         _lp5496_)
       _hd5494_
       '0
       '())))
  (define gxc#generate-runtime-letrec-values%
    (let ((_opt-lambda51715483_
           (lambda (_stx5173_ _compiled-body?5174_)
             (let ((_generate-simple5176_
                    (lambda (_hd5480_ _body5481_)
                      (gxc#generate-runtime-simple-let
                       'letrec
                       _hd5480_
                       _body5481_
                       _compiled-body?5174_))))
               (let ((_generate-values-check5178_
                      (lambda (_check5254_ _body5255_)
                        (cons 'begin
                              (foldr cons
                                     (cons _body5255_ '())
                                     (reverse _check5254_))))))
                 (let ((_generate-values-post5179_
                        (lambda (_post5247_ _body5248_)
                          (cons 'begin
                                (foldr cons
                                       (cons _body5248_ '())
                                       (map (lambda (_g52495251_)
                                              (cons 'set! _g52495251_))
                                            (reverse _post5247_)))))))
                   (let ((_generate-values5177_
                          (lambda (_hd5257_ _body5258_)
                            ((letrec ((_lp5260_
                                       (lambda (_rest5262_
                                                _bind5263_
                                                _check5264_
                                                _post5265_)
                                         (let ((_g52685279_
                                                (lambda (_g52695276_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g52695276_))))
                                           (let ((_g52675293_
                                                  (lambda (_g52695282_)
                                                    ((lambda ()
                                                       (let ((_body5286_
                                                              (if _compiled-body?5174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body5258_
                          (gxc#compile-e _body5258_))))
                 (let ((_body5288_
                        (_generate-values-post5179_ _post5265_ _body5286_)))
                   (let ((_body5290_
                          (_generate-values-check5178_
                           _check5264_
                           _body5288_)))
                     (let ()
                       (cons 'letrec
                             (cons (reverse _bind5263_)
                                   (cons _body5290_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g52665477_
                                                    (lambda (_g52695296_)
                                                      (if (gx#stx-pair?
                                                           _g52695296_)
                                                          (let ((_e52725298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _g52695296_)))
                    (let ((_hd52735301_ (##car _e52725298_))
                          (_tl52745303_ (##cdr _e52725298_)))
                      ((lambda (_L5306_ _L5307_)
                         (let ((_g53225347_
                                (lambda (_g53235344_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g53235344_))))
                           (let ((_g53215427_
                                  (lambda (_g53235350_)
                                    (if (gx#stx-pair? _g53235350_)
                                        (let ((_e53375352_
                                               (gx#stx-e _g53235350_)))
                                          (let ((_hd53385355_
                                                 (##car _e53375352_))
                                                (_tl53395357_
                                                 (##cdr _e53375352_)))
                                            (if (gx#stx-pair? _tl53395357_)
                                                (let ((_e53405360_
                                                       (gx#stx-e
                                                        _tl53395357_)))
                                                  (let ((_hd53415363_
                                                         (##car _e53405360_))
                                                        (_tl53425365_
                                                         (##cdr _e53405360_)))
                                                    (if (gx#stx-null?
                                                         _tl53425365_)
                                                        ((lambda (_L5368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L5369_)
                   (let ((_vals5382_ (gxc#generate-runtime-temporary)))
                     (let ((_expr5384_ (gxc#compile-e _L5368_)))
                       (let ((_check-values5386_
                              (gxc#generate-runtime-check-values
                               _vals5382_
                               _L5369_)))
                         (let ((_refs5388_
                                (gxc#generate-runtime-let-values-bind
                                 _vals5382_
                                 _L5369_)))
                           (let ()
                             (_lp5260_
                              _L5306_
                              (foldl cons
                                     (cons (cons _vals5382_
                                                 (cons _expr5384_ '()))
                                           _bind5263_)
                                     (map (lambda (_e53905392_)
                                            (let ((_g53945403_ _e53905392_))
                                              (let ((_E53965407_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _g53945403_))))
                                                (let ((_K53975412_
                                                       (lambda (_eid5410_)
                                                         (cons _eid5410_
                                                               (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _g53945403_)
                                                      (let ((_hd53985415_
                                                             (##car _g53945403_))
                                                            (_tl53995417_
                                                             (##cdr _g53945403_)))
                                                        (let ((_eid5420_
                                                               _hd53985415_))
                                                          (if (##pair? _tl53995417_)
                                                              (let ((_hd54005422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##car _tl53995417_))
                            (_tl54015424_ (##cdr _tl53995417_)))
                        (if (##null? _tl54015424_)
                            (_K53975412_ _eid5420_)
                            (_E53965407_)))
                      (_E53965407_))))
              (_E53965407_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _refs5388_))
                              (cons _check-values5386_ _check5264_)
                              (foldl cons _refs5388_ _post5265_))))))))
                 _hd53415363_
                 _hd53385355_)
                (_g53225347_ _g53235350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g53225347_ _g53235350_))))
                                        (_g53225347_ _g53235350_)))))
                             (let ((_g53205474_
                                    (lambda (_g53235430_)
                                      (if (gx#stx-pair? _g53235430_)
                                          (let ((_e53265432_
                                                 (gx#stx-e _g53235430_)))
                                            (let ((_hd53275435_
                                                   (##car _e53265432_))
                                                  (_tl53285437_
                                                   (##cdr _e53265432_)))
                                              (if (gx#stx-pair? _hd53275435_)
                                                  (let ((_e53295440_
                                                         (gx#stx-e
                                                          _hd53275435_)))
                                                    (let ((_hd53305443_
                                                           (##car _e53295440_))
                                                          (_tl53315445_
                                                           (##cdr _e53295440_)))
                                                      (if (gx#stx-null?
                                                           _tl53315445_)
                                                          (if (gx#stx-pair?
                                                               _tl53285437_)
                                                              (let ((_e53325448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl53285437_)))
                        (let ((_hd53335451_ (##car _e53325448_))
                              (_tl53345453_ (##cdr _e53325448_)))
                          (if (gx#stx-null? _tl53345453_)
                              ((lambda (_L5456_ _L5457_)
                                 (let ((_eid5471_
                                        (gxc#generate-runtime-binding-id*
                                         _L5457_))
                                       (_expr5472_ (gxc#compile-e _L5456_)))
                                   (_lp5260_
                                    _L5306_
                                    (cons (cons _eid5471_
                                                (cons _expr5472_ '()))
                                          _bind5263_)
                                    _check5264_
                                    _post5265_)))
                               _hd53335451_
                               _hd53305443_)
                              (_g53215427_ _g53235430_))))
                      (_g53215427_ _g53235430_))
                  (_g53215427_ _g53235430_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g53215427_ _g53235430_))))
                                          (_g53215427_ _g53235430_)))))
                               (_g53205474_ _L5307_)))))
                       _tl52745303_
                       _hd52735301_)))
                  (_g52675293_ _g52695296_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g52665477_ _rest5262_)))))))
                               _lp5260_)
                             _hd5257_
                             '()
                             '()
                             '()))))
                     (let ((_g51815198_
                            (lambda (_g51825195_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g51825195_))))
                       (let ((_g51805244_
                              (lambda (_g51825201_)
                                (if (gx#stx-pair? _g51825201_)
                                    (let ((_e51855203_ (gx#stx-e _g51825201_)))
                                      (let ((_hd51865206_ (##car _e51855203_))
                                            (_tl51875208_ (##cdr _e51855203_)))
                                        (if (gx#stx-pair? _tl51875208_)
                                            (let ((_e51885211_
                                                   (gx#stx-e _tl51875208_)))
                                              (let ((_hd51895214_
                                                     (##car _e51885211_))
                                                    (_tl51905216_
                                                     (##cdr _e51885211_)))
                                                (if (gx#stx-pair? _tl51905216_)
                                                    (let ((_e51915219_
                                                           (gx#stx-e
                                                            _tl51905216_)))
                                                      (let ((_hd51925222_
                                                             (##car _e51915219_))
                                                            (_tl51935224_
                                                             (##cdr _e51915219_)))
                                                        (if (gx#stx-null?
                                                             _tl51935224_)
                                                            ((lambda (_L5227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L5228_)
                       (if (gxc#generate-runtime-simple-let? _L5228_)
                           (_generate-simple5176_ _L5228_ _L5227_)
                           (_generate-values5177_ _L5228_ _L5227_)))
                     _hd51925222_
                     _hd51895214_)
                    (_g51815198_ _g51825201_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g51815198_
                                                     _g51825201_))))
                                            (_g51815198_ _g51825201_))))
                                    (_g51815198_ _g51825201_)))))
                         (_g51805244_ _stx5173_))))))))))
      (lambda _g7108_
        (let ((_g7107_ (length _g7108_)))
          (cond ((fx= _g7107_ 1)
                 (apply (lambda (_stx5486_)
                          (let ((_compiled-body?5488_ '#f))
                            (_opt-lambda51715483_
                             _stx5486_
                             _compiled-body?5488_)))
                        _g7108_))
                ((fx= _g7107_ 2)
                 (apply (lambda (_stx5490_ _compiled-body?5491_)
                          (_opt-lambda51715483_
                           _stx5490_
                           _compiled-body?5491_))
                        _g7108_))
                (else (error "No clause matching arguments" _g7108_)))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx4292_)
      (let ((_collect-closures4295_
             (lambda (_forms5113_)
               (map (lambda (_e51145116_)
                      (let ((_g51185127_ _e51145116_))
                        (let ((_E51205131_
                               (lambda ()
                                 (error '"No clause matching" _g51185127_))))
                          (let ((_K51215136_
                                 (lambda (_expr5134_)
                                   (gxc#collect-expression-refs _expr5134_))))
                            (if (##pair? _g51185127_)
                                (let ((_hd51225139_ (##car _g51185127_))
                                      (_tl51235141_ (##cdr _g51185127_)))
                                  (if (##pair? _tl51235141_)
                                      (let ((_hd51245144_ (##car _tl51235141_))
                                            (_tl51255146_
                                             (##cdr _tl51235141_)))
                                        (let ((_expr5149_ _hd51245144_))
                                          (if (##null? _tl51255146_)
                                              (_K51215136_ _expr5149_)
                                              (_E51205131_))))
                                      (_E51205131_)))
                                (_E51205131_))))))
                    _forms5113_))))
        (let ((_collect-bindings4296_
               (lambda (_forms5037_)
                 (map (lambda (_e50385040_)
                        (let ((_g50425051_ _e50385040_))
                          (let ((_E50445055_
                                 (lambda ()
                                   (error '"No clause matching" _g50425051_))))
                            (let ((_K50455098_
                                   (lambda (_bind5058_)
                                     ((letrec ((_lp5060_
                                                (lambda (_rest5062_ _r5063_)
                                                  (let ((_rest50645072_
                                                         _rest5062_))
                                                    (let ((_E50675076_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest50645072_))))
              (let ((_else50665080_
                     (lambda ()
                       (if (gx#identifier? _rest5062_)
                           (cons _rest5062_ _r5063_)
                           _r5063_))))
                (let ((_K50685086_
                       (lambda (_rest5083_ _id5084_)
                         (if (gx#identifier? _id5084_)
                             (_lp5060_
                              _rest5083_
                              (cons (##structure-ref
                                     (gx#resolve-identifier _id5084_)
                                     '1
                                     gx#binding::t
                                     '#f)
                                    _r5063_))
                             (_lp5060_ _rest5083_ _r5063_)))))
                  (if (##pair? _rest50645072_)
                      (let ((_hd50695089_ (##car _rest50645072_))
                            (_tl50705091_ (##cdr _rest50645072_)))
                        (let ((_id5094_ _hd50695089_))
                          (let ((_rest5096_ _tl50705091_))
                            (_K50685086_ _rest5096_ _id5094_))))
                      (_else50665080_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp5060_)
                                      _bind5058_
                                      '()))))
                              (if (##pair? _g50425051_)
                                  (let ((_hd50465101_ (##car _g50425051_))
                                        (_tl50475103_ (##cdr _g50425051_)))
                                    (let ((_bind5106_ _hd50465101_))
                                      (if (##pair? _tl50475103_)
                                          (let ((_hd50485108_
                                                 (##car _tl50475103_))
                                                (_tl50495110_
                                                 (##cdr _tl50475103_)))
                                            (if (##null? _tl50495110_)
                                                (_K50455098_ _bind5106_)
                                                (_E50445055_)))
                                          (_E50445055_))))
                                  (_E50445055_))))))
                      _forms5037_))))
          (let ((_closure-reference?4300_
                 (lambda (_closure4589_ _bindings4590_)
                   (ormap (lambda (_g45914593_)
                            (hash-get _closure4589_ _g45914593_))
                          _bindings4590_))))
            (let ((_is-effect-expr?4302_
                   (lambda (_expr4500_)
                     (let ((_g45024512_
                            (lambda (_g45034509_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g45034509_))))
                       (let ((_g45014535_
                              (lambda (_g45034515_)
                                (if (gx#stx-pair? _g45034515_)
                                    (let ((_e45054517_ (gx#stx-e _g45034515_)))
                                      (let ((_hd45064520_ (##car _e45054517_))
                                            (_tl45074522_ (##cdr _e45054517_)))
                                        ((lambda (_L4525_)
                                           (not (memq (gx#stx-e _L4525_)
                                                      '(%#lambda
                                                        %#case-lambda
                                                        %#quote
                                                        %#quote-syntax
                                                        %#ref))))
                                         _hd45064520_)))
                                    (_g45024512_ _g45034515_)))))
                         (_g45014535_ _expr4500_))))))
              (let ((_is-lambda-expr?4303_
                     (lambda (_expr4462_)
                       (let ((_g44644474_
                              (lambda (_g44654471_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g44654471_))))
                         (let ((_g44634497_
                                (lambda (_g44654477_)
                                  (if (gx#stx-pair? _g44654477_)
                                      (let ((_e44674479_
                                             (gx#stx-e _g44654477_)))
                                        (let ((_hd44684482_
                                               (##car _e44674479_))
                                              (_tl44694484_
                                               (##cdr _e44674479_)))
                                          ((lambda (_L4487_)
                                             (memq (gx#stx-e _L4487_)
                                                   '(%#lambda %#case-lambda)))
                                           _hd44684482_)))
                                      (_g44644474_ _g44654477_)))))
                           (_g44634497_ _expr4462_))))))
                (let ((_lift-rec4299_
                       (lambda (_forms4596_)
                         ((letrec ((_lp4598_
                                    (lambda (_rest4600_
                                             _pre4601_
                                             _bind4602_
                                             _init4603_)
                                      (let ((_rest46044612_ _rest4600_))
                                        (let ((_E46074616_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _rest46044612_))))
                                          (let ((_else46064620_
                                                 (lambda ()
                                                   (values (reverse _pre4601_)
                                                           (reverse _bind4602_)
                                                           (reverse _init4603_)))))
                                            (let ((_K46084811_
                                                   (lambda (_rest4623_
                                                            _bind-hd4624_)
                                                     (let ((_g46284663_
                                                            (lambda (_g46294660_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g46294660_))))
                                                       (let ((_g46274720_
                                                              (lambda (_g46294666_)
                                                                (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g46294666_)
                            (let ((_e46534668_ (gx#stx-e _g46294666_)))
                              (let ((_hd46544671_ (##car _e46534668_))
                                    (_tl46554673_ (##cdr _e46534668_)))
                                (if (gx#stx-pair? _tl46554673_)
                                    (let ((_e46564676_
                                           (gx#stx-e _tl46554673_)))
                                      (let ((_hd46574679_ (##car _e46564676_))
                                            (_tl46584681_ (##cdr _e46564676_)))
                                        (if (gx#stx-null? _tl46584681_)
                                            ((lambda (_L4684_ _L4685_)
                                               (let ((_vals4704_
                                                      (gxc#generate-runtime-temporary)))
                                                 (let ((_expr4706_
                                                        (gxc#compile-e
                                                         _L4684_)))
                                                   (let ((_check-values4708_
                                                          (gxc#generate-runtime-check-values
                                                           _vals4704_
                                                           _L4685_)))
                                                     (let ((_refs4710_
                                                            (gxc#generate-runtime-let-values-bind
                                                             _vals4704_
                                                             _L4685_)))
                                                       (let ()
                                                         (_lp4598_
                                                          _rest4623_
                                                          (foldl (lambda (_ref4713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _r4714_)
                           (cons (cons (car _ref4713_) (cons '#!void '()))
                                 _r4714_))
                         _pre4601_
                         _refs4710_)
                  _bind4602_
                  (cons (cons 'let
                              (cons (cons (cons _vals4704_
                                                (cons _expr4706_ '()))
                                          '())
                                    (cons _check-values4708_
                                          (cons (map (lambda (_g47154717_)
                                                       (cons 'set!
                                                             _g47154717_))
                                                     _refs4710_)
                                                '()))))
                        _init4603_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd46574679_
                                             _hd46544671_)
                                            (_g46284663_ _g46294666_))))
                                    (_g46284663_ _g46294666_))))
                            (_g46284663_ _g46294666_)))))
                 (let ((_g46264766_
                        (lambda (_g46294723_)
                          (if (gx#stx-pair? _g46294723_)
                              (let ((_e46424725_ (gx#stx-e _g46294723_)))
                                (let ((_hd46434728_ (##car _e46424725_))
                                      (_tl46444730_ (##cdr _e46424725_)))
                                  (if (gx#stx-pair? _hd46434728_)
                                      (let ((_e46454733_
                                             (gx#stx-e _hd46434728_)))
                                        (let ((_hd46464736_
                                               (##car _e46454733_))
                                              (_tl46474738_
                                               (##cdr _e46454733_)))
                                          (if (gx#stx-null? _tl46474738_)
                                              (if (gx#stx-pair? _tl46444730_)
                                                  (let ((_e46484741_
                                                         (gx#stx-e
                                                          _tl46444730_)))
                                                    (let ((_hd46494744_
                                                           (##car _e46484741_))
                                                          (_tl46504746_
                                                           (##cdr _e46484741_)))
                                                      (if (gx#stx-null?
                                                           _tl46504746_)
                                                          ((lambda (_L4749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L4750_)
                     (let ((_eid4764_
                            (gxc#generate-runtime-binding-id _L4750_)))
                       (if (_is-lambda-expr?4303_ _L4749_)
                           (_lp4598_
                            _rest4623_
                            _pre4601_
                            (cons (cons _eid4764_
                                        (cons (gxc#compile-e _L4749_) '()))
                                  _bind4602_)
                            _init4603_)
                           (_lp4598_
                            _rest4623_
                            (cons (cons _eid4764_ (cons '#!void '()))
                                  _pre4601_)
                            _bind4602_
                            (cons (cons 'set!
                                        (cons _eid4764_
                                              (cons (gxc#compile-e _L4749_)
                                                    '())))
                                  _init4603_)))))
                   _hd46494744_
                   _hd46464736_)
                  (_g46274720_ _g46294723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g46274720_ _g46294723_))
                                              (_g46274720_ _g46294723_))))
                                      (_g46274720_ _g46294723_))))
                              (_g46274720_ _g46294723_)))))
                   (let ((_g46254808_
                          (lambda (_g46294769_)
                            (if (gx#stx-pair? _g46294769_)
                                (let ((_e46314771_ (gx#stx-e _g46294769_)))
                                  (let ((_hd46324774_ (##car _e46314771_))
                                        (_tl46334776_ (##cdr _e46314771_)))
                                    (if (gx#stx-pair? _hd46324774_)
                                        (let ((_e46344779_
                                               (gx#stx-e _hd46324774_)))
                                          (let ((_hd46354782_
                                                 (##car _e46344779_))
                                                (_tl46364784_
                                                 (##cdr _e46344779_)))
                                            (if (gx#stx-datum? _hd46354782_)
                                                (if (equal? (gx#stx-e
                                                             _hd46354782_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl46364784_)
                                                        (if (gx#stx-pair?
                                                             _tl46334776_)
                                                            (let ((_e46374787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl46334776_)))
                      (let ((_hd46384790_ (##car _e46374787_))
                            (_tl46394792_ (##cdr _e46374787_)))
                        (if (gx#stx-null? _tl46394792_)
                            ((lambda (_L4795_)
                               (_lp4598_
                                _rest4623_
                                _pre4601_
                                _bind4602_
                                (cons (gxc#compile-e _L4795_) _init4603_)))
                             _hd46384790_)
                            (_g46264766_ _g46294769_))))
                    (_g46264766_ _g46294769_))
                (_g46264766_ _g46294769_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g46264766_ _g46294769_))
                                                (_g46264766_ _g46294769_))))
                                        (_g46264766_ _g46294769_))))
                                (_g46264766_ _g46294769_)))))
                     (_g46254808_ _bind-hd4624_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _rest46044612_)
                                                  (let ((_hd46094814_
                                                         (##car _rest46044612_))
                                                        (_tl46104816_
                                                         (##cdr _rest46044612_)))
                                                    (let ((_bind-hd4819_
                                                           _hd46094814_))
                                                      (let ((_rest4821_
                                                             _tl46104816_))
                                                        (_K46084811_
                                                         _rest4821_
                                                         _bind-hd4819_))))
                                                  (_else46064620_)))))))))
                            _lp4598_)
                          _forms4596_
                          '()
                          '()
                          '()))))
                  (let ((_is-effect-bind?4301_
                         (lambda (_hd-bind4538_)
                           (let ((_g45404553_
                                  (lambda (_g45414550_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g45414550_))))
                             (let ((_g45394586_
                                    (lambda (_g45414556_)
                                      (if (gx#stx-pair? _g45414556_)
                                          (let ((_e45434558_
                                                 (gx#stx-e _g45414556_)))
                                            (let ((_hd45444561_
                                                   (##car _e45434558_))
                                                  (_tl45454563_
                                                   (##cdr _e45434558_)))
                                              (if (gx#stx-pair? _tl45454563_)
                                                  (let ((_e45464566_
                                                         (gx#stx-e
                                                          _tl45454563_)))
                                                    (let ((_hd45474569_
                                                           (##car _e45464566_))
                                                          (_tl45484571_
                                                           (##cdr _e45464566_)))
                                                      (if (gx#stx-null?
                                                           _tl45484571_)
                                                          ((lambda (_L4574_)
                                                             (_is-effect-expr?4302_
                                                              _L4574_))
                                                           _hd45474569_)
                                                          (_g45404553_
                                                           _g45414556_))))
                                                  (_g45404553_ _g45414556_))))
                                          (_g45404553_ _g45414556_)))))
                               (_g45394586_ _hd-bind4538_))))))
                    (let ((_lift-pre4297_
                           (lambda (_hd4930_ _bindings4931_ _closures4932_)
                             ((letrec ((_lp4934_
                                        (lambda (_rest-forms4936_
                                                 _rest-bindings4937_
                                                 _rest-closures4938_
                                                 _post-forms4939_
                                                 _post-bindings4940_
                                                 _post-closures4941_
                                                 _pre-forms4942_
                                                 _lifted?4943_)
                                          (let ((_rest-forms49444960_
                                                 _rest-forms4936_)
                                                (_rest-bindings49454962_
                                                 _rest-bindings4937_)
                                                (_rest-closures49464964_
                                                 _rest-closures4938_))
                                            (let ((_E49494968_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _rest-forms49444960_
                                                            _rest-bindings49454962_
                                                            _rest-closures49464964_))))
                                              (let ((_else49484972_
                                                     (lambda ()
                                                       (if _lifted?4943_
                                                           (_lp4934_
                                                            (reverse _post-forms4939_)
                                                            (reverse _post-bindings4940_)
                                                            (reverse _post-closures4941_)
                                                            '()
                                                            '()
                                                            '()
                                                            _pre-forms4942_
                                                            '#f)
                                                           (values (reverse _pre-forms4942_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _post-forms4939_)
                           (reverse _post-bindings4940_)
                           (reverse _post-closures4941_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_K49505025_
                                                       (lambda (_rest-forms4975_
                                                                _form4976_)
                                                         (let ((_K49515013_
                                                                (lambda (_rest-bindings4978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bindings4979_)
                          (let ((_K49525001_
                                 (lambda (_rest-closures4981_ _closure4982_)
                                   (if (let ((_$e4984_
                                              (_closure-reference?4300_
                                               _closure4982_
                                               _bindings4979_)))
                                         (if _$e4984_
                                             _$e4984_
                                             (let ((_$e4991_
                                                    (ormap (lambda (_g49864988_)
                                                             (_closure-reference?4300_
                                                              _closure4982_
                                                              _g49864988_))
                                                           _rest-bindings4978_)))
                                               (if _$e4991_
                                                   _$e4991_
                                                   (let ((_$e4998_
                                                          (ormap (lambda (_g49934995_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_closure-reference?4300_
                            _closure4982_
                            _g49934995_))
                         _post-bindings4940_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e4998_
                                                         _$e4998_
                                                         (if (_is-effect-bind?4301_
                                                              _form4976_)
                                                             (find _is-effect-bind?4301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _post-forms4939_)
                     '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_lp4934_
                                        _rest-forms4975_
                                        _rest-bindings4978_
                                        _rest-closures4981_
                                        (cons _form4976_ _post-forms4939_)
                                        (cons _bindings4979_
                                              _post-bindings4940_)
                                        (cons _closure4982_
                                              _post-closures4941_)
                                        _pre-forms4942_
                                        _lifted?4943_)
                                       (_lp4934_
                                        _rest-forms4975_
                                        _rest-bindings4978_
                                        _rest-closures4981_
                                        _post-forms4939_
                                        _post-bindings4940_
                                        _post-closures4941_
                                        (cons _form4976_ _pre-forms4942_)
                                        '#t)))))
                            (if (##pair? _rest-closures49464964_)
                                (let ((_hd49535004_
                                       (##car _rest-closures49464964_))
                                      (_tl49545006_
                                       (##cdr _rest-closures49464964_)))
                                  (let ((_closure5009_ _hd49535004_))
                                    (let ((_rest-closures5011_ _tl49545006_))
                                      (_K49525001_
                                       _rest-closures5011_
                                       _closure5009_))))
                                (_else49484972_))))))
                   (if (##pair? _rest-bindings49454962_)
                       (let ((_hd49555016_ (##car _rest-bindings49454962_))
                             (_tl49565018_ (##cdr _rest-bindings49454962_)))
                         (let ((_bindings5021_ _hd49555016_))
                           (let ((_rest-bindings5023_ _tl49565018_))
                             (_K49515013_
                              _rest-bindings5023_
                              _bindings5021_))))
                       (_else49484972_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _rest-forms49444960_)
                                                      (let ((_hd49575028_
                                                             (##car _rest-forms49444960_))
                                                            (_tl49585030_
                                                             (##cdr _rest-forms49444960_)))
                                                        (let ((_form5033_
                                                               _hd49575028_))
                                                          (let ((_rest-forms5035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl49585030_))
                    (_K49505025_ _rest-forms5035_ _form5033_))))
              (_else49484972_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _lp4934_)
                              _hd4930_
                              _bindings4931_
                              _closures4932_
                              '()
                              '()
                              '()
                              '()
                              '#f))))
                      (let ((_lift-post4298_
                             (lambda (_hd4823_ _bindings4824_ _closures4825_)
                               ((letrec ((_lp4827_
                                          (lambda (_rest-forms4829_
                                                   _rest-bindings4830_
                                                   _rest-closures4831_
                                                   _pre-forms4832_
                                                   _pre-bindings4833_
                                                   _pre-closures4834_
                                                   _post-forms4835_
                                                   _lifted?4836_)
                                            (let ((_rest-forms48374853_
                                                   _rest-forms4829_)
                                                  (_rest-bindings48384855_
                                                   _rest-bindings4830_)
                                                  (_rest-closures48394857_
                                                   _rest-closures4831_))
                                              (let ((_E48424861_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _rest-forms48374853_
                                                              _rest-bindings48384855_
                                                              _rest-closures48394857_))))
                                                (let ((_else48414865_
                                                       (lambda ()
                                                         (if _lifted?4836_
                                                             (_lp4827_
                                                              (reverse _pre-forms4832_)
                                                              (reverse _pre-bindings4833_)
                                                              (reverse _pre-closures4834_)
                                                              '()
                                                              '()
                                                              '()
                                                              _post-forms4835_
                                                              '#f)
                                                             (values _post-forms4835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-forms4832_
                             _pre-bindings4833_
                             _pre-closures4834_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_K48434918_
                                                         (lambda (_rest-forms4868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _form4869_)
                   (let ((_K48444906_
                          (lambda (_rest-bindings4871_ _bindings4872_)
                            (let ((_K48454894_
                                   (lambda (_rest-closures4874_ _closure4875_)
                                     (if (let ((_$e4877_
                                                (_closure-reference?4300_
                                                 _closure4875_
                                                 _bindings4872_)))
                                           (if _$e4877_
                                               _$e4877_
                                               (let ((_$e4884_
                                                      (ormap (lambda (_g48794881_)
                                                               (_closure-reference?4300_
                                                                _g48794881_
                                                                _bindings4872_))
                                                             _rest-closures4874_)))
                                                 (if _$e4884_
                                                     _$e4884_
                                                     (let ((_$e4891_
                                                            (ormap (lambda (_g48864888_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (_closure-reference?4300_
                              _g48864888_
                              _bindings4872_))
                           _pre-closures4834_)))
               (if _$e4891_
                   _$e4891_
                   (if (_is-effect-bind?4301_ _form4869_)
                       (find _is-effect-bind?4301_ _pre-forms4832_)
                       '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_lp4827_
                                          _rest-forms4868_
                                          _rest-bindings4871_
                                          _rest-closures4874_
                                          (cons _form4869_ _pre-forms4832_)
                                          (cons _bindings4872_
                                                _pre-bindings4833_)
                                          (cons _closure4875_
                                                _pre-closures4834_)
                                          _post-forms4835_
                                          _lifted?4836_)
                                         (_lp4827_
                                          _rest-forms4868_
                                          _rest-bindings4871_
                                          _rest-closures4874_
                                          _pre-forms4832_
                                          _pre-bindings4833_
                                          _pre-closures4834_
                                          (cons _form4869_ _post-forms4835_)
                                          '#t)))))
                              (if (##pair? _rest-closures48394857_)
                                  (let ((_hd48464897_
                                         (##car _rest-closures48394857_))
                                        (_tl48474899_
                                         (##cdr _rest-closures48394857_)))
                                    (let ((_closure4902_ _hd48464897_))
                                      (let ((_rest-closures4904_ _tl48474899_))
                                        (_K48454894_
                                         _rest-closures4904_
                                         _closure4902_))))
                                  (_else48414865_))))))
                     (if (##pair? _rest-bindings48384855_)
                         (let ((_hd48484909_ (##car _rest-bindings48384855_))
                               (_tl48494911_ (##cdr _rest-bindings48384855_)))
                           (let ((_bindings4914_ _hd48484909_))
                             (let ((_rest-bindings4916_ _tl48494911_))
                               (_K48444906_
                                _rest-bindings4916_
                                _bindings4914_))))
                         (_else48414865_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (##pair? _rest-forms48374853_)
                                                        (let ((_hd48504921_
                                                               (##car _rest-forms48374853_))
                                                              (_tl48514923_
                                                               (##cdr _rest-forms48374853_)))
                                                          (let ((_form4926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd48504921_))
                    (let ((_rest-forms4928_ _tl48514923_))
                      (_K48434918_ _rest-forms4928_ _form4926_))))
                (_else48414865_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp4827_)
                                (reverse _hd4823_)
                                (reverse _bindings4824_)
                                (reverse _closures4825_)
                                '()
                                '()
                                '()
                                '()
                                '#f))))
                        (let ((_linearize4294_
                               (lambda (_forms5151_)
                                 (let ((_closures5153_
                                        (_collect-closures4295_ _forms5151_)))
                                   (let ((_bindings5155_
                                          (_collect-bindings4296_
                                           _forms5151_)))
                                     (let ((_g7111_ (_lift-pre4297_
                                                     _forms5151_
                                                     _bindings5155_
                                                     _closures5153_)))
                                       (begin
                                         (let ((_g7112_ (values-count
                                                         _g7111_)))
                                           (if (not (fx= _g7112_ 4))
                                               (error "Context expects 4 values"
                                                      _g7112_)))
                                         (let ((_pre-bind5157_
                                                (values-ref _g7111_ 0))
                                               (_forms5158_
                                                (values-ref _g7111_ 1))
                                               (_bindings5159_
                                                (values-ref _g7111_ 2))
                                               (_closures5160_
                                                (values-ref _g7111_ 3)))
                                           (let ((_g7113_ (_lift-post4298_
                                                           _forms5158_
                                                           _bindings5159_
                                                           _closures5160_)))
                                             (begin
                                               (let ((_g7114_ (values-count
                                                               _g7113_)))
                                                 (if (not (fx= _g7114_ 4))
                                                     (error "Context expects 4 values"
                                                            _g7114_)))
                                               (let ((_post-bind5162_
                                                      (values-ref _g7113_ 0))
                                                     (_forms5163_
                                                      (values-ref _g7113_ 1))
                                                     (_bindings5164_
                                                      (values-ref _g7113_ 2))
                                                     (_closures5165_
                                                      (values-ref _g7113_ 3)))
                                                 (let ((_g7115_ (_lift-rec4299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _forms5163_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     (let ((_g7116_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g7115_)))
               (if (not (fx= _g7116_ 3))
                   (error "Context expects 3 values" _g7116_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_rec-pre5167_
                                                            (values-ref
                                                             _g7115_
                                                             0))
                                                           (_rec-bind5168_
                                                            (values-ref
                                                             _g7115_
                                                             1))
                                                           (_rec-init5169_
                                                            (values-ref
                                                             _g7115_
                                                             2)))
                                                       (let ()
                                                         (values _pre-bind5157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rec-pre5167_
                         _rec-bind5168_
                         _rec-init5169_
                         _post-bind5162_))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (letrec ((_generate-let*4304_
                                    (lambda (_hd4391_ _body4392_)
                                      (let ((_hd43934401_ _hd4391_))
                                        (let ((_E43964405_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _hd43934401_))))
                                          (let ((_else43954409_
                                                 (lambda () _body4392_)))
                                            (let ((_K43974450_
                                                   (lambda (_rest4412_
                                                            _bind4413_)
                                                     (let ((_bind44144423_
                                                            _bind4413_))
                                                       (let ((_E44164427_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind44144423_))))
                 (let ((_K44174433_
                        (lambda (_expr4430_ _hd4431_)
                          (if (gx#stx-ormap gx#identifier? _hd4431_)
                              (gxc#generate-runtime-let-values%
                               (cons '%#let-values
                                     (cons (cons _bind4413_ '())
                                           (cons (_generate-let*4304_
                                                  _rest4412_
                                                  _body4392_)
                                                 '())))
                               '#t)
                              (cons 'begin
                                    (cons (gxc#compile-e _expr4430_)
                                          (cons (_generate-let*4304_
                                                 _rest4412_
                                                 _body4392_)
                                                '())))))))
                   (if (##pair? _bind44144423_)
                       (let ((_hd44184436_ (##car _bind44144423_))
                             (_tl44194438_ (##cdr _bind44144423_)))
                         (let ((_hd4441_ _hd44184436_))
                           (if (##pair? _tl44194438_)
                               (let ((_hd44204443_ (##car _tl44194438_))
                                     (_tl44214445_ (##cdr _tl44194438_)))
                                 (let ((_expr4448_ _hd44204443_))
                                   (if (##null? _tl44214445_)
                                       (_K44174433_ _expr4448_ _hd4441_)
                                       (_E44164427_))))
                               (_E44164427_))))
                       (_E44164427_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _hd43934401_)
                                                  (let ((_hd43984453_
                                                         (##car _hd43934401_))
                                                        (_tl43994455_
                                                         (##cdr _hd43934401_)))
                                                    (let ((_bind4458_
                                                           _hd43984453_))
                                                      (let ((_rest4460_
                                                             _tl43994455_))
                                                        (_K43974450_
                                                         _rest4460_
                                                         _bind4458_))))
                                                  (_else43954409_)))))))))
                            (let ((_g43064323_
                                   (lambda (_g43074320_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g43074320_))))
                              (let ((_g43054388_
                                     (lambda (_g43074326_)
                                       (if (gx#stx-pair? _g43074326_)
                                           (let ((_e43104328_
                                                  (gx#stx-e _g43074326_)))
                                             (let ((_hd43114331_
                                                    (##car _e43104328_))
                                                   (_tl43124333_
                                                    (##cdr _e43104328_)))
                                               (if (gx#stx-pair? _tl43124333_)
                                                   (let ((_e43134336_
                                                          (gx#stx-e
                                                           _tl43124333_)))
                                                     (let ((_hd43144339_
                                                            (##car _e43134336_))
                                                           (_tl43154341_
                                                            (##cdr _e43134336_)))
                                                       (if (gx#stx-pair?
                                                            _tl43154341_)
                                                           (let ((_e43164344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl43154341_)))
                     (let ((_hd43174347_ (##car _e43164344_))
                           (_tl43184349_ (##cdr _e43164344_)))
                       (if (gx#stx-null? _tl43184349_)
                           ((lambda (_L4352_ _L4353_)
                              (let ((_g7109_ (_linearize4294_ _L4353_)))
                                (begin
                                  (let ((_g7110_ (values-count _g7109_)))
                                    (if (not (fx= _g7110_ 5))
                                        (error "Context expects 5 values"
                                               _g7110_)))
                                  (let ((_pre4369_ (values-ref _g7109_ 0))
                                        (_rec-pre4370_ (values-ref _g7109_ 1))
                                        (_rec-bind4371_ (values-ref _g7109_ 2))
                                        (_rec-init4372_ (values-ref _g7109_ 3))
                                        (_post4373_ (values-ref _g7109_ 4)))
                                    (let ((_body4375_ (gxc#compile-e _L4352_)))
                                      (let ((_body4377_
                                             (if (null? _post4373_)
                                                 _body4375_
                                                 (_generate-let*4304_
                                                  _post4373_
                                                  _body4375_))))
                                        (let ((_body4379_
                                               (if (null? _rec-init4372_)
                                                   _body4377_
                                                   (cons 'begin
                                                         (foldr cons
                                                                (cons _body4377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        _rec-init4372_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_body4381_
                                                 (if (null? _rec-bind4371_)
                                                     _body4379_
                                                     (cons 'letrec
                                                           (cons _rec-bind4371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body4379_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_body4383_
                                                   (if (null? _rec-pre4370_)
                                                       _body4381_
                                                       (cons 'let
                                                             (cons _rec-pre4370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body4381_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_body4385_
                                                     (if (null? _pre4369_)
                                                         _body4383_
                                                         (_generate-let*4304_
                                                          _pre4369_
                                                          _body4383_))))
                                                (let () _body4385_)))))))))))
                            _hd43174347_
                            _hd43144339_)
                           (_g43064323_ _g43074326_))))
                   (_g43064323_ _g43074326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g43064323_ _g43074326_))))
                                           (_g43064323_ _g43074326_)))))
                                (_g43054388_ _stx4292_))))))))))))))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd4185_)
      ((letrec ((_lp4187_
                 (lambda (_rest4189_)
                   (let ((_g41934214_
                          (lambda (_g41944211_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g41944211_))))
                     (let ((_g41924221_
                            (lambda (_g41944217_) ((lambda () '#f)))))
                       (let ((_g41914228_
                              (lambda (_g41944224_)
                                (if (gx#stx-null? _g41944224_)
                                    ((lambda () '#t))
                                    (_g41924221_ _g41944224_)))))
                         (let ((_g41904289_
                                (lambda (_g41944231_)
                                  (if (gx#stx-pair? _g41944231_)
                                      (let ((_e41984233_
                                             (gx#stx-e _g41944231_)))
                                        (let ((_hd41994236_
                                               (##car _e41984233_))
                                              (_tl42004238_
                                               (##cdr _e41984233_)))
                                          (if (gx#stx-pair? _hd41994236_)
                                              (let ((_e42014241_
                                                     (gx#stx-e _hd41994236_)))
                                                (let ((_hd42024244_
                                                       (##car _e42014241_))
                                                      (_tl42034246_
                                                       (##cdr _e42014241_)))
                                                  (if (gx#stx-pair?
                                                       _hd42024244_)
                                                      (let ((_e42044249_
                                                             (gx#stx-e
                                                              _hd42024244_)))
                                                        (let ((_hd42054252_
                                                               (##car _e42044249_))
                                                              (_tl42064254_
                                                               (##cdr _e42044249_)))
                                                          (if (gx#stx-null?
                                                               _tl42064254_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl42034246_)
                          (let ((_e42074257_ (gx#stx-e _tl42034246_)))
                            (let ((_hd42084260_ (##car _e42074257_))
                                  (_tl42094262_ (##cdr _e42074257_)))
                              (if (gx#stx-null? _tl42094262_)
                                  ((lambda (_L4265_ _L4266_ _L4267_)
                                     (_lp4187_ _L4265_))
                                   _tl42004238_
                                   _hd42084260_
                                   _hd42054252_)
                                  (_g41914228_ _g41944231_))))
                          (_g41914228_ _g41944231_))
                      (_g41914228_ _g41944231_))))
              (_g41914228_ _g41944231_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g41914228_ _g41944231_))))
                                      (_g41914228_ _g41944231_)))))
                           (_g41904289_ _rest4189_))))))))
         _lp4187_)
       _hd4185_)))
  (define gxc#generate-runtime-simple-let
    (lambda (_form4109_ _hd4110_ _body4111_ _compiled-body?4112_)
      (let ((_generate14114_
             (lambda (_bind4116_)
               (let ((_g41184135_
                      (lambda (_g41194132_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g41194132_))))
                 (let ((_g41174182_
                        (lambda (_g41194138_)
                          (if (gx#stx-pair? _g41194138_)
                              (let ((_e41224140_ (gx#stx-e _g41194138_)))
                                (let ((_hd41234143_ (##car _e41224140_))
                                      (_tl41244145_ (##cdr _e41224140_)))
                                  (if (gx#stx-pair? _hd41234143_)
                                      (let ((_e41254148_
                                             (gx#stx-e _hd41234143_)))
                                        (let ((_hd41264151_
                                               (##car _e41254148_))
                                              (_tl41274153_
                                               (##cdr _e41254148_)))
                                          (if (gx#stx-null? _tl41274153_)
                                              (if (gx#stx-pair? _tl41244145_)
                                                  (let ((_e41284156_
                                                         (gx#stx-e
                                                          _tl41244145_)))
                                                    (let ((_hd41294159_
                                                           (##car _e41284156_))
                                                          (_tl41304161_
                                                           (##cdr _e41284156_)))
                                                      (if (gx#stx-null?
                                                           _tl41304161_)
                                                          ((lambda (_L4164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L4165_)
                     (cons (gxc#generate-runtime-binding-id* _L4165_)
                           (cons (gxc#compile-e _L4164_) '())))
                   _hd41294159_
                   _hd41264151_)
                  (_g41184135_ _g41194138_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g41184135_ _g41194138_))
                                              (_g41184135_ _g41194138_))))
                                      (_g41184135_ _g41194138_))))
                              (_g41184135_ _g41194138_)))))
                   (_g41174182_ _bind4116_))))))
        (cons _form4109_
              (cons (map _generate14114_ _hd4110_)
                    (cons (if _compiled-body?4112_
                              _body4111_
                              (gxc#compile-e _body4111_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx4020_)
      (letrec ((_generate14022_
                (lambda (_datum4074_)
                  (if (let ((_$e4076_ (null? _datum4074_)))
                        (if _$e4076_
                            _$e4076_
                            (let ((_$e4079_ (symbol? _datum4074_)))
                              (if _$e4079_
                                  _$e4079_
                                  (gx#self-quoting? _datum4074_)))))
                      _datum4074_
                      (if (uninterned-symbol? _datum4074_)
                          (gxc#generate-runtime-gensym-reference _datum4074_)
                          (if (pair? _datum4074_)
                              (cons (_generate14022_ (car _datum4074_))
                                    (_generate14022_ (cdr _datum4074_)))
                              (if (box? _datum4074_)
                                  (box (_generate14022_ (unbox _datum4074_)))
                                  (if (vector? _datum4074_)
                                      (vector-map _generate14022_ _datum4074_)
                                      (if (let ((_$e4082_
                                                 (s8vector? _datum4074_)))
                                            (if _$e4082_
                                                _$e4082_
                                                (let ((_$e4085_
                                                       (u8vector?
                                                        _datum4074_)))
                                                  (if _$e4085_
                                                      _$e4085_
                                                      (let ((_$e4088_
                                                             (s16vector?
                                                              _datum4074_)))
                                                        (if _$e4088_
                                                            _$e4088_
                                                            (let ((_$e4091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum4074_)))
                      (if _$e4091_
                          _$e4091_
                          (let ((_$e4094_ (s32vector? _datum4074_)))
                            (if _$e4094_
                                _$e4094_
                                (let ((_$e4097_ (u32vector? _datum4074_)))
                                  (if _$e4097_
                                      _$e4097_
                                      (let ((_$e4100_
                                             (s64vector? _datum4074_)))
                                        (if _$e4100_
                                            _$e4100_
                                            (let ((_$e4103_
                                                   (u64vector? _datum4074_)))
                                              (if _$e4103_
                                                  _$e4103_
                                                  (let ((_$e4106_
                                                         (f32vector?
                                                          _datum4074_)))
                                                    (if _$e4106_
                                                        _$e4106_
                                                        (f64vector?
                                                         _datum4074_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum4074_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx4020_))))))))))
        (let ((_g40244037_
               (lambda (_g40254034_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g40254034_))))
          (let ((_g40234071_
                 (lambda (_g40254040_)
                   (if (gx#stx-pair? _g40254040_)
                       (let ((_e40274042_ (gx#stx-e _g40254040_)))
                         (let ((_hd40284045_ (##car _e40274042_))
                               (_tl40294047_ (##cdr _e40274042_)))
                           (if (gx#stx-pair? _tl40294047_)
                               (let ((_e40304050_ (gx#stx-e _tl40294047_)))
                                 (let ((_hd40314053_ (##car _e40304050_))
                                       (_tl40324055_ (##cdr _e40304050_)))
                                   (if (gx#stx-null? _tl40324055_)
                                       ((lambda (_L4058_)
                                          (cons 'quote
                                                (cons (_generate14022_
                                                       (gx#stx-e _L4058_))
                                                      '())))
                                        _hd40314053_)
                                       (_g40244037_ _g40254040_))))
                               (_g40244037_ _g40254040_))))
                       (_g40244037_ _g40254040_)))))
            (_g40234071_ _stx4020_))))))
  (define gxc#generate-runtime-call%
    (lambda (_stx3982_)
      (let ((_g39843994_
             (lambda (_g39853991_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g39853991_))))
        (let ((_g39834017_
               (lambda (_g39853997_)
                 (if (gx#stx-pair? _g39853997_)
                     (let ((_e39873999_ (gx#stx-e _g39853997_)))
                       (let ((_hd39884002_ (##car _e39873999_))
                             (_tl39894004_ (##cdr _e39873999_)))
                         ((lambda (_L4007_) (map gxc#compile-e _L4007_))
                          _tl39894004_)))
                     (_g39843994_ _g39853997_)))))
          (_g39834017_ _stx3982_)))))
  (define gxc#generate-runtime-if%
    (lambda (_stx3944_)
      (let ((_g39463956_
             (lambda (_g39473953_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g39473953_))))
        (let ((_g39453979_
               (lambda (_g39473959_)
                 (if (gx#stx-pair? _g39473959_)
                     (let ((_e39493961_ (gx#stx-e _g39473959_)))
                       (let ((_hd39503964_ (##car _e39493961_))
                             (_tl39513966_ (##cdr _e39493961_)))
                         ((lambda (_L3969_)
                            (cons 'if (map gxc#compile-e _L3969_)))
                          _tl39513966_)))
                     (_g39463956_ _g39473959_)))))
          (_g39453979_ _stx3944_)))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx3893_)
      (let ((_g38953908_
             (lambda (_g38963905_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g38963905_))))
        (let ((_g38943941_
               (lambda (_g38963911_)
                 (if (gx#stx-pair? _g38963911_)
                     (let ((_e38983913_ (gx#stx-e _g38963911_)))
                       (let ((_hd38993916_ (##car _e38983913_))
                             (_tl39003918_ (##cdr _e38983913_)))
                         (if (gx#stx-pair? _tl39003918_)
                             (let ((_e39013921_ (gx#stx-e _tl39003918_)))
                               (let ((_hd39023924_ (##car _e39013921_))
                                     (_tl39033926_ (##cdr _e39013921_)))
                                 (if (gx#stx-null? _tl39033926_)
                                     ((lambda (_L3929_)
                                        (gxc#generate-runtime-binding-id
                                         _L3929_))
                                      _hd39023924_)
                                     (_g38953908_ _g38963911_))))
                             (_g38953908_ _g38963911_))))
                     (_g38953908_ _g38963911_)))))
          (_g38943941_ _stx3893_)))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx3826_)
      (let ((_g38283845_
             (lambda (_g38293842_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g38293842_))))
        (let ((_g38273890_
               (lambda (_g38293848_)
                 (if (gx#stx-pair? _g38293848_)
                     (let ((_e38323850_ (gx#stx-e _g38293848_)))
                       (let ((_hd38333853_ (##car _e38323850_))
                             (_tl38343855_ (##cdr _e38323850_)))
                         (if (gx#stx-pair? _tl38343855_)
                             (let ((_e38353858_ (gx#stx-e _tl38343855_)))
                               (let ((_hd38363861_ (##car _e38353858_))
                                     (_tl38373863_ (##cdr _e38353858_)))
                                 (if (gx#stx-pair? _tl38373863_)
                                     (let ((_e38383866_
                                            (gx#stx-e _tl38373863_)))
                                       (let ((_hd38393869_ (##car _e38383866_))
                                             (_tl38403871_
                                              (##cdr _e38383866_)))
                                         (if (gx#stx-null? _tl38403871_)
                                             ((lambda (_L3874_ _L3875_)
                                                (cons 'set!
                                                      (cons (gxc#generate-runtime-binding-id
                                                             _L3875_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3874_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd38393869_
                                              _hd38363861_)
                                             (_g38283845_ _g38293848_))))
                                     (_g38283845_ _g38293848_))))
                             (_g38283845_ _g38293848_))))
                     (_g38283845_ _g38293848_)))))
          (_g38273890_ _stx3826_)))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx3759_)
      (let ((_g37613778_
             (lambda (_g37623775_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g37623775_))))
        (let ((_g37603823_
               (lambda (_g37623781_)
                 (if (gx#stx-pair? _g37623781_)
                     (let ((_e37653783_ (gx#stx-e _g37623781_)))
                       (let ((_hd37663786_ (##car _e37653783_))
                             (_tl37673788_ (##cdr _e37653783_)))
                         (if (gx#stx-pair? _tl37673788_)
                             (let ((_e37683791_ (gx#stx-e _tl37673788_)))
                               (let ((_hd37693794_ (##car _e37683791_))
                                     (_tl37703796_ (##cdr _e37683791_)))
                                 (if (gx#stx-pair? _tl37703796_)
                                     (let ((_e37713799_
                                            (gx#stx-e _tl37703796_)))
                                       (let ((_hd37723802_ (##car _e37713799_))
                                             (_tl37733804_
                                              (##cdr _e37713799_)))
                                         (if (gx#stx-null? _tl37733804_)
                                             ((lambda (_L3807_ _L3808_)
                                                (cons '##structure-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L3807_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3808_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd37723802_
                                              _hd37693794_)
                                             (_g37613778_ _g37623781_))))
                                     (_g37613778_ _g37623781_))))
                             (_g37613778_ _g37623781_))))
                     (_g37613778_ _g37623781_)))))
          (_g37603823_ _stx3759_)))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx3692_)
      (let ((_g36943711_
             (lambda (_g36953708_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g36953708_))))
        (let ((_g36933756_
               (lambda (_g36953714_)
                 (if (gx#stx-pair? _g36953714_)
                     (let ((_e36983716_ (gx#stx-e _g36953714_)))
                       (let ((_hd36993719_ (##car _e36983716_))
                             (_tl37003721_ (##cdr _e36983716_)))
                         (if (gx#stx-pair? _tl37003721_)
                             (let ((_e37013724_ (gx#stx-e _tl37003721_)))
                               (let ((_hd37023727_ (##car _e37013724_))
                                     (_tl37033729_ (##cdr _e37013724_)))
                                 (if (gx#stx-pair? _tl37033729_)
                                     (let ((_e37043732_
                                            (gx#stx-e _tl37033729_)))
                                       (let ((_hd37053735_ (##car _e37043732_))
                                             (_tl37063737_
                                              (##cdr _e37043732_)))
                                         (if (gx#stx-null? _tl37063737_)
                                             ((lambda (_L3740_ _L3741_)
                                                (cons '##structure-direct-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L3740_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3741_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd37053735_
                                              _hd37023727_)
                                             (_g36943711_ _g36953714_))))
                                     (_g36943711_ _g36953714_))))
                             (_g36943711_ _g36953714_))))
                     (_g36943711_ _g36953714_)))))
          (_g36933756_ _stx3692_)))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx3609_)
      (let ((_g36113632_
             (lambda (_g36123629_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g36123629_))))
        (let ((_g36103689_
               (lambda (_g36123635_)
                 (if (gx#stx-pair? _g36123635_)
                     (let ((_e36163637_ (gx#stx-e _g36123635_)))
                       (let ((_hd36173640_ (##car _e36163637_))
                             (_tl36183642_ (##cdr _e36163637_)))
                         (if (gx#stx-pair? _tl36183642_)
                             (let ((_e36193645_ (gx#stx-e _tl36183642_)))
                               (let ((_hd36203648_ (##car _e36193645_))
                                     (_tl36213650_ (##cdr _e36193645_)))
                                 (if (gx#stx-pair? _tl36213650_)
                                     (let ((_e36223653_
                                            (gx#stx-e _tl36213650_)))
                                       (let ((_hd36233656_ (##car _e36223653_))
                                             (_tl36243658_
                                              (##cdr _e36223653_)))
                                         (if (gx#stx-pair? _tl36243658_)
                                             (let ((_e36253661_
                                                    (gx#stx-e _tl36243658_)))
                                               (let ((_hd36263664_
                                                      (##car _e36253661_))
                                                     (_tl36273666_
                                                      (##cdr _e36253661_)))
                                                 (if (gx#stx-null?
                                                      _tl36273666_)
                                                     ((lambda (_L3669_
                                                               _L3670_
                                                               _L3671_)
                                                        (cons '##structure-ref
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L3669_)
                            (cons (gxc#compile-e _L3670_)
                                  (cons (gxc#compile-e _L3671_)
                                        (cons ''#f '()))))))
              _hd36263664_
              _hd36233656_
              _hd36203648_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g36113632_
                                                      _g36123635_))))
                                             (_g36113632_ _g36123635_))))
                                     (_g36113632_ _g36123635_))))
                             (_g36113632_ _g36123635_))))
                     (_g36113632_ _g36123635_)))))
          (_g36103689_ _stx3609_)))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx3510_)
      (let ((_g35123537_
             (lambda (_g35133534_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g35133534_))))
        (let ((_g35113606_
               (lambda (_g35133540_)
                 (if (gx#stx-pair? _g35133540_)
                     (let ((_e35183542_ (gx#stx-e _g35133540_)))
                       (let ((_hd35193545_ (##car _e35183542_))
                             (_tl35203547_ (##cdr _e35183542_)))
                         (if (gx#stx-pair? _tl35203547_)
                             (let ((_e35213550_ (gx#stx-e _tl35203547_)))
                               (let ((_hd35223553_ (##car _e35213550_))
                                     (_tl35233555_ (##cdr _e35213550_)))
                                 (if (gx#stx-pair? _tl35233555_)
                                     (let ((_e35243558_
                                            (gx#stx-e _tl35233555_)))
                                       (let ((_hd35253561_ (##car _e35243558_))
                                             (_tl35263563_
                                              (##cdr _e35243558_)))
                                         (if (gx#stx-pair? _tl35263563_)
                                             (let ((_e35273566_
                                                    (gx#stx-e _tl35263563_)))
                                               (let ((_hd35283569_
                                                      (##car _e35273566_))
                                                     (_tl35293571_
                                                      (##cdr _e35273566_)))
                                                 (if (gx#stx-pair?
                                                      _tl35293571_)
                                                     (let ((_e35303574_
                                                            (gx#stx-e
                                                             _tl35293571_)))
                                                       (let ((_hd35313577_
                                                              (##car _e35303574_))
                                                             (_tl35323579_
                                                              (##cdr _e35303574_)))
                                                         (if (gx#stx-null?
                                                              _tl35323579_)
                                                             ((lambda (_L3582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L3583_
                               _L3584_
                               _L3585_)
                        (cons '##structure-set!
                              (cons (gxc#compile-e _L3583_)
                                    (cons (gxc#compile-e _L3582_)
                                          (cons (gxc#compile-e _L3584_)
                                                (cons (gxc#compile-e _L3585_)
                                                      (cons ''#f '())))))))
                      _hd35313577_
                      _hd35283569_
                      _hd35253561_
                      _hd35223553_)
                     (_g35123537_ _g35133540_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g35123537_
                                                      _g35133540_))))
                                             (_g35123537_ _g35133540_))))
                                     (_g35123537_ _g35133540_))))
                             (_g35123537_ _g35133540_))))
                     (_g35123537_ _g35133540_)))))
          (_g35113606_ _stx3510_)))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx3419_)
      (let ((_g34213431_
             (lambda (_g34223428_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g34223428_))))
        (let ((_g34203507_
               (lambda (_g34223434_)
                 (if (gx#stx-pair? _g34223434_)
                     (let ((_e34243436_ (gx#stx-e _g34223434_)))
                       (let ((_hd34253439_ (##car _e34243436_))
                             (_tl34263441_ (##cdr _e34243436_)))
                         ((lambda (_L3444_)
                            (let ((_ht3454_ (make-hash-table-eq)))
                              ((letrec ((_lp3456_
                                         (lambda (_rest3458_ _loads3459_)
                                           (let ((_K3461_ (lambda (_ctx3500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest3501_)
                    (let ((_id3503_
                           (##structure-ref
                            _ctx3500_
                            '1
                            gx#expander-context::t
                            '#f)))
                      (if (hash-get _ht3454_ _id3503_)
                          (_lp3456_ _rest3501_ _loads3459_)
                          (let ((_rt3505_
                                 (string-append
                                  (symbol->string _id3503_)
                                  '"__rt")))
                            (begin
                              (hash-put! _ht3454_ _id3503_ _rt3505_)
                              (_lp3456_
                               _rest3501_
                               (cons _rt3505_ _loads3459_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_rest34623470_ _rest3458_))
                                               (let ((_E34653474_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest34623470_))))
                                                 (let ((_else34643482_
                                                        (lambda ()
                                                          (cons 'begin
                                                                (map (lambda (_g34773479_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (list 'load-module _g34773479_))
                             (reverse _loads3459_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K34663488_
                                                          (lambda (_rest3485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in3486_)
                    (if (##structure-instance-of?
                         _in3486_
                         'gx#module-context::t)
                        (_K3461_ _in3486_ _rest3485_)
                        (if (##structure-direct-instance-of?
                             _in3486_
                             'gx#module-import::t)
                            (if (fxpositive?
                                 (##structure-ref
                                  _in3486_
                                  '3
                                  gx#module-import::t
                                  '#f))
                                (_lp3456_ _rest3485_ _loads3459_)
                                (_K3461_ (##structure-ref
                                          (##structure-ref
                                           _in3486_
                                           '1
                                           gx#module-import::t
                                           '#f)
                                          '1
                                          gx#module-export::t
                                          '#f)
                                         _rest3485_))
                            (if (##structure-direct-instance-of?
                                 _in3486_
                                 'gx#import-set::t)
                                (if (fxpositive?
                                     (##structure-ref
                                      _in3486_
                                      '2
                                      gx#import-set::t
                                      '#f))
                                    (_lp3456_ _rest3485_ _loads3459_)
                                    (_K3461_ (##structure-ref
                                              _in3486_
                                              '1
                                              gx#import-set::t
                                              '#f)
                                             _rest3485_))
                                (gxc#raise-compile-error
                                 '"Unexpected import"
                                 _stx3419_
                                 _in3486_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest34623470_)
                                                         (let ((_hd34673491_
                                                                (##car _rest34623470_))
                                                               (_tl34683493_
                                                                (##cdr _rest34623470_)))
                                                           (let ((_in3496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd34673491_))
                     (let ((_rest3498_ _tl34683493_))
                       (_K34663488_ _rest3498_ _in3496_))))
                 (_else34643482_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp3456_)
                               _L3444_
                               '())))
                          _tl34263441_)))
                     (_g34213431_ _g34223434_)))))
          (_g34203507_ _stx3419_)))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx3360_)
      (let ((_generate-quote3362_
             (lambda (_q3417_)
               (if (gx#identifier? _q3417_)
                   (gxc#generate-runtime-identifier _q3417_)
                   (gxc#raise-compile-error
                    '"Cannot quote non-identifier syntax"
                    _stx3360_
                    _q3417_)))))
        (let ((_g33643377_
               (lambda (_g33653374_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g33653374_))))
          (let ((_g33633414_
                 (lambda (_g33653380_)
                   (if (gx#stx-pair? _g33653380_)
                       (let ((_e33673382_ (gx#stx-e _g33653380_)))
                         (let ((_hd33683385_ (##car _e33673382_))
                               (_tl33693387_ (##cdr _e33673382_)))
                           (if (gx#stx-pair? _tl33693387_)
                               (let ((_e33703390_ (gx#stx-e _tl33693387_)))
                                 (let ((_hd33713393_ (##car _e33703390_))
                                       (_tl33723395_ (##cdr _e33703390_)))
                                   (if (gx#stx-null? _tl33723395_)
                                       ((lambda (_L3398_)
                                          (let ((_gid3411_
                                                 (gxc#generate-runtime-temporary
                                                  '#t))
                                                (_quote-e3412_
                                                 (_generate-quote3362_
                                                  _L3398_)))
                                            (begin
                                              (set-box!
                                               (gxc#current-compile-lift)
                                               (cons (cons 'define
                                                           (cons _gid3411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'gx#core-quote-syntax
                                     (cons (cons 'quote
                                                 (cons _quote-e3412_ '()))
                                           '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (unbox (gxc#current-compile-lift))))
                                              _gid3411_)))
                                        _hd33713393_)
                                       (_g33643377_ _g33653380_))))
                               (_g33643377_ _g33653380_))))
                       (_g33643377_ _g33653380_)))))
            (_g33633414_ _stx3360_))))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx3293_)
      (let ((_g32953312_
             (lambda (_g32963309_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g32963309_))))
        (let ((_g32943357_
               (lambda (_g32963315_)
                 (if (gx#stx-pair? _g32963315_)
                     (let ((_e32993317_ (gx#stx-e _g32963315_)))
                       (let ((_hd33003320_ (##car _e32993317_))
                             (_tl33013322_ (##cdr _e32993317_)))
                         (if (gx#stx-pair? _tl33013322_)
                             (let ((_e33023325_ (gx#stx-e _tl33013322_)))
                               (let ((_hd33033328_ (##car _e33023325_))
                                     (_tl33043330_ (##cdr _e33023325_)))
                                 (if (gx#stx-pair? _tl33043330_)
                                     (let ((_e33053333_
                                            (gx#stx-e _tl33043330_)))
                                       (let ((_hd33063336_ (##car _e33053333_))
                                             (_tl33073338_
                                              (##cdr _e33053333_)))
                                         (if (gx#stx-null? _tl33073338_)
                                             ((lambda (_L3341_ _L3342_)
                                                (cons 'define
                                                      (cons (gx#stx-e _L3342_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3341_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd33063336_
                                              _hd33033328_)
                                             (_g32953312_ _g32963315_))))
                                     (_g32953312_ _g32963315_))))
                             (_g32953312_ _g32963315_))))
                     (_g32953312_ _g32963315_)))))
          (_g32943357_ _stx3293_)))))
  (define gxc#generate-meta-begin%
    (lambda (_stx3242_ _state3243_)
      (let ((_g32453255_
             (lambda (_g32463252_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g32463252_))))
        (let ((_g32443290_
               (lambda (_g32463258_)
                 (if (gx#stx-pair? _g32463258_)
                     (let ((_e32483260_ (gx#stx-e _g32463258_)))
                       (let ((_hd32493263_ (##car _e32483260_))
                             (_tl32503265_ (##cdr _e32483260_)))
                         ((lambda (_L3268_)
                            (let ((_c-body3282_
                                   (map (lambda (_g32773279_)
                                          (gxc#compile-e
                                           _g32773279_
                                           _state3243_))
                                        _L3268_)))
                              (let ((_c-body3287_
                                     (filter (lambda (_$obj3284_)
                                               (not (void? _$obj3284_)))
                                             _c-body3282_)))
                                (let () (cons '%#begin _c-body3287_)))))
                          _tl32503265_)))
                     (_g32453255_ _g32463258_)))))
          (_g32443290_ _stx3242_)))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx3150_ _state3151_)
      (let ((_g31533163_
             (lambda (_g31543160_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g31543160_))))
        (let ((_g31523239_
               (lambda (_g31543166_)
                 (if (gx#stx-pair? _g31543166_)
                     (let ((_e31563168_ (gx#stx-e _g31543166_)))
                       (let ((_hd31573171_ (##car _e31563168_))
                             (_tl31583173_ (##cdr _e31563168_)))
                         ((lambda (_L3176_)
                            (let ((_phi3186_ (fx1+ (gx#current-expander-phi))))
                              (let ((_block3188_
                                     (gxc#meta-state-begin-phi!
                                      _state3151_
                                      _phi3186_)))
                                (let ((_compiled3191_
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#apply-generate-meta-phi
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  '%#begin)
                                                 _L3176_)
                                           _state3151_))
                                        gx#current-expander-phi
                                        _phi3186_)))
                                  (let ()
                                    (let ((_g31943204_
                                           (lambda (_g31953201_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g31953201_))))
                                      (let ((_g31933236_
                                             (lambda (_g31953207_)
                                               (if (gx#stx-pair? _g31953207_)
                                                   (let ((_e31973209_
                                                          (gx#stx-e
                                                           _g31953207_)))
                                                     (let ((_hd31983212_
                                                            (##car _e31973209_))
                                                           (_tl31993214_
                                                            (##cdr _e31973209_)))
                                                       (if (gx#identifier?
                                                            _hd31983212_)
                                                           (if (gx#stx-eq?
                                                                '%#begin
                                                                _hd31983212_)
                                                               ((lambda (_L3217_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_c-body3234_
                                 (filter (lambda (_$obj3231_)
                                           (not (void? _$obj3231_)))
                                         _L3217_)))
                            (if _block3188_
                                (cons '%#begin-syntax
                                      (cons (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons _block3188_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _c-body3234_))
                                (if (null? _c-body3234_)
                                    '#!void
                                    (cons '%#begin-syntax _c-body3234_)))))
                        _tl31993214_)
                       (_g31943204_ _g31953207_))
                   (_g31943204_ _g31953207_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g31943204_
                                                    _g31953207_)))))
                                        (_g31933236_ _compiled3191_))))))))
                          _tl31583173_)))
                     (_g31533163_ _g31543166_)))))
          (_g31523239_ _stx3150_)))))
  (define gxc#generate-meta-module%
    (lambda (_stx3081_ _state3082_)
      (begin
        (gxc#meta-state-end-phi! _state3082_)
        (let ((_g30843098_
               (lambda (_g30853095_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g30853095_))))
          (let ((_g30833147_
                 (lambda (_g30853101_)
                   (if (gx#stx-pair? _g30853101_)
                       (let ((_e30883103_ (gx#stx-e _g30853101_)))
                         (let ((_hd30893106_ (##car _e30883103_))
                               (_tl30903108_ (##cdr _e30883103_)))
                           (if (gx#stx-pair? _tl30903108_)
                               (let ((_e30913111_ (gx#stx-e _tl30903108_)))
                                 (let ((_hd30923114_ (##car _e30913111_))
                                       (_tl30933116_ (##cdr _e30913111_)))
                                   ((lambda (_L3119_ _L3120_)
                                      (let ((_key3133_
                                             (gx#core-identifier-key _L3120_)))
                                        (begin
                                          (if (interned-symbol? _key3133_)
                                              '#!void
                                              (gxc#raise-compile-error
                                               '"Cannot compile module with uninterned id"
                                               _stx3081_
                                               _L3120_
                                               _key3133_))
                                          (let ((_ctx3135_
                                                 (gx#syntax-local-e _L3120_)))
                                            (let ((_code3138_
                                                   (call-with-parameters
                                                    (lambda ()
                                                      (gxc#compile-e
                                                       (##structure-ref
                                                        _ctx3135_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       _state3082_))
                                                    gx#current-expander-context
                                                    _ctx3135_)))
                                              (let ((_rt3140_
                                                     (hash-get
                                                      (gxc#current-compile-runtime-sections)
                                                      _ctx3135_)))
                                                (let ((_loader3142_
                                                       (if _rt3140_
                                                           (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons '%#ref (cons '_gx#load-module '()))
                                     (cons (cons '%#quote (cons _rt3140_ '()))
                                           '())))
                         '())
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_modid3144_
                                                         (gx#stx-e _L3120_)))
                                                    (let ()
                                                      (begin
                                                        (gxc#meta-state-end-phi!
                                                         _state3082_)
                                                        (cons '%#module
                                                              (cons _modid3144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _code3138_ _loader3142_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl30933116_
                                    _hd30923114_)))
                               (_g30843098_ _g30853101_))))
                       (_g30843098_ _g30853101_)))))
            (_g30833147_ _stx3081_))))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx3071_ _context-chain3072_)
      ((letrec ((_lp3074_
                 (lambda (_ctx3076_ _path3077_)
                   (let ((_super3079_
                          (##structure-ref
                           _ctx3076_
                           '3
                           gx#phi-context::t
                           '#f)))
                     (if (memq _super3079_ _context-chain3072_)
                         (cons* '#f
                                (car (##structure-ref
                                      _ctx3076_
                                      '7
                                      gx#module-context::t
                                      '#f))
                                _path3077_)
                         (if (##structure-instance-of?
                              _super3079_
                              'gx#module-context::t)
                             (_lp3074_
                              _super3079_
                              (cons (car (##structure-ref
                                          _ctx3076_
                                          '7
                                          gx#module-context::t
                                          '#f))
                                    _path3077_))
                             (cons (make-symbol
                                    '":"
                                    (##structure-ref
                                     _ctx3076_
                                     '1
                                     gx#expander-context::t
                                     '#f))
                                   _path3077_)))))))
         _lp3074_)
       _ctx3071_
       '())))
  (define gxc#current-context-chain
    (lambda ()
      ((letrec ((_lp3066_
                 (lambda (_ctx3068_ _r3069_)
                   (if (##structure-instance-of?
                        _ctx3068_
                        'gx#module-context::t)
                       (_lp3066_
                        (##structure-ref _ctx3068_ '3 gx#phi-context::t '#f)
                        (cons _ctx3068_ _r3069_))
                       _r3069_))))
         _lp3066_)
       (gx#current-expander-context)
       '())))
  (define gxc#generate-meta-import%
    (lambda (_stx2835_ _state2836_)
      (let ((_context-chain2838_ (gxc#current-context-chain)))
        (let ((_make-import-spec2839_
               (lambda (_in3002_)
                 (let ((_in30033015_ _in3002_))
                   (let ((_E30053019_
                          (lambda ()
                            (error '"No clause matching" _in30033015_))))
                     (let ((_K30063029_
                            (lambda (_phi3022_
                                     _name3023_
                                     _src-name3024_
                                     _src-phi3025_
                                     _src-key3026_
                                     _src-ctx3027_)
                              (cons _phi3022_
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name3023_)
                                          (cons _src-phi3025_
                                                (cons (gxc#generate-runtime-identifier-key
                                                       _src-name3024_)
                                                      '())))))))
                       (if (direct-struct-instance?
                            gx#module-import::t
                            _in30033015_)
                           (let ((_e30073032_ (##vector-ref _in30033015_ '1)))
                             (if (direct-struct-instance?
                                  gx#module-export::t
                                  _e30073032_)
                                 (let ((_e30103035_
                                        (##vector-ref _e30073032_ '1)))
                                   (let ((_src-ctx3038_ _e30103035_))
                                     (let ((_e30113040_
                                            (##vector-ref _e30073032_ '2)))
                                       (let ((_src-key3043_ _e30113040_))
                                         (let ((_e30123045_
                                                (##vector-ref _e30073032_ '3)))
                                           (let ((_src-phi3048_ _e30123045_))
                                             (let ((_e30133050_
                                                    (##vector-ref
                                                     _e30073032_
                                                     '4)))
                                               (let ((_src-name3053_
                                                      _e30133050_))
                                                 (let ((_e30083055_
                                                        (##vector-ref
                                                         _in30033015_
                                                         '2)))
                                                   (let ((_name3058_
                                                          _e30083055_))
                                                     (let ((_e30093060_
                                                            (##vector-ref
                                                             _in30033015_
                                                             '3)))
                                                       (let ((_phi3063_
                                                              _e30093060_))
                                                         (_K30063029_
                                                          _phi3063_
                                                          _name3058_
                                                          _src-name3053_
                                                          _src-phi3048_
                                                          _src-key3043_
                                                          _src-ctx3038_)))))))))))))
                                 (_E30053019_)))
                           (_E30053019_))))))))
          (let ((_make-import-path2840_
                 (lambda (_ctx3000_)
                   (gxc#generate-meta-import-path
                    _ctx3000_
                    _context-chain2838_))))
            (let ((_make-import-spec-in2841_
                   (lambda (_ctx2997_ _in2998_)
                     (cons 'spec:
                           (cons (_make-import-path2840_ _ctx2997_)
                                 (reverse _in2998_))))))
              (begin
                (gxc#meta-state-end-phi! _state2836_)
                (let ((_g28432853_
                       (lambda (_g28442850_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g28442850_))))
                  (let ((_g28422994_
                         (lambda (_g28442856_)
                           (if (gx#stx-pair? _g28442856_)
                               (let ((_e28462858_ (gx#stx-e _g28442856_)))
                                 (let ((_hd28472861_ (##car _e28462858_))
                                       (_tl28482863_ (##cdr _e28462858_)))
                                   ((lambda (_L2866_)
                                      ((letrec ((_lp2877_
                                                 (lambda (_rest2879_
                                                          _current-src2880_
                                                          _current-in2881_
                                                          _r2882_)
                                                   (let ((_rest28832891_
                                                          _rest2879_))
                                                     (let ((_E28862895_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _rest28832891_))))
               (let ((_else28852901_
                      (lambda ()
                        (let ((_r2899_ (if _current-src2880_
                                           (cons (_make-import-spec-in2841_
                                                  _current-src2880_
                                                  _current-in2881_)
                                                 _r2882_)
                                           _r2882_)))
                          (cons '%#import (reverse _r2899_))))))
                 (let ((_K28872982_
                        (lambda (_rest2904_ _in2905_)
                          (if (##structure-direct-instance-of?
                               _in2905_
                               'gx#module-import::t)
                              (let ((_in29062913_ _in2905_))
                                (let ((_E29082917_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _in29062913_))))
                                  (let ((_K29092922_
                                         (lambda (_src-ctx2920_)
                                           (if (eq? _current-src2880_
                                                    _src-ctx2920_)
                                               (_lp2877_
                                                _rest2904_
                                                _current-src2880_
                                                (cons (_make-import-spec2839_
                                                       _in2905_)
                                                      _current-in2881_)
                                                _r2882_)
                                               (if _current-src2880_
                                                   (_lp2877_
                                                    _rest2904_
                                                    _src-ctx2920_
                                                    (cons (_make-import-spec2839_
                                                           _in2905_)
                                                          '())
                                                    (cons (_make-import-spec-in2841_
                                                           _current-src2880_
                                                           _current-in2881_)
                                                          _r2882_))
                                                   (_lp2877_
                                                    _rest2904_
                                                    _src-ctx2920_
                                                    (cons (_make-import-spec2839_
                                                           _in2905_)
                                                          '())
                                                    _r2882_))))))
                                    (if (direct-struct-instance?
                                         gx#module-import::t
                                         _in29062913_)
                                        (let ((_e29102925_
                                               (##vector-ref _in29062913_ '1)))
                                          (if (direct-struct-instance?
                                               gx#module-export::t
                                               _e29102925_)
                                              (let ((_e29112928_
                                                     (##vector-ref
                                                      _e29102925_
                                                      '1)))
                                                (let ((_src-ctx2931_
                                                       _e29112928_))
                                                  (_K29092922_ _src-ctx2931_)))
                                              (_E29082917_)))
                                        (_E29082917_)))))
                              (if (##structure-direct-instance-of?
                                   _in2905_
                                   'gx#import-set::t)
                                  (let ((_phi2933_
                                         (##structure-ref
                                          _in2905_
                                          '2
                                          gx#import-set::t
                                          '#f)))
                                    (let ((_src2935_
                                           (##structure-ref
                                            _in2905_
                                            '1
                                            gx#import-set::t
                                            '#f)))
                                      (let ((_src-in2975_
                                             (let ((_g29362945_
                                                    (_make-import-path2840_
                                                     _src2935_)))
                                               (let ((_E29392949_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _g29362945_))))
                                                 (let ((_try-match29382960_
                                                        (lambda ()
                                                          (let ((_K29402955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_path2953_) (cons 'in: _path2953_))))
                    (let ((_path2958_ _g29362945_))
                      (_K29402955_ _path2958_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K29412965_
                                                          (lambda (_path2963_)
                                                            _path2963_)))
                                                     (if (##pair? _g29362945_)
                                                         (let ((_hd29422968_
                                                                (##car _g29362945_))
                                                               (_tl29432970_
                                                                (##cdr _g29362945_)))
                                                           (let ((_path2973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd29422968_))
                     (if (##null? _tl29432970_)
                         (_K29412965_ _path2973_)
                         (_try-match29382960_))))
                 (_try-match29382960_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_r2977_ (if _current-src2880_
                                                           (cons (_make-import-spec-in2841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _current-src2880_
                          _current-in2881_)
                         _r2882_)
                   _r2882_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (_lp2877_
                                             _rest2904_
                                             '#f
                                             '()
                                             (cons (if (fxzero? _phi2933_)
                                                       _src-in2975_
                                                       (cons 'phi:
                                                             (cons _phi2933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _src-in2975_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r2977_)))))))
                                  (if (##structure-instance-of?
                                       _in2905_
                                       'gx#module-context::t)
                                      (let ((_r2980_ (if _current-src2880_
                                                         (cons (_make-import-spec-in2841_
                                                                _current-src2880_
                                                                _current-in2881_)
                                                               _r2882_)
                                                         _r2882_)))
                                        (_lp2877_
                                         _rest2904_
                                         '#f
                                         '()
                                         (cons (cons 'runtime:
                                                     (_make-import-path2840_
                                                      _in2905_))
                                               _r2980_)))
                                      '#!void))))))
                   (if (##pair? _rest28832891_)
                       (let ((_hd28882985_ (##car _rest28832891_))
                             (_tl28892987_ (##cdr _rest28832891_)))
                         (let ((_in2990_ _hd28882985_))
                           (let ((_rest2992_ _tl28892987_))
                             (_K28872982_ _rest2992_ _in2990_))))
                       (_else28852901_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _lp2877_)
                                       _L2866_
                                       '#f
                                       '()
                                       '()))
                                    _tl28482863_)))
                               (_g28432853_ _g28442856_)))))
                    (_g28422994_ _stx2835_))))))))))
  (define gxc#generate-meta-export%
    (lambda (_stx2645_ _state2646_)
      (let ((_context-chain2648_ (gxc#current-context-chain)))
        (let ((_make-import-path2649_
               (lambda (_ctx2833_)
                 (gxc#generate-meta-import-path
                  _ctx2833_
                  _context-chain2648_))))
          (let ((_g26512661_
                 (lambda (_g26522658_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g26522658_))))
            (let ((_g26502830_
                   (lambda (_g26522664_)
                     (if (gx#stx-pair? _g26522664_)
                         (let ((_e26542666_ (gx#stx-e _g26522664_)))
                           (let ((_hd26552669_ (##car _e26542666_))
                                 (_tl26562671_ (##cdr _e26542666_)))
                             ((lambda (_L2674_)
                                ((letrec ((_lp2685_
                                           (lambda (_rest2687_ _r2688_)
                                             (let ((_rest26892697_ _rest2687_))
                                               (let ((_E26922701_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest26892697_))))
                                                 (let ((_else26912705_
                                                        (lambda ()
                                                          (cons '%#export
                                                                (reverse _r2688_)))))
                                                   (let ((_K26932818_
                                                          (lambda (_rest2708_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out2709_)
                    (let ((_out27102723_ _out2709_))
                      (let ((_E27132727_
                             (lambda ()
                               (error '"No clause matching" _out27102723_))))
                        (let ((_try-match27122790_
                               (lambda ()
                                 (let ((_K27142777_
                                        (lambda (_phi2731_ _src2732_)
                                          (let ((_out2772_
                                                 (if _src2732_
                                                     (cons 'import:
                                                           (cons (let ((_g27332742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (_make-import-path2649_ _src2732_)))
                           (let ((_E27362746_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g27332742_))))
                             (let ((_try-match27352757_
                                    (lambda ()
                                      (let ((_K27372752_
                                             (lambda (_path2750_)
                                               (cons 'in: _path2750_))))
                                        (let ((_path2755_ _g27332742_))
                                          (_K27372752_ _path2755_))))))
                               (let ((_K27382762_
                                      (lambda (_path2760_) _path2760_)))
                                 (if (##pair? _g27332742_)
                                     (let ((_hd27392765_ (##car _g27332742_))
                                           (_tl27402767_ (##cdr _g27332742_)))
                                       (let ((_path2770_ _hd27392765_))
                                         (if (##null? _tl27402767_)
                                             (_K27382762_ _path2770_)
                                             (_try-match27352757_))))
                                     (_try-match27352757_))))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t)))
                                            (let ((_out2774_
                                                   (if (fxzero? _phi2731_)
                                                       _out2772_
                                                       (cons 'phi:
                                                             (cons _phi2731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _out2772_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (_lp2685_
                                                 _rest2708_
                                                 (cons _out2774_
                                                       _r2688_))))))))
                                   (if (direct-struct-instance?
                                        gx#export-set::t
                                        _out27102723_)
                                       (let ((_e27152780_
                                              (##vector-ref _out27102723_ '1)))
                                         (let ((_src2783_ _e27152780_))
                                           (let ((_e27162785_
                                                  (##vector-ref
                                                   _out27102723_
                                                   '2)))
                                             (let ((_phi2788_ _e27162785_))
                                               (_K27142777_
                                                _phi2788_
                                                _src2783_)))))
                                       (_E27132727_))))))
                          (let ((_K27172797_
                                 (lambda (_name2793_ _phi2794_ _key2795_)
                                   (_lp2685_
                                    _rest2708_
                                    (cons (cons 'spec:
                                                (cons _phi2794_
                                                      (cons (gxc#generate-runtime-identifier-key
                                                             _key2795_)
                                                            (cons (gxc#generate-runtime-identifier-key
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _name2793_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _r2688_)))))
                            (if (direct-struct-instance?
                                 gx#module-export::t
                                 _out27102723_)
                                (let ((_e27182800_
                                       (##vector-ref _out27102723_ '1)))
                                  (let ((_e27192803_
                                         (##vector-ref _out27102723_ '2)))
                                    (let ((_key2806_ _e27192803_))
                                      (let ((_e27202808_
                                             (##vector-ref _out27102723_ '3)))
                                        (let ((_phi2811_ _e27202808_))
                                          (let ((_e27212813_
                                                 (##vector-ref
                                                  _out27102723_
                                                  '4)))
                                            (let ((_name2816_ _e27212813_))
                                              (_K27172797_
                                               _name2816_
                                               _phi2811_
                                               _key2806_))))))))
                                (_try-match27122790_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest26892697_)
                                                         (let ((_hd26942821_
                                                                (##car _rest26892697_))
                                                               (_tl26952823_
                                                                (##cdr _rest26892697_)))
                                                           (let ((_out2826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd26942821_))
                     (let ((_rest2828_ _tl26952823_))
                       (_K26932818_ _rest2828_ _out2826_))))
                 (_else26912705_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp2685_)
                                 _L2674_
                                 '()))
                              _tl26562671_)))
                         (_g26512661_ _g26522664_)))))
              (_g26502830_ _stx2645_)))))))
  (define gxc#generate-meta-provide%
    (lambda (_stx2606_ _state2607_)
      (begin
        (gxc#meta-state-end-phi! _state2607_)
        (let ((_g26092619_
               (lambda (_g26102616_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g26102616_))))
          (let ((_g26082642_
                 (lambda (_g26102622_)
                   (if (gx#stx-pair? _g26102622_)
                       (let ((_e26122624_ (gx#stx-e _g26102622_)))
                         (let ((_hd26132627_ (##car _e26122624_))
                               (_tl26142629_ (##cdr _e26122624_)))
                           ((lambda (_L2632_)
                              (cons '%#provide
                                    (map gxc#generate-runtime-identifier
                                         _L2632_)))
                            _tl26142629_)))
                       (_g26092619_ _g26102622_)))))
            (_g26082642_ _stx2606_))))))
  (define gxc#generate-meta-extern%
    (lambda (_stx2477_ _state2478_)
      (let ((_generate12480_
             (lambda (_id2601_ _eid2602_)
               (let ((_eid2604_ (gx#stx-e _eid2602_)))
                 (begin
                   (if (interned-symbol? _eid2604_)
                       '#!void
                       (gxc#raise-compile-error
                        '"Cannot compile extern reference"
                        _stx2477_
                        _eid2604_))
                   (cons (gxc#generate-runtime-identifier _id2601_)
                         (cons _eid2604_ '())))))))
        (let ((_g24822510_
               (lambda (_g24832507_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g24832507_))))
          (let ((_g24812598_
                 (lambda (_g24832513_)
                   (if (gx#stx-pair? _g24832513_)
                       (let ((_e24862515_ (gx#stx-e _g24832513_)))
                         (let ((_hd24872518_ (##car _e24862515_))
                               (_tl24882520_ (##cdr _e24862515_)))
                           (if (gx#stx-pair/null? _tl24882520_)
                               (if (fx>= (gx#stx-length _tl24882520_) '0)
                                   (let ((_g7117_ (gx#syntax-split-splice
                                                   _tl24882520_
                                                   '0)))
                                     (begin
                                       (let ((_g7118_ (values-count _g7117_)))
                                         (if (not (fx= _g7118_ 2))
                                             (error "Context expects 2 values"
                                                    _g7118_)))
                                       (let ((_target24892523_
                                              (values-ref _g7117_ 0))
                                             (_tl24912525_
                                              (values-ref _g7117_ 1)))
                                         (if (gx#stx-null? _tl24912525_)
                                             (letrec ((_loop24922528_
                                                       (lambda (_hd24902531_
                                                                _eid24962533_
                                                                _id24972535_)
                                                         (if (gx#stx-pair?
                                                              _hd24902531_)
                                                             (let ((_e24932538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd24902531_)))
                       (let ((_lp-hd24942541_ (##car _e24932538_))
                             (_lp-tl24952543_ (##cdr _e24932538_)))
                         (if (gx#stx-pair? _lp-hd24942541_)
                             (let ((_e25002546_ (gx#stx-e _lp-hd24942541_)))
                               (let ((_hd25012549_ (##car _e25002546_))
                                     (_tl25022551_ (##cdr _e25002546_)))
                                 (if (gx#stx-pair? _tl25022551_)
                                     (let ((_e25032554_
                                            (gx#stx-e _tl25022551_)))
                                       (let ((_hd25042557_ (##car _e25032554_))
                                             (_tl25052559_
                                              (##cdr _e25032554_)))
                                         (if (gx#stx-null? _tl25052559_)
                                             (_loop24922528_
                                              _lp-tl24952543_
                                              (cons _hd25042557_ _eid24962533_)
                                              (cons _hd25012549_ _id24972535_))
                                             (_g24822510_ _g24832513_))))
                                     (_g24822510_ _g24832513_))))
                             (_g24822510_ _g24832513_))))
                     (let ((_eid24982562_ (reverse _eid24962533_))
                           (_id24992564_ (reverse _id24972535_)))
                       ((lambda (_L2567_ _L2568_)
                          (cons '%#extern
                                (map _generate12480_
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g25832586_ _g25842588_)
                                                (cons _g25832586_ _g25842588_))
                                              '()
                                              _L2568_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g25902593_ _g25912595_)
                                                (cons _g25902593_ _g25912595_))
                                              '()
                                              _L2567_)))))
                        _eid24982562_
                        _id24992564_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop24922528_
                                                _target24892523_
                                                '()
                                                '()))
                                             (_g24822510_ _g24832513_)))))
                                   (_g24822510_ _g24832513_))
                               (_g24822510_ _g24832513_))))
                       (_g24822510_ _g24832513_)))))
            (_g24812598_ _stx2477_))))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx2272_ _state2273_)
      (let ((_generate12275_
             (lambda (_id2472_)
               (let ((_eid2474_ (gxc#generate-runtime-binding-id _id2472_))
                     (_ident2475_ (gxc#generate-runtime-identifier _id2472_)))
                 (cons '%#define-runtime
                       (cons _ident2475_ (cons _eid2474_ '())))))))
        (let ((_generate*2276_
               (lambda (_all2440_)
                 (let ((_all24412449_ _all2440_))
                   (let ((_E24442453_
                          (lambda ()
                            (error '"No clause matching" _all24412449_))))
                     (let ((_else24432457_
                            (lambda () (cons '%#begin _all2440_))))
                       (let ((_K24452462_ (lambda (_one2460_) _one2460_)))
                         (if (##pair? _all24412449_)
                             (let ((_hd24462465_ (##car _all24412449_))
                                   (_tl24472467_ (##cdr _all24412449_)))
                               (let ((_one2470_ _hd24462465_))
                                 (if (##null? _tl24472467_)
                                     (_K24452462_ _one2470_)
                                     (_else24432457_))))
                             (_else24432457_)))))))))
          (let ((_g22782295_
                 (lambda (_g22792292_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g22792292_))))
            (let ((_g22772437_
                   (lambda (_g22792298_)
                     (if (gx#stx-pair? _g22792298_)
                         (let ((_e22822300_ (gx#stx-e _g22792298_)))
                           (let ((_hd22832303_ (##car _e22822300_))
                                 (_tl22842305_ (##cdr _e22822300_)))
                             (if (gx#stx-pair? _tl22842305_)
                                 (let ((_e22852308_ (gx#stx-e _tl22842305_)))
                                   (let ((_hd22862311_ (##car _e22852308_))
                                         (_tl22872313_ (##cdr _e22852308_)))
                                     (if (gx#stx-pair? _tl22872313_)
                                         (let ((_e22882316_
                                                (gx#stx-e _tl22872313_)))
                                           (let ((_hd22892319_
                                                  (##car _e22882316_))
                                                 (_tl22902321_
                                                  (##cdr _e22882316_)))
                                             (if (gx#stx-null? _tl22902321_)
                                                 ((lambda (_L2324_ _L2325_)
                                                    ((letrec ((_lp2341_
                                                               (lambda (_rest2343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _r2344_)
                         (let ((_g23492365_
                                (lambda (_g23502362_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g23502362_))))
                           (let ((_g23482372_
                                  (lambda (_g23502368_)
                                    ((lambda ()
                                       (_generate*2276_ (reverse _r2344_)))))))
                             (let ((_g23472388_
                                    (lambda (_g23502375_)
                                      ((lambda (_L2377_)
                                         (if (gx#identifier? _L2377_)
                                             (_generate*2276_
                                              (foldl cons
                                                     (cons (_generate12275_
                                                            _L2377_)
                                                           '())
                                                     _r2344_))
                                             (_g23482372_ _g23502375_)))
                                       _g23502375_))))
                               (let ((_g23462412_
                                      (lambda (_g23502391_)
                                        (if (gx#stx-pair? _g23502391_)
                                            (let ((_e23572393_
                                                   (gx#stx-e _g23502391_)))
                                              (let ((_hd23582396_
                                                     (##car _e23572393_))
                                                    (_tl23592398_
                                                     (##cdr _e23572393_)))
                                                ((lambda (_L2401_ _L2402_)
                                                   (_lp2341_
                                                    _L2401_
                                                    (cons (_generate12275_
                                                           _L2402_)
                                                          _r2344_)))
                                                 _tl23592398_
                                                 _hd23582396_)))
                                            (_g23472388_ _g23502391_)))))
                                 (let ((_g23452434_
                                        (lambda (_g23502415_)
                                          (if (gx#stx-pair? _g23502415_)
                                              (let ((_e23522417_
                                                     (gx#stx-e _g23502415_)))
                                                (let ((_hd23532420_
                                                       (##car _e23522417_))
                                                      (_tl23542422_
                                                       (##cdr _e23522417_)))
                                                  (if (gx#stx-datum?
                                                       _hd23532420_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd23532420_)
                          '#f)
                  ((lambda (_L2425_) (_lp2341_ _L2425_ _r2344_)) _tl23542422_)
                  (_g23462412_ _g23502415_))
              (_g23462412_ _g23502415_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g23462412_ _g23502415_)))))
                                   (_g23452434_ _rest2343_)))))))))
               _lp2341_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _L2325_
                                                     '()))
                                                  _hd22892319_
                                                  _hd22862311_)
                                                 (_g22782295_ _g22792298_))))
                                         (_g22782295_ _g22792298_))))
                                 (_g22782295_ _g22792298_))))
                         (_g22782295_ _g22792298_)))))
              (_g22772437_ _stx2272_)))))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx2169_ _state2170_)
      (let ((_g21722189_
             (lambda (_g21732186_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g21732186_))))
        (let ((_g21712269_
               (lambda (_g21732192_)
                 (if (gx#stx-pair? _g21732192_)
                     (let ((_e21762194_ (gx#stx-e _g21732192_)))
                       (let ((_hd21772197_ (##car _e21762194_))
                             (_tl21782199_ (##cdr _e21762194_)))
                         (if (gx#stx-pair? _tl21782199_)
                             (let ((_e21792202_ (gx#stx-e _tl21782199_)))
                               (let ((_hd21802205_ (##car _e21792202_))
                                     (_tl21812207_ (##cdr _e21792202_)))
                                 (if (gx#stx-pair? _tl21812207_)
                                     (let ((_e21822210_
                                            (gx#stx-e _tl21812207_)))
                                       (let ((_hd21832213_ (##car _e21822210_))
                                             (_tl21842215_
                                              (##cdr _e21822210_)))
                                         (if (gx#stx-null? _tl21842215_)
                                             ((lambda (_L2218_ _L2219_)
                                                (let ((_eid2234_
                                                       (gxc#generate-runtime-binding-id
                                                        _L2219_)))
                                                  (let ((_phi2236_
                                                         (fx1+ (gx#current-expander-phi))))
                                                    (let ((_block2238_
                                                           (gxc#meta-state-begin-phi!
                                                            _state2170_
                                                            _phi2236_)))
                                                      (let ()
                                                        (begin
                                                          (let ((_g22412248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g22422245_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g22422245_))))
                    (let ((_g22402266_
                           (lambda (_g22422251_)
                             ((lambda (_L2253_)
                                (let ()
                                  (gxc#meta-state-add-phi!
                                   _state2170_
                                   _phi2236_
                                   (cons (gx#datum->syntax
                                          '#f
                                          '%#define-runtime)
                                         (cons _L2253_ (cons _L2218_ '()))))))
                              _g22422251_))))
                      (_g22402266_ _eid2234_)))
                  (if _block2238_
                      (cons '%#begin
                            (cons (cons '%#begin-syntax
                                        (cons (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote (cons _block2238_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons '%#define-syntax
                                              (cons (gxc#generate-runtime-identifier
                                                     _L2219_)
                                                    (cons _eid2234_ '())))
                                        '())))
                      (cons '%#define-syntax
                            (cons (gxc#generate-runtime-identifier _L2219_)
                                  (cons _eid2234_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd21832213_
                                              _hd21802205_)
                                             (_g21722189_ _g21732192_))))
                                     (_g21722189_ _g21732192_))))
                             (_g21722189_ _g21732192_))))
                     (_g21722189_ _g21732192_)))))
          (_g21712269_ _stx2169_)))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx2101_ _state2102_)
      (let ((_g21042121_
             (lambda (_g21052118_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g21052118_))))
        (let ((_g21032166_
               (lambda (_g21052124_)
                 (if (gx#stx-pair? _g21052124_)
                     (let ((_e21082126_ (gx#stx-e _g21052124_)))
                       (let ((_hd21092129_ (##car _e21082126_))
                             (_tl21102131_ (##cdr _e21082126_)))
                         (if (gx#stx-pair? _tl21102131_)
                             (let ((_e21112134_ (gx#stx-e _tl21102131_)))
                               (let ((_hd21122137_ (##car _e21112134_))
                                     (_tl21132139_ (##cdr _e21112134_)))
                                 (if (gx#stx-pair? _tl21132139_)
                                     (let ((_e21142142_
                                            (gx#stx-e _tl21132139_)))
                                       (let ((_hd21152145_ (##car _e21142142_))
                                             (_tl21162147_
                                              (##cdr _e21142142_)))
                                         (if (gx#stx-null? _tl21162147_)
                                             ((lambda (_L2150_ _L2151_)
                                                (cons '%#define-alias
                                                      (cons (gxc#generate-runtime-identifier
                                                             _L2151_)
                                                            (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L2150_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd21152145_
                                              _hd21122137_)
                                             (_g21042121_ _g21052124_))))
                                     (_g21042121_ _g21052124_))))
                             (_g21042121_ _g21052124_))))
                     (_g21042121_ _g21052124_)))))
          (_g21032166_ _stx2101_)))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx2098_ _state2099_)
      (begin
        (gxc#meta-state-add-phi!
         _state2099_
         (gx#current-expander-phi)
         _stx2098_)
        (gxc#generate-meta-define-values% _stx2098_ _state2099_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx2095_ _state2096_)
      (begin
        (gxc#meta-state-add-phi!
         _state2096_
         (gx#current-expander-phi)
         _stx2095_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type 'gxc#meta-state::t '#f '4 'meta-state '() ':init!))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args2092_
      (apply make-struct-instance gxc#meta-state::t _$args2092_)))
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
    (lambda (_self2089_ _ctx2090_)
      (direct-struct-instance-init!
       _self2089_
       (symbol->string
        (##structure-ref _ctx2090_ '1 gx#expander-context::t '#f))
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
    (lambda _$args2086_
      (apply make-struct-instance gxc#meta-state-block::t _$args2086_)))
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
    (lambda (_state2045_ _phi2046_)
      (let ((_state20472055_ _state2045_))
        (let ((_E20492059_
               (lambda () (error '"No clause matching" _state20472055_))))
          (let ((_K20502068_
                 (lambda (_open2062_ _n2063_ _src2064_)
                   (if (hash-get _open2062_ _phi2046_)
                       '#f
                       (let ((_block-ref2066_
                              (string-append
                               _src2064_
                               '"__"
                               (number->string _n2063_))))
                         (begin
                           (##structure-set!
                            _state2045_
                            (fx1+ _n2063_)
                            '2
                            gxc#meta-state::t
                            '#f)
                           (hash-put!
                            _open2062_
                            _phi2046_
                            (##structure
                             gxc#meta-state-block::t
                             (gx#current-expander-context)
                             _phi2046_
                             _n2063_
                             '()))
                           _block-ref2066_))))))
            (if (struct-instance? gxc#meta-state::t _state20472055_)
                (let ((_e20512071_ (##vector-ref _state20472055_ '1)))
                  (let ((_src2074_ _e20512071_))
                    (let ((_e20522076_ (##vector-ref _state20472055_ '2)))
                      (let ((_n2079_ _e20522076_))
                        (let ((_e20532081_ (##vector-ref _state20472055_ '3)))
                          (let ((_open2084_ _e20532081_))
                            (_K20502068_ _open2084_ _n2079_ _src2074_)))))))
                (_E20492059_)))))))
  (define gxc#meta-state-add-phi!
    (lambda (_state2039_ _phi2040_ _stx2041_)
      (let ((_block2043_
             (hash-get
              (##structure-ref _state2039_ '3 gxc#meta-state::t '#f)
              _phi2040_)))
        (##structure-set!
         _block2043_
         (cons _stx2041_
               (##structure-ref _block2043_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state2034_)
      (begin
        (##structure-set!
         _state2034_
         (hash-fold
          (lambda (_g7119_ _block2036_ _r2037_) (cons _block2036_ _r2037_))
          (##structure-ref _state2034_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state2034_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state2034_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state1986_)
      (begin
        (gxc#meta-state-end-phi! _state1986_)
        (foldl (lambda (_block1988_ _r1989_)
                 (let ((_block19901999_ _block1988_))
                   (let ((_E19922003_
                          (lambda ()
                            (error '"No clause matching" _block19901999_))))
                     (let ((_K19932011_
                            (lambda (_code2006_ _n2007_ _phi2008_ _ctx2009_)
                              (if (null? _code2006_)
                                  _r1989_
                                  (cons (cons _ctx2009_
                                              (cons _phi2008_
                                                    (cons _n2007_
                                                          (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (reverse _code2006_))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _r1989_)))))
                       (if (struct-instance?
                            gxc#meta-state-block::t
                            _block19901999_)
                           (let ((_e19942014_
                                  (##vector-ref _block19901999_ '1)))
                             (let ((_ctx2017_ _e19942014_))
                               (let ((_e19952019_
                                      (##vector-ref _block19901999_ '2)))
                                 (let ((_phi2022_ _e19952019_))
                                   (let ((_e19962024_
                                          (##vector-ref _block19901999_ '3)))
                                     (let ((_n2027_ _e19962024_))
                                       (let ((_e19972029_
                                              (##vector-ref
                                               _block19901999_
                                               '4)))
                                         (let ((_code2032_ _e19972029_))
                                           (_K19932011_
                                            _code2032_
                                            _n2027_
                                            _phi2022_
                                            _ctx2017_)))))))))
                           (_E19922003_))))))
               '()
               (##structure-ref _state1986_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx1982_)
      (let ((_ht1984_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx1982_ _ht1984_)
          _ht1984_))))
  (define gxc#collect-refs-lambda%
    (lambda (_stx1914_ _ht1915_)
      (let ((_g19171934_
             (lambda (_g19181931_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g19181931_))))
        (let ((_g19161979_
               (lambda (_g19181937_)
                 (if (gx#stx-pair? _g19181937_)
                     (let ((_e19211939_ (gx#stx-e _g19181937_)))
                       (let ((_hd19221942_ (##car _e19211939_))
                             (_tl19231944_ (##cdr _e19211939_)))
                         (if (gx#stx-pair? _tl19231944_)
                             (let ((_e19241947_ (gx#stx-e _tl19231944_)))
                               (let ((_hd19251950_ (##car _e19241947_))
                                     (_tl19261952_ (##cdr _e19241947_)))
                                 (if (gx#stx-pair? _tl19261952_)
                                     (let ((_e19271955_
                                            (gx#stx-e _tl19261952_)))
                                       (let ((_hd19281958_ (##car _e19271955_))
                                             (_tl19291960_
                                              (##cdr _e19271955_)))
                                         (if (gx#stx-null? _tl19291960_)
                                             ((lambda (_L1963_ _L1964_)
                                                (gxc#compile-e
                                                 _L1963_
                                                 _ht1915_))
                                              _hd19281958_
                                              _hd19251950_)
                                             (_g19171934_ _g19181937_))))
                                     (_g19171934_ _g19181937_))))
                             (_g19171934_ _g19181937_))))
                     (_g19171934_ _g19181937_)))))
          (_g19161979_ _stx1914_)))))
  (define gxc#collect-refs-case-lambda%
    (lambda (_stx1796_ _ht1797_)
      (let ((_g17991827_
             (lambda (_g18001824_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g18001824_))))
        (let ((_g17981911_
               (lambda (_g18001830_)
                 (if (gx#stx-pair? _g18001830_)
                     (let ((_e18031832_ (gx#stx-e _g18001830_)))
                       (let ((_hd18041835_ (##car _e18031832_))
                             (_tl18051837_ (##cdr _e18031832_)))
                         (if (gx#stx-pair/null? _tl18051837_)
                             (if (fx>= (gx#stx-length _tl18051837_) '0)
                                 (let ((_g7120_ (gx#syntax-split-splice
                                                 _tl18051837_
                                                 '0)))
                                   (begin
                                     (let ((_g7121_ (values-count _g7120_)))
                                       (if (not (fx= _g7121_ 2))
                                           (error "Context expects 2 values"
                                                  _g7121_)))
                                     (let ((_target18061840_
                                            (values-ref _g7120_ 0))
                                           (_tl18081842_
                                            (values-ref _g7120_ 1)))
                                       (if (gx#stx-null? _tl18081842_)
                                           (letrec ((_loop18091845_
                                                     (lambda (_hd18071848_
                                                              _body18131850_
                                                              _hd18141852_)
                                                       (if (gx#stx-pair?
                                                            _hd18071848_)
                                                           (let ((_e18101855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd18071848_)))
                     (let ((_lp-hd18111858_ (##car _e18101855_))
                           (_lp-tl18121860_ (##cdr _e18101855_)))
                       (if (gx#stx-pair? _lp-hd18111858_)
                           (let ((_e18171863_ (gx#stx-e _lp-hd18111858_)))
                             (let ((_hd18181866_ (##car _e18171863_))
                                   (_tl18191868_ (##cdr _e18171863_)))
                               (if (gx#stx-pair? _tl18191868_)
                                   (let ((_e18201871_ (gx#stx-e _tl18191868_)))
                                     (let ((_hd18211874_ (##car _e18201871_))
                                           (_tl18221876_ (##cdr _e18201871_)))
                                       (if (gx#stx-null? _tl18221876_)
                                           (_loop18091845_
                                            _lp-tl18121860_
                                            (cons _hd18211874_ _body18131850_)
                                            (cons _hd18181866_ _hd18141852_))
                                           (_g17991827_ _g18001830_))))
                                   (_g17991827_ _g18001830_))))
                           (_g17991827_ _g18001830_))))
                   (let ((_body18151879_ (reverse _body18131850_))
                         (_hd18161881_ (reverse _hd18141852_)))
                     ((lambda (_L1884_ _L1885_)
                        (for-each
                         (lambda (_g18991901_)
                           (gxc#compile-e _g18991901_ _ht1797_))
                         (begin
                           '#!void
                           (foldr (lambda (_g19031906_ _g19041908_)
                                    (cons _g19031906_ _g19041908_))
                                  '()
                                  _L1884_))))
                      _body18151879_
                      _hd18161881_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop18091845_
                                              _target18061840_
                                              '()
                                              '()))
                                           (_g17991827_ _g18001830_)))))
                                 (_g17991827_ _g18001830_))
                             (_g17991827_ _g18001830_))))
                     (_g17991827_ _g18001830_)))))
          (_g17981911_ _stx1796_)))))
  (define gxc#collect-refs-let-values%
    (lambda (_stx1649_ _ht1650_)
      (let ((_g16521687_
             (lambda (_g16531684_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g16531684_))))
        (let ((_g16511793_
               (lambda (_g16531690_)
                 (if (gx#stx-pair? _g16531690_)
                     (let ((_e16571692_ (gx#stx-e _g16531690_)))
                       (let ((_hd16581695_ (##car _e16571692_))
                             (_tl16591697_ (##cdr _e16571692_)))
                         (if (gx#stx-pair? _tl16591697_)
                             (let ((_e16601700_ (gx#stx-e _tl16591697_)))
                               (let ((_hd16611703_ (##car _e16601700_))
                                     (_tl16621705_ (##cdr _e16601700_)))
                                 (if (gx#stx-pair/null? _hd16611703_)
                                     (if (fx>= (gx#stx-length _hd16611703_) '0)
                                         (let ((_g7122_ (gx#syntax-split-splice
                                                         _hd16611703_
                                                         '0)))
                                           (begin
                                             (let ((_g7123_ (values-count
                                                             _g7122_)))
                                               (if (not (fx= _g7123_ 2))
                                                   (error "Context expects 2 values"
                                                          _g7123_)))
                                             (let ((_target16631708_
                                                    (values-ref _g7122_ 0))
                                                   (_tl16651710_
                                                    (values-ref _g7122_ 1)))
                                               (if (gx#stx-null? _tl16651710_)
                                                   (letrec ((_loop16661713_
                                                             (lambda (_hd16641716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr16701718_
                              _hd16711720_)
                       (if (gx#stx-pair? _hd16641716_)
                           (let ((_e16671723_ (gx#stx-e _hd16641716_)))
                             (let ((_lp-hd16681726_ (##car _e16671723_))
                                   (_lp-tl16691728_ (##cdr _e16671723_)))
                               (if (gx#stx-pair? _lp-hd16681726_)
                                   (let ((_e16741731_
                                          (gx#stx-e _lp-hd16681726_)))
                                     (let ((_hd16751734_ (##car _e16741731_))
                                           (_tl16761736_ (##cdr _e16741731_)))
                                       (if (gx#stx-pair? _tl16761736_)
                                           (let ((_e16771739_
                                                  (gx#stx-e _tl16761736_)))
                                             (let ((_hd16781742_
                                                    (##car _e16771739_))
                                                   (_tl16791744_
                                                    (##cdr _e16771739_)))
                                               (if (gx#stx-null? _tl16791744_)
                                                   (_loop16661713_
                                                    _lp-tl16691728_
                                                    (cons _hd16781742_
                                                          _expr16701718_)
                                                    (cons _hd16751734_
                                                          _hd16711720_))
                                                   (_g16521687_ _g16531690_))))
                                           (_g16521687_ _g16531690_))))
                                   (_g16521687_ _g16531690_))))
                           (let ((_expr16721747_ (reverse _expr16701718_))
                                 (_hd16731749_ (reverse _hd16711720_)))
                             (if (gx#stx-pair? _tl16621705_)
                                 (let ((_e16801752_ (gx#stx-e _tl16621705_)))
                                   (let ((_hd16811755_ (##car _e16801752_))
                                         (_tl16821757_ (##cdr _e16801752_)))
                                     (if (gx#stx-null? _tl16821757_)
                                         ((lambda (_L1760_ _L1761_ _L1762_)
                                            (if (for-each
                                                 (lambda (_g17811783_)
                                                   (gxc#compile-e
                                                    _g17811783_
                                                    _ht1650_))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g17851788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g17861790_)
                    (cons _g17851788_ _g17861790_))
                  '()
                  _L1761_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#compile-e
                                                 _L1760_
                                                 _ht1650_)
                                                (_g16521687_ _g16531690_)))
                                          _hd16811755_
                                          _expr16721747_
                                          _hd16731749_)
                                         (_g16521687_ _g16531690_))))
                                 (_g16521687_ _g16531690_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop16661713_
                                                      _target16631708_
                                                      '()
                                                      '()))
                                                   (_g16521687_
                                                    _g16531690_)))))
                                         (_g16521687_ _g16531690_))
                                     (_g16521687_ _g16531690_))))
                             (_g16521687_ _g16531690_))))
                     (_g16521687_ _g16531690_)))))
          (_g16511793_ _stx1649_)))))
  (define gxc#collect-refs-ref%
    (lambda (_stx1592_ _ht1593_)
      (let ((_g15951608_
             (lambda (_g15961605_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g15961605_))))
        (let ((_g15941646_
               (lambda (_g15961611_)
                 (if (gx#stx-pair? _g15961611_)
                     (let ((_e15981613_ (gx#stx-e _g15961611_)))
                       (let ((_hd15991616_ (##car _e15981613_))
                             (_tl16001618_ (##cdr _e15981613_)))
                         (if (gx#stx-pair? _tl16001618_)
                             (let ((_e16011621_ (gx#stx-e _tl16001618_)))
                               (let ((_hd16021624_ (##car _e16011621_))
                                     (_tl16031626_ (##cdr _e16011621_)))
                                 (if (gx#stx-null? _tl16031626_)
                                     ((lambda (_L1629_)
                                        (let ((_bind1641_
                                               (gx#resolve-identifier
                                                _L1629_)))
                                          (let ((_eid1643_
                                                 (if _bind1641_
                                                     (##structure-ref
                                                      _bind1641_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (gx#stx-e _L1629_))))
                                            (let ()
                                              (hash-put!
                                               _ht1593_
                                               _eid1643_
                                               _eid1643_)))))
                                      _hd16021624_)
                                     (_g15951608_ _g15961611_))))
                             (_g15951608_ _g15961611_))))
                     (_g15951608_ _g15961611_)))))
          (_g15941646_ _stx1592_)))))
  (define gxc#collect-refs-setq%
    (lambda (_stx1519_ _ht1520_)
      (let ((_g15221539_
             (lambda (_g15231536_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g15231536_))))
        (let ((_g15211589_
               (lambda (_g15231542_)
                 (if (gx#stx-pair? _g15231542_)
                     (let ((_e15261544_ (gx#stx-e _g15231542_)))
                       (let ((_hd15271547_ (##car _e15261544_))
                             (_tl15281549_ (##cdr _e15261544_)))
                         (if (gx#stx-pair? _tl15281549_)
                             (let ((_e15291552_ (gx#stx-e _tl15281549_)))
                               (let ((_hd15301555_ (##car _e15291552_))
                                     (_tl15311557_ (##cdr _e15291552_)))
                                 (if (gx#stx-pair? _tl15311557_)
                                     (let ((_e15321560_
                                            (gx#stx-e _tl15311557_)))
                                       (let ((_hd15331563_ (##car _e15321560_))
                                             (_tl15341565_
                                              (##cdr _e15321560_)))
                                         (if (gx#stx-null? _tl15341565_)
                                             ((lambda (_L1568_ _L1569_)
                                                (let ((_bind1584_
                                                       (gx#resolve-identifier
                                                        _L1569_)))
                                                  (let ((_eid1586_
                                                         (if _bind1584_
                                                             (##structure-ref
                                                              _bind1584_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (gx#stx-e
                                                              _L1569_))))
                                                    (let ()
                                                      (begin
                                                        (hash-put!
                                                         _ht1520_
                                                         _eid1586_
                                                         _eid1586_)
                                                        (gxc#compile-e
                                                         _L1568_
                                                         _ht1520_))))))
                                              _hd15331563_
                                              _hd15301555_)
                                             (_g15221539_ _g15231542_))))
                                     (_g15221539_ _g15231542_))))
                             (_g15221539_ _g15231542_))))
                     (_g15221539_ _g15231542_)))))
          (_g15211589_ _stx1519_)))))
  (define gxc#collect-refs-struct-instancep%
    (lambda (_stx1451_ _ht1452_)
      (let ((_g14541471_
             (lambda (_g14551468_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g14551468_))))
        (let ((_g14531516_
               (lambda (_g14551474_)
                 (if (gx#stx-pair? _g14551474_)
                     (let ((_e14581476_ (gx#stx-e _g14551474_)))
                       (let ((_hd14591479_ (##car _e14581476_))
                             (_tl14601481_ (##cdr _e14581476_)))
                         (if (gx#stx-pair? _tl14601481_)
                             (let ((_e14611484_ (gx#stx-e _tl14601481_)))
                               (let ((_hd14621487_ (##car _e14611484_))
                                     (_tl14631489_ (##cdr _e14611484_)))
                                 (if (gx#stx-pair? _tl14631489_)
                                     (let ((_e14641492_
                                            (gx#stx-e _tl14631489_)))
                                       (let ((_hd14651495_ (##car _e14641492_))
                                             (_tl14661497_
                                              (##cdr _e14641492_)))
                                         (if (gx#stx-null? _tl14661497_)
                                             ((lambda (_L1500_ _L1501_)
                                                (gxc#compile-e
                                                 _L1500_
                                                 _ht1452_))
                                              _hd14651495_
                                              _hd14621487_)
                                             (_g14541471_ _g14551474_))))
                                     (_g14541471_ _g14551474_))))
                             (_g14541471_ _g14551474_))))
                     (_g14541471_ _g14551474_)))))
          (_g14531516_ _stx1451_)))))
  (define gxc#collect-refs-struct-ref%
    (lambda (_stx1367_ _ht1368_)
      (let ((_g13701391_
             (lambda (_g13711388_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g13711388_))))
        (let ((_g13691448_
               (lambda (_g13711394_)
                 (if (gx#stx-pair? _g13711394_)
                     (let ((_e13751396_ (gx#stx-e _g13711394_)))
                       (let ((_hd13761399_ (##car _e13751396_))
                             (_tl13771401_ (##cdr _e13751396_)))
                         (if (gx#stx-pair? _tl13771401_)
                             (let ((_e13781404_ (gx#stx-e _tl13771401_)))
                               (let ((_hd13791407_ (##car _e13781404_))
                                     (_tl13801409_ (##cdr _e13781404_)))
                                 (if (gx#stx-pair? _tl13801409_)
                                     (let ((_e13811412_
                                            (gx#stx-e _tl13801409_)))
                                       (let ((_hd13821415_ (##car _e13811412_))
                                             (_tl13831417_
                                              (##cdr _e13811412_)))
                                         (if (gx#stx-pair? _tl13831417_)
                                             (let ((_e13841420_
                                                    (gx#stx-e _tl13831417_)))
                                               (let ((_hd13851423_
                                                      (##car _e13841420_))
                                                     (_tl13861425_
                                                      (##cdr _e13841420_)))
                                                 (if (gx#stx-null?
                                                      _tl13861425_)
                                                     ((lambda (_L1428_
                                                               _L1429_
                                                               _L1430_)
                                                        (begin
                                                          (gxc#compile-e
                                                           _L1430_
                                                           _ht1368_)
                                                          (gxc#compile-e
                                                           _L1429_
                                                           _ht1368_)
                                                          (gxc#compile-e
                                                           _L1428_
                                                           _ht1368_)))
                                                      _hd13851423_
                                                      _hd13821415_
                                                      _hd13791407_)
                                                     (_g13701391_
                                                      _g13711394_))))
                                             (_g13701391_ _g13711394_))))
                                     (_g13701391_ _g13711394_))))
                             (_g13701391_ _g13711394_))))
                     (_g13701391_ _g13711394_)))))
          (_g13691448_ _stx1367_)))))
  (define gxc#collect-refs-struct-setq%
    (lambda (_stx1267_ _ht1268_)
      (let ((_g12701295_
             (lambda (_g12711292_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g12711292_))))
        (let ((_g12691364_
               (lambda (_g12711298_)
                 (if (gx#stx-pair? _g12711298_)
                     (let ((_e12761300_ (gx#stx-e _g12711298_)))
                       (let ((_hd12771303_ (##car _e12761300_))
                             (_tl12781305_ (##cdr _e12761300_)))
                         (if (gx#stx-pair? _tl12781305_)
                             (let ((_e12791308_ (gx#stx-e _tl12781305_)))
                               (let ((_hd12801311_ (##car _e12791308_))
                                     (_tl12811313_ (##cdr _e12791308_)))
                                 (if (gx#stx-pair? _tl12811313_)
                                     (let ((_e12821316_
                                            (gx#stx-e _tl12811313_)))
                                       (let ((_hd12831319_ (##car _e12821316_))
                                             (_tl12841321_
                                              (##cdr _e12821316_)))
                                         (if (gx#stx-pair? _tl12841321_)
                                             (let ((_e12851324_
                                                    (gx#stx-e _tl12841321_)))
                                               (let ((_hd12861327_
                                                      (##car _e12851324_))
                                                     (_tl12871329_
                                                      (##cdr _e12851324_)))
                                                 (if (gx#stx-pair?
                                                      _tl12871329_)
                                                     (let ((_e12881332_
                                                            (gx#stx-e
                                                             _tl12871329_)))
                                                       (let ((_hd12891335_
                                                              (##car _e12881332_))
                                                             (_tl12901337_
                                                              (##cdr _e12881332_)))
                                                         (if (gx#stx-null?
                                                              _tl12901337_)
                                                             ((lambda (_L1340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L1341_
                               _L1342_
                               _L1343_)
                        (begin
                          (gxc#compile-e _L1343_ _ht1268_)
                          (gxc#compile-e _L1342_ _ht1268_)
                          (gxc#compile-e _L1341_ _ht1268_)
                          (gxc#compile-e _L1340_ _ht1268_)))
                      _hd12891335_
                      _hd12861327_
                      _hd12831319_
                      _hd12801311_)
                     (_g12701295_ _g12711298_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g12701295_
                                                      _g12711298_))))
                                             (_g12701295_ _g12711298_))))
                                     (_g12701295_ _g12711298_))))
                             (_g12701295_ _g12711298_))))
                     (_g12701295_ _g12711298_)))))
          (_g12691364_ _stx1267_)))))
  (define gxc#find-runtime-begin%
    (lambda (_stx1229_)
      (let ((_g12311241_
             (lambda (_g12321238_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g12321238_))))
        (let ((_g12301264_
               (lambda (_g12321244_)
                 (if (gx#stx-pair? _g12321244_)
                     (let ((_e12341246_ (gx#stx-e _g12321244_)))
                       (let ((_hd12351249_ (##car _e12341246_))
                             (_tl12361251_ (##cdr _e12341246_)))
                         ((lambda (_L1254_) (ormap gxc#compile-e _L1254_))
                          _tl12361251_)))
                     (_g12311241_ _g12321244_)))))
          (_g12301264_ _stx1229_))))))
