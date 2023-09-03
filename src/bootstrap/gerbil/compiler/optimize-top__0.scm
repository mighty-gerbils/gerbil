(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1693679901)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl31196_ (make-table 'test: eq?)))
           (hash-copy! _tbl31196_ (force gxc#&void))
           (table-set! _tbl31196_ '%#begin gxc#collect-begin%)
           (table-set! _tbl31196_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl31196_ '%#module gxc#collect-module%)
           (table-set!
            _tbl31196_
            '%#define-values
            gxc#collect-top-level-type-define-values%)
           _tbl31196_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx31189_ . _args31191_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx31189_ _args31191_))
         gxc#current-compile-methods
         (force gxc#&collect-top-level-type-info))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl31186_ (make-table 'test: eq?)))
           (hash-copy! _tbl31186_ (force gxc#&false))
           (table-set! _tbl31186_ '%#call gxc#basic-expression-type-call%)
           _tbl31186_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx31179_ . _args31181_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx31179_ _args31181_))
         gxc#current-compile-methods
         (force gxc#&basic-expression-top-level-type))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl31176_ (make-table 'test: eq?)))
           (hash-copy! _tbl31176_ (force gxc#&void))
           (table-set! _tbl31176_ '%#begin gxc#collect-begin%)
           (table-set! _tbl31176_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl31176_ '%#module gxc#collect-module%)
           (table-set!
            _tbl31176_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl31176_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl31176_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl31176_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl31176_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl31176_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl31176_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl31176_ '%#call gxc#collect-type-call%)
           (table-set! _tbl31176_ '%#if gxc#collect-operands)
           (table-set! _tbl31176_ '%#set! gxc#collect-body-setq%)
           _tbl31176_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx31169_ . _args31171_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx31169_ _args31171_))
         gxc#current-compile-methods
         (force gxc#&collect-type-info))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl31166_ (make-table 'test: eq?)))
           (hash-copy! _tbl31166_ (force gxc#&false))
           (table-set! _tbl31166_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl31166_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl31166_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl31166_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set!
            _tbl31166_
            '%#let-values
            gxc#basic-expression-type-let-values%)
           (table-set!
            _tbl31166_
            '%#letrec-values
            gxc#basic-expression-type-let-values%)
           (table-set!
            _tbl31166_
            '%#letrec*-values
            gxc#basic-expression-type-let-values%)
           (table-set! _tbl31166_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl31166_ '%#ref gxc#basic-expression-type-ref%)
           _tbl31166_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx31159_ . _args31161_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx31159_ _args31161_))
         gxc#current-compile-methods
         (force gxc#&basic-expression-type))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl31156_ (make-table 'test: eq?)))
           (hash-copy! _tbl31156_ (force gxc#&basic-xform))
           (table-set!
            _tbl31156_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl31156_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl31156_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl31156_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl31156_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx31149_ . _args31151_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx31149_ _args31151_))
         gxc#current-compile-methods
         (force gxc#&lift-top-lambdas))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx31052_)
        (let* ((___stx3120931210_ _stx31052_)
               (_g3105531075_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3120931210_))))
          (let ((___kont3121131212_
                 (lambda (_L31119_ _L31120_)
                   (let ((_sym31138_ (gxc#identifier-symbol _L31120_)))
                     (if (table-ref
                          (gxc#current-compile-mutators)
                          _sym31138_
                          '#f)
                         (gxc#verbose
                          '"skipping type inference for mutable binding "
                          _sym31138_)
                         (let ((_type3113931141_
                                (gxc#apply-basic-expression-top-level-type
                                 _L31119_)))
                           (if _type3113931141_
                               (let ((_type31144_ _type3113931141_))
                                 (gxc#optimizer-declare-type!__0
                                  _sym31138_
                                  _type31144_))
                               '#f))))))
                (___kont3121331214_ (lambda () '#!void)))
            (let ((___match3124231243_
                   (lambda (_e3105931087_
                            _hd3106031090_
                            _tl3106131092_
                            _e3106231095_
                            _hd3106331098_
                            _tl3106431100_
                            _e3106531103_
                            _hd3106631106_
                            _tl3106731108_
                            _e3106831111_
                            _hd3106931114_
                            _tl3107031116_)
                     (let ((_L31119_ _hd3106931114_) (_L31120_ _hd3106631106_))
                       (if (gx#identifier? _L31120_)
                           (___kont3121131212_ _L31119_ _L31120_)
                           (___kont3121331214_))))))
              (if (gx#stx-pair? ___stx3120931210_)
                  (let ((_e3105931087_ (gx#stx-e ___stx3120931210_)))
                    (let ((_tl3106131092_
                           (let () (declare (not safe)) (##cdr _e3105931087_)))
                          (_hd3106031090_
                           (let ()
                             (declare (not safe))
                             (##car _e3105931087_))))
                      (if (gx#stx-pair? _tl3106131092_)
                          (let ((_e3106231095_ (gx#stx-e _tl3106131092_)))
                            (let ((_tl3106431100_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3106231095_)))
                                  (_hd3106331098_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3106231095_))))
                              (if (gx#stx-pair? _hd3106331098_)
                                  (let ((_e3106531103_
                                         (gx#stx-e _hd3106331098_)))
                                    (let ((_tl3106731108_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3106531103_)))
                                          (_hd3106631106_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3106531103_))))
                                      (if (gx#stx-null? _tl3106731108_)
                                          (if (gx#stx-pair? _tl3106431100_)
                                              (let ((_e3106831111_
                                                     (gx#stx-e
                                                      _tl3106431100_)))
                                                (let ((_tl3107031116_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3106831111_)))
                                                      (_hd3106931114_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3106831111_))))
                                                  (if (gx#stx-null?
                                                       _tl3107031116_)
                                                      (___match3124231243_
                                                       _e3105931087_
                                                       _hd3106031090_
                                                       _tl3106131092_
                                                       _e3106231095_
                                                       _hd3106331098_
                                                       _tl3106431100_
                                                       _e3106531103_
                                                       _hd3106631106_
                                                       _tl3106731108_
                                                       _e3106831111_
                                                       _hd3106931114_
                                                       _tl3107031116_)
                                                      (___kont3121331214_))))
                                              (___kont3121331214_))
                                          (___kont3121331214_))))
                                  (___kont3121331214_))))
                          (___kont3121331214_))))
                  (___kont3121331214_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx30908_)
        (let* ((___stx3124531246_ _stx30908_)
               (_g3091130942_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3124531246_))))
          (let ((___kont3124731248_
                 (lambda (_L31024_ _L31025_)
                   (let ((_sym31041_ (gxc#identifier-symbol _L31025_)))
                     (if (table-ref
                          (gxc#current-compile-mutators)
                          _sym31041_
                          '#f)
                         (gxc#verbose
                          '"skipping type inference for mutable binding "
                          _sym31041_)
                         (if (gxc#optimizer-lookup-type _sym31041_)
                             (gxc#verbose
                              '"skipping type inference for already declared type "
                              _sym31041_)
                             (let ((_type3104231044_
                                    (gxc#apply-basic-expression-type
                                     _L31024_)))
                               (if _type3104231044_
                                   (let ((_type31047_ _type3104231044_))
                                     (gxc#optimizer-declare-type!__0
                                      _sym31041_
                                      _type31047_))
                                   '#f))))
                     (gxc#compile-e _L31024_))))
                (___kont3124931250_
                 (lambda (_L30971_ _L30972_) (gxc#compile-e _L30971_))))
            (let ((___match3127831279_
                   (lambda (_e3091530992_
                            _hd3091630995_
                            _tl3091730997_
                            _e3091831000_
                            _hd3091931003_
                            _tl3092031005_
                            _e3092131008_
                            _hd3092231011_
                            _tl3092331013_
                            _e3092431016_
                            _hd3092531019_
                            _tl3092631021_)
                     (let ((_L31024_ _hd3092531019_) (_L31025_ _hd3092231011_))
                       (if (gx#identifier? _L31025_)
                           (___kont3124731248_ _L31024_ _L31025_)
                           (___kont3124931250_
                            _hd3092531019_
                            _hd3091931003_))))))
              (if (gx#stx-pair? ___stx3124531246_)
                  (let ((_e3091530992_ (gx#stx-e ___stx3124531246_)))
                    (let ((_tl3091730997_
                           (let () (declare (not safe)) (##cdr _e3091530992_)))
                          (_hd3091630995_
                           (let ()
                             (declare (not safe))
                             (##car _e3091530992_))))
                      (if (gx#stx-pair? _tl3091730997_)
                          (let ((_e3091831000_ (gx#stx-e _tl3091730997_)))
                            (let ((_tl3092031005_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3091831000_)))
                                  (_hd3091931003_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3091831000_))))
                              (if (gx#stx-pair? _hd3091931003_)
                                  (let ((_e3092131008_
                                         (gx#stx-e _hd3091931003_)))
                                    (let ((_tl3092331013_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3092131008_)))
                                          (_hd3092231011_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3092131008_))))
                                      (if (gx#stx-null? _tl3092331013_)
                                          (if (gx#stx-pair? _tl3092031005_)
                                              (let ((_e3092431016_
                                                     (gx#stx-e
                                                      _tl3092031005_)))
                                                (let ((_tl3092631021_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3092431016_)))
                                                      (_hd3092531019_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3092431016_))))
                                                  (if (gx#stx-null?
                                                       _tl3092631021_)
                                                      (___match3127831279_
                                                       _e3091530992_
                                                       _hd3091630995_
                                                       _tl3091730997_
                                                       _e3091831000_
                                                       _hd3091931003_
                                                       _tl3092031005_
                                                       _e3092131008_
                                                       _hd3092231011_
                                                       _tl3092331013_
                                                       _e3092431016_
                                                       _hd3092531019_
                                                       _tl3092631021_)
                                                      (_g3091130942_))))
                                              (_g3091130942_))
                                          (if (gx#stx-pair? _tl3092031005_)
                                              (let ((_e3093530963_
                                                     (gx#stx-e
                                                      _tl3092031005_)))
                                                (let ((_tl3093730968_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3093530963_)))
                                                      (_hd3093630966_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3093530963_))))
                                                  (if (gx#stx-null?
                                                       _tl3093730968_)
                                                      (___kont3124931250_
                                                       _hd3093630966_
                                                       _hd3091931003_)
                                                      (_g3091130942_))))
                                              (_g3091130942_)))))
                                  (if (gx#stx-pair? _tl3092031005_)
                                      (let ((_e3093530963_
                                             (gx#stx-e _tl3092031005_)))
                                        (let ((_tl3093730968_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3093530963_)))
                                              (_hd3093630966_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3093530963_))))
                                          (if (gx#stx-null? _tl3093730968_)
                                              (___kont3124931250_
                                               _hd3093630966_
                                               _hd3091931003_)
                                              (_g3091130942_))))
                                      (_g3091130942_)))))
                          (_g3091130942_))))
                  (_g3091130942_)))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx30693_)
        (letrec ((_collect-e30695_
                  (lambda (_hd30852_ _expr30853_)
                    (let* ((___stx3130131302_ _hd30852_)
                           (_g3085630866_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3130131302_))))
                      (let ((___kont3130331304_
                             (lambda (_L30886_)
                               (let ((_sym30897_
                                      (gxc#identifier-symbol _L30886_)))
                                 (if (table-ref
                                      (gxc#current-compile-mutators)
                                      _sym30897_
                                      '#f)
                                     (gxc#verbose
                                      '"skipping type declaration for mutable binding "
                                      _sym30897_)
                                     (let ((_type3089830900_
                                            (gxc#apply-basic-expression-type
                                             _expr30853_)))
                                       (if _type3089830900_
                                           (let ((_type30903_
                                                  _type3089830900_))
                                             (gxc#optimizer-declare-type!__%
                                              _sym30897_
                                              _type30903_
                                              '#t))
                                           '#f))))))
                            (___kont3130531306_ (lambda () '#!void)))
                        (let ((___match3131431315_
                               (lambda (_e3085930878_
                                        _hd3086030881_
                                        _tl3086130883_)
                                 (let ((_L30886_ _hd3086030881_))
                                   (if (gx#identifier? _L30886_)
                                       (___kont3130331304_ _L30886_)
                                       (___kont3130531306_))))))
                          (if (gx#stx-pair? ___stx3130131302_)
                              (let ((_e3085930878_
                                     (gx#stx-e ___stx3130131302_)))
                                (let ((_tl3086130883_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3085930878_)))
                                      (_hd3086030881_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3085930878_))))
                                  (if (gx#stx-null? _tl3086130883_)
                                      (___match3131431315_
                                       _e3085930878_
                                       _hd3086030881_
                                       _tl3086130883_)
                                      (___kont3130531306_))))
                              (___kont3130531306_))))))))
          (let* ((_g3069730732_
                  (lambda (_g3069830729_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g3069830729_)))
                 (_g3069630849_
                  (lambda (_g3069830735_)
                    (if (gx#stx-pair? _g3069830735_)
                        (let ((_e3070230737_ (gx#stx-e _g3069830735_)))
                          (let ((_hd3070330740_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3070230737_)))
                                (_tl3070430742_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3070230737_))))
                            (if (gx#stx-pair? _tl3070430742_)
                                (let ((_e3070530745_
                                       (gx#stx-e _tl3070430742_)))
                                  (let ((_hd3070630748_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3070530745_)))
                                        (_tl3070730750_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3070530745_))))
                                    (if (gx#stx-pair/null? _hd3070630748_)
                                        (let ((_g34526_
                                               (gx#syntax-split-splice
                                                _hd3070630748_
                                                '0)))
                                          (begin
                                            (let ((_g34527_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g34526_)
                                                         (##vector-length
                                                          _g34526_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g34527_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g34527_)))
                                            (let ((_target3070830753_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g34526_
                                                      0)))
                                                  (_tl3071030755_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g34526_
                                                      1))))
                                              (if (gx#stx-null? _tl3071030755_)
                                                  (letrec ((_loop3071130758_
                                                            (lambda (_hd3070930761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr3071530763_
                             _hd3071630765_)
                      (if (gx#stx-pair? _hd3070930761_)
                          (let ((_e3071230768_ (gx#stx-e _hd3070930761_)))
                            (let ((_lp-hd3071330771_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3071230768_)))
                                  (_lp-tl3071430773_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3071230768_))))
                              (if (gx#stx-pair? _lp-hd3071330771_)
                                  (let ((_e3071930776_
                                         (gx#stx-e _lp-hd3071330771_)))
                                    (let ((_hd3072030779_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3071930776_)))
                                          (_tl3072130781_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3071930776_))))
                                      (if (gx#stx-pair? _tl3072130781_)
                                          (let ((_e3072230784_
                                                 (gx#stx-e _tl3072130781_)))
                                            (let ((_hd3072330787_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3072230784_)))
                                                  (_tl3072430789_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3072230784_))))
                                              (if (gx#stx-null? _tl3072430789_)
                                                  (_loop3071130758_
                                                   _lp-tl3071430773_
                                                   (cons _hd3072330787_
                                                         _expr3071530763_)
                                                   (cons _hd3072030779_
                                                         _hd3071630765_))
                                                  (_g3069730732_
                                                   _g3069830735_))))
                                          (_g3069730732_ _g3069830735_))))
                                  (_g3069730732_ _g3069830735_))))
                          (let ((_expr3071730792_ (reverse _expr3071530763_))
                                (_hd3071830794_ (reverse _hd3071630765_)))
                            (if (gx#stx-pair? _tl3070730750_)
                                (let ((_e3072530797_
                                       (gx#stx-e _tl3070730750_)))
                                  (let ((_hd3072630800_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3072530797_)))
                                        (_tl3072730802_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3072530797_))))
                                    (if (gx#stx-null? _tl3072730802_)
                                        ((lambda (_L30805_ _L30806_ _L30807_)
                                           (for-each
                                            _collect-e30695_
                                            (foldr1 (lambda (_g3082730830_
                                                             _g3082830832_)
                                                      (cons _g3082730830_
                                                            _g3082830832_))
                                                    '()
                                                    _L30807_)
                                            (foldr1 (lambda (_g3083430837_
                                                             _g3083530839_)
                                                      (cons _g3083430837_
                                                            _g3083530839_))
                                                    '()
                                                    _L30806_))
                                           (for-each
                                            gxc#compile-e
                                            (foldr1 (lambda (_g3084130844_
                                                             _g3084230846_)
                                                      (cons _g3084130844_
                                                            _g3084230846_))
                                                    '()
                                                    _L30806_))
                                           (gxc#compile-e _L30805_))
                                         _hd3072630800_
                                         _expr3071730792_
                                         _hd3071830794_)
                                        (_g3069730732_ _g3069830735_))))
                                (_g3069730732_ _g3069830735_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3071130758_
                                                     _target3070830753_
                                                     '()
                                                     '()))
                                                  (_g3069730732_
                                                   _g3069830735_)))))
                                        (_g3069730732_ _g3069830735_))))
                                (_g3069730732_ _g3069830735_))))
                        (_g3069730732_ _g3069830735_)))))
            (_g3069630849_ _stx30693_)))))
    (define gxc#collect-type-call%
      (lambda (_stx30185_)
        (let* ((___stx3131731318_ _stx30185_)
               (_g3018930304_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3131731318_))))
          (let ((___kont3131931320_
                 (lambda (_L30643_ _L30644_ _L30645_ _L30646_ _L30647_)
                   (gxc#optimizer-declare-method!__%
                    (gxc#identifier-symbol _L30646_)
                    (gx#stx-e _L30645_)
                    (gxc#identifier-symbol _L30644_)
                    (gx#stx-e _L30643_))))
                (___kont3132131322_
                 (lambda (_L30471_ _L30472_ _L30473_ _L30474_)
                   (gxc#optimizer-declare-method!__%
                    (gxc#identifier-symbol _L30473_)
                    (gx#stx-e _L30472_)
                    (gxc#identifier-symbol _L30471_)
                    '#f)))
                (___kont3132331324_
                 (lambda (_L30341_)
                   (for-each
                    gxc#compile-e
                    (foldr1 (lambda (_g3035430357_ _g3035530359_)
                              (cons _g3035430357_ _g3035530359_))
                            '()
                            _L30341_)))))
            (let* ((___match3157431575_
                    (lambda (_e3028830309_
                             _hd3028930312_
                             _tl3029030314_
                             ___splice3132531326_
                             _target3029130317_
                             _tl3029330319_)
                      (letrec ((_loop3029430322_
                                (lambda (_hd3029230325_ _expr3029830327_)
                                  (if (gx#stx-pair? _hd3029230325_)
                                      (let ((_e3029530330_
                                             (gx#stx-e _hd3029230325_)))
                                        (let ((_lp-tl3029730335_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3029530330_)))
                                              (_lp-hd3029630333_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3029530330_))))
                                          (_loop3029430322_
                                           _lp-tl3029730335_
                                           (cons _lp-hd3029630333_
                                                 _expr3029830327_))))
                                      (let ((_expr3029930338_
                                             (reverse _expr3029830327_)))
                                        (___kont3132331324_
                                         _expr3029930338_))))))
                        (_loop3029430322_ _target3029130317_ '()))))
                   (___match3145431455_
                    (lambda (_e3019630515_
                             _hd3019730518_
                             _tl3019830520_
                             _e3019930523_
                             _hd3020030526_
                             _tl3020130528_
                             _e3020230531_
                             _hd3020330534_
                             _tl3020430536_
                             _e3020530539_
                             _hd3020630542_
                             _tl3020730544_
                             _e3020830547_
                             _hd3020930550_
                             _tl3021030552_
                             _e3021130555_
                             _hd3021230558_
                             _tl3021330560_
                             _e3021430563_
                             _hd3021530566_
                             _tl3021630568_
                             _e3021730571_
                             _hd3021830574_
                             _tl3021930576_
                             _e3022030579_
                             _hd3022130582_
                             _tl3022230584_
                             _e3022330587_
                             _hd3022430590_
                             _tl3022530592_
                             _e3022630595_
                             _hd3022730598_
                             _tl3022830600_
                             _e3022930603_
                             _hd3023030606_
                             _tl3023130608_
                             _e3023230611_
                             _hd3023330614_
                             _tl3023430616_
                             _e3023530619_
                             _hd3023630622_
                             _tl3023730624_
                             _e3023830627_
                             _hd3023930630_
                             _tl3024030632_
                             _e3024130635_
                             _hd3024230638_
                             _tl3024330640_)
                      (let ((_L30643_ _hd3024230638_)
                            (_L30644_ _hd3023330614_)
                            (_L30645_ _hd3022430590_)
                            (_L30646_ _hd3021530566_)
                            (_L30647_ _hd3020630542_))
                        (if (gxc#runtime-identifier=? _L30647_ 'bind-method!)
                            (___kont3131931320_
                             _L30643_
                             _L30644_
                             _L30645_
                             _L30646_
                             _L30647_)
                            (if (gx#stx-pair/null? _tl3019830520_)
                                (let ((___splice3132531326_
                                       (gx#syntax-split-splice
                                        _tl3019830520_
                                        '0)))
                                  (let ((_tl3029330319_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice3132531326_
                                            '1)))
                                        (_target3029130317_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice3132531326_
                                            '0))))
                                    (if (gx#stx-null? _tl3029330319_)
                                        (___match3157431575_
                                         _e3019630515_
                                         _hd3019730518_
                                         _tl3019830520_
                                         ___splice3132531326_
                                         _target3029130317_
                                         _tl3029330319_)
                                        (_g3018930304_))))
                                (_g3018930304_)))))))
              (if (gx#stx-pair? ___stx3131731318_)
                  (let ((_e3019630515_ (gx#stx-e ___stx3131731318_)))
                    (let ((_tl3019830520_
                           (let () (declare (not safe)) (##cdr _e3019630515_)))
                          (_hd3019730518_
                           (let ()
                             (declare (not safe))
                             (##car _e3019630515_))))
                      (if (gx#stx-pair? _tl3019830520_)
                          (let ((_e3019930523_ (gx#stx-e _tl3019830520_)))
                            (let ((_tl3020130528_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3019930523_)))
                                  (_hd3020030526_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3019930523_))))
                              (if (gx#stx-pair? _hd3020030526_)
                                  (let ((_e3020230531_
                                         (gx#stx-e _hd3020030526_)))
                                    (let ((_tl3020430536_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3020230531_)))
                                          (_hd3020330534_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3020230531_))))
                                      (if (gx#identifier? _hd3020330534_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd3020330534_)
                                              (if (gx#stx-pair? _tl3020430536_)
                                                  (let ((_e3020530539_
                                                         (gx#stx-e
                                                          _tl3020430536_)))
                                                    (let ((_tl3020730544_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3020530539_)))
                                                          (_hd3020630542_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3020530539_))))
                                                      (if (gx#stx-null?
                                                           _tl3020730544_)
                                                          (if (gx#stx-pair?
                                                               _tl3020130528_)
                                                              (let ((_e3020830547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl3020130528_)))
                        (let ((_tl3021030552_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3020830547_)))
                              (_hd3020930550_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3020830547_))))
                          (if (gx#stx-pair? _hd3020930550_)
                              (let ((_e3021130555_ (gx#stx-e _hd3020930550_)))
                                (let ((_tl3021330560_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3021130555_)))
                                      (_hd3021230558_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3021130555_))))
                                  (if (gx#identifier? _hd3021230558_)
                                      (if (gx#stx-eq? '%#ref _hd3021230558_)
                                          (if (gx#stx-pair? _tl3021330560_)
                                              (let ((_e3021430563_
                                                     (gx#stx-e
                                                      _tl3021330560_)))
                                                (let ((_tl3021630568_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3021430563_)))
                                                      (_hd3021530566_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3021430563_))))
                                                  (if (gx#stx-null?
                                                       _tl3021630568_)
                                                      (if (gx#stx-pair?
                                                           _tl3021030552_)
                                                          (let ((_e3021730571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3021030552_)))
                    (let ((_tl3021930576_
                           (let () (declare (not safe)) (##cdr _e3021730571_)))
                          (_hd3021830574_
                           (let ()
                             (declare (not safe))
                             (##car _e3021730571_))))
                      (if (gx#stx-pair? _hd3021830574_)
                          (let ((_e3022030579_ (gx#stx-e _hd3021830574_)))
                            (let ((_tl3022230584_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3022030579_)))
                                  (_hd3022130582_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3022030579_))))
                              (if (gx#identifier? _hd3022130582_)
                                  (if (gx#stx-eq? '%#quote _hd3022130582_)
                                      (if (gx#stx-pair? _tl3022230584_)
                                          (let ((_e3022330587_
                                                 (gx#stx-e _tl3022230584_)))
                                            (let ((_tl3022530592_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3022330587_)))
                                                  (_hd3022430590_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3022330587_))))
                                              (if (gx#stx-null? _tl3022530592_)
                                                  (if (gx#stx-pair?
                                                       _tl3021930576_)
                                                      (let ((_e3022630595_
                                                             (gx#stx-e
                                                              _tl3021930576_)))
                                                        (let ((_tl3022830600_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3022630595_)))
                      (_hd3022730598_
                       (let () (declare (not safe)) (##car _e3022630595_))))
                  (if (gx#stx-pair? _hd3022730598_)
                      (let ((_e3022930603_ (gx#stx-e _hd3022730598_)))
                        (let ((_tl3023130608_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3022930603_)))
                              (_hd3023030606_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3022930603_))))
                          (if (gx#identifier? _hd3023030606_)
                              (if (gx#stx-eq? '%#ref _hd3023030606_)
                                  (if (gx#stx-pair? _tl3023130608_)
                                      (let ((_e3023230611_
                                             (gx#stx-e _tl3023130608_)))
                                        (let ((_tl3023430616_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3023230611_)))
                                              (_hd3023330614_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3023230611_))))
                                          (if (gx#stx-null? _tl3023430616_)
                                              (if (gx#stx-pair? _tl3022830600_)
                                                  (let ((_e3023530619_
                                                         (gx#stx-e
                                                          _tl3022830600_)))
                                                    (let ((_tl3023730624_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3023530619_)))
                                                          (_hd3023630622_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3023530619_))))
                                                      (if (gx#stx-pair?
                                                           _hd3023630622_)
                                                          (let ((_e3023830627_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd3023630622_)))
                    (let ((_tl3024030632_
                           (let () (declare (not safe)) (##cdr _e3023830627_)))
                          (_hd3023930630_
                           (let ()
                             (declare (not safe))
                             (##car _e3023830627_))))
                      (if (gx#identifier? _hd3023930630_)
                          (if (gx#stx-eq? '%#quote _hd3023930630_)
                              (if (gx#stx-pair? _tl3024030632_)
                                  (let ((_e3024130635_
                                         (gx#stx-e _tl3024030632_)))
                                    (let ((_tl3024330640_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3024130635_)))
                                          (_hd3024230638_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3024130635_))))
                                      (if (gx#stx-null? _tl3024330640_)
                                          (if (gx#stx-null? _tl3023730624_)
                                              (___match3145431455_
                                               _e3019630515_
                                               _hd3019730518_
                                               _tl3019830520_
                                               _e3019930523_
                                               _hd3020030526_
                                               _tl3020130528_
                                               _e3020230531_
                                               _hd3020330534_
                                               _tl3020430536_
                                               _e3020530539_
                                               _hd3020630542_
                                               _tl3020730544_
                                               _e3020830547_
                                               _hd3020930550_
                                               _tl3021030552_
                                               _e3021130555_
                                               _hd3021230558_
                                               _tl3021330560_
                                               _e3021430563_
                                               _hd3021530566_
                                               _tl3021630568_
                                               _e3021730571_
                                               _hd3021830574_
                                               _tl3021930576_
                                               _e3022030579_
                                               _hd3022130582_
                                               _tl3022230584_
                                               _e3022330587_
                                               _hd3022430590_
                                               _tl3022530592_
                                               _e3022630595_
                                               _hd3022730598_
                                               _tl3022830600_
                                               _e3022930603_
                                               _hd3023030606_
                                               _tl3023130608_
                                               _e3023230611_
                                               _hd3023330614_
                                               _tl3023430616_
                                               _e3023530619_
                                               _hd3023630622_
                                               _tl3023730624_
                                               _e3023830627_
                                               _hd3023930630_
                                               _tl3024030632_
                                               _e3024130635_
                                               _hd3024230638_
                                               _tl3024330640_)
                                              (if (gx#stx-pair/null?
                                                   _tl3019830520_)
                                                  (let ((___splice3132531326_
                                                         (gx#syntax-split-splice
                                                          _tl3019830520_
                                                          '0)))
                                                    (let ((_tl3029330319_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3132531326_
                                                              '1)))
                                                          (_target3029130317_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3132531326_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3029330319_)
                                                          (___match3157431575_
                                                           _e3019630515_
                                                           _hd3019730518_
                                                           _tl3019830520_
                                                           ___splice3132531326_
                                                           _target3029130317_
                                                           _tl3029330319_)
                                                          (_g3018930304_))))
                                                  (_g3018930304_)))
                                          (if (gx#stx-pair/null?
                                               _tl3019830520_)
                                              (let ((___splice3132531326_
                                                     (gx#syntax-split-splice
                                                      _tl3019830520_
                                                      '0)))
                                                (let ((_tl3029330319_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3132531326_
                                                          '1)))
                                                      (_target3029130317_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3132531326_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl3029330319_)
                                                      (___match3157431575_
                                                       _e3019630515_
                                                       _hd3019730518_
                                                       _tl3019830520_
                                                       ___splice3132531326_
                                                       _target3029130317_
                                                       _tl3029330319_)
                                                      (_g3018930304_))))
                                              (_g3018930304_)))))
                                  (if (gx#stx-pair/null? _tl3019830520_)
                                      (let ((___splice3132531326_
                                             (gx#syntax-split-splice
                                              _tl3019830520_
                                              '0)))
                                        (let ((_tl3029330319_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3132531326_
                                                  '1)))
                                              (_target3029130317_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3132531326_
                                                  '0))))
                                          (if (gx#stx-null? _tl3029330319_)
                                              (___match3157431575_
                                               _e3019630515_
                                               _hd3019730518_
                                               _tl3019830520_
                                               ___splice3132531326_
                                               _target3029130317_
                                               _tl3029330319_)
                                              (_g3018930304_))))
                                      (_g3018930304_)))
                              (if (gx#stx-pair/null? _tl3019830520_)
                                  (let ((___splice3132531326_
                                         (gx#syntax-split-splice
                                          _tl3019830520_
                                          '0)))
                                    (let ((_tl3029330319_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3132531326_
                                              '1)))
                                          (_target3029130317_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3132531326_
                                              '0))))
                                      (if (gx#stx-null? _tl3029330319_)
                                          (___match3157431575_
                                           _e3019630515_
                                           _hd3019730518_
                                           _tl3019830520_
                                           ___splice3132531326_
                                           _target3029130317_
                                           _tl3029330319_)
                                          (_g3018930304_))))
                                  (_g3018930304_)))
                          (if (gx#stx-pair/null? _tl3019830520_)
                              (let ((___splice3132531326_
                                     (gx#syntax-split-splice
                                      _tl3019830520_
                                      '0)))
                                (let ((_tl3029330319_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3132531326_
                                          '1)))
                                      (_target3029130317_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3132531326_
                                          '0))))
                                  (if (gx#stx-null? _tl3029330319_)
                                      (___match3157431575_
                                       _e3019630515_
                                       _hd3019730518_
                                       _tl3019830520_
                                       ___splice3132531326_
                                       _target3029130317_
                                       _tl3029330319_)
                                      (_g3018930304_))))
                              (_g3018930304_)))))
                  (if (gx#stx-pair/null? _tl3019830520_)
                      (let ((___splice3132531326_
                             (gx#syntax-split-splice _tl3019830520_ '0)))
                        (let ((_tl3029330319_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice3132531326_ '1)))
                              (_target3029130317_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice3132531326_ '0))))
                          (if (gx#stx-null? _tl3029330319_)
                              (___match3157431575_
                               _e3019630515_
                               _hd3019730518_
                               _tl3019830520_
                               ___splice3132531326_
                               _target3029130317_
                               _tl3029330319_)
                              (_g3018930304_))))
                      (_g3018930304_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl3022830600_)
                                                      (if (gxc#runtime-identifier=?
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '-bind-method)
                                                           'bind-method!)
                                                          (let ((_L30471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3023330614_)
                        (_L30472_ _hd3022430590_)
                        (_L30473_ _hd3021530566_)
                        (_L30474_ _hd3020630542_))
                    (___kont3132131322_ _L30471_ _L30472_ _L30473_ _L30474_))
                  (if (gx#stx-pair/null? _tl3019830520_)
                      (let ((___splice3132531326_
                             (gx#syntax-split-splice _tl3019830520_ '0)))
                        (let ((_tl3029330319_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice3132531326_ '1)))
                              (_target3029130317_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice3132531326_ '0))))
                          (if (gx#stx-null? _tl3029330319_)
                              (___match3157431575_
                               _e3019630515_
                               _hd3019730518_
                               _tl3019830520_
                               ___splice3132531326_
                               _target3029130317_
                               _tl3029330319_)
                              (_g3018930304_))))
                      (_g3018930304_)))
              (if (gx#stx-pair/null? _tl3019830520_)
                  (let ((___splice3132531326_
                         (gx#syntax-split-splice _tl3019830520_ '0)))
                    (let ((_tl3029330319_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3132531326_ '1)))
                          (_target3029130317_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3132531326_ '0))))
                      (if (gx#stx-null? _tl3029330319_)
                          (___match3157431575_
                           _e3019630515_
                           _hd3019730518_
                           _tl3019830520_
                           ___splice3132531326_
                           _target3029130317_
                           _tl3029330319_)
                          (_g3018930304_))))
                  (_g3018930304_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl3019830520_)
                                                  (let ((___splice3132531326_
                                                         (gx#syntax-split-splice
                                                          _tl3019830520_
                                                          '0)))
                                                    (let ((_tl3029330319_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3132531326_
                                                              '1)))
                                                          (_target3029130317_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3132531326_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3029330319_)
                                                          (___match3157431575_
                                                           _e3019630515_
                                                           _hd3019730518_
                                                           _tl3019830520_
                                                           ___splice3132531326_
                                                           _target3029130317_
                                                           _tl3029330319_)
                                                          (_g3018930304_))))
                                                  (_g3018930304_)))))
                                      (if (gx#stx-pair/null? _tl3019830520_)
                                          (let ((___splice3132531326_
                                                 (gx#syntax-split-splice
                                                  _tl3019830520_
                                                  '0)))
                                            (let ((_tl3029330319_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3132531326_
                                                      '1)))
                                                  (_target3029130317_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3132531326_
                                                      '0))))
                                              (if (gx#stx-null? _tl3029330319_)
                                                  (___match3157431575_
                                                   _e3019630515_
                                                   _hd3019730518_
                                                   _tl3019830520_
                                                   ___splice3132531326_
                                                   _target3029130317_
                                                   _tl3029330319_)
                                                  (_g3018930304_))))
                                          (_g3018930304_)))
                                  (if (gx#stx-pair/null? _tl3019830520_)
                                      (let ((___splice3132531326_
                                             (gx#syntax-split-splice
                                              _tl3019830520_
                                              '0)))
                                        (let ((_tl3029330319_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3132531326_
                                                  '1)))
                                              (_target3029130317_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3132531326_
                                                  '0))))
                                          (if (gx#stx-null? _tl3029330319_)
                                              (___match3157431575_
                                               _e3019630515_
                                               _hd3019730518_
                                               _tl3019830520_
                                               ___splice3132531326_
                                               _target3029130317_
                                               _tl3029330319_)
                                              (_g3018930304_))))
                                      (_g3018930304_)))
                              (if (gx#stx-pair/null? _tl3019830520_)
                                  (let ((___splice3132531326_
                                         (gx#syntax-split-splice
                                          _tl3019830520_
                                          '0)))
                                    (let ((_tl3029330319_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3132531326_
                                              '1)))
                                          (_target3029130317_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3132531326_
                                              '0))))
                                      (if (gx#stx-null? _tl3029330319_)
                                          (___match3157431575_
                                           _e3019630515_
                                           _hd3019730518_
                                           _tl3019830520_
                                           ___splice3132531326_
                                           _target3029130317_
                                           _tl3029330319_)
                                          (_g3018930304_))))
                                  (_g3018930304_)))))
                      (if (gx#stx-pair/null? _tl3019830520_)
                          (let ((___splice3132531326_
                                 (gx#syntax-split-splice _tl3019830520_ '0)))
                            (let ((_tl3029330319_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3132531326_ '1)))
                                  (_target3029130317_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3132531326_ '0))))
                              (if (gx#stx-null? _tl3029330319_)
                                  (___match3157431575_
                                   _e3019630515_
                                   _hd3019730518_
                                   _tl3019830520_
                                   ___splice3132531326_
                                   _target3029130317_
                                   _tl3029330319_)
                                  (_g3018930304_))))
                          (_g3018930304_)))))
              (if (gx#stx-pair/null? _tl3019830520_)
                  (let ((___splice3132531326_
                         (gx#syntax-split-splice _tl3019830520_ '0)))
                    (let ((_tl3029330319_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3132531326_ '1)))
                          (_target3029130317_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3132531326_ '0))))
                      (if (gx#stx-null? _tl3029330319_)
                          (___match3157431575_
                           _e3019630515_
                           _hd3019730518_
                           _tl3019830520_
                           ___splice3132531326_
                           _target3029130317_
                           _tl3029330319_)
                          (_g3018930304_))))
                  (_g3018930304_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _tl3019830520_)
                                                      (let ((___splice3132531326_
                                                             (gx#syntax-split-splice
                                                              _tl3019830520_
                                                              '0)))
                                                        (let ((_tl3029330319_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice3132531326_ '1)))
                      (_target3029130317_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice3132531326_ '0))))
                  (if (gx#stx-null? _tl3029330319_)
                      (___match3157431575_
                       _e3019630515_
                       _hd3019730518_
                       _tl3019830520_
                       ___splice3132531326_
                       _target3029130317_
                       _tl3029330319_)
                      (_g3018930304_))))
              (_g3018930304_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl3019830520_)
                                              (let ((___splice3132531326_
                                                     (gx#syntax-split-splice
                                                      _tl3019830520_
                                                      '0)))
                                                (let ((_tl3029330319_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3132531326_
                                                          '1)))
                                                      (_target3029130317_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3132531326_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl3029330319_)
                                                      (___match3157431575_
                                                       _e3019630515_
                                                       _hd3019730518_
                                                       _tl3019830520_
                                                       ___splice3132531326_
                                                       _target3029130317_
                                                       _tl3029330319_)
                                                      (_g3018930304_))))
                                              (_g3018930304_)))
                                      (if (gx#stx-pair/null? _tl3019830520_)
                                          (let ((___splice3132531326_
                                                 (gx#syntax-split-splice
                                                  _tl3019830520_
                                                  '0)))
                                            (let ((_tl3029330319_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3132531326_
                                                      '1)))
                                                  (_target3029130317_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3132531326_
                                                      '0))))
                                              (if (gx#stx-null? _tl3029330319_)
                                                  (___match3157431575_
                                                   _e3019630515_
                                                   _hd3019730518_
                                                   _tl3019830520_
                                                   ___splice3132531326_
                                                   _target3029130317_
                                                   _tl3029330319_)
                                                  (_g3018930304_))))
                                          (_g3018930304_)))
                                  (if (gx#stx-pair/null? _tl3019830520_)
                                      (let ((___splice3132531326_
                                             (gx#syntax-split-splice
                                              _tl3019830520_
                                              '0)))
                                        (let ((_tl3029330319_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3132531326_
                                                  '1)))
                                              (_target3029130317_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3132531326_
                                                  '0))))
                                          (if (gx#stx-null? _tl3029330319_)
                                              (___match3157431575_
                                               _e3019630515_
                                               _hd3019730518_
                                               _tl3019830520_
                                               ___splice3132531326_
                                               _target3029130317_
                                               _tl3029330319_)
                                              (_g3018930304_))))
                                      (_g3018930304_)))))
                          (if (gx#stx-pair/null? _tl3019830520_)
                              (let ((___splice3132531326_
                                     (gx#syntax-split-splice
                                      _tl3019830520_
                                      '0)))
                                (let ((_tl3029330319_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3132531326_
                                          '1)))
                                      (_target3029130317_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3132531326_
                                          '0))))
                                  (if (gx#stx-null? _tl3029330319_)
                                      (___match3157431575_
                                       _e3019630515_
                                       _hd3019730518_
                                       _tl3019830520_
                                       ___splice3132531326_
                                       _target3029130317_
                                       _tl3029330319_)
                                      (_g3018930304_))))
                              (_g3018930304_)))))
                  (if (gx#stx-pair/null? _tl3019830520_)
                      (let ((___splice3132531326_
                             (gx#syntax-split-splice _tl3019830520_ '0)))
                        (let ((_tl3029330319_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice3132531326_ '1)))
                              (_target3029130317_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice3132531326_ '0))))
                          (if (gx#stx-null? _tl3029330319_)
                              (___match3157431575_
                               _e3019630515_
                               _hd3019730518_
                               _tl3019830520_
                               ___splice3132531326_
                               _target3029130317_
                               _tl3029330319_)
                              (_g3018930304_))))
                      (_g3018930304_)))
              (if (gx#stx-pair/null? _tl3019830520_)
                  (let ((___splice3132531326_
                         (gx#syntax-split-splice _tl3019830520_ '0)))
                    (let ((_tl3029330319_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3132531326_ '1)))
                          (_target3029130317_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3132531326_ '0))))
                      (if (gx#stx-null? _tl3029330319_)
                          (___match3157431575_
                           _e3019630515_
                           _hd3019730518_
                           _tl3019830520_
                           ___splice3132531326_
                           _target3029130317_
                           _tl3029330319_)
                          (_g3018930304_))))
                  (_g3018930304_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl3019830520_)
                                                  (let ((___splice3132531326_
                                                         (gx#syntax-split-splice
                                                          _tl3019830520_
                                                          '0)))
                                                    (let ((_tl3029330319_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3132531326_
                                                              '1)))
                                                          (_target3029130317_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3132531326_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3029330319_)
                                                          (___match3157431575_
                                                           _e3019630515_
                                                           _hd3019730518_
                                                           _tl3019830520_
                                                           ___splice3132531326_
                                                           _target3029130317_
                                                           _tl3029330319_)
                                                          (_g3018930304_))))
                                                  (_g3018930304_)))
                                          (if (gx#stx-pair/null?
                                               _tl3019830520_)
                                              (let ((___splice3132531326_
                                                     (gx#syntax-split-splice
                                                      _tl3019830520_
                                                      '0)))
                                                (let ((_tl3029330319_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3132531326_
                                                          '1)))
                                                      (_target3029130317_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3132531326_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl3029330319_)
                                                      (___match3157431575_
                                                       _e3019630515_
                                                       _hd3019730518_
                                                       _tl3019830520_
                                                       ___splice3132531326_
                                                       _target3029130317_
                                                       _tl3029330319_)
                                                      (_g3018930304_))))
                                              (_g3018930304_)))
                                      (if (gx#stx-pair/null? _tl3019830520_)
                                          (let ((___splice3132531326_
                                                 (gx#syntax-split-splice
                                                  _tl3019830520_
                                                  '0)))
                                            (let ((_tl3029330319_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3132531326_
                                                      '1)))
                                                  (_target3029130317_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3132531326_
                                                      '0))))
                                              (if (gx#stx-null? _tl3029330319_)
                                                  (___match3157431575_
                                                   _e3019630515_
                                                   _hd3019730518_
                                                   _tl3019830520_
                                                   ___splice3132531326_
                                                   _target3029130317_
                                                   _tl3029330319_)
                                                  (_g3018930304_))))
                                          (_g3018930304_)))))
                              (if (gx#stx-pair/null? _tl3019830520_)
                                  (let ((___splice3132531326_
                                         (gx#syntax-split-splice
                                          _tl3019830520_
                                          '0)))
                                    (let ((_tl3029330319_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3132531326_
                                              '1)))
                                          (_target3029130317_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3132531326_
                                              '0))))
                                      (if (gx#stx-null? _tl3029330319_)
                                          (___match3157431575_
                                           _e3019630515_
                                           _hd3019730518_
                                           _tl3019830520_
                                           ___splice3132531326_
                                           _target3029130317_
                                           _tl3029330319_)
                                          (_g3018930304_))))
                                  (_g3018930304_)))))
                      (if (gx#stx-pair/null? _tl3019830520_)
                          (let ((___splice3132531326_
                                 (gx#syntax-split-splice _tl3019830520_ '0)))
                            (let ((_tl3029330319_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3132531326_ '1)))
                                  (_target3029130317_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3132531326_ '0))))
                              (if (gx#stx-null? _tl3029330319_)
                                  (___match3157431575_
                                   _e3019630515_
                                   _hd3019730518_
                                   _tl3019830520_
                                   ___splice3132531326_
                                   _target3029130317_
                                   _tl3029330319_)
                                  (_g3018930304_))))
                          (_g3018930304_)))
                  (if (gx#stx-pair/null? _tl3019830520_)
                      (let ((___splice3132531326_
                             (gx#syntax-split-splice _tl3019830520_ '0)))
                        (let ((_tl3029330319_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice3132531326_ '1)))
                              (_target3029130317_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice3132531326_ '0))))
                          (if (gx#stx-null? _tl3029330319_)
                              (___match3157431575_
                               _e3019630515_
                               _hd3019730518_
                               _tl3019830520_
                               ___splice3132531326_
                               _target3029130317_
                               _tl3029330319_)
                              (_g3018930304_))))
                      (_g3018930304_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _tl3019830520_)
                                                      (let ((___splice3132531326_
                                                             (gx#syntax-split-splice
                                                              _tl3019830520_
                                                              '0)))
                                                        (let ((_tl3029330319_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice3132531326_ '1)))
                      (_target3029130317_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice3132531326_ '0))))
                  (if (gx#stx-null? _tl3029330319_)
                      (___match3157431575_
                       _e3019630515_
                       _hd3019730518_
                       _tl3019830520_
                       ___splice3132531326_
                       _target3029130317_
                       _tl3029330319_)
                      (_g3018930304_))))
              (_g3018930304_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl3019830520_)
                                                  (let ((___splice3132531326_
                                                         (gx#syntax-split-splice
                                                          _tl3019830520_
                                                          '0)))
                                                    (let ((_tl3029330319_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3132531326_
                                                              '1)))
                                                          (_target3029130317_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3132531326_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3029330319_)
                                                          (___match3157431575_
                                                           _e3019630515_
                                                           _hd3019730518_
                                                           _tl3019830520_
                                                           ___splice3132531326_
                                                           _target3029130317_
                                                           _tl3029330319_)
                                                          (_g3018930304_))))
                                                  (_g3018930304_)))
                                          (if (gx#stx-pair/null?
                                               _tl3019830520_)
                                              (let ((___splice3132531326_
                                                     (gx#syntax-split-splice
                                                      _tl3019830520_
                                                      '0)))
                                                (let ((_tl3029330319_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3132531326_
                                                          '1)))
                                                      (_target3029130317_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3132531326_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl3029330319_)
                                                      (___match3157431575_
                                                       _e3019630515_
                                                       _hd3019730518_
                                                       _tl3019830520_
                                                       ___splice3132531326_
                                                       _target3029130317_
                                                       _tl3029330319_)
                                                      (_g3018930304_))))
                                              (_g3018930304_)))))
                                  (if (gx#stx-pair/null? _tl3019830520_)
                                      (let ((___splice3132531326_
                                             (gx#syntax-split-splice
                                              _tl3019830520_
                                              '0)))
                                        (let ((_tl3029330319_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3132531326_
                                                  '1)))
                                              (_target3029130317_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3132531326_
                                                  '0))))
                                          (if (gx#stx-null? _tl3029330319_)
                                              (___match3157431575_
                                               _e3019630515_
                                               _hd3019730518_
                                               _tl3019830520_
                                               ___splice3132531326_
                                               _target3029130317_
                                               _tl3029330319_)
                                              (_g3018930304_))))
                                      (_g3018930304_)))))
                          (if (gx#stx-pair/null? _tl3019830520_)
                              (let ((___splice3132531326_
                                     (gx#syntax-split-splice
                                      _tl3019830520_
                                      '0)))
                                (let ((_tl3029330319_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3132531326_
                                          '1)))
                                      (_target3029130317_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3132531326_
                                          '0))))
                                  (if (gx#stx-null? _tl3029330319_)
                                      (___match3157431575_
                                       _e3019630515_
                                       _hd3019730518_
                                       _tl3019830520_
                                       ___splice3132531326_
                                       _target3029130317_
                                       _tl3029330319_)
                                      (_g3018930304_))))
                              (_g3018930304_)))))
                  (_g3018930304_)))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx30125_)
        (let* ((___stx3157731578_ _stx30125_)
               (_g3012830141_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3157731578_))))
          (let ((___kont3157931580_
                 (lambda (_L30169_) (gxc#compile-e _L30169_)))
                (___kont3158131582_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx3157731578_)
                (let ((_e3013130153_ (gx#stx-e ___stx3157731578_)))
                  (let ((_tl3013330158_
                         (let () (declare (not safe)) (##cdr _e3013130153_)))
                        (_hd3013230156_
                         (let () (declare (not safe)) (##car _e3013130153_))))
                    (if (gx#stx-pair? _tl3013330158_)
                        (let ((_e3013430161_ (gx#stx-e _tl3013330158_)))
                          (let ((_tl3013630166_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3013430161_)))
                                (_hd3013530164_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3013430161_))))
                            (if (gx#stx-null? _tl3013630166_)
                                (___kont3157931580_ _hd3013530164_)
                                (___kont3158131582_))))
                        (___kont3158131582_))))
                (___kont3158131582_))))))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx30058_)
        (let* ((_g3006030077_
                (lambda (_g3006130074_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3006130074_)))
               (_g3005930122_
                (lambda (_g3006130080_)
                  (if (gx#stx-pair? _g3006130080_)
                      (let ((_e3006430082_ (gx#stx-e _g3006130080_)))
                        (let ((_hd3006530085_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3006430082_)))
                              (_tl3006630087_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3006430082_))))
                          (if (gx#stx-pair? _tl3006630087_)
                              (let ((_e3006730090_ (gx#stx-e _tl3006630087_)))
                                (let ((_hd3006830093_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3006730090_)))
                                      (_tl3006930095_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3006730090_))))
                                  (if (gx#stx-pair? _tl3006930095_)
                                      (let ((_e3007030098_
                                             (gx#stx-e _tl3006930095_)))
                                        (let ((_hd3007130101_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3007030098_)))
                                              (_tl3007230103_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3007030098_))))
                                          (if (gx#stx-null? _tl3007230103_)
                                              ((lambda (_L30106_ _L30107_)
                                                 (gxc#compile-e _L30106_))
                                               _hd3007130101_
                                               _hd3006830093_)
                                              (_g3006030077_ _g3006130080_))))
                                      (_g3006030077_ _g3006130080_))))
                              (_g3006030077_ _g3006130080_))))
                      (_g3006030077_ _g3006130080_)))))
          (_g3005930122_ _stx30058_))))
    (define gxc#basic-expression-type-lambda%
      (lambda (_stx28411_)
        (let* ((___stx3159931600_ _stx28411_)
               (_g2842028780_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3159931600_))))
          (let ((___kont3160131602_
                 (lambda (_L30046_)
                   (let ((__obj34514 (make-object gxc#!lambda::t '5)))
                     (gxc#!lambda:::init!__0
                      __obj34514
                      'lambda
                      (gxc#lambda-form-arity _L30046_)
                      '#f)
                     __obj34514)))
                (___kont3160331604_
                 (lambda (_L29981_ _L29982_ _L29983_ _L29984_ _L29985_)
                   (let* ((_type-t30028_ (gxc#identifier-symbol _L29982_))
                          (_type30030_
                           (gxc#optimizer-resolve-type _type-t30028_)))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _type30030_
                            'gxc#!struct-type::t))
                         (let ()
                           (declare (not safe))
                           (##structure gxc#!struct-cons::t _type-t30028_))
                         '#f))))
                (___kont3160531606_
                 (lambda (_L29796_ _L29797_ _L29798_ _L29799_ _L29800_)
                   (let* ((_type-t29843_ (gxc#identifier-symbol _L29797_))
                          (_type29845_
                           (gxc#optimizer-resolve-type _type-t29843_)))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _type29845_
                            'gxc#!class-type::t))
                         (let ()
                           (declare (not safe))
                           (##structure gxc#!class-cons::t _type-t29843_))
                         '#f))))
                (___kont3160731608_
                 (lambda (_L29582_ _L29583_ _L29584_ _L29585_)
                   (let* ((_type-t29658_ (gxc#identifier-symbol _L29583_))
                          (_type29660_
                           (gxc#optimizer-resolve-type _type-t29658_)))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _type29660_
                            'gxc#!struct-type::t))
                         (let ()
                           (declare (not safe))
                           (##structure gxc#!struct-cons::t _type-t29658_))
                         '#f))))
                (___kont3161331614_
                 (lambda (_L29373_
                          _L29374_
                          _L29375_
                          _L29376_
                          _L29377_
                          _L29378_)
                   (let* ((_tab29428_ (gx#stx-e _L29375_))
                          (_keys29430_
                           (if _tab29428_
                               (filter values (vector->list _tab29428_))
                               '#f)))
                     (let ((__tmp34528 (gxc#identifier-symbol _L29374_)))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys29430_
                        __tmp34528)))))
                (___kont3161531616_
                 (lambda (_L29106_
                          _L29107_
                          _L29108_
                          _L29109_
                          _L29110_
                          _L29111_
                          _L29112_
                          _L29113_
                          _L29114_
                          _L29115_)
                   (let ((__tmp34530
                          (map gx#stx-e
                               (foldr1 (lambda (_g2920829211_ _g2920929213_)
                                         (cons _g2920829211_ _g2920929213_))
                                       '()
                                       _L29108_)))
                         (__tmp34529 (gxc#identifier-symbol _L29112_)))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp34530
                      __tmp34529))))
                (___kont3161931620_
                 (lambda (_L28816_)
                   (let ((__obj34515 (make-object gxc#!lambda::t '5)))
                     (gxc#!lambda:::init!__0
                      __obj34515
                      'lambda
                      (gxc#lambda-form-arity _L28816_)
                      (gxc#dispatch-lambda-form-delegate _L28816_))
                     __obj34515)))
                (___kont3162131622_
                 (lambda (_L28793_)
                   (let ((__obj34516 (make-object gxc#!lambda::t '5)))
                     (gxc#!lambda:::init!__0
                      __obj34516
                      'lambda
                      (gxc#lambda-form-arity _L28793_)
                      '#f)
                     __obj34516))))
            (let* ((___match3220432205_
                    (lambda (_e2876928808_ _hd2877028811_ _tl2877128813_)
                      (let ((_L28816_ _tl2877128813_))
                        (if (gxc#dispatch-lambda-form? _L28816_)
                            (___kont3161931620_ _L28816_)
                            (___kont3162131622_ _tl2877128813_)))))
                   (___match3219832199_
                    (lambda (_e2866328830_
                             _hd2866428833_
                             _tl2866528835_
                             _e2866628838_
                             _hd2866728841_
                             _tl2866828843_
                             _e2866928846_
                             _hd2867028849_
                             _tl2867128851_
                             _e2867228854_
                             _hd2867328857_
                             _tl2867428859_
                             _e2867528862_
                             _hd2867628865_
                             _tl2867728867_
                             _e2867828870_
                             _hd2867928873_
                             _tl2868028875_
                             _e2868128878_
                             _hd2868228881_
                             _tl2868328883_
                             _e2868428886_
                             _hd2868528889_
                             _tl2868628891_
                             _e2868728894_
                             _hd2868828897_
                             _tl2868928899_
                             _e2869028902_
                             _hd2869128905_
                             _tl2869228907_
                             _e2869328910_
                             _hd2869428913_
                             _tl2869528915_
                             _e2869628918_
                             _hd2869728921_
                             _tl2869828923_
                             _e2869928926_
                             _hd2870028929_
                             _tl2870128931_
                             _e2870228934_
                             _hd2870328937_
                             _tl2870428939_
                             ___splice3161731618_
                             _target2870528942_
                             _tl2870728944_
                             _e2872028947_
                             _hd2872128950_
                             _tl2872228952_
                             _e2872328955_
                             _hd2872428958_
                             _tl2872528960_
                             _e2872628963_
                             _hd2872728966_
                             _tl2872828968_)
                      (letrec ((_loop2870828971_
                                (lambda (_hd2870628974_
                                         _-absent-value2871228976_
                                         _key2871328978_
                                         _-xkwvar2871428980_
                                         _-hash-ref2871528982_)
                                  (if (gx#stx-pair? _hd2870628974_)
                                      (let ((_e2870928985_
                                             (gx#stx-e _hd2870628974_)))
                                        (let ((_lp-tl2871128990_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2870928985_)))
                                              (_lp-hd2871028988_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2870928985_))))
                                          (if (gx#stx-pair? _lp-hd2871028988_)
                                              (let ((_e2872928993_
                                                     (gx#stx-e
                                                      _lp-hd2871028988_)))
                                                (let ((_tl2873128998_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2872928993_)))
                                                      (_hd2873028996_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2872928993_))))
                                                  (if (gx#identifier?
                                                       _hd2873028996_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd2873028996_)
                                                          (if (gx#stx-pair?
                                                               _tl2873128998_)
                                                              (let ((_e2873229001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2873128998_)))
                        (let ((_tl2873429006_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2873229001_)))
                              (_hd2873329004_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2873229001_))))
                          (if (gx#stx-pair? _hd2873329004_)
                              (let ((_e2873529009_ (gx#stx-e _hd2873329004_)))
                                (let ((_tl2873729014_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2873529009_)))
                                      (_hd2873629012_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2873529009_))))
                                  (if (gx#identifier? _hd2873629012_)
                                      (if (gx#stx-eq? '%#ref _hd2873629012_)
                                          (if (gx#stx-pair? _tl2873729014_)
                                              (let ((_e2873829017_
                                                     (gx#stx-e
                                                      _tl2873729014_)))
                                                (let ((_tl2874029022_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2873829017_)))
                                                      (_hd2873929020_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2873829017_))))
                                                  (if (gx#stx-null?
                                                       _tl2874029022_)
                                                      (if (gx#stx-pair?
                                                           _tl2873429006_)
                                                          (let ((_e2874129025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2873429006_)))
                    (let ((_tl2874329030_
                           (let () (declare (not safe)) (##cdr _e2874129025_)))
                          (_hd2874229028_
                           (let ()
                             (declare (not safe))
                             (##car _e2874129025_))))
                      (if (gx#stx-pair? _hd2874229028_)
                          (let ((_e2874429033_ (gx#stx-e _hd2874229028_)))
                            (let ((_tl2874629038_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2874429033_)))
                                  (_hd2874529036_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2874429033_))))
                              (if (gx#identifier? _hd2874529036_)
                                  (if (gx#stx-eq? '%#ref _hd2874529036_)
                                      (if (gx#stx-pair? _tl2874629038_)
                                          (let ((_e2874729041_
                                                 (gx#stx-e _tl2874629038_)))
                                            (let ((_tl2874929046_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2874729041_)))
                                                  (_hd2874829044_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2874729041_))))
                                              (if (gx#stx-null? _tl2874929046_)
                                                  (if (gx#stx-pair?
                                                       _tl2874329030_)
                                                      (let ((_e2875029049_
                                                             (gx#stx-e
                                                              _tl2874329030_)))
                                                        (let ((_tl2875229054_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2875029049_)))
                      (_hd2875129052_
                       (let () (declare (not safe)) (##car _e2875029049_))))
                  (if (gx#stx-pair? _hd2875129052_)
                      (let ((_e2875329057_ (gx#stx-e _hd2875129052_)))
                        (let ((_tl2875529062_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2875329057_)))
                              (_hd2875429060_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2875329057_))))
                          (if (gx#identifier? _hd2875429060_)
                              (if (gx#stx-eq? '%#quote _hd2875429060_)
                                  (if (gx#stx-pair? _tl2875529062_)
                                      (let ((_e2875629065_
                                             (gx#stx-e _tl2875529062_)))
                                        (let ((_tl2875829070_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2875629065_)))
                                              (_hd2875729068_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2875629065_))))
                                          (if (gx#stx-null? _tl2875829070_)
                                              (if (gx#stx-pair? _tl2875229054_)
                                                  (let ((_e2875929073_
                                                         (gx#stx-e
                                                          _tl2875229054_)))
                                                    (let ((_tl2876129078_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2875929073_)))
                                                          (_hd2876029076_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2875929073_))))
                                                      (if (gx#stx-pair?
                                                           _hd2876029076_)
                                                          (let ((_e2876229081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2876029076_)))
                    (let ((_tl2876429086_
                           (let () (declare (not safe)) (##cdr _e2876229081_)))
                          (_hd2876329084_
                           (let ()
                             (declare (not safe))
                             (##car _e2876229081_))))
                      (if (gx#identifier? _hd2876329084_)
                          (if (gx#stx-eq? '%#ref _hd2876329084_)
                              (if (gx#stx-pair? _tl2876429086_)
                                  (let ((_e2876529089_
                                         (gx#stx-e _tl2876429086_)))
                                    (let ((_tl2876729094_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2876529089_)))
                                          (_hd2876629092_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2876529089_))))
                                      (if (gx#stx-null? _tl2876729094_)
                                          (if (gx#stx-null? _tl2876129078_)
                                              (_loop2870828971_
                                               _lp-tl2871128990_
                                               (cons _hd2876629092_
                                                     _-absent-value2871228976_)
                                               (cons _hd2875729068_
                                                     _key2871328978_)
                                               (cons _hd2874829044_
                                                     _-xkwvar2871428980_)
                                               (cons _hd2873929020_
                                                     _-hash-ref2871528982_))
                                              (___match3220432205_
                                               _e2866328830_
                                               _hd2866428833_
                                               _tl2866528835_))
                                          (___match3220432205_
                                           _e2866328830_
                                           _hd2866428833_
                                           _tl2866528835_))))
                                  (___match3220432205_
                                   _e2866328830_
                                   _hd2866428833_
                                   _tl2866528835_))
                              (___match3220432205_
                               _e2866328830_
                               _hd2866428833_
                               _tl2866528835_))
                          (___match3220432205_
                           _e2866328830_
                           _hd2866428833_
                           _tl2866528835_))))
                  (___match3220432205_
                   _e2866328830_
                   _hd2866428833_
                   _tl2866528835_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3220432205_
                                                   _e2866328830_
                                                   _hd2866428833_
                                                   _tl2866528835_))
                                              (___match3220432205_
                                               _e2866328830_
                                               _hd2866428833_
                                               _tl2866528835_))))
                                      (___match3220432205_
                                       _e2866328830_
                                       _hd2866428833_
                                       _tl2866528835_))
                                  (___match3220432205_
                                   _e2866328830_
                                   _hd2866428833_
                                   _tl2866528835_))
                              (___match3220432205_
                               _e2866328830_
                               _hd2866428833_
                               _tl2866528835_))))
                      (___match3220432205_
                       _e2866328830_
                       _hd2866428833_
                       _tl2866528835_))))
              (___match3220432205_
               _e2866328830_
               _hd2866428833_
               _tl2866528835_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3220432205_
                                                   _e2866328830_
                                                   _hd2866428833_
                                                   _tl2866528835_))))
                                          (___match3220432205_
                                           _e2866328830_
                                           _hd2866428833_
                                           _tl2866528835_))
                                      (___match3220432205_
                                       _e2866328830_
                                       _hd2866428833_
                                       _tl2866528835_))
                                  (___match3220432205_
                                   _e2866328830_
                                   _hd2866428833_
                                   _tl2866528835_))))
                          (___match3220432205_
                           _e2866328830_
                           _hd2866428833_
                           _tl2866528835_))))
                  (___match3220432205_
                   _e2866328830_
                   _hd2866428833_
                   _tl2866528835_))
              (___match3220432205_
               _e2866328830_
               _hd2866428833_
               _tl2866528835_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match3220432205_
                                               _e2866328830_
                                               _hd2866428833_
                                               _tl2866528835_))
                                          (___match3220432205_
                                           _e2866328830_
                                           _hd2866428833_
                                           _tl2866528835_))
                                      (___match3220432205_
                                       _e2866328830_
                                       _hd2866428833_
                                       _tl2866528835_))))
                              (___match3220432205_
                               _e2866328830_
                               _hd2866428833_
                               _tl2866528835_))))
                      (___match3220432205_
                       _e2866328830_
                       _hd2866428833_
                       _tl2866528835_))
                  (___match3220432205_
                   _e2866328830_
                   _hd2866428833_
                   _tl2866528835_))
              (___match3220432205_
               _e2866328830_
               _hd2866428833_
               _tl2866528835_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match3220432205_
                                               _e2866328830_
                                               _hd2866428833_
                                               _tl2866528835_))))
                                      (let ((_-hash-ref2871929103_
                                             (reverse _-hash-ref2871528982_))
                                            (_-xkwvar2871829101_
                                             (reverse _-xkwvar2871428980_))
                                            (_key2871729099_
                                             (reverse _key2871328978_))
                                            (_-absent-value2871629097_
                                             (reverse _-absent-value2871228976_)))
                                        (if (gx#stx-null? _tl2867428859_)
                                            (let ((_L29106_ _hd2872728966_)
                                                  (_L29107_
                                                   _-absent-value2871629097_)
                                                  (_L29108_ _key2871729099_)
                                                  (_L29109_
                                                   _-xkwvar2871829101_)
                                                  (_L29110_
                                                   _-hash-ref2871929103_)
                                                  (_L29111_ _hd2870328937_)
                                                  (_L29112_ _hd2869428913_)
                                                  (_L29113_ _hd2868528889_)
                                                  (_L29114_ _tl2867128851_)
                                                  (_L29115_ _hd2867028849_))
                                              (if (and (gx#identifier?
                                                        _L29115_)
                                                       (gx#identifier?
                                                        _L29114_)
                                                       (gxc#runtime-identifier=?
                                                        _L29113_
                                                        'apply)
                                                       (gx#free-identifier=?
                                                        _L29115_
                                                        _L29111_)
                                                       (andmap1 gx#stx-keyword?
                                                                (foldr1 (lambda (_g2916829171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g2916929173_)
                                  (cons _g2916829171_ _g2916929173_))
                                '()
                                _L29108_))
               (andmap1 (lambda (_g2917529177_)
                          (gxc#runtime-identifier=? _g2917529177_ 'hash-ref))
                        (foldr1 (lambda (_g2917929182_ _g2918029184_)
                                  (cons _g2917929182_ _g2918029184_))
                                '()
                                _L29110_))
               (andmap1 (lambda (_g2918629188_)
                          (gxc#runtime-identifier=?
                           _g2918629188_
                           'absent-value))
                        (foldr1 (lambda (_g2919029193_ _g2919129195_)
                                  (cons _g2919029193_ _g2919129195_))
                                '()
                                _L29107_))
               (andmap1 (lambda (_g2919729199_)
                          (gx#free-identifier=? _g2919729199_ _L29115_))
                        (foldr1 (lambda (_g2920129204_ _g2920229206_)
                                  (cons _g2920129204_ _g2920229206_))
                                '()
                                _L29109_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3161531616_
                                                   _L29106_
                                                   _L29107_
                                                   _L29108_
                                                   _L29109_
                                                   _L29110_
                                                   _L29111_
                                                   _L29112_
                                                   _L29113_
                                                   _L29114_
                                                   _L29115_)
                                                  (___match3220432205_
                                                   _e2866328830_
                                                   _hd2866428833_
                                                   _tl2866528835_)))
                                            (___match3220432205_
                                             _e2866328830_
                                             _hd2866428833_
                                             _tl2866528835_)))))))
                        (_loop2870828971_
                         _target2870528942_
                         '()
                         '()
                         '()
                         '()))))
                   (___match3207032071_
                    (lambda (_e2866328830_
                             _hd2866428833_
                             _tl2866528835_
                             _e2866628838_
                             _hd2866728841_
                             _tl2866828843_)
                      (if (gx#stx-pair? _hd2866728841_)
                          (let ((_e2866928846_ (gx#stx-e _hd2866728841_)))
                            (let ((_tl2867128851_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2866928846_)))
                                  (_hd2867028849_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2866928846_))))
                              (if (gx#stx-pair? _tl2866828843_)
                                  (let ((_e2867228854_
                                         (gx#stx-e _tl2866828843_)))
                                    (let ((_tl2867428859_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2867228854_)))
                                          (_hd2867328857_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2867228854_))))
                                      (if (gx#stx-pair? _hd2867328857_)
                                          (let ((_e2867528862_
                                                 (gx#stx-e _hd2867328857_)))
                                            (let ((_tl2867728867_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2867528862_)))
                                                  (_hd2867628865_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2867528862_))))
                                              (if (gx#identifier?
                                                   _hd2867628865_)
                                                  (if (gx#stx-eq?
                                                       '%#call
                                                       _hd2867628865_)
                                                      (if (gx#stx-pair?
                                                           _tl2867728867_)
                                                          (let ((_e2867828870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2867728867_)))
                    (let ((_tl2868028875_
                           (let () (declare (not safe)) (##cdr _e2867828870_)))
                          (_hd2867928873_
                           (let ()
                             (declare (not safe))
                             (##car _e2867828870_))))
                      (if (gx#stx-pair? _hd2867928873_)
                          (let ((_e2868128878_ (gx#stx-e _hd2867928873_)))
                            (let ((_tl2868328883_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2868128878_)))
                                  (_hd2868228881_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2868128878_))))
                              (if (gx#identifier? _hd2868228881_)
                                  (if (gx#stx-eq? '%#ref _hd2868228881_)
                                      (if (gx#stx-pair? _tl2868328883_)
                                          (let ((_e2868428886_
                                                 (gx#stx-e _tl2868328883_)))
                                            (let ((_tl2868628891_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2868428886_)))
                                                  (_hd2868528889_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2868428886_))))
                                              (if (gx#stx-null? _tl2868628891_)
                                                  (if (gx#stx-pair?
                                                       _tl2868028875_)
                                                      (let ((_e2868728894_
                                                             (gx#stx-e
                                                              _tl2868028875_)))
                                                        (let ((_tl2868928899_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2868728894_)))
                      (_hd2868828897_
                       (let () (declare (not safe)) (##car _e2868728894_))))
                  (if (gx#stx-pair? _hd2868828897_)
                      (let ((_e2869028902_ (gx#stx-e _hd2868828897_)))
                        (let ((_tl2869228907_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2869028902_)))
                              (_hd2869128905_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2869028902_))))
                          (if (gx#identifier? _hd2869128905_)
                              (if (gx#stx-eq? '%#ref _hd2869128905_)
                                  (if (gx#stx-pair? _tl2869228907_)
                                      (let ((_e2869328910_
                                             (gx#stx-e _tl2869228907_)))
                                        (let ((_tl2869528915_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2869328910_)))
                                              (_hd2869428913_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2869328910_))))
                                          (if (gx#stx-null? _tl2869528915_)
                                              (if (gx#stx-pair? _tl2868928899_)
                                                  (let ((_e2869628918_
                                                         (gx#stx-e
                                                          _tl2868928899_)))
                                                    (let ((_tl2869828923_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2869628918_)))
                                                          (_hd2869728921_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2869628918_))))
                                                      (if (gx#stx-pair?
                                                           _hd2869728921_)
                                                          (let ((_e2869928926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2869728921_)))
                    (let ((_tl2870128931_
                           (let () (declare (not safe)) (##cdr _e2869928926_)))
                          (_hd2870028929_
                           (let ()
                             (declare (not safe))
                             (##car _e2869928926_))))
                      (if (gx#identifier? _hd2870028929_)
                          (if (gx#stx-eq? '%#ref _hd2870028929_)
                              (if (gx#stx-pair? _tl2870128931_)
                                  (let ((_e2870228934_
                                         (gx#stx-e _tl2870128931_)))
                                    (let ((_tl2870428939_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2870228934_)))
                                          (_hd2870328937_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2870228934_))))
                                      (if (gx#stx-null? _tl2870428939_)
                                          (if (gx#stx-pair/null?
                                               _tl2869828923_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2869828923_)
                                                        '1)
                                                  (let ((___splice3161731618_
                                                         (gx#syntax-split-splice
                                                          _tl2869828923_
                                                          '1)))
                                                    (let ((_tl2870728944_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3161731618_
                                                              '1)))
                                                          (_target2870528942_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3161731618_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _tl2870728944_)
                                                          (let ((_e2872028947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2870728944_)))
                    (let ((_tl2872228952_
                           (let () (declare (not safe)) (##cdr _e2872028947_)))
                          (_hd2872128950_
                           (let ()
                             (declare (not safe))
                             (##car _e2872028947_))))
                      (if (gx#stx-pair? _hd2872128950_)
                          (let ((_e2872328955_ (gx#stx-e _hd2872128950_)))
                            (let ((_tl2872528960_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2872328955_)))
                                  (_hd2872428958_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2872328955_))))
                              (if (gx#identifier? _hd2872428958_)
                                  (if (gx#stx-eq? '%#ref _hd2872428958_)
                                      (if (gx#stx-pair? _tl2872528960_)
                                          (let ((_e2872628963_
                                                 (gx#stx-e _tl2872528960_)))
                                            (let ((_tl2872828968_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2872628963_)))
                                                  (_hd2872728966_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2872628963_))))
                                              (if (gx#stx-null? _tl2872828968_)
                                                  (if (gx#stx-null?
                                                       _tl2872228952_)
                                                      (___match3219832199_
                                                       _e2866328830_
                                                       _hd2866428833_
                                                       _tl2866528835_
                                                       _e2866628838_
                                                       _hd2866728841_
                                                       _tl2866828843_
                                                       _e2866928846_
                                                       _hd2867028849_
                                                       _tl2867128851_
                                                       _e2867228854_
                                                       _hd2867328857_
                                                       _tl2867428859_
                                                       _e2867528862_
                                                       _hd2867628865_
                                                       _tl2867728867_
                                                       _e2867828870_
                                                       _hd2867928873_
                                                       _tl2868028875_
                                                       _e2868128878_
                                                       _hd2868228881_
                                                       _tl2868328883_
                                                       _e2868428886_
                                                       _hd2868528889_
                                                       _tl2868628891_
                                                       _e2868728894_
                                                       _hd2868828897_
                                                       _tl2868928899_
                                                       _e2869028902_
                                                       _hd2869128905_
                                                       _tl2869228907_
                                                       _e2869328910_
                                                       _hd2869428913_
                                                       _tl2869528915_
                                                       _e2869628918_
                                                       _hd2869728921_
                                                       _tl2869828923_
                                                       _e2869928926_
                                                       _hd2870028929_
                                                       _tl2870128931_
                                                       _e2870228934_
                                                       _hd2870328937_
                                                       _tl2870428939_
                                                       ___splice3161731618_
                                                       _target2870528942_
                                                       _tl2870728944_
                                                       _e2872028947_
                                                       _hd2872128950_
                                                       _tl2872228952_
                                                       _e2872328955_
                                                       _hd2872428958_
                                                       _tl2872528960_
                                                       _e2872628963_
                                                       _hd2872728966_
                                                       _tl2872828968_)
                                                      (___match3220432205_
                                                       _e2866328830_
                                                       _hd2866428833_
                                                       _tl2866528835_))
                                                  (___match3220432205_
                                                   _e2866328830_
                                                   _hd2866428833_
                                                   _tl2866528835_))))
                                          (___match3220432205_
                                           _e2866328830_
                                           _hd2866428833_
                                           _tl2866528835_))
                                      (___match3220432205_
                                       _e2866328830_
                                       _hd2866428833_
                                       _tl2866528835_))
                                  (___match3220432205_
                                   _e2866328830_
                                   _hd2866428833_
                                   _tl2866528835_))))
                          (___match3220432205_
                           _e2866328830_
                           _hd2866428833_
                           _tl2866528835_))))
                  (___match3220432205_
                   _e2866328830_
                   _hd2866428833_
                   _tl2866528835_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3220432205_
                                                   _e2866328830_
                                                   _hd2866428833_
                                                   _tl2866528835_))
                                              (___match3220432205_
                                               _e2866328830_
                                               _hd2866428833_
                                               _tl2866528835_))
                                          (___match3220432205_
                                           _e2866328830_
                                           _hd2866428833_
                                           _tl2866528835_))))
                                  (___match3220432205_
                                   _e2866328830_
                                   _hd2866428833_
                                   _tl2866528835_))
                              (___match3220432205_
                               _e2866328830_
                               _hd2866428833_
                               _tl2866528835_))
                          (___match3220432205_
                           _e2866328830_
                           _hd2866428833_
                           _tl2866528835_))))
                  (___match3220432205_
                   _e2866328830_
                   _hd2866428833_
                   _tl2866528835_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3220432205_
                                                   _e2866328830_
                                                   _hd2866428833_
                                                   _tl2866528835_))
                                              (___match3220432205_
                                               _e2866328830_
                                               _hd2866428833_
                                               _tl2866528835_))))
                                      (___match3220432205_
                                       _e2866328830_
                                       _hd2866428833_
                                       _tl2866528835_))
                                  (___match3220432205_
                                   _e2866328830_
                                   _hd2866428833_
                                   _tl2866528835_))
                              (___match3220432205_
                               _e2866328830_
                               _hd2866428833_
                               _tl2866528835_))))
                      (___match3220432205_
                       _e2866328830_
                       _hd2866428833_
                       _tl2866528835_))))
              (___match3220432205_
               _e2866328830_
               _hd2866428833_
               _tl2866528835_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3220432205_
                                                   _e2866328830_
                                                   _hd2866428833_
                                                   _tl2866528835_))))
                                          (___match3220432205_
                                           _e2866328830_
                                           _hd2866428833_
                                           _tl2866528835_))
                                      (___match3220432205_
                                       _e2866328830_
                                       _hd2866428833_
                                       _tl2866528835_))
                                  (___match3220432205_
                                   _e2866328830_
                                   _hd2866428833_
                                   _tl2866528835_))))
                          (___match3220432205_
                           _e2866328830_
                           _hd2866428833_
                           _tl2866528835_))))
                  (___match3220432205_
                   _e2866328830_
                   _hd2866428833_
                   _tl2866528835_))
              (___match3220432205_
               _e2866328830_
               _hd2866428833_
               _tl2866528835_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3220432205_
                                                   _e2866328830_
                                                   _hd2866428833_
                                                   _tl2866528835_))))
                                          (___match3220432205_
                                           _e2866328830_
                                           _hd2866428833_
                                           _tl2866528835_))))
                                  (___match3220432205_
                                   _e2866328830_
                                   _hd2866428833_
                                   _tl2866528835_))))
                          (___match3220432205_
                           _e2866328830_
                           _hd2866428833_
                           _tl2866528835_))))
                   (___match3205832059_
                    (lambda (_e2859629221_
                             _hd2859729224_
                             _tl2859829226_
                             _e2859929229_
                             _hd2860029232_
                             _tl2860129234_
                             _e2860229237_
                             _hd2860329240_
                             _tl2860429242_
                             _e2860529245_
                             _hd2860629248_
                             _tl2860729250_
                             _e2860829253_
                             _hd2860929256_
                             _tl2861029258_
                             _e2861129261_
                             _hd2861229264_
                             _tl2861329266_
                             _e2861429269_
                             _hd2861529272_
                             _tl2861629274_
                             _e2861729277_
                             _hd2861829280_
                             _tl2861929282_
                             _e2862029285_
                             _hd2862129288_
                             _tl2862229290_
                             _e2862329293_
                             _hd2862429296_
                             _tl2862529298_
                             _e2862629301_
                             _hd2862729304_
                             _tl2862829306_
                             _e2862929309_
                             _hd2863029312_
                             _tl2863129314_
                             _e2863229317_
                             _hd2863329320_
                             _tl2863429322_
                             _e2863529325_
                             _hd2863629328_
                             _tl2863729330_
                             _e2863829333_
                             _hd2863929336_
                             _tl2864029338_
                             _e2864129341_
                             _hd2864229344_
                             _tl2864329346_
                             _e2864429349_
                             _hd2864529352_
                             _tl2864629354_
                             _e2864729357_
                             _hd2864829360_
                             _tl2864929362_
                             _e2865029365_
                             _hd2865129368_
                             _tl2865229370_)
                      (let ((_L29373_ _hd2865129368_)
                            (_L29374_ _hd2864229344_)
                            (_L29375_ _hd2863329320_)
                            (_L29376_ _hd2862429296_)
                            (_L29377_ _hd2861529272_)
                            (_L29378_ _hd2860029232_))
                        (if (and (gx#identifier? _L29378_)
                                 (gxc#runtime-identifier=? _L29377_ 'apply)
                                 (gxc#runtime-identifier=?
                                  _L29376_
                                  'keyword-dispatch)
                                 (gx#free-identifier=? _L29378_ _L29373_))
                            (___kont3161331614_
                             _L29373_
                             _L29374_
                             _L29375_
                             _L29376_
                             _L29377_
                             _L29378_)
                            (___match3207032071_
                             _e2859629221_
                             _hd2859729224_
                             _tl2859829226_
                             _e2859929229_
                             _hd2860029232_
                             _tl2860129234_)))))
                   (___match3198231983_
                    (lambda (_e2859629221_
                             _hd2859729224_
                             _tl2859829226_
                             _e2859929229_
                             _hd2860029232_
                             _tl2860129234_
                             _e2860229237_
                             _hd2860329240_
                             _tl2860429242_
                             _e2860529245_
                             _hd2860629248_
                             _tl2860729250_
                             _e2860829253_
                             _hd2860929256_
                             _tl2861029258_
                             _e2861129261_
                             _hd2861229264_
                             _tl2861329266_
                             _e2861429269_
                             _hd2861529272_
                             _tl2861629274_
                             _e2861729277_
                             _hd2861829280_
                             _tl2861929282_
                             _e2862029285_
                             _hd2862129288_
                             _tl2862229290_
                             _e2862329293_
                             _hd2862429296_
                             _tl2862529298_)
                      (if (gx#stx-pair? _tl2861929282_)
                          (let ((_e2862629301_ (gx#stx-e _tl2861929282_)))
                            (let ((_tl2862829306_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2862629301_)))
                                  (_hd2862729304_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2862629301_))))
                              (if (gx#stx-pair? _hd2862729304_)
                                  (let ((_e2862929309_
                                         (gx#stx-e _hd2862729304_)))
                                    (let ((_tl2863129314_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2862929309_)))
                                          (_hd2863029312_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2862929309_))))
                                      (if (gx#identifier? _hd2863029312_)
                                          (if (gx#stx-eq?
                                               '%#quote
                                               _hd2863029312_)
                                              (if (gx#stx-pair? _tl2863129314_)
                                                  (let ((_e2863229317_
                                                         (gx#stx-e
                                                          _tl2863129314_)))
                                                    (let ((_tl2863429322_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2863229317_)))
                                                          (_hd2863329320_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2863229317_))))
                                                      (if (gx#stx-null?
                                                           _tl2863429322_)
                                                          (if (gx#stx-pair?
                                                               _tl2862829306_)
                                                              (let ((_e2863529325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2862829306_)))
                        (let ((_tl2863729330_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2863529325_)))
                              (_hd2863629328_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2863529325_))))
                          (if (gx#stx-pair? _hd2863629328_)
                              (let ((_e2863829333_ (gx#stx-e _hd2863629328_)))
                                (let ((_tl2864029338_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2863829333_)))
                                      (_hd2863929336_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2863829333_))))
                                  (if (gx#identifier? _hd2863929336_)
                                      (if (gx#stx-eq? '%#ref _hd2863929336_)
                                          (if (gx#stx-pair? _tl2864029338_)
                                              (let ((_e2864129341_
                                                     (gx#stx-e
                                                      _tl2864029338_)))
                                                (let ((_tl2864329346_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2864129341_)))
                                                      (_hd2864229344_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2864129341_))))
                                                  (if (gx#stx-null?
                                                       _tl2864329346_)
                                                      (if (gx#stx-pair?
                                                           _tl2863729330_)
                                                          (let ((_e2864429349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2863729330_)))
                    (let ((_tl2864629354_
                           (let () (declare (not safe)) (##cdr _e2864429349_)))
                          (_hd2864529352_
                           (let ()
                             (declare (not safe))
                             (##car _e2864429349_))))
                      (if (gx#stx-pair? _hd2864529352_)
                          (let ((_e2864729357_ (gx#stx-e _hd2864529352_)))
                            (let ((_tl2864929362_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2864729357_)))
                                  (_hd2864829360_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2864729357_))))
                              (if (gx#identifier? _hd2864829360_)
                                  (if (gx#stx-eq? '%#ref _hd2864829360_)
                                      (if (gx#stx-pair? _tl2864929362_)
                                          (let ((_e2865029365_
                                                 (gx#stx-e _tl2864929362_)))
                                            (let ((_tl2865229370_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2865029365_)))
                                                  (_hd2865129368_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2865029365_))))
                                              (if (gx#stx-null? _tl2865229370_)
                                                  (if (gx#stx-null?
                                                       _tl2864629354_)
                                                      (if (gx#stx-null?
                                                           _tl2860429242_)
                                                          (___match3205832059_
                                                           _e2859629221_
                                                           _hd2859729224_
                                                           _tl2859829226_
                                                           _e2859929229_
                                                           _hd2860029232_
                                                           _tl2860129234_
                                                           _e2860229237_
                                                           _hd2860329240_
                                                           _tl2860429242_
                                                           _e2860529245_
                                                           _hd2860629248_
                                                           _tl2860729250_
                                                           _e2860829253_
                                                           _hd2860929256_
                                                           _tl2861029258_
                                                           _e2861129261_
                                                           _hd2861229264_
                                                           _tl2861329266_
                                                           _e2861429269_
                                                           _hd2861529272_
                                                           _tl2861629274_
                                                           _e2861729277_
                                                           _hd2861829280_
                                                           _tl2861929282_
                                                           _e2862029285_
                                                           _hd2862129288_
                                                           _tl2862229290_
                                                           _e2862329293_
                                                           _hd2862429296_
                                                           _tl2862529298_
                                                           _e2862629301_
                                                           _hd2862729304_
                                                           _tl2862829306_
                                                           _e2862929309_
                                                           _hd2863029312_
                                                           _tl2863129314_
                                                           _e2863229317_
                                                           _hd2863329320_
                                                           _tl2863429322_
                                                           _e2863529325_
                                                           _hd2863629328_
                                                           _tl2863729330_
                                                           _e2863829333_
                                                           _hd2863929336_
                                                           _tl2864029338_
                                                           _e2864129341_
                                                           _hd2864229344_
                                                           _tl2864329346_
                                                           _e2864429349_
                                                           _hd2864529352_
                                                           _tl2864629354_
                                                           _e2864729357_
                                                           _hd2864829360_
                                                           _tl2864929362_
                                                           _e2865029365_
                                                           _hd2865129368_
                                                           _tl2865229370_)
                                                          (___match3207032071_
                                                           _e2859629221_
                                                           _hd2859729224_
                                                           _tl2859829226_
                                                           _e2859929229_
                                                           _hd2860029232_
                                                           _tl2860129234_))
                                                      (___match3207032071_
                                                       _e2859629221_
                                                       _hd2859729224_
                                                       _tl2859829226_
                                                       _e2859929229_
                                                       _hd2860029232_
                                                       _tl2860129234_))
                                                  (___match3207032071_
                                                   _e2859629221_
                                                   _hd2859729224_
                                                   _tl2859829226_
                                                   _e2859929229_
                                                   _hd2860029232_
                                                   _tl2860129234_))))
                                          (___match3207032071_
                                           _e2859629221_
                                           _hd2859729224_
                                           _tl2859829226_
                                           _e2859929229_
                                           _hd2860029232_
                                           _tl2860129234_))
                                      (___match3207032071_
                                       _e2859629221_
                                       _hd2859729224_
                                       _tl2859829226_
                                       _e2859929229_
                                       _hd2860029232_
                                       _tl2860129234_))
                                  (___match3207032071_
                                   _e2859629221_
                                   _hd2859729224_
                                   _tl2859829226_
                                   _e2859929229_
                                   _hd2860029232_
                                   _tl2860129234_))))
                          (___match3207032071_
                           _e2859629221_
                           _hd2859729224_
                           _tl2859829226_
                           _e2859929229_
                           _hd2860029232_
                           _tl2860129234_))))
                  (___match3207032071_
                   _e2859629221_
                   _hd2859729224_
                   _tl2859829226_
                   _e2859929229_
                   _hd2860029232_
                   _tl2860129234_))
              (___match3207032071_
               _e2859629221_
               _hd2859729224_
               _tl2859829226_
               _e2859929229_
               _hd2860029232_
               _tl2860129234_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match3207032071_
                                               _e2859629221_
                                               _hd2859729224_
                                               _tl2859829226_
                                               _e2859929229_
                                               _hd2860029232_
                                               _tl2860129234_))
                                          (___match3207032071_
                                           _e2859629221_
                                           _hd2859729224_
                                           _tl2859829226_
                                           _e2859929229_
                                           _hd2860029232_
                                           _tl2860129234_))
                                      (___match3207032071_
                                       _e2859629221_
                                       _hd2859729224_
                                       _tl2859829226_
                                       _e2859929229_
                                       _hd2860029232_
                                       _tl2860129234_))))
                              (___match3207032071_
                               _e2859629221_
                               _hd2859729224_
                               _tl2859829226_
                               _e2859929229_
                               _hd2860029232_
                               _tl2860129234_))))
                      (___match3207032071_
                       _e2859629221_
                       _hd2859729224_
                       _tl2859829226_
                       _e2859929229_
                       _hd2860029232_
                       _tl2860129234_))
                  (___match3207032071_
                   _e2859629221_
                   _hd2859729224_
                   _tl2859829226_
                   _e2859929229_
                   _hd2860029232_
                   _tl2860129234_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3207032071_
                                                   _e2859629221_
                                                   _hd2859729224_
                                                   _tl2859829226_
                                                   _e2859929229_
                                                   _hd2860029232_
                                                   _tl2860129234_))
                                              (___match3207032071_
                                               _e2859629221_
                                               _hd2859729224_
                                               _tl2859829226_
                                               _e2859929229_
                                               _hd2860029232_
                                               _tl2860129234_))
                                          (___match3207032071_
                                           _e2859629221_
                                           _hd2859729224_
                                           _tl2859829226_
                                           _e2859929229_
                                           _hd2860029232_
                                           _tl2860129234_))))
                                  (___match3207032071_
                                   _e2859629221_
                                   _hd2859729224_
                                   _tl2859829226_
                                   _e2859929229_
                                   _hd2860029232_
                                   _tl2860129234_))))
                          (___match3207032071_
                           _e2859629221_
                           _hd2859729224_
                           _tl2859829226_
                           _e2859929229_
                           _hd2860029232_
                           _tl2860129234_))))
                   (___match3191831919_
                    (lambda (_e2859629221_
                             _hd2859729224_
                             _tl2859829226_
                             _e2859929229_
                             _hd2860029232_
                             _tl2860129234_)
                      (if (gx#stx-pair? _tl2860129234_)
                          (let ((_e2860229237_ (gx#stx-e _tl2860129234_)))
                            (let ((_tl2860429242_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2860229237_)))
                                  (_hd2860329240_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2860229237_))))
                              (if (gx#stx-pair? _hd2860329240_)
                                  (let ((_e2860529245_
                                         (gx#stx-e _hd2860329240_)))
                                    (let ((_tl2860729250_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2860529245_)))
                                          (_hd2860629248_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2860529245_))))
                                      (if (gx#identifier? _hd2860629248_)
                                          (if (gx#stx-eq?
                                               '%#call
                                               _hd2860629248_)
                                              (if (gx#stx-pair? _tl2860729250_)
                                                  (let ((_e2860829253_
                                                         (gx#stx-e
                                                          _tl2860729250_)))
                                                    (let ((_tl2861029258_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2860829253_)))
                                                          (_hd2860929256_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2860829253_))))
                                                      (if (gx#stx-pair?
                                                           _hd2860929256_)
                                                          (let ((_e2861129261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2860929256_)))
                    (let ((_tl2861329266_
                           (let () (declare (not safe)) (##cdr _e2861129261_)))
                          (_hd2861229264_
                           (let ()
                             (declare (not safe))
                             (##car _e2861129261_))))
                      (if (gx#identifier? _hd2861229264_)
                          (if (gx#stx-eq? '%#ref _hd2861229264_)
                              (if (gx#stx-pair? _tl2861329266_)
                                  (let ((_e2861429269_
                                         (gx#stx-e _tl2861329266_)))
                                    (let ((_tl2861629274_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2861429269_)))
                                          (_hd2861529272_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2861429269_))))
                                      (if (gx#stx-null? _tl2861629274_)
                                          (if (gx#stx-pair? _tl2861029258_)
                                              (let ((_e2861729277_
                                                     (gx#stx-e
                                                      _tl2861029258_)))
                                                (let ((_tl2861929282_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2861729277_)))
                                                      (_hd2861829280_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2861729277_))))
                                                  (if (gx#stx-pair?
                                                       _hd2861829280_)
                                                      (let ((_e2862029285_
                                                             (gx#stx-e
                                                              _hd2861829280_)))
                                                        (let ((_tl2862229290_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2862029285_)))
                      (_hd2862129288_
                       (let () (declare (not safe)) (##car _e2862029285_))))
                  (if (gx#identifier? _hd2862129288_)
                      (if (gx#stx-eq? '%#ref _hd2862129288_)
                          (if (gx#stx-pair? _tl2862229290_)
                              (let ((_e2862329293_ (gx#stx-e _tl2862229290_)))
                                (let ((_tl2862529298_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2862329293_)))
                                      (_hd2862429296_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2862329293_))))
                                  (if (gx#stx-null? _tl2862529298_)
                                      (if (gx#stx-pair? _tl2861929282_)
                                          (let ((_e2862629301_
                                                 (gx#stx-e _tl2861929282_)))
                                            (let ((_tl2862829306_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2862629301_)))
                                                  (_hd2862729304_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2862629301_))))
                                              (if (gx#stx-pair? _hd2862729304_)
                                                  (let ((_e2862929309_
                                                         (gx#stx-e
                                                          _hd2862729304_)))
                                                    (let ((_tl2863129314_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2862929309_)))
                                                          (_hd2863029312_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2862929309_))))
                                                      (if (gx#identifier?
                                                           _hd2863029312_)
                                                          (if (gx#stx-eq?
                                                               '%#quote
                                                               _hd2863029312_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2863129314_)
                          (let ((_e2863229317_ (gx#stx-e _tl2863129314_)))
                            (let ((_tl2863429322_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2863229317_)))
                                  (_hd2863329320_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2863229317_))))
                              (if (gx#stx-null? _tl2863429322_)
                                  (if (gx#stx-pair? _tl2862829306_)
                                      (let ((_e2863529325_
                                             (gx#stx-e _tl2862829306_)))
                                        (let ((_tl2863729330_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2863529325_)))
                                              (_hd2863629328_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2863529325_))))
                                          (if (gx#stx-pair? _hd2863629328_)
                                              (let ((_e2863829333_
                                                     (gx#stx-e
                                                      _hd2863629328_)))
                                                (let ((_tl2864029338_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2863829333_)))
                                                      (_hd2863929336_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2863829333_))))
                                                  (if (gx#identifier?
                                                       _hd2863929336_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd2863929336_)
                                                          (if (gx#stx-pair?
                                                               _tl2864029338_)
                                                              (let ((_e2864129341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2864029338_)))
                        (let ((_tl2864329346_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2864129341_)))
                              (_hd2864229344_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2864129341_))))
                          (if (gx#stx-null? _tl2864329346_)
                              (if (gx#stx-pair? _tl2863729330_)
                                  (let ((_e2864429349_
                                         (gx#stx-e _tl2863729330_)))
                                    (let ((_tl2864629354_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2864429349_)))
                                          (_hd2864529352_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2864429349_))))
                                      (if (gx#stx-pair? _hd2864529352_)
                                          (let ((_e2864729357_
                                                 (gx#stx-e _hd2864529352_)))
                                            (let ((_tl2864929362_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2864729357_)))
                                                  (_hd2864829360_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2864729357_))))
                                              (if (gx#identifier?
                                                   _hd2864829360_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2864829360_)
                                                      (if (gx#stx-pair?
                                                           _tl2864929362_)
                                                          (let ((_e2865029365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2864929362_)))
                    (let ((_tl2865229370_
                           (let () (declare (not safe)) (##cdr _e2865029365_)))
                          (_hd2865129368_
                           (let ()
                             (declare (not safe))
                             (##car _e2865029365_))))
                      (if (gx#stx-null? _tl2865229370_)
                          (if (gx#stx-null? _tl2864629354_)
                              (if (gx#stx-null? _tl2860429242_)
                                  (___match3205832059_
                                   _e2859629221_
                                   _hd2859729224_
                                   _tl2859829226_
                                   _e2859929229_
                                   _hd2860029232_
                                   _tl2860129234_
                                   _e2860229237_
                                   _hd2860329240_
                                   _tl2860429242_
                                   _e2860529245_
                                   _hd2860629248_
                                   _tl2860729250_
                                   _e2860829253_
                                   _hd2860929256_
                                   _tl2861029258_
                                   _e2861129261_
                                   _hd2861229264_
                                   _tl2861329266_
                                   _e2861429269_
                                   _hd2861529272_
                                   _tl2861629274_
                                   _e2861729277_
                                   _hd2861829280_
                                   _tl2861929282_
                                   _e2862029285_
                                   _hd2862129288_
                                   _tl2862229290_
                                   _e2862329293_
                                   _hd2862429296_
                                   _tl2862529298_
                                   _e2862629301_
                                   _hd2862729304_
                                   _tl2862829306_
                                   _e2862929309_
                                   _hd2863029312_
                                   _tl2863129314_
                                   _e2863229317_
                                   _hd2863329320_
                                   _tl2863429322_
                                   _e2863529325_
                                   _hd2863629328_
                                   _tl2863729330_
                                   _e2863829333_
                                   _hd2863929336_
                                   _tl2864029338_
                                   _e2864129341_
                                   _hd2864229344_
                                   _tl2864329346_
                                   _e2864429349_
                                   _hd2864529352_
                                   _tl2864629354_
                                   _e2864729357_
                                   _hd2864829360_
                                   _tl2864929362_
                                   _e2865029365_
                                   _hd2865129368_
                                   _tl2865229370_)
                                  (___match3207032071_
                                   _e2859629221_
                                   _hd2859729224_
                                   _tl2859829226_
                                   _e2859929229_
                                   _hd2860029232_
                                   _tl2860129234_))
                              (___match3207032071_
                               _e2859629221_
                               _hd2859729224_
                               _tl2859829226_
                               _e2859929229_
                               _hd2860029232_
                               _tl2860129234_))
                          (___match3207032071_
                           _e2859629221_
                           _hd2859729224_
                           _tl2859829226_
                           _e2859929229_
                           _hd2860029232_
                           _tl2860129234_))))
                  (___match3207032071_
                   _e2859629221_
                   _hd2859729224_
                   _tl2859829226_
                   _e2859929229_
                   _hd2860029232_
                   _tl2860129234_))
              (___match3207032071_
               _e2859629221_
               _hd2859729224_
               _tl2859829226_
               _e2859929229_
               _hd2860029232_
               _tl2860129234_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3207032071_
                                                   _e2859629221_
                                                   _hd2859729224_
                                                   _tl2859829226_
                                                   _e2859929229_
                                                   _hd2860029232_
                                                   _tl2860129234_))))
                                          (___match3207032071_
                                           _e2859629221_
                                           _hd2859729224_
                                           _tl2859829226_
                                           _e2859929229_
                                           _hd2860029232_
                                           _tl2860129234_))))
                                  (___match3207032071_
                                   _e2859629221_
                                   _hd2859729224_
                                   _tl2859829226_
                                   _e2859929229_
                                   _hd2860029232_
                                   _tl2860129234_))
                              (___match3207032071_
                               _e2859629221_
                               _hd2859729224_
                               _tl2859829226_
                               _e2859929229_
                               _hd2860029232_
                               _tl2860129234_))))
                      (___match3207032071_
                       _e2859629221_
                       _hd2859729224_
                       _tl2859829226_
                       _e2859929229_
                       _hd2860029232_
                       _tl2860129234_))
                  (___match3207032071_
                   _e2859629221_
                   _hd2859729224_
                   _tl2859829226_
                   _e2859929229_
                   _hd2860029232_
                   _tl2860129234_))
              (___match3207032071_
               _e2859629221_
               _hd2859729224_
               _tl2859829226_
               _e2859929229_
               _hd2860029232_
               _tl2860129234_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match3207032071_
                                               _e2859629221_
                                               _hd2859729224_
                                               _tl2859829226_
                                               _e2859929229_
                                               _hd2860029232_
                                               _tl2860129234_))))
                                      (___match3207032071_
                                       _e2859629221_
                                       _hd2859729224_
                                       _tl2859829226_
                                       _e2859929229_
                                       _hd2860029232_
                                       _tl2860129234_))
                                  (___match3207032071_
                                   _e2859629221_
                                   _hd2859729224_
                                   _tl2859829226_
                                   _e2859929229_
                                   _hd2860029232_
                                   _tl2860129234_))))
                          (___match3207032071_
                           _e2859629221_
                           _hd2859729224_
                           _tl2859829226_
                           _e2859929229_
                           _hd2860029232_
                           _tl2860129234_))
                      (___match3207032071_
                       _e2859629221_
                       _hd2859729224_
                       _tl2859829226_
                       _e2859929229_
                       _hd2860029232_
                       _tl2860129234_))
                  (___match3207032071_
                   _e2859629221_
                   _hd2859729224_
                   _tl2859829226_
                   _e2859929229_
                   _hd2860029232_
                   _tl2860129234_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3207032071_
                                                   _e2859629221_
                                                   _hd2859729224_
                                                   _tl2859829226_
                                                   _e2859929229_
                                                   _hd2860029232_
                                                   _tl2860129234_))))
                                          (___match3207032071_
                                           _e2859629221_
                                           _hd2859729224_
                                           _tl2859829226_
                                           _e2859929229_
                                           _hd2860029232_
                                           _tl2860129234_))
                                      (___match3207032071_
                                       _e2859629221_
                                       _hd2859729224_
                                       _tl2859829226_
                                       _e2859929229_
                                       _hd2860029232_
                                       _tl2860129234_))))
                              (___match3207032071_
                               _e2859629221_
                               _hd2859729224_
                               _tl2859829226_
                               _e2859929229_
                               _hd2860029232_
                               _tl2860129234_))
                          (___match3207032071_
                           _e2859629221_
                           _hd2859729224_
                           _tl2859829226_
                           _e2859929229_
                           _hd2860029232_
                           _tl2860129234_))
                      (___match3207032071_
                       _e2859629221_
                       _hd2859729224_
                       _tl2859829226_
                       _e2859929229_
                       _hd2860029232_
                       _tl2860129234_))))
              (___match3207032071_
               _e2859629221_
               _hd2859729224_
               _tl2859829226_
               _e2859929229_
               _hd2860029232_
               _tl2860129234_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match3207032071_
                                               _e2859629221_
                                               _hd2859729224_
                                               _tl2859829226_
                                               _e2859929229_
                                               _hd2860029232_
                                               _tl2860129234_))
                                          (___match3207032071_
                                           _e2859629221_
                                           _hd2859729224_
                                           _tl2859829226_
                                           _e2859929229_
                                           _hd2860029232_
                                           _tl2860129234_))))
                                  (___match3207032071_
                                   _e2859629221_
                                   _hd2859729224_
                                   _tl2859829226_
                                   _e2859929229_
                                   _hd2860029232_
                                   _tl2860129234_))
                              (___match3207032071_
                               _e2859629221_
                               _hd2859729224_
                               _tl2859829226_
                               _e2859929229_
                               _hd2860029232_
                               _tl2860129234_))
                          (___match3207032071_
                           _e2859629221_
                           _hd2859729224_
                           _tl2859829226_
                           _e2859929229_
                           _hd2860029232_
                           _tl2860129234_))))
                  (___match3207032071_
                   _e2859629221_
                   _hd2859729224_
                   _tl2859829226_
                   _e2859929229_
                   _hd2860029232_
                   _tl2860129234_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3207032071_
                                                   _e2859629221_
                                                   _hd2859729224_
                                                   _tl2859829226_
                                                   _e2859929229_
                                                   _hd2860029232_
                                                   _tl2860129234_))
                                              (___match3207032071_
                                               _e2859629221_
                                               _hd2859729224_
                                               _tl2859829226_
                                               _e2859929229_
                                               _hd2860029232_
                                               _tl2860129234_))
                                          (___match3207032071_
                                           _e2859629221_
                                           _hd2859729224_
                                           _tl2859829226_
                                           _e2859929229_
                                           _hd2860029232_
                                           _tl2860129234_))))
                                  (___match3207032071_
                                   _e2859629221_
                                   _hd2859729224_
                                   _tl2859829226_
                                   _e2859929229_
                                   _hd2860029232_
                                   _tl2860129234_))))
                          (___match3207032071_
                           _e2859629221_
                           _hd2859729224_
                           _tl2859829226_
                           _e2859929229_
                           _hd2860029232_
                           _tl2860129234_))))
                   (___match3190631907_
                    (lambda (_e2853629438_
                             _hd2853729441_
                             _tl2853829443_
                             _e2853929446_
                             _hd2854029449_
                             _tl2854129451_
                             ___splice3160931610_
                             _target2854229454_
                             _tl2854429456_)
                      (letrec ((_loop2854529459_
                                (lambda (_hd2854329462_ _arg2854929464_)
                                  (if (gx#stx-pair? _hd2854329462_)
                                      (let ((_e2854629467_
                                             (gx#stx-e _hd2854329462_)))
                                        (let ((_lp-tl2854829472_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2854629467_)))
                                              (_lp-hd2854729470_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2854629467_))))
                                          (_loop2854529459_
                                           _lp-tl2854829472_
                                           (cons _lp-hd2854729470_
                                                 _arg2854929464_))))
                                      (let ((_arg2855029475_
                                             (reverse _arg2854929464_)))
                                        (if (gx#stx-pair? _tl2854129451_)
                                            (let ((_e2855129478_
                                                   (gx#stx-e _tl2854129451_)))
                                              (let ((_tl2855329483_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2855129478_)))
                                                    (_hd2855229481_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2855129478_))))
                                                (if (gx#stx-pair?
                                                     _hd2855229481_)
                                                    (let ((_e2855429486_
                                                           (gx#stx-e
                                                            _hd2855229481_)))
                                                      (let ((_tl2855629491_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2855429486_)))
                    (_hd2855529489_
                     (let () (declare (not safe)) (##car _e2855429486_))))
                (if (gx#identifier? _hd2855529489_)
                    (if (gx#stx-eq? '%#call _hd2855529489_)
                        (if (gx#stx-pair? _tl2855629491_)
                            (let ((_e2855729494_ (gx#stx-e _tl2855629491_)))
                              (let ((_tl2855929499_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2855729494_)))
                                    (_hd2855829497_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2855729494_))))
                                (if (gx#stx-pair? _hd2855829497_)
                                    (let ((_e2856029502_
                                           (gx#stx-e _hd2855829497_)))
                                      (let ((_tl2856229507_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2856029502_)))
                                            (_hd2856129505_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2856029502_))))
                                        (if (gx#identifier? _hd2856129505_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2856129505_)
                                                (if (gx#stx-pair?
                                                     _tl2856229507_)
                                                    (let ((_e2856329510_
                                                           (gx#stx-e
                                                            _tl2856229507_)))
                                                      (let ((_tl2856529515_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2856329510_)))
                    (_hd2856429513_
                     (let () (declare (not safe)) (##car _e2856329510_))))
                (if (gx#stx-null? _tl2856529515_)
                    (if (gx#stx-pair? _tl2855929499_)
                        (let ((_e2856629518_ (gx#stx-e _tl2855929499_)))
                          (let ((_tl2856829523_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2856629518_)))
                                (_hd2856729521_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2856629518_))))
                            (if (gx#stx-pair? _hd2856729521_)
                                (let ((_e2856929526_
                                       (gx#stx-e _hd2856729521_)))
                                  (let ((_tl2857129531_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2856929526_)))
                                        (_hd2857029529_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2856929526_))))
                                    (if (gx#identifier? _hd2857029529_)
                                        (if (gx#stx-eq? '%#ref _hd2857029529_)
                                            (if (gx#stx-pair? _tl2857129531_)
                                                (let ((_e2857229534_
                                                       (gx#stx-e
                                                        _tl2857129531_)))
                                                  (let ((_tl2857429539_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2857229534_)))
                                                        (_hd2857329537_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2857229534_))))
                                                    (if (gx#stx-null?
                                                         _tl2857429539_)
                                                        (if (gx#stx-pair/null?
                                                             _tl2856829523_)
                                                            (let ((___splice3161131612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _tl2856829523_ '0)))
                      (let ((_tl2857729544_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice3161131612_ '1)))
                            (_target2857529542_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice3161131612_ '0))))
                        (if (gx#stx-null? _tl2857729544_)
                            (letrec ((_loop2857829547_
                                      (lambda (_hd2857629550_ _xarg2858229552_)
                                        (if (gx#stx-pair? _hd2857629550_)
                                            (let ((_e2857929555_
                                                   (gx#stx-e _hd2857629550_)))
                                              (let ((_lp-tl2858129560_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2857929555_)))
                                                    (_lp-hd2858029558_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2857929555_))))
                                                (if (gx#stx-pair?
                                                     _lp-hd2858029558_)
                                                    (let ((_e2858429563_
                                                           (gx#stx-e
                                                            _lp-hd2858029558_)))
                                                      (let ((_tl2858629568_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2858429563_)))
                    (_hd2858529566_
                     (let () (declare (not safe)) (##car _e2858429563_))))
                (if (gx#identifier? _hd2858529566_)
                    (if (gx#stx-eq? '%#ref _hd2858529566_)
                        (if (gx#stx-pair? _tl2858629568_)
                            (let ((_e2858729571_ (gx#stx-e _tl2858629568_)))
                              (let ((_tl2858929576_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2858729571_)))
                                    (_hd2858829574_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2858729571_))))
                                (if (gx#stx-null? _tl2858929576_)
                                    (_loop2857829547_
                                     _lp-tl2858129560_
                                     (cons _hd2858829574_ _xarg2858229552_))
                                    (___match3198231983_
                                     _e2853629438_
                                     _hd2853729441_
                                     _tl2853829443_
                                     _e2853929446_
                                     _hd2854029449_
                                     _tl2854129451_
                                     _e2855129478_
                                     _hd2855229481_
                                     _tl2855329483_
                                     _e2855429486_
                                     _hd2855529489_
                                     _tl2855629491_
                                     _e2855729494_
                                     _hd2855829497_
                                     _tl2855929499_
                                     _e2856029502_
                                     _hd2856129505_
                                     _tl2856229507_
                                     _e2856329510_
                                     _hd2856429513_
                                     _tl2856529515_
                                     _e2856629518_
                                     _hd2856729521_
                                     _tl2856829523_
                                     _e2856929526_
                                     _hd2857029529_
                                     _tl2857129531_
                                     _e2857229534_
                                     _hd2857329537_
                                     _tl2857429539_))))
                            (___match3198231983_
                             _e2853629438_
                             _hd2853729441_
                             _tl2853829443_
                             _e2853929446_
                             _hd2854029449_
                             _tl2854129451_
                             _e2855129478_
                             _hd2855229481_
                             _tl2855329483_
                             _e2855429486_
                             _hd2855529489_
                             _tl2855629491_
                             _e2855729494_
                             _hd2855829497_
                             _tl2855929499_
                             _e2856029502_
                             _hd2856129505_
                             _tl2856229507_
                             _e2856329510_
                             _hd2856429513_
                             _tl2856529515_
                             _e2856629518_
                             _hd2856729521_
                             _tl2856829523_
                             _e2856929526_
                             _hd2857029529_
                             _tl2857129531_
                             _e2857229534_
                             _hd2857329537_
                             _tl2857429539_))
                        (___match3198231983_
                         _e2853629438_
                         _hd2853729441_
                         _tl2853829443_
                         _e2853929446_
                         _hd2854029449_
                         _tl2854129451_
                         _e2855129478_
                         _hd2855229481_
                         _tl2855329483_
                         _e2855429486_
                         _hd2855529489_
                         _tl2855629491_
                         _e2855729494_
                         _hd2855829497_
                         _tl2855929499_
                         _e2856029502_
                         _hd2856129505_
                         _tl2856229507_
                         _e2856329510_
                         _hd2856429513_
                         _tl2856529515_
                         _e2856629518_
                         _hd2856729521_
                         _tl2856829523_
                         _e2856929526_
                         _hd2857029529_
                         _tl2857129531_
                         _e2857229534_
                         _hd2857329537_
                         _tl2857429539_))
                    (___match3198231983_
                     _e2853629438_
                     _hd2853729441_
                     _tl2853829443_
                     _e2853929446_
                     _hd2854029449_
                     _tl2854129451_
                     _e2855129478_
                     _hd2855229481_
                     _tl2855329483_
                     _e2855429486_
                     _hd2855529489_
                     _tl2855629491_
                     _e2855729494_
                     _hd2855829497_
                     _tl2855929499_
                     _e2856029502_
                     _hd2856129505_
                     _tl2856229507_
                     _e2856329510_
                     _hd2856429513_
                     _tl2856529515_
                     _e2856629518_
                     _hd2856729521_
                     _tl2856829523_
                     _e2856929526_
                     _hd2857029529_
                     _tl2857129531_
                     _e2857229534_
                     _hd2857329537_
                     _tl2857429539_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match3198231983_
                                                     _e2853629438_
                                                     _hd2853729441_
                                                     _tl2853829443_
                                                     _e2853929446_
                                                     _hd2854029449_
                                                     _tl2854129451_
                                                     _e2855129478_
                                                     _hd2855229481_
                                                     _tl2855329483_
                                                     _e2855429486_
                                                     _hd2855529489_
                                                     _tl2855629491_
                                                     _e2855729494_
                                                     _hd2855829497_
                                                     _tl2855929499_
                                                     _e2856029502_
                                                     _hd2856129505_
                                                     _tl2856229507_
                                                     _e2856329510_
                                                     _hd2856429513_
                                                     _tl2856529515_
                                                     _e2856629518_
                                                     _hd2856729521_
                                                     _tl2856829523_
                                                     _e2856929526_
                                                     _hd2857029529_
                                                     _tl2857129531_
                                                     _e2857229534_
                                                     _hd2857329537_
                                                     _tl2857429539_))))
                                            (let ((_xarg2858329579_
                                                   (reverse _xarg2858229552_)))
                                              (if (gx#stx-null? _tl2855329483_)
                                                  (let ((_L29582_
                                                         _xarg2858329579_)
                                                        (_L29583_
                                                         _hd2857329537_)
                                                        (_L29584_
                                                         _hd2856429513_)
                                                        (_L29585_
                                                         _arg2855029475_))
                                                    (if (and (gx#identifier-list?
                                                              (foldr1 (lambda (_g2962229625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2962329627_)
                                (cons _g2962229625_ _g2962329627_))
                              '()
                              _L29585_))
                     (gxc#runtime-identifier=? _L29584_ 'make-struct-instance)
                     (fx= (length (foldr1 (lambda (_g2962929632_ _g2963029634_)
                                            (cons _g2962929632_ _g2963029634_))
                                          '()
                                          _L29585_))
                          (length (foldr1 (lambda (_g2963629639_ _g2963729641_)
                                            (cons _g2963629639_ _g2963729641_))
                                          '()
                                          _L29582_)))
                     (andmap2 gx#free-identifier=?
                              (foldr1 (lambda (_g2964329646_ _g2964429648_)
                                        (cons _g2964329646_ _g2964429648_))
                                      '()
                                      _L29585_)
                              (foldr1 (lambda (_g2965029653_ _g2965129655_)
                                        (cons _g2965029653_ _g2965129655_))
                                      '()
                                      _L29582_)))
                (___kont3160731608_ _L29582_ _L29583_ _L29584_ _L29585_)
                (___match3198231983_
                 _e2853629438_
                 _hd2853729441_
                 _tl2853829443_
                 _e2853929446_
                 _hd2854029449_
                 _tl2854129451_
                 _e2855129478_
                 _hd2855229481_
                 _tl2855329483_
                 _e2855429486_
                 _hd2855529489_
                 _tl2855629491_
                 _e2855729494_
                 _hd2855829497_
                 _tl2855929499_
                 _e2856029502_
                 _hd2856129505_
                 _tl2856229507_
                 _e2856329510_
                 _hd2856429513_
                 _tl2856529515_
                 _e2856629518_
                 _hd2856729521_
                 _tl2856829523_
                 _e2856929526_
                 _hd2857029529_
                 _tl2857129531_
                 _e2857229534_
                 _hd2857329537_
                 _tl2857429539_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3198231983_
                                                   _e2853629438_
                                                   _hd2853729441_
                                                   _tl2853829443_
                                                   _e2853929446_
                                                   _hd2854029449_
                                                   _tl2854129451_
                                                   _e2855129478_
                                                   _hd2855229481_
                                                   _tl2855329483_
                                                   _e2855429486_
                                                   _hd2855529489_
                                                   _tl2855629491_
                                                   _e2855729494_
                                                   _hd2855829497_
                                                   _tl2855929499_
                                                   _e2856029502_
                                                   _hd2856129505_
                                                   _tl2856229507_
                                                   _e2856329510_
                                                   _hd2856429513_
                                                   _tl2856529515_
                                                   _e2856629518_
                                                   _hd2856729521_
                                                   _tl2856829523_
                                                   _e2856929526_
                                                   _hd2857029529_
                                                   _tl2857129531_
                                                   _e2857229534_
                                                   _hd2857329537_
                                                   _tl2857429539_)))))))
                              (_loop2857829547_ _target2857529542_ '()))
                            (___match3198231983_
                             _e2853629438_
                             _hd2853729441_
                             _tl2853829443_
                             _e2853929446_
                             _hd2854029449_
                             _tl2854129451_
                             _e2855129478_
                             _hd2855229481_
                             _tl2855329483_
                             _e2855429486_
                             _hd2855529489_
                             _tl2855629491_
                             _e2855729494_
                             _hd2855829497_
                             _tl2855929499_
                             _e2856029502_
                             _hd2856129505_
                             _tl2856229507_
                             _e2856329510_
                             _hd2856429513_
                             _tl2856529515_
                             _e2856629518_
                             _hd2856729521_
                             _tl2856829523_
                             _e2856929526_
                             _hd2857029529_
                             _tl2857129531_
                             _e2857229534_
                             _hd2857329537_
                             _tl2857429539_))))
                    (___match3198231983_
                     _e2853629438_
                     _hd2853729441_
                     _tl2853829443_
                     _e2853929446_
                     _hd2854029449_
                     _tl2854129451_
                     _e2855129478_
                     _hd2855229481_
                     _tl2855329483_
                     _e2855429486_
                     _hd2855529489_
                     _tl2855629491_
                     _e2855729494_
                     _hd2855829497_
                     _tl2855929499_
                     _e2856029502_
                     _hd2856129505_
                     _tl2856229507_
                     _e2856329510_
                     _hd2856429513_
                     _tl2856529515_
                     _e2856629518_
                     _hd2856729521_
                     _tl2856829523_
                     _e2856929526_
                     _hd2857029529_
                     _tl2857129531_
                     _e2857229534_
                     _hd2857329537_
                     _tl2857429539_))
                (___match3207032071_
                 _e2853629438_
                 _hd2853729441_
                 _tl2853829443_
                 _e2853929446_
                 _hd2854029449_
                 _tl2854129451_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match3207032071_
                                                 _e2853629438_
                                                 _hd2853729441_
                                                 _tl2853829443_
                                                 _e2853929446_
                                                 _hd2854029449_
                                                 _tl2854129451_))
                                            (___match3207032071_
                                             _e2853629438_
                                             _hd2853729441_
                                             _tl2853829443_
                                             _e2853929446_
                                             _hd2854029449_
                                             _tl2854129451_))
                                        (___match3207032071_
                                         _e2853629438_
                                         _hd2853729441_
                                         _tl2853829443_
                                         _e2853929446_
                                         _hd2854029449_
                                         _tl2854129451_))))
                                (___match3207032071_
                                 _e2853629438_
                                 _hd2853729441_
                                 _tl2853829443_
                                 _e2853929446_
                                 _hd2854029449_
                                 _tl2854129451_))))
                        (___match3207032071_
                         _e2853629438_
                         _hd2853729441_
                         _tl2853829443_
                         _e2853929446_
                         _hd2854029449_
                         _tl2854129451_))
                    (___match3207032071_
                     _e2853629438_
                     _hd2853729441_
                     _tl2853829443_
                     _e2853929446_
                     _hd2854029449_
                     _tl2854129451_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match3207032071_
                                                     _e2853629438_
                                                     _hd2853729441_
                                                     _tl2853829443_
                                                     _e2853929446_
                                                     _hd2854029449_
                                                     _tl2854129451_))
                                                (___match3207032071_
                                                 _e2853629438_
                                                 _hd2853729441_
                                                 _tl2853829443_
                                                 _e2853929446_
                                                 _hd2854029449_
                                                 _tl2854129451_))
                                            (___match3207032071_
                                             _e2853629438_
                                             _hd2853729441_
                                             _tl2853829443_
                                             _e2853929446_
                                             _hd2854029449_
                                             _tl2854129451_))))
                                    (___match3207032071_
                                     _e2853629438_
                                     _hd2853729441_
                                     _tl2853829443_
                                     _e2853929446_
                                     _hd2854029449_
                                     _tl2854129451_))))
                            (___match3207032071_
                             _e2853629438_
                             _hd2853729441_
                             _tl2853829443_
                             _e2853929446_
                             _hd2854029449_
                             _tl2854129451_))
                        (___match3207032071_
                         _e2853629438_
                         _hd2853729441_
                         _tl2853829443_
                         _e2853929446_
                         _hd2854029449_
                         _tl2854129451_))
                    (___match3207032071_
                     _e2853629438_
                     _hd2853729441_
                     _tl2853829443_
                     _e2853929446_
                     _hd2854029449_
                     _tl2854129451_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match3207032071_
                                                     _e2853629438_
                                                     _hd2853729441_
                                                     _tl2853829443_
                                                     _e2853929446_
                                                     _hd2854029449_
                                                     _tl2854129451_))))
                                            (___match3207032071_
                                             _e2853629438_
                                             _hd2853729441_
                                             _tl2853829443_
                                             _e2853929446_
                                             _hd2854029449_
                                             _tl2854129451_)))))))
                        (_loop2854529459_ _target2854229454_ '()))))
                   (___match3189831899_
                    (lambda (_e2853629438_
                             _hd2853729441_
                             _tl2853829443_
                             _e2853929446_
                             _hd2854029449_
                             _tl2854129451_)
                      (if (gx#stx-pair/null? _hd2854029449_)
                          (let ((___splice3160931610_
                                 (gx#syntax-split-splice _hd2854029449_ '0)))
                            (let ((_tl2854429456_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3160931610_ '1)))
                                  (_target2854229454_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3160931610_ '0))))
                              (if (gx#stx-null? _tl2854429456_)
                                  (___match3190631907_
                                   _e2853629438_
                                   _hd2853729441_
                                   _tl2853829443_
                                   _e2853929446_
                                   _hd2854029449_
                                   _tl2854129451_
                                   ___splice3160931610_
                                   _target2854229454_
                                   _tl2854429456_)
                                  (___match3191831919_
                                   _e2853629438_
                                   _hd2853729441_
                                   _tl2853829443_
                                   _e2853929446_
                                   _hd2854029449_
                                   _tl2854129451_))))
                          (___match3191831919_
                           _e2853629438_
                           _hd2853729441_
                           _tl2853829443_
                           _e2853929446_
                           _hd2854029449_
                           _tl2854129451_))))
                   (___match3188631887_
                    (lambda (_e2848429668_
                             _hd2848529671_
                             _tl2848629673_
                             _e2848729676_
                             _hd2848829679_
                             _tl2848929681_
                             _e2849029684_
                             _hd2849129687_
                             _tl2849229689_
                             _e2849329692_
                             _hd2849429695_
                             _tl2849529697_
                             _e2849629700_
                             _hd2849729703_
                             _tl2849829705_
                             _e2849929708_
                             _hd2850029711_
                             _tl2850129713_
                             _e2850229716_
                             _hd2850329719_
                             _tl2850429721_
                             _e2850529724_
                             _hd2850629727_
                             _tl2850729729_
                             _e2850829732_
                             _hd2850929735_
                             _tl2851029737_
                             _e2851129740_
                             _hd2851229743_
                             _tl2851329745_
                             _e2851429748_
                             _hd2851529751_
                             _tl2851629753_
                             _e2851729756_
                             _hd2851829759_
                             _tl2851929761_
                             _e2852029764_
                             _hd2852129767_
                             _tl2852229769_
                             _e2852329772_
                             _hd2852429775_
                             _tl2852529777_
                             _e2852629780_
                             _hd2852729783_
                             _tl2852829785_
                             _e2852929788_
                             _hd2853029791_
                             _tl2853129793_)
                      (let ((_L29796_ _hd2853029791_)
                            (_L29797_ _hd2852129767_)
                            (_L29798_ _hd2851229743_)
                            (_L29799_ _hd2850329719_)
                            (_L29800_ _hd2848829679_))
                        (if (and (gx#identifier? _L29800_)
                                 (gxc#runtime-identifier=? _L29799_ 'apply)
                                 (gxc#runtime-identifier=?
                                  _L29798_
                                  'make-class-instance)
                                 (gx#free-identifier=? _L29800_ _L29796_))
                            (___kont3160531606_
                             _L29796_
                             _L29797_
                             _L29798_
                             _L29799_
                             _L29800_)
                            (___match3189831899_
                             _e2848429668_
                             _hd2848529671_
                             _tl2848629673_
                             _e2848729676_
                             _hd2848829679_
                             _tl2848929681_)))))
                   (___match3175831759_
                    (lambda (_e2843129853_
                             _hd2843229856_
                             _tl2843329858_
                             _e2843429861_
                             _hd2843529864_
                             _tl2843629866_
                             _e2843729869_
                             _hd2843829872_
                             _tl2843929874_
                             _e2844029877_
                             _hd2844129880_
                             _tl2844229882_
                             _e2844329885_
                             _hd2844429888_
                             _tl2844529890_
                             _e2844629893_
                             _hd2844729896_
                             _tl2844829898_
                             _e2844929901_
                             _hd2845029904_
                             _tl2845129906_
                             _e2845229909_
                             _hd2845329912_
                             _tl2845429914_
                             _e2845529917_
                             _hd2845629920_
                             _tl2845729922_
                             _e2845829925_
                             _hd2845929928_
                             _tl2846029930_
                             _e2846129933_
                             _hd2846229936_
                             _tl2846329938_
                             _e2846429941_
                             _hd2846529944_
                             _tl2846629946_
                             _e2846729949_
                             _hd2846829952_
                             _tl2846929954_
                             _e2847029957_
                             _hd2847129960_
                             _tl2847229962_
                             _e2847329965_
                             _hd2847429968_
                             _tl2847529970_
                             _e2847629973_
                             _hd2847729976_
                             _tl2847829978_)
                      (let ((_L29981_ _hd2847729976_)
                            (_L29982_ _hd2846829952_)
                            (_L29983_ _hd2845929928_)
                            (_L29984_ _hd2845029904_)
                            (_L29985_ _hd2843529864_))
                        (if (and (gx#identifier? _L29985_)
                                 (gxc#runtime-identifier=? _L29984_ 'apply)
                                 (gxc#runtime-identifier=?
                                  _L29983_
                                  'make-struct-instance)
                                 (gx#free-identifier=? _L29985_ _L29981_))
                            (___kont3160331604_
                             _L29981_
                             _L29982_
                             _L29983_
                             _L29984_
                             _L29985_)
                            (___match3188631887_
                             _e2843129853_
                             _hd2843229856_
                             _tl2843329858_
                             _e2843429861_
                             _hd2843529864_
                             _tl2843629866_
                             _e2843729869_
                             _hd2843829872_
                             _tl2843929874_
                             _e2844029877_
                             _hd2844129880_
                             _tl2844229882_
                             _e2844329885_
                             _hd2844429888_
                             _tl2844529890_
                             _e2844629893_
                             _hd2844729896_
                             _tl2844829898_
                             _e2844929901_
                             _hd2845029904_
                             _tl2845129906_
                             _e2845229909_
                             _hd2845329912_
                             _tl2845429914_
                             _e2845529917_
                             _hd2845629920_
                             _tl2845729922_
                             _e2845829925_
                             _hd2845929928_
                             _tl2846029930_
                             _e2846129933_
                             _hd2846229936_
                             _tl2846329938_
                             _e2846429941_
                             _hd2846529944_
                             _tl2846629946_
                             _e2846729949_
                             _hd2846829952_
                             _tl2846929954_
                             _e2847029957_
                             _hd2847129960_
                             _tl2847229962_
                             _e2847329965_
                             _hd2847429968_
                             _tl2847529970_
                             _e2847629973_
                             _hd2847729976_
                             _tl2847829978_)))))
                   (___match3163631637_
                    (lambda (_e2843129853_ _hd2843229856_ _tl2843329858_)
                      (if (gx#stx-pair? _tl2843329858_)
                          (let ((_e2843429861_ (gx#stx-e _tl2843329858_)))
                            (let ((_tl2843629866_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2843429861_)))
                                  (_hd2843529864_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2843429861_))))
                              (if (gx#stx-pair? _tl2843629866_)
                                  (let ((_e2843729869_
                                         (gx#stx-e _tl2843629866_)))
                                    (let ((_tl2843929874_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2843729869_)))
                                          (_hd2843829872_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2843729869_))))
                                      (if (gx#stx-pair? _hd2843829872_)
                                          (let ((_e2844029877_
                                                 (gx#stx-e _hd2843829872_)))
                                            (let ((_tl2844229882_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2844029877_)))
                                                  (_hd2844129880_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2844029877_))))
                                              (if (gx#identifier?
                                                   _hd2844129880_)
                                                  (if (gx#stx-eq?
                                                       '%#call
                                                       _hd2844129880_)
                                                      (if (gx#stx-pair?
                                                           _tl2844229882_)
                                                          (let ((_e2844329885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2844229882_)))
                    (let ((_tl2844529890_
                           (let () (declare (not safe)) (##cdr _e2844329885_)))
                          (_hd2844429888_
                           (let ()
                             (declare (not safe))
                             (##car _e2844329885_))))
                      (if (gx#stx-pair? _hd2844429888_)
                          (let ((_e2844629893_ (gx#stx-e _hd2844429888_)))
                            (let ((_tl2844829898_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2844629893_)))
                                  (_hd2844729896_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2844629893_))))
                              (if (gx#identifier? _hd2844729896_)
                                  (if (gx#stx-eq? '%#ref _hd2844729896_)
                                      (if (gx#stx-pair? _tl2844829898_)
                                          (let ((_e2844929901_
                                                 (gx#stx-e _tl2844829898_)))
                                            (let ((_tl2845129906_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2844929901_)))
                                                  (_hd2845029904_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2844929901_))))
                                              (if (gx#stx-null? _tl2845129906_)
                                                  (if (gx#stx-pair?
                                                       _tl2844529890_)
                                                      (let ((_e2845229909_
                                                             (gx#stx-e
                                                              _tl2844529890_)))
                                                        (let ((_tl2845429914_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2845229909_)))
                      (_hd2845329912_
                       (let () (declare (not safe)) (##car _e2845229909_))))
                  (if (gx#stx-pair? _hd2845329912_)
                      (let ((_e2845529917_ (gx#stx-e _hd2845329912_)))
                        (let ((_tl2845729922_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2845529917_)))
                              (_hd2845629920_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2845529917_))))
                          (if (gx#identifier? _hd2845629920_)
                              (if (gx#stx-eq? '%#ref _hd2845629920_)
                                  (if (gx#stx-pair? _tl2845729922_)
                                      (let ((_e2845829925_
                                             (gx#stx-e _tl2845729922_)))
                                        (let ((_tl2846029930_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2845829925_)))
                                              (_hd2845929928_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2845829925_))))
                                          (if (gx#stx-null? _tl2846029930_)
                                              (if (gx#stx-pair? _tl2845429914_)
                                                  (let ((_e2846129933_
                                                         (gx#stx-e
                                                          _tl2845429914_)))
                                                    (let ((_tl2846329938_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2846129933_)))
                                                          (_hd2846229936_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2846129933_))))
                                                      (if (gx#stx-pair?
                                                           _hd2846229936_)
                                                          (let ((_e2846429941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2846229936_)))
                    (let ((_tl2846629946_
                           (let () (declare (not safe)) (##cdr _e2846429941_)))
                          (_hd2846529944_
                           (let ()
                             (declare (not safe))
                             (##car _e2846429941_))))
                      (if (gx#identifier? _hd2846529944_)
                          (if (gx#stx-eq? '%#ref _hd2846529944_)
                              (if (gx#stx-pair? _tl2846629946_)
                                  (let ((_e2846729949_
                                         (gx#stx-e _tl2846629946_)))
                                    (let ((_tl2846929954_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2846729949_)))
                                          (_hd2846829952_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2846729949_))))
                                      (if (gx#stx-null? _tl2846929954_)
                                          (if (gx#stx-pair? _tl2846329938_)
                                              (let ((_e2847029957_
                                                     (gx#stx-e
                                                      _tl2846329938_)))
                                                (let ((_tl2847229962_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2847029957_)))
                                                      (_hd2847129960_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2847029957_))))
                                                  (if (gx#stx-pair?
                                                       _hd2847129960_)
                                                      (let ((_e2847329965_
                                                             (gx#stx-e
                                                              _hd2847129960_)))
                                                        (let ((_tl2847529970_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2847329965_)))
                      (_hd2847429968_
                       (let () (declare (not safe)) (##car _e2847329965_))))
                  (if (gx#identifier? _hd2847429968_)
                      (if (gx#stx-eq? '%#ref _hd2847429968_)
                          (if (gx#stx-pair? _tl2847529970_)
                              (let ((_e2847629973_ (gx#stx-e _tl2847529970_)))
                                (let ((_tl2847829978_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2847629973_)))
                                      (_hd2847729976_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2847629973_))))
                                  (if (gx#stx-null? _tl2847829978_)
                                      (if (gx#stx-null? _tl2847229962_)
                                          (if (gx#stx-null? _tl2843929874_)
                                              (___match3175831759_
                                               _e2843129853_
                                               _hd2843229856_
                                               _tl2843329858_
                                               _e2843429861_
                                               _hd2843529864_
                                               _tl2843629866_
                                               _e2843729869_
                                               _hd2843829872_
                                               _tl2843929874_
                                               _e2844029877_
                                               _hd2844129880_
                                               _tl2844229882_
                                               _e2844329885_
                                               _hd2844429888_
                                               _tl2844529890_
                                               _e2844629893_
                                               _hd2844729896_
                                               _tl2844829898_
                                               _e2844929901_
                                               _hd2845029904_
                                               _tl2845129906_
                                               _e2845229909_
                                               _hd2845329912_
                                               _tl2845429914_
                                               _e2845529917_
                                               _hd2845629920_
                                               _tl2845729922_
                                               _e2845829925_
                                               _hd2845929928_
                                               _tl2846029930_
                                               _e2846129933_
                                               _hd2846229936_
                                               _tl2846329938_
                                               _e2846429941_
                                               _hd2846529944_
                                               _tl2846629946_
                                               _e2846729949_
                                               _hd2846829952_
                                               _tl2846929954_
                                               _e2847029957_
                                               _hd2847129960_
                                               _tl2847229962_
                                               _e2847329965_
                                               _hd2847429968_
                                               _tl2847529970_
                                               _e2847629973_
                                               _hd2847729976_
                                               _tl2847829978_)
                                              (___match3189831899_
                                               _e2843129853_
                                               _hd2843229856_
                                               _tl2843329858_
                                               _e2843429861_
                                               _hd2843529864_
                                               _tl2843629866_))
                                          (___match3189831899_
                                           _e2843129853_
                                           _hd2843229856_
                                           _tl2843329858_
                                           _e2843429861_
                                           _hd2843529864_
                                           _tl2843629866_))
                                      (___match3189831899_
                                       _e2843129853_
                                       _hd2843229856_
                                       _tl2843329858_
                                       _e2843429861_
                                       _hd2843529864_
                                       _tl2843629866_))))
                              (___match3189831899_
                               _e2843129853_
                               _hd2843229856_
                               _tl2843329858_
                               _e2843429861_
                               _hd2843529864_
                               _tl2843629866_))
                          (___match3189831899_
                           _e2843129853_
                           _hd2843229856_
                           _tl2843329858_
                           _e2843429861_
                           _hd2843529864_
                           _tl2843629866_))
                      (___match3189831899_
                       _e2843129853_
                       _hd2843229856_
                       _tl2843329858_
                       _e2843429861_
                       _hd2843529864_
                       _tl2843629866_))))
              (___match3189831899_
               _e2843129853_
               _hd2843229856_
               _tl2843329858_
               _e2843429861_
               _hd2843529864_
               _tl2843629866_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match3189831899_
                                               _e2843129853_
                                               _hd2843229856_
                                               _tl2843329858_
                                               _e2843429861_
                                               _hd2843529864_
                                               _tl2843629866_))
                                          (___match3189831899_
                                           _e2843129853_
                                           _hd2843229856_
                                           _tl2843329858_
                                           _e2843429861_
                                           _hd2843529864_
                                           _tl2843629866_))))
                                  (___match3189831899_
                                   _e2843129853_
                                   _hd2843229856_
                                   _tl2843329858_
                                   _e2843429861_
                                   _hd2843529864_
                                   _tl2843629866_))
                              (___match3189831899_
                               _e2843129853_
                               _hd2843229856_
                               _tl2843329858_
                               _e2843429861_
                               _hd2843529864_
                               _tl2843629866_))
                          (___match3189831899_
                           _e2843129853_
                           _hd2843229856_
                           _tl2843329858_
                           _e2843429861_
                           _hd2843529864_
                           _tl2843629866_))))
                  (___match3189831899_
                   _e2843129853_
                   _hd2843229856_
                   _tl2843329858_
                   _e2843429861_
                   _hd2843529864_
                   _tl2843629866_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3189831899_
                                                   _e2843129853_
                                                   _hd2843229856_
                                                   _tl2843329858_
                                                   _e2843429861_
                                                   _hd2843529864_
                                                   _tl2843629866_))
                                              (___match3189831899_
                                               _e2843129853_
                                               _hd2843229856_
                                               _tl2843329858_
                                               _e2843429861_
                                               _hd2843529864_
                                               _tl2843629866_))))
                                      (___match3189831899_
                                       _e2843129853_
                                       _hd2843229856_
                                       _tl2843329858_
                                       _e2843429861_
                                       _hd2843529864_
                                       _tl2843629866_))
                                  (___match3189831899_
                                   _e2843129853_
                                   _hd2843229856_
                                   _tl2843329858_
                                   _e2843429861_
                                   _hd2843529864_
                                   _tl2843629866_))
                              (___match3189831899_
                               _e2843129853_
                               _hd2843229856_
                               _tl2843329858_
                               _e2843429861_
                               _hd2843529864_
                               _tl2843629866_))))
                      (___match3189831899_
                       _e2843129853_
                       _hd2843229856_
                       _tl2843329858_
                       _e2843429861_
                       _hd2843529864_
                       _tl2843629866_))))
              (___match3189831899_
               _e2843129853_
               _hd2843229856_
               _tl2843329858_
               _e2843429861_
               _hd2843529864_
               _tl2843629866_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3189831899_
                                                   _e2843129853_
                                                   _hd2843229856_
                                                   _tl2843329858_
                                                   _e2843429861_
                                                   _hd2843529864_
                                                   _tl2843629866_))))
                                          (___match3189831899_
                                           _e2843129853_
                                           _hd2843229856_
                                           _tl2843329858_
                                           _e2843429861_
                                           _hd2843529864_
                                           _tl2843629866_))
                                      (___match3189831899_
                                       _e2843129853_
                                       _hd2843229856_
                                       _tl2843329858_
                                       _e2843429861_
                                       _hd2843529864_
                                       _tl2843629866_))
                                  (___match3189831899_
                                   _e2843129853_
                                   _hd2843229856_
                                   _tl2843329858_
                                   _e2843429861_
                                   _hd2843529864_
                                   _tl2843629866_))))
                          (___match3189831899_
                           _e2843129853_
                           _hd2843229856_
                           _tl2843329858_
                           _e2843429861_
                           _hd2843529864_
                           _tl2843629866_))))
                  (___match3189831899_
                   _e2843129853_
                   _hd2843229856_
                   _tl2843329858_
                   _e2843429861_
                   _hd2843529864_
                   _tl2843629866_))
              (___match3189831899_
               _e2843129853_
               _hd2843229856_
               _tl2843329858_
               _e2843429861_
               _hd2843529864_
               _tl2843629866_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3189831899_
                                                   _e2843129853_
                                                   _hd2843229856_
                                                   _tl2843329858_
                                                   _e2843429861_
                                                   _hd2843529864_
                                                   _tl2843629866_))))
                                          (___match3189831899_
                                           _e2843129853_
                                           _hd2843229856_
                                           _tl2843329858_
                                           _e2843429861_
                                           _hd2843529864_
                                           _tl2843629866_))))
                                  (___match3189831899_
                                   _e2843129853_
                                   _hd2843229856_
                                   _tl2843329858_
                                   _e2843429861_
                                   _hd2843529864_
                                   _tl2843629866_))))
                          (___match3220432205_
                           _e2843129853_
                           _hd2843229856_
                           _tl2843329858_)))))
              (if (gx#stx-pair? ___stx3159931600_)
                  (let ((_e2842330038_ (gx#stx-e ___stx3159931600_)))
                    (let ((_tl2842530043_
                           (let () (declare (not safe)) (##cdr _e2842330038_)))
                          (_hd2842430041_
                           (let ()
                             (declare (not safe))
                             (##car _e2842330038_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L30046_ _tl2842530043_))
                            (___kont3160131602_ _L30046_))
                          (___match3163631637_
                           _e2842330038_
                           _hd2842430041_
                           _tl2842530043_))))
                  (_g2842028780_)))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx28366_)
        (letrec ((_clause-e28368_
                  (lambda (_form28409_)
                    (let ((__obj34517 (make-object gxc#!lambda::t '5)))
                      (gxc#!lambda:::init!__0
                       __obj34517
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form28409_)
                       (if (not (gxc#current-compile-type-closure))
                           (if (gxc#dispatch-lambda-form? _form28409_)
                               (gxc#dispatch-lambda-form-delegate _form28409_)
                               '#f)
                           '#f))
                      __obj34517))))
          (let* ((_g2837028380_
                  (lambda (_g2837128377_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2837128377_)))
                 (_g2836928406_
                  (lambda (_g2837128383_)
                    (if (gx#stx-pair? _g2837128383_)
                        (let ((_e2837328385_ (gx#stx-e _g2837128383_)))
                          (let ((_hd2837428388_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2837328385_)))
                                (_tl2837528390_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2837328385_))))
                            ((lambda (_L28393_)
                               (let ((_clauses28404_
                                      (map _clause-e28368_ _L28393_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses28404_)))
                             _tl2837528390_)))
                        (_g2837028380_ _g2837128383_)))))
            (_g2836928406_ _stx28366_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx28298_)
        (let* ((_g2830028317_
                (lambda (_g2830128314_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2830128314_)))
               (_g2829928363_
                (lambda (_g2830128320_)
                  (if (gx#stx-pair? _g2830128320_)
                      (let ((_e2830428322_ (gx#stx-e _g2830128320_)))
                        (let ((_hd2830528325_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2830428322_)))
                              (_tl2830628327_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2830428322_))))
                          (if (gx#stx-pair? _tl2830628327_)
                              (let ((_e2830728330_ (gx#stx-e _tl2830628327_)))
                                (let ((_hd2830828333_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2830728330_)))
                                      (_tl2830928335_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2830728330_))))
                                  (if (gx#stx-pair? _tl2830928335_)
                                      (let ((_e2831028338_
                                             (gx#stx-e _tl2830928335_)))
                                        (let ((_hd2831128341_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2831028338_)))
                                              (_tl2831228343_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2831028338_))))
                                          (if (gx#stx-null? _tl2831228343_)
                                              ((lambda (_L28346_ _L28347_)
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (gxc#compile-e _L28346_))
                                                  gxc#current-compile-type-closure
                                                  '#t))
                                               _hd2831128341_
                                               _hd2830828333_)
                                              (_g2830028317_ _g2830128320_))))
                                      (_g2830028317_ _g2830128320_))))
                              (_g2830028317_ _g2830128320_))))
                      (_g2830028317_ _g2830128320_)))))
          (_g2829928363_ _stx28298_))))
    (define gxc#basic-expression-type-builtin (make-table 'test: eq?))
    (define gxc#basic-expression-type-call%
      (lambda (_stx28203_)
        (let* ((___stx3221332214_ _stx28203_)
               (_g2820628226_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3221332214_))))
          (let ((___kont3221532216_
                 (lambda (_L28270_ _L28271_)
                   (let ((_type-e2828828290_
                          (table-ref
                           gxc#basic-expression-type-builtin
                           (gxc#identifier-symbol _L28271_)
                           '#f)))
                     (if _type-e2828828290_
                         (let ((_type-e28293_ _type-e2828828290_))
                           (_type-e28293_ _stx28203_ _L28270_))
                         '#f))))
                (___kont3221732218_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx3221332214_)
                (let ((_e2821028238_ (gx#stx-e ___stx3221332214_)))
                  (let ((_tl2821228243_
                         (let () (declare (not safe)) (##cdr _e2821028238_)))
                        (_hd2821128241_
                         (let () (declare (not safe)) (##car _e2821028238_))))
                    (if (gx#stx-pair? _tl2821228243_)
                        (let ((_e2821328246_ (gx#stx-e _tl2821228243_)))
                          (let ((_tl2821528251_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2821328246_)))
                                (_hd2821428249_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2821328246_))))
                            (if (gx#stx-pair? _hd2821428249_)
                                (let ((_e2821628254_
                                       (gx#stx-e _hd2821428249_)))
                                  (let ((_tl2821828259_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2821628254_)))
                                        (_hd2821728257_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2821628254_))))
                                    (if (gx#identifier? _hd2821728257_)
                                        (if (gx#stx-eq? '%#ref _hd2821728257_)
                                            (if (gx#stx-pair? _tl2821828259_)
                                                (let ((_e2821928262_
                                                       (gx#stx-e
                                                        _tl2821828259_)))
                                                  (let ((_tl2822128267_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2821928262_)))
                                                        (_hd2822028265_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2821928262_))))
                                                    (if (gx#stx-null?
                                                         _tl2822128267_)
                                                        (___kont3221532216_
                                                         _tl2821528251_
                                                         _hd2822028265_)
                                                        (___kont3221732218_))))
                                                (___kont3221732218_))
                                            (___kont3221732218_))
                                        (___kont3221732218_))))
                                (___kont3221732218_))))
                        (___kont3221732218_))))
                (___kont3221732218_))))))
    (define gxc#basic-expression-type-make-struct-type
      (lambda (_stx27683_ _args27684_)
        (let* ((___stx3225132252_ _args27684_)
               (_g2768827802_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3225132252_))))
          (let ((___kont3225332254_
                 (lambda (_L28152_ _L28153_ _L28154_ _L28155_ _L28156_)
                   (let ((__obj34518 (make-object gxc#!struct-type::t '7)))
                     (gxc#!struct-type:::init!
                      __obj34518
                      (gx#stx-e _L28156_)
                      '#f
                      (gx#stx-e _L28155_)
                      '0
                      (gx#stx-e _L28152_)
                      (gx#stx-e _L28153_))
                     __obj34518)))
                (___kont3225532256_
                 (lambda (_L27942_
                          _L27943_
                          _L27944_
                          _L27945_
                          _L27946_
                          _L27947_)
                   (let* ((_super-t27993_
                           (if (gx#stx-e _L27946_)
                               (gxc#identifier-symbol _L27946_)
                               '#f))
                          (_super-type27995_
                           (if _super-t27993_
                               (gxc#optimizer-resolve-type _super-t27993_)
                               '#f)))
                     (if (and _super-type27995_
                              (not (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _super-type27995_
                                      'gxc#!struct-type::t))))
                         (gxc#raise-compile-error
                          '"Illegal struct-type construction; invalid super type"
                          _stx27683_
                          _L27946_)
                         '#!void)
                     (let ((_fields28011_ (gx#stx-e _L27945_))
                           (_xfields28012_
                            (if _super-type27995_
                                (let ((_super-fields2799728000_
                                       (##structure-ref
                                        _super-type27995_
                                        '3
                                        gxc#!struct-type::t
                                        '#f))
                                      (_super-xfields2799828002_
                                       (##structure-ref
                                        _super-type27995_
                                        '4
                                        gxc#!struct-type::t
                                        '#f)))
                                  (if _super-fields2799728000_
                                      (if _super-xfields2799828002_
                                          (let ((_super-fields28005_
                                                 _super-fields2799728000_)
                                                (_super-xfields28006_
                                                 _super-xfields2799828002_))
                                            (fx+ _super-fields28005_
                                                 _super-xfields28006_))
                                          '#f)
                                      '#f))
                                '#f))
                           (_plist28013_ (gx#stx-e _L27943_))
                           (_ctor28014_
                            (let ((_$e28008_ (gx#stx-e _L27942_)))
                              (if _$e28008_
                                  (values _$e28008_)
                                  (if _super-type27995_
                                      (##structure-ref
                                       _super-type27995_
                                       '5
                                       gxc#!struct-type::t
                                       '#f)
                                      (if _super-t27993_ '#!void '#f))))))
                       (let ((__obj34519 (make-object gxc#!struct-type::t '7)))
                         (gxc#!struct-type:::init!
                          __obj34519
                          (gx#stx-e _L27947_)
                          _super-t27993_
                          _fields28011_
                          _xfields28012_
                          _ctor28014_
                          _plist28013_)
                         __obj34519)))))
                (___kont3225732258_
                 (lambda ()
                   (gxc#verbose
                    '"make-struct-type: can't infer type "
                    (gx#syntax->datum _stx27683_))
                   '#f)))
            (if (gx#stx-pair? ___stx3225132252_)
                (let ((_e2769528021_ (gx#stx-e ___stx3225132252_)))
                  (let ((_tl2769728026_
                         (let () (declare (not safe)) (##cdr _e2769528021_)))
                        (_hd2769628024_
                         (let () (declare (not safe)) (##car _e2769528021_))))
                    (if (gx#stx-pair? _hd2769628024_)
                        (let ((_e2769828029_ (gx#stx-e _hd2769628024_)))
                          (let ((_tl2770028034_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2769828029_)))
                                (_hd2769928032_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2769828029_))))
                            (if (gx#identifier? _hd2769928032_)
                                (if (gx#stx-eq? '%#quote _hd2769928032_)
                                    (if (gx#stx-pair? _tl2770028034_)
                                        (let ((_e2770128037_
                                               (gx#stx-e _tl2770028034_)))
                                          (let ((_tl2770328042_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2770128037_)))
                                                (_hd2770228040_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2770128037_))))
                                            (if (gx#stx-null? _tl2770328042_)
                                                (if (gx#stx-pair?
                                                     _tl2769728026_)
                                                    (let ((_e2770428045_
                                                           (gx#stx-e
                                                            _tl2769728026_)))
                                                      (let ((_tl2770628050_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2770428045_)))
                    (_hd2770528048_
                     (let () (declare (not safe)) (##car _e2770428045_))))
                (if (gx#stx-pair? _hd2770528048_)
                    (let ((_e2770728053_ (gx#stx-e _hd2770528048_)))
                      (let ((_tl2770928058_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2770728053_)))
                            (_hd2770828056_
                             (let ()
                               (declare (not safe))
                               (##car _e2770728053_))))
                        (if (gx#identifier? _hd2770828056_)
                            (if (gx#stx-eq? '%#quote _hd2770828056_)
                                (if (gx#stx-pair? _tl2770928058_)
                                    (let ((_e2771028061_
                                           (gx#stx-e _tl2770928058_)))
                                      (let ((_tl2771228066_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2771028061_)))
                                            (_hd2771128064_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2771028061_))))
                                        (if (gx#stx-datum? _hd2771128064_)
                                            (let ((_e2771328069_
                                                   (gx#stx-e _hd2771128064_)))
                                              (if (equal? _e2771328069_ '#f)
                                                  (if (gx#stx-null?
                                                       _tl2771228066_)
                                                      (if (gx#stx-pair?
                                                           _tl2770628050_)
                                                          (let ((_e2771428072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2770628050_)))
                    (let ((_tl2771628077_
                           (let () (declare (not safe)) (##cdr _e2771428072_)))
                          (_hd2771528075_
                           (let ()
                             (declare (not safe))
                             (##car _e2771428072_))))
                      (if (gx#stx-pair? _hd2771528075_)
                          (let ((_e2771728080_ (gx#stx-e _hd2771528075_)))
                            (let ((_tl2771928085_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2771728080_)))
                                  (_hd2771828083_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2771728080_))))
                              (if (gx#identifier? _hd2771828083_)
                                  (if (gx#stx-eq? '%#quote _hd2771828083_)
                                      (if (gx#stx-pair? _tl2771928085_)
                                          (let ((_e2772028088_
                                                 (gx#stx-e _tl2771928085_)))
                                            (let ((_tl2772228093_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2772028088_)))
                                                  (_hd2772128091_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2772028088_))))
                                              (if (gx#stx-null? _tl2772228093_)
                                                  (if (gx#stx-pair?
                                                       _tl2771628077_)
                                                      (let ((_e2772328096_
                                                             (gx#stx-e
                                                              _tl2771628077_)))
                                                        (let ((_tl2772528101_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2772328096_)))
                      (_hd2772428099_
                       (let () (declare (not safe)) (##car _e2772328096_))))
                  (if (gx#stx-pair? _tl2772528101_)
                      (let ((_e2772628104_ (gx#stx-e _tl2772528101_)))
                        (let ((_tl2772828109_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2772628104_)))
                              (_hd2772728107_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2772628104_))))
                          (if (gx#stx-pair? _hd2772728107_)
                              (let ((_e2772928112_ (gx#stx-e _hd2772728107_)))
                                (let ((_tl2773128117_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2772928112_)))
                                      (_hd2773028115_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2772928112_))))
                                  (if (gx#identifier? _hd2773028115_)
                                      (if (gx#stx-eq? '%#quote _hd2773028115_)
                                          (if (gx#stx-pair? _tl2773128117_)
                                              (let ((_e2773228120_
                                                     (gx#stx-e
                                                      _tl2773128117_)))
                                                (let ((_tl2773428125_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2773228120_)))
                                                      (_hd2773328123_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2773228120_))))
                                                  (if (gx#stx-null?
                                                       _tl2773428125_)
                                                      (if (gx#stx-pair?
                                                           _tl2772828109_)
                                                          (let ((_e2773528128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2772828109_)))
                    (let ((_tl2773728133_
                           (let () (declare (not safe)) (##cdr _e2773528128_)))
                          (_hd2773628131_
                           (let ()
                             (declare (not safe))
                             (##car _e2773528128_))))
                      (if (gx#stx-pair? _hd2773628131_)
                          (let ((_e2773828136_ (gx#stx-e _hd2773628131_)))
                            (let ((_tl2774028141_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2773828136_)))
                                  (_hd2773928139_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2773828136_))))
                              (if (gx#identifier? _hd2773928139_)
                                  (if (gx#stx-eq? '%#quote _hd2773928139_)
                                      (if (gx#stx-pair? _tl2774028141_)
                                          (let ((_e2774128144_
                                                 (gx#stx-e _tl2774028141_)))
                                            (let ((_tl2774328149_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2774128144_)))
                                                  (_hd2774228147_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2774128144_))))
                                              (if (gx#stx-null? _tl2774328149_)
                                                  (___kont3225332254_
                                                   _hd2774228147_
                                                   _hd2773328123_
                                                   _hd2772428099_
                                                   _hd2772128091_
                                                   _hd2770228040_)
                                                  (___kont3225732258_))))
                                          (___kont3225732258_))
                                      (___kont3225732258_))
                                  (___kont3225732258_))))
                          (___kont3225732258_))))
                  (___kont3225732258_))
              (___kont3225732258_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont3225732258_))
                                          (___kont3225732258_))
                                      (___kont3225732258_))))
                              (___kont3225732258_))))
                      (___kont3225732258_))))
              (___kont3225732258_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3225732258_))))
                                          (___kont3225732258_))
                                      (___kont3225732258_))
                                  (___kont3225732258_))))
                          (___kont3225732258_))))
                  (___kont3225732258_))
              (___kont3225732258_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3225732258_)))
                                            (___kont3225732258_))))
                                    (___kont3225732258_))
                                (if (gx#stx-eq? '%#ref _hd2770828056_)
                                    (if (gx#stx-pair? _tl2770928058_)
                                        (let ((_e2776527854_
                                               (gx#stx-e _tl2770928058_)))
                                          (let ((_tl2776727859_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2776527854_)))
                                                (_hd2776627857_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2776527854_))))
                                            (if (gx#stx-null? _tl2776727859_)
                                                (if (gx#stx-pair?
                                                     _tl2770628050_)
                                                    (let ((_e2776827862_
                                                           (gx#stx-e
                                                            _tl2770628050_)))
                                                      (let ((_tl2777027867_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2776827862_)))
                    (_hd2776927865_
                     (let () (declare (not safe)) (##car _e2776827862_))))
                (if (gx#stx-pair? _hd2776927865_)
                    (let ((_e2777127870_ (gx#stx-e _hd2776927865_)))
                      (let ((_tl2777327875_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2777127870_)))
                            (_hd2777227873_
                             (let ()
                               (declare (not safe))
                               (##car _e2777127870_))))
                        (if (gx#identifier? _hd2777227873_)
                            (if (gx#stx-eq? '%#quote _hd2777227873_)
                                (if (gx#stx-pair? _tl2777327875_)
                                    (let ((_e2777427878_
                                           (gx#stx-e _tl2777327875_)))
                                      (let ((_tl2777627883_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2777427878_)))
                                            (_hd2777527881_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2777427878_))))
                                        (if (gx#stx-null? _tl2777627883_)
                                            (if (gx#stx-pair? _tl2777027867_)
                                                (let ((_e2777727886_
                                                       (gx#stx-e
                                                        _tl2777027867_)))
                                                  (let ((_tl2777927891_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2777727886_)))
                                                        (_hd2777827889_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2777727886_))))
                                                    (if (gx#stx-pair?
                                                         _tl2777927891_)
                                                        (let ((_e2778027894_
                                                               (gx#stx-e
                                                                _tl2777927891_)))
                                                          (let ((_tl2778227899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e2778027894_)))
                        (_hd2778127897_
                         (let () (declare (not safe)) (##car _e2778027894_))))
                    (if (gx#stx-pair? _hd2778127897_)
                        (let ((_e2778327902_ (gx#stx-e _hd2778127897_)))
                          (let ((_tl2778527907_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2778327902_)))
                                (_hd2778427905_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2778327902_))))
                            (if (gx#identifier? _hd2778427905_)
                                (if (gx#stx-eq? '%#quote _hd2778427905_)
                                    (if (gx#stx-pair? _tl2778527907_)
                                        (let ((_e2778627910_
                                               (gx#stx-e _tl2778527907_)))
                                          (let ((_tl2778827915_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2778627910_)))
                                                (_hd2778727913_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2778627910_))))
                                            (if (gx#stx-null? _tl2778827915_)
                                                (if (gx#stx-pair?
                                                     _tl2778227899_)
                                                    (let ((_e2778927918_
                                                           (gx#stx-e
                                                            _tl2778227899_)))
                                                      (let ((_tl2779127923_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2778927918_)))
                    (_hd2779027921_
                     (let () (declare (not safe)) (##car _e2778927918_))))
                (if (gx#stx-pair? _hd2779027921_)
                    (let ((_e2779227926_ (gx#stx-e _hd2779027921_)))
                      (let ((_tl2779427931_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2779227926_)))
                            (_hd2779327929_
                             (let ()
                               (declare (not safe))
                               (##car _e2779227926_))))
                        (if (gx#identifier? _hd2779327929_)
                            (if (gx#stx-eq? '%#quote _hd2779327929_)
                                (if (gx#stx-pair? _tl2779427931_)
                                    (let ((_e2779527934_
                                           (gx#stx-e _tl2779427931_)))
                                      (let ((_tl2779727939_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2779527934_)))
                                            (_hd2779627937_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2779527934_))))
                                        (if (gx#stx-null? _tl2779727939_)
                                            (___kont3225532256_
                                             _hd2779627937_
                                             _hd2778727913_
                                             _hd2777827889_
                                             _hd2777527881_
                                             _hd2776627857_
                                             _hd2770228040_)
                                            (___kont3225732258_))))
                                    (___kont3225732258_))
                                (___kont3225732258_))
                            (___kont3225732258_))))
                    (___kont3225732258_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3225732258_))
                                                (___kont3225732258_))))
                                        (___kont3225732258_))
                                    (___kont3225732258_))
                                (___kont3225732258_))))
                        (___kont3225732258_))))
                (___kont3225732258_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3225732258_))
                                            (___kont3225732258_))))
                                    (___kont3225732258_))
                                (___kont3225732258_))
                            (___kont3225732258_))))
                    (___kont3225732258_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3225732258_))
                                                (___kont3225732258_))))
                                        (___kont3225732258_))
                                    (___kont3225732258_)))
                            (___kont3225732258_))))
                    (___kont3225732258_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3225732258_))
                                                (___kont3225732258_))))
                                        (___kont3225732258_))
                                    (___kont3225732258_))
                                (___kont3225732258_))))
                        (___kont3225732258_))))
                (___kont3225732258_))))))
    (define gxc#basic-expression-type-make-struct-predicate
      (lambda (_stx27609_ _args27610_)
        (let* ((___stx3251932520_ _args27610_)
               (_g2761327629_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3251932520_))))
          (let ((___kont3252132522_
                 (lambda (_L27665_)
                   (let ((__tmp34531 (gxc#identifier-symbol _L27665_)))
                     (declare (not safe))
                     (##structure gxc#!struct-pred::t __tmp34531))))
                (___kont3252332524_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx3251932520_)
                (let ((_e2761627641_ (gx#stx-e ___stx3251932520_)))
                  (let ((_tl2761827646_
                         (let () (declare (not safe)) (##cdr _e2761627641_)))
                        (_hd2761727644_
                         (let () (declare (not safe)) (##car _e2761627641_))))
                    (if (gx#stx-pair? _hd2761727644_)
                        (let ((_e2761927649_ (gx#stx-e _hd2761727644_)))
                          (let ((_tl2762127654_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2761927649_)))
                                (_hd2762027652_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2761927649_))))
                            (if (gx#identifier? _hd2762027652_)
                                (if (gx#stx-eq? '%#ref _hd2762027652_)
                                    (if (gx#stx-pair? _tl2762127654_)
                                        (let ((_e2762227657_
                                               (gx#stx-e _tl2762127654_)))
                                          (let ((_tl2762427662_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2762227657_)))
                                                (_hd2762327660_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2762227657_))))
                                            (if (gx#stx-null? _tl2762427662_)
                                                (if (gx#stx-null?
                                                     _tl2761827646_)
                                                    (___kont3252132522_
                                                     _hd2762327660_)
                                                    (___kont3252332524_))
                                                (___kont3252332524_))))
                                        (___kont3252332524_))
                                    (___kont3252332524_))
                                (___kont3252332524_))))
                        (___kont3252332524_))))
                (___kont3252332524_))))))
    (define gxc#basic-expression-type-make-struct-field-accessor__%
      (lambda (_stx27480_ _args27481_ _unchecked?27482_)
        (let* ((___stx3255332554_ _args27481_)
               (_g2748527511_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3255332554_))))
          (let ((___kont3255532556_
                 (lambda (_L27571_ _L27572_)
                   (let ((__tmp34533 (gxc#identifier-symbol _L27572_))
                         (__tmp34532 (gx#stx-e _L27571_)))
                     (declare (not safe))
                     (##structure
                      gxc#!struct-getf::t
                      __tmp34533
                      __tmp34532
                      _unchecked?27482_))))
                (___kont3255732558_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx3255332554_)
                (let ((_e2748927523_ (gx#stx-e ___stx3255332554_)))
                  (let ((_tl2749127528_
                         (let () (declare (not safe)) (##cdr _e2748927523_)))
                        (_hd2749027526_
                         (let () (declare (not safe)) (##car _e2748927523_))))
                    (if (gx#stx-pair? _hd2749027526_)
                        (let ((_e2749227531_ (gx#stx-e _hd2749027526_)))
                          (let ((_tl2749427536_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2749227531_)))
                                (_hd2749327534_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2749227531_))))
                            (if (gx#identifier? _hd2749327534_)
                                (if (gx#stx-eq? '%#ref _hd2749327534_)
                                    (if (gx#stx-pair? _tl2749427536_)
                                        (let ((_e2749527539_
                                               (gx#stx-e _tl2749427536_)))
                                          (let ((_tl2749727544_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2749527539_)))
                                                (_hd2749627542_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2749527539_))))
                                            (if (gx#stx-null? _tl2749727544_)
                                                (if (gx#stx-pair?
                                                     _tl2749127528_)
                                                    (let ((_e2749827547_
                                                           (gx#stx-e
                                                            _tl2749127528_)))
                                                      (let ((_tl2750027552_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2749827547_)))
                    (_hd2749927550_
                     (let () (declare (not safe)) (##car _e2749827547_))))
                (if (gx#stx-pair? _hd2749927550_)
                    (let ((_e2750127555_ (gx#stx-e _hd2749927550_)))
                      (let ((_tl2750327560_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2750127555_)))
                            (_hd2750227558_
                             (let ()
                               (declare (not safe))
                               (##car _e2750127555_))))
                        (if (gx#identifier? _hd2750227558_)
                            (if (gx#stx-eq? '%#quote _hd2750227558_)
                                (if (gx#stx-pair? _tl2750327560_)
                                    (let ((_e2750427563_
                                           (gx#stx-e _tl2750327560_)))
                                      (let ((_tl2750627568_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2750427563_)))
                                            (_hd2750527566_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2750427563_))))
                                        (if (gx#stx-null? _tl2750627568_)
                                            (if (gx#stx-null? _tl2750027552_)
                                                (___kont3255532556_
                                                 _hd2750527566_
                                                 _hd2749627542_)
                                                (___kont3255732558_))
                                            (___kont3255732558_))))
                                    (___kont3255732558_))
                                (___kont3255732558_))
                            (___kont3255732558_))))
                    (___kont3255732558_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3255732558_))
                                                (___kont3255732558_))))
                                        (___kont3255732558_))
                                    (___kont3255732558_))
                                (___kont3255732558_))))
                        (___kont3255732558_))))
                (___kont3255732558_))))))
    (define gxc#basic-expression-type-make-struct-field-accessor__0
      (lambda (_stx27600_ _args27601_)
        (let ((_unchecked?27603_ '#f))
          (gxc#basic-expression-type-make-struct-field-accessor__%
           _stx27600_
           _args27601_
           _unchecked?27603_))))
    (define gxc#basic-expression-type-make-struct-field-accessor
      (lambda _g34535_
        (let ((_g34534_ (let () (declare (not safe)) (##length _g34535_))))
          (cond ((let () (declare (not safe)) (##fx= _g34534_ 2))
                 (apply gxc#basic-expression-type-make-struct-field-accessor__0
                        _g34535_))
                ((let () (declare (not safe)) (##fx= _g34534_ 3))
                 (apply gxc#basic-expression-type-make-struct-field-accessor__%
                        _g34535_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#basic-expression-type-make-struct-field-accessor
                  _g34535_))))))
    (define gxc#basic-expression-type-make-struct-field-mutator__%
      (lambda (_stx27350_ _args27351_ _unchecked?27352_)
        (let* ((___stx3261132612_ _args27351_)
               (_g2735527381_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3261132612_))))
          (let ((___kont3261332614_
                 (lambda (_L27441_ _L27442_)
                   (let ((__tmp34537 (gxc#identifier-symbol _L27442_))
                         (__tmp34536 (gx#stx-e _L27441_)))
                     (declare (not safe))
                     (##structure
                      gxc#!struct-setf::t
                      __tmp34537
                      __tmp34536
                      _unchecked?27352_))))
                (___kont3261532616_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx3261132612_)
                (let ((_e2735927393_ (gx#stx-e ___stx3261132612_)))
                  (let ((_tl2736127398_
                         (let () (declare (not safe)) (##cdr _e2735927393_)))
                        (_hd2736027396_
                         (let () (declare (not safe)) (##car _e2735927393_))))
                    (if (gx#stx-pair? _hd2736027396_)
                        (let ((_e2736227401_ (gx#stx-e _hd2736027396_)))
                          (let ((_tl2736427406_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2736227401_)))
                                (_hd2736327404_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2736227401_))))
                            (if (gx#identifier? _hd2736327404_)
                                (if (gx#stx-eq? '%#ref _hd2736327404_)
                                    (if (gx#stx-pair? _tl2736427406_)
                                        (let ((_e2736527409_
                                               (gx#stx-e _tl2736427406_)))
                                          (let ((_tl2736727414_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2736527409_)))
                                                (_hd2736627412_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2736527409_))))
                                            (if (gx#stx-null? _tl2736727414_)
                                                (if (gx#stx-pair?
                                                     _tl2736127398_)
                                                    (let ((_e2736827417_
                                                           (gx#stx-e
                                                            _tl2736127398_)))
                                                      (let ((_tl2737027422_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2736827417_)))
                    (_hd2736927420_
                     (let () (declare (not safe)) (##car _e2736827417_))))
                (if (gx#stx-pair? _hd2736927420_)
                    (let ((_e2737127425_ (gx#stx-e _hd2736927420_)))
                      (let ((_tl2737327430_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2737127425_)))
                            (_hd2737227428_
                             (let ()
                               (declare (not safe))
                               (##car _e2737127425_))))
                        (if (gx#identifier? _hd2737227428_)
                            (if (gx#stx-eq? '%#quote _hd2737227428_)
                                (if (gx#stx-pair? _tl2737327430_)
                                    (let ((_e2737427433_
                                           (gx#stx-e _tl2737327430_)))
                                      (let ((_tl2737627438_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2737427433_)))
                                            (_hd2737527436_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2737427433_))))
                                        (if (gx#stx-null? _tl2737627438_)
                                            (if (gx#stx-null? _tl2737027422_)
                                                (___kont3261332614_
                                                 _hd2737527436_
                                                 _hd2736627412_)
                                                (___kont3261532616_))
                                            (___kont3261532616_))))
                                    (___kont3261532616_))
                                (___kont3261532616_))
                            (___kont3261532616_))))
                    (___kont3261532616_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3261532616_))
                                                (___kont3261532616_))))
                                        (___kont3261532616_))
                                    (___kont3261532616_))
                                (___kont3261532616_))))
                        (___kont3261532616_))))
                (___kont3261532616_))))))
    (define gxc#basic-expression-type-make-struct-field-mutator__0
      (lambda (_stx27470_ _args27471_)
        (let ((_unchecked?27473_ '#f))
          (gxc#basic-expression-type-make-struct-field-mutator__%
           _stx27470_
           _args27471_
           _unchecked?27473_))))
    (define gxc#basic-expression-type-make-struct-field-mutator
      (lambda _g34539_
        (let ((_g34538_ (let () (declare (not safe)) (##length _g34539_))))
          (cond ((let () (declare (not safe)) (##fx= _g34538_ 2))
                 (apply gxc#basic-expression-type-make-struct-field-mutator__0
                        _g34539_))
                ((let () (declare (not safe)) (##fx= _g34538_ 3))
                 (apply gxc#basic-expression-type-make-struct-field-mutator__%
                        _g34539_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#basic-expression-type-make-struct-field-mutator
                  _g34539_))))))
    (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
      (lambda (_stx27346_ _args27347_)
        (gxc#basic-expression-type-make-struct-field-accessor__%
         _stx27346_
         _args27347_
         '#t)))
    (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
      (lambda (_stx27343_ _args27344_)
        (gxc#basic-expression-type-make-struct-field-mutator__%
         _stx27343_
         _args27344_
         '#t)))
    (define gxc#basic-expression-type-make-class-type
      (lambda (_stx26284_ _args26285_)
        (letrec ((_mixin-expr->list26287_
                  (lambda (_stx27024_)
                    (call-with-current-continuation
                     (lambda (_return27026_)
                       (let _recur27028_ ((_rest27030_ _stx27024_))
                         (let* ((___stx3266932670_ _rest27030_)
                                (_g2703527103_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    ___stx3266932670_))))
                           (let ((___kont3267132672_
                                  (lambda (_L27312_ _L27313_ _L27314_)
                                    (cons (gxc#identifier-symbol _L27313_)
                                          (_recur27028_ _L27312_))))
                                 (___kont3267332674_ (lambda () '()))
                                 (___kont3267532676_
                                  (lambda (_L27187_ _L27188_)
                                    (map gxc#identifier-symbol
                                         (foldr1 (lambda (_g2721227215_
                                                          _g2721327217_)
                                                   (cons _g2721227215_
                                                         _g2721327217_))
                                                 '()
                                                 _L27187_))))
                                 (___kont3267932680_
                                  (lambda () (_return27026_ '#f))))
                             (let* ((___match3280832809_
                                     (lambda (_e2707227115_
                                              _hd2707327118_
                                              _tl2707427120_
                                              _e2707527123_
                                              _hd2707627126_
                                              _tl2707727128_
                                              _e2707827131_
                                              _hd2707927134_
                                              _tl2708027136_
                                              _e2708127139_
                                              _hd2708227142_
                                              _tl2708327144_
                                              ___splice3267732678_
                                              _target2708427147_
                                              _tl2708627149_)
                                       (letrec ((_loop2708727152_
                                                 (lambda (_hd2708527155_
                                                          _klass2709127157_)
                                                   (if (gx#stx-pair?
                                                        _hd2708527155_)
                                                       (let ((_e2708827160_
                                                              (gx#stx-e
                                                               _hd2708527155_)))
                                                         (let ((_lp-tl2709027165_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e2708827160_)))
                       (_lp-hd2708927163_
                        (let () (declare (not safe)) (##car _e2708827160_))))
                   (if (gx#stx-pair? _lp-hd2708927163_)
                       (let ((_e2709327168_ (gx#stx-e _lp-hd2708927163_)))
                         (let ((_tl2709527173_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2709327168_)))
                               (_hd2709427171_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2709327168_))))
                           (if (gx#identifier? _hd2709427171_)
                               (if (gx#stx-eq? '%#ref _hd2709427171_)
                                   (if (gx#stx-pair? _tl2709527173_)
                                       (let ((_e2709627176_
                                              (gx#stx-e _tl2709527173_)))
                                         (let ((_tl2709827181_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2709627176_)))
                                               (_hd2709727179_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2709627176_))))
                                           (if (gx#stx-null? _tl2709827181_)
                                               (_loop2708727152_
                                                _lp-tl2709027165_
                                                (cons _hd2709727179_
                                                      _klass2709127157_))
                                               (___kont3267932680_))))
                                       (___kont3267932680_))
                                   (___kont3267932680_))
                               (___kont3267932680_))))
                       (___kont3267932680_))))
               (let ((_klass2709227184_ (reverse _klass2709127157_)))
                 (let ((_L27187_ _klass2709227184_) (_L27188_ _hd2708227142_))
                   (if (gxc#runtime-identifier=? _L27188_ 'list)
                       (___kont3267532676_ _L27187_ _L27188_)
                       (___kont3267932680_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop2708727152_
                                          _target2708427147_
                                          '()))))
                                    (___match3274632747_
                                     (lambda (_e2704027248_
                                              _hd2704127251_
                                              _tl2704227253_
                                              _e2704327256_
                                              _hd2704427259_
                                              _tl2704527261_
                                              _e2704627264_
                                              _hd2704727267_
                                              _tl2704827269_
                                              _e2704927272_
                                              _hd2705027275_
                                              _tl2705127277_
                                              _e2705227280_
                                              _hd2705327283_
                                              _tl2705427285_
                                              _e2705527288_
                                              _hd2705627291_
                                              _tl2705727293_
                                              _e2705827296_
                                              _hd2705927299_
                                              _tl2706027301_
                                              _e2706127304_
                                              _hd2706227307_
                                              _tl2706327309_)
                                       (let ((_L27312_ _hd2706227307_)
                                             (_L27313_ _hd2705927299_)
                                             (_L27314_ _hd2705027275_))
                                         (if (gxc#runtime-identifier=?
                                              _L27314_
                                              'cons)
                                             (___kont3267132672_
                                              _L27312_
                                              _L27313_
                                              _L27314_)
                                             (if (gx#stx-pair/null?
                                                  _tl2704527261_)
                                                 (let ((___splice3267732678_
                                                        (gx#syntax-split-splice
                                                         _tl2704527261_
                                                         '0)))
                                                   (let ((_tl2708627149_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice3267732678_
                                                             '1)))
                                                         (_target2708427147_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice3267732678_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _tl2708627149_)
                                                         (___match3280832809_
                                                          _e2704027248_
                                                          _hd2704127251_
                                                          _tl2704227253_
                                                          _e2704327256_
                                                          _hd2704427259_
                                                          _tl2704527261_
                                                          _e2704627264_
                                                          _hd2704727267_
                                                          _tl2704827269_
                                                          _e2704927272_
                                                          _hd2705027275_
                                                          _tl2705127277_
                                                          ___splice3267732678_
                                                          _target2708427147_
                                                          _tl2708627149_)
                                                         (___kont3267932680_))))
                                                 (___kont3267932680_)))))))
                               (if (gx#stx-pair? ___stx3266932670_)
                                   (let ((_e2704027248_
                                          (gx#stx-e ___stx3266932670_)))
                                     (let ((_tl2704227253_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2704027248_)))
                                           (_hd2704127251_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2704027248_))))
                                       (if (gx#identifier? _hd2704127251_)
                                           (if (gx#stx-eq?
                                                '%#call
                                                _hd2704127251_)
                                               (if (gx#stx-pair?
                                                    _tl2704227253_)
                                                   (let ((_e2704327256_
                                                          (gx#stx-e
                                                           _tl2704227253_)))
                                                     (let ((_tl2704527261_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2704327256_)))
                                                           (_hd2704427259_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2704327256_))))
                                                       (if (gx#stx-pair?
                                                            _hd2704427259_)
                                                           (let ((_e2704627264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd2704427259_)))
                     (let ((_tl2704827269_
                            (let ()
                              (declare (not safe))
                              (##cdr _e2704627264_)))
                           (_hd2704727267_
                            (let ()
                              (declare (not safe))
                              (##car _e2704627264_))))
                       (if (gx#identifier? _hd2704727267_)
                           (if (gx#stx-eq? '%#ref _hd2704727267_)
                               (if (gx#stx-pair? _tl2704827269_)
                                   (let ((_e2704927272_
                                          (gx#stx-e _tl2704827269_)))
                                     (let ((_tl2705127277_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2704927272_)))
                                           (_hd2705027275_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2704927272_))))
                                       (if (gx#stx-null? _tl2705127277_)
                                           (if (gx#stx-pair? _tl2704527261_)
                                               (let ((_e2705227280_
                                                      (gx#stx-e
                                                       _tl2704527261_)))
                                                 (let ((_tl2705427285_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2705227280_)))
                                                       (_hd2705327283_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2705227280_))))
                                                   (if (gx#stx-pair?
                                                        _hd2705327283_)
                                                       (let ((_e2705527288_
                                                              (gx#stx-e
                                                               _hd2705327283_)))
                                                         (let ((_tl2705727293_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e2705527288_)))
                       (_hd2705627291_
                        (let () (declare (not safe)) (##car _e2705527288_))))
                   (if (gx#identifier? _hd2705627291_)
                       (if (gx#stx-eq? '%#ref _hd2705627291_)
                           (if (gx#stx-pair? _tl2705727293_)
                               (let ((_e2705827296_ (gx#stx-e _tl2705727293_)))
                                 (let ((_tl2706027301_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e2705827296_)))
                                       (_hd2705927299_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e2705827296_))))
                                   (if (gx#stx-null? _tl2706027301_)
                                       (if (gx#stx-pair? _tl2705427285_)
                                           (let ((_e2706127304_
                                                  (gx#stx-e _tl2705427285_)))
                                             (let ((_tl2706327309_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2706127304_)))
                                                   (_hd2706227307_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2706127304_))))
                                               (if (gx#stx-null?
                                                    _tl2706327309_)
                                                   (___match3274632747_
                                                    _e2704027248_
                                                    _hd2704127251_
                                                    _tl2704227253_
                                                    _e2704327256_
                                                    _hd2704427259_
                                                    _tl2704527261_
                                                    _e2704627264_
                                                    _hd2704727267_
                                                    _tl2704827269_
                                                    _e2704927272_
                                                    _hd2705027275_
                                                    _tl2705127277_
                                                    _e2705227280_
                                                    _hd2705327283_
                                                    _tl2705427285_
                                                    _e2705527288_
                                                    _hd2705627291_
                                                    _tl2705727293_
                                                    _e2705827296_
                                                    _hd2705927299_
                                                    _tl2706027301_
                                                    _e2706127304_
                                                    _hd2706227307_
                                                    _tl2706327309_)
                                                   (if (gx#stx-pair/null?
                                                        _tl2704527261_)
                                                       (let ((___splice3267732678_
                                                              (gx#syntax-split-splice
                                                               _tl2704527261_
                                                               '0)))
                                                         (let ((_tl2708627149_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref ___splice3267732678_ '1)))
                       (_target2708427147_
                        (let ()
                          (declare (not safe))
                          (##vector-ref ___splice3267732678_ '0))))
                   (if (gx#stx-null? _tl2708627149_)
                       (___match3280832809_
                        _e2704027248_
                        _hd2704127251_
                        _tl2704227253_
                        _e2704327256_
                        _hd2704427259_
                        _tl2704527261_
                        _e2704627264_
                        _hd2704727267_
                        _tl2704827269_
                        _e2704927272_
                        _hd2705027275_
                        _tl2705127277_
                        ___splice3267732678_
                        _target2708427147_
                        _tl2708627149_)
                       (___kont3267932680_))))
               (___kont3267932680_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-pair/null?
                                                _tl2704527261_)
                                               (let ((___splice3267732678_
                                                      (gx#syntax-split-splice
                                                       _tl2704527261_
                                                       '0)))
                                                 (let ((_tl2708627149_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice3267732678_
                                                           '1)))
                                                       (_target2708427147_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice3267732678_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _tl2708627149_)
                                                       (___match3280832809_
                                                        _e2704027248_
                                                        _hd2704127251_
                                                        _tl2704227253_
                                                        _e2704327256_
                                                        _hd2704427259_
                                                        _tl2704527261_
                                                        _e2704627264_
                                                        _hd2704727267_
                                                        _tl2704827269_
                                                        _e2704927272_
                                                        _hd2705027275_
                                                        _tl2705127277_
                                                        ___splice3267732678_
                                                        _target2708427147_
                                                        _tl2708627149_)
                                                       (___kont3267932680_))))
                                               (___kont3267932680_)))
                                       (if (gx#stx-pair/null? _tl2704527261_)
                                           (let ((___splice3267732678_
                                                  (gx#syntax-split-splice
                                                   _tl2704527261_
                                                   '0)))
                                             (let ((_tl2708627149_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice3267732678_
                                                       '1)))
                                                   (_target2708427147_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice3267732678_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _tl2708627149_)
                                                   (___match3280832809_
                                                    _e2704027248_
                                                    _hd2704127251_
                                                    _tl2704227253_
                                                    _e2704327256_
                                                    _hd2704427259_
                                                    _tl2704527261_
                                                    _e2704627264_
                                                    _hd2704727267_
                                                    _tl2704827269_
                                                    _e2704927272_
                                                    _hd2705027275_
                                                    _tl2705127277_
                                                    ___splice3267732678_
                                                    _target2708427147_
                                                    _tl2708627149_)
                                                   (___kont3267932680_))))
                                           (___kont3267932680_)))))
                               (if (gx#stx-pair/null? _tl2704527261_)
                                   (let ((___splice3267732678_
                                          (gx#syntax-split-splice
                                           _tl2704527261_
                                           '0)))
                                     (let ((_tl2708627149_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice3267732678_
                                               '1)))
                                           (_target2708427147_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice3267732678_
                                               '0))))
                                       (if (gx#stx-null? _tl2708627149_)
                                           (___match3280832809_
                                            _e2704027248_
                                            _hd2704127251_
                                            _tl2704227253_
                                            _e2704327256_
                                            _hd2704427259_
                                            _tl2704527261_
                                            _e2704627264_
                                            _hd2704727267_
                                            _tl2704827269_
                                            _e2704927272_
                                            _hd2705027275_
                                            _tl2705127277_
                                            ___splice3267732678_
                                            _target2708427147_
                                            _tl2708627149_)
                                           (___kont3267932680_))))
                                   (___kont3267932680_)))
                           (if (gx#stx-pair/null? _tl2704527261_)
                               (let ((___splice3267732678_
                                      (gx#syntax-split-splice
                                       _tl2704527261_
                                       '0)))
                                 (let ((_tl2708627149_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice3267732678_
                                           '1)))
                                       (_target2708427147_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice3267732678_
                                           '0))))
                                   (if (gx#stx-null? _tl2708627149_)
                                       (___match3280832809_
                                        _e2704027248_
                                        _hd2704127251_
                                        _tl2704227253_
                                        _e2704327256_
                                        _hd2704427259_
                                        _tl2704527261_
                                        _e2704627264_
                                        _hd2704727267_
                                        _tl2704827269_
                                        _e2704927272_
                                        _hd2705027275_
                                        _tl2705127277_
                                        ___splice3267732678_
                                        _target2708427147_
                                        _tl2708627149_)
                                       (___kont3267932680_))))
                               (___kont3267932680_)))
                       (if (gx#stx-pair/null? _tl2704527261_)
                           (let ((___splice3267732678_
                                  (gx#syntax-split-splice _tl2704527261_ '0)))
                             (let ((_tl2708627149_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref ___splice3267732678_ '1)))
                                   (_target2708427147_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref ___splice3267732678_ '0))))
                               (if (gx#stx-null? _tl2708627149_)
                                   (___match3280832809_
                                    _e2704027248_
                                    _hd2704127251_
                                    _tl2704227253_
                                    _e2704327256_
                                    _hd2704427259_
                                    _tl2704527261_
                                    _e2704627264_
                                    _hd2704727267_
                                    _tl2704827269_
                                    _e2704927272_
                                    _hd2705027275_
                                    _tl2705127277_
                                    ___splice3267732678_
                                    _target2708427147_
                                    _tl2708627149_)
                                   (___kont3267932680_))))
                           (___kont3267932680_)))))
               (if (gx#stx-pair/null? _tl2704527261_)
                   (let ((___splice3267732678_
                          (gx#syntax-split-splice _tl2704527261_ '0)))
                     (let ((_tl2708627149_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice3267732678_ '1)))
                           (_target2708427147_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice3267732678_ '0))))
                       (if (gx#stx-null? _tl2708627149_)
                           (___match3280832809_
                            _e2704027248_
                            _hd2704127251_
                            _tl2704227253_
                            _e2704327256_
                            _hd2704427259_
                            _tl2704527261_
                            _e2704627264_
                            _hd2704727267_
                            _tl2704827269_
                            _e2704927272_
                            _hd2705027275_
                            _tl2705127277_
                            ___splice3267732678_
                            _target2708427147_
                            _tl2708627149_)
                           (___kont3267932680_))))
                   (___kont3267932680_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _tl2704527261_)
                                                   (let ((___splice3267732678_
                                                          (gx#syntax-split-splice
                                                           _tl2704527261_
                                                           '0)))
                                                     (let ((_tl2708627149_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice3267732678_
                                                               '1)))
                                                           (_target2708427147_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice3267732678_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _tl2708627149_)
                                                           (___match3280832809_
                                                            _e2704027248_
                                                            _hd2704127251_
                                                            _tl2704227253_
                                                            _e2704327256_
                                                            _hd2704427259_
                                                            _tl2704527261_
                                                            _e2704627264_
                                                            _hd2704727267_
                                                            _tl2704827269_
                                                            _e2704927272_
                                                            _hd2705027275_
                                                            _tl2705127277_
                                                            ___splice3267732678_
                                                            _target2708427147_
                                                            _tl2708627149_)
                                                           (___kont3267932680_))))
                                                   (___kont3267932680_)))
                                           (___kont3267932680_))))
                                   (___kont3267932680_))
                               (___kont3267932680_))
                           (___kont3267932680_))))
                   (___kont3267932680_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont3267932680_))
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd2704127251_)
                                                   (if (gx#stx-pair?
                                                        _tl2704227253_)
                                                       (let ((_e2706727233_
                                                              (gx#stx-e
                                                               _tl2704227253_)))
                                                         (let ((_tl2706927238_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e2706727233_)))
                       (_hd2706827236_
                        (let () (declare (not safe)) (##car _e2706727233_))))
                   (if (gx#stx-null? _hd2706827236_)
                       (if (gx#stx-null? _tl2706927238_)
                           (___kont3267332674_)
                           (___kont3267932680_))
                       (___kont3267932680_))))
               (___kont3267932680_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont3267932680_)))
                                           (___kont3267932680_))))
                                   (___kont3267932680_))))))))))
                 (_mixin-resolve-type26288_
                  (lambda (_mixin27013_)
                    (let ((_t2701427016_
                           (gxc#optimizer-resolve-type _mixin27013_)))
                      (if _t2701427016_
                          (let ((_t27019_ _t2701427016_))
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _t27019_
                                       'gxc#!class-type::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _t27019_
                                       'gxc#!struct-type::t)))
                                '#!void
                                (gxc#raise-compile-error
                                 '"Illegal class-type construction; invalid mixin type"
                                 _stx26284_
                                 _mixin27013_))
                            _t27019_)
                          '#f))))
                 (_mixin-super26289_
                  (lambda (_mixins26885_ _ids26886_)
                    (letrec ((_super-e26888_
                              (lambda (_a27007_ _b27008_)
                                (if (eq? _a27007_ '#!void)
                                    '#!void
                                    (if (not _b27008_)
                                        _a27007_
                                        (if (eq? _a27007_ _b27008_)
                                            _a27007_
                                            (let ((_ha27010_
                                                   (_struct-hierarchy26889_
                                                    _a27007_))
                                                  (_hb27011_
                                                   (_struct-hierarchy26889_
                                                    _b27008_)))
                                              (if (equal? _ha27010_ _hb27011_)
                                                  _a27007_
                                                  (if (_struct<26890_
                                                       _ha27010_
                                                       _hb27011_)
                                                      _b27008_
                                                      (if (_struct<26890_
                                                           _hb27011_
                                                           _ha27010_)
                                                          _a27007_
                                                          (if (and (not (car _ha27010_))
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (not (car _hb27011_)))
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal class-type construction; incompatible base classes"
                       _stx26284_
                       _a27007_
                       _b27008_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (_struct-hierarchy26889_
                              (lambda (_id26995_)
                                (let _lp26997_ ((_id26999_ _id26995_)
                                                (_h27000_ '()))
                                  (if (not _id26999_)
                                      _h27000_
                                      (let ((_$e27002_
                                             (gxc#optimizer-resolve-type
                                              _id26999_)))
                                        (if _$e27002_
                                            ((lambda (_t27005_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _t27005_
                                                      'gxc#!struct-type::t))
                                                   (_lp26997_
                                                    (##structure-ref
                                                     _t27005_
                                                     '2
                                                     gxc#!struct-type::t
                                                     '#f)
                                                    (cons _id26999_ _h27000_))
                                                   (error '"Unexpected struct type"
                                                          _id26999_
                                                          _t27005_)))
                                             _$e27002_)
                                            (cons '#f _h27000_)))))))
                             (_struct<26890_
                              (lambda (_ha26938_ _hb26939_)
                                (if (fx< (length _ha26938_) (length _hb26939_))
                                    (let _lp26941_ ((_rest-a26943_ _ha26938_)
                                                    (_rest-b26944_ _hb26939_))
                                      (let ((_rest-a2694526956_ _rest-a26943_)
                                            (_rest-b2694626958_ _rest-b26944_))
                                        (let* ((_else2694826966_
                                                (lambda () '#t))
                                               (_K2695026974_
                                                (lambda (_rest-a26969_
                                                         _a26970_
                                                         _rest-b26971_
                                                         _b26972_)
                                                  (if (eq? _a26970_ _b26972_)
                                                      (_lp26941_
                                                       _rest-a26969_
                                                       _rest-b26971_)
                                                      '#f))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _rest-a2694526956_))
                                              (let ((_hd2695326977_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _rest-a2694526956_)))
                                                    (_tl2695426979_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _rest-a2694526956_))))
                                                (let* ((_a26982_
                                                        _hd2695326977_)
                                                       (_rest-a26984_
                                                        _tl2695426979_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _rest-b2694626958_))
                                                      (let ((_hd2695126986_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _rest-b2694626958_)))
                    (_tl2695226988_
                     (let () (declare (not safe)) (##cdr _rest-b2694626958_))))
                (let* ((_b26991_ _hd2695126986_)
                       (_rest-b26993_ _tl2695226988_))
                  (_K2695026974_
                   _rest-a26984_
                   _a26982_
                   _rest-b26993_
                   _b26991_)))
              (_else2694826966_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_else2694826966_)))))
                                    '#f))))
                      (let _lp26892_ ((_rest26894_ _mixins26885_)
                                      (_rest-ids26895_ _ids26886_)
                                      (_super26896_ '#f))
                        (let* ((_rest2689726905_ _rest26894_)
                               (_else2689926913_ (lambda () _super26896_))
                               (_K2690126926_
                                (lambda (_rest26916_ _t26917_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _t26917_
                                         'gxc#!class-type::t))
                                      (let* ((_t-super26919_
                                              (##structure-ref
                                               _t26917_
                                               '2
                                               gxc#!class-type::t
                                               '#f))
                                             (_super26921_
                                              (_super-e26888_
                                               _t-super26919_
                                               _super26896_)))
                                        (if (eq? _super26921_ '#!void)
                                            '#!void
                                            (_lp26892_
                                             _rest26916_
                                             (cdr _rest-ids26895_)
                                             _super26921_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _t26917_
                                             'gxc#!struct-type::t))
                                          (let ((_super26924_
                                                 (_super-e26888_
                                                  (car _rest-ids26895_)
                                                  _super26896_)))
                                            (if (eq? _super26924_ '#!void)
                                                '#!void
                                                (_lp26892_
                                                 _rest26916_
                                                 (cdr _rest-ids26895_)
                                                 _super26924_)))
                                          (error '"Unexpected mixin"
                                                 _t26917_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest2689726905_))
                              (let ((_hd2690226929_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest2689726905_)))
                                    (_tl2690326931_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest2689726905_))))
                                (let* ((_t26934_ _hd2690226929_)
                                       (_rest26936_ _tl2690326931_))
                                  (_K2690126926_ _rest26936_ _t26934_)))
                              (_else2689926913_)))))))
                 (_mixin-slots26290_
                  (lambda (_mixins26840_)
                    (let _lp26842_ ((_rest26844_ _mixins26840_)
                                    (_slots26845_ '()))
                      (let* ((_rest2684626854_ _rest26844_)
                             (_else2684826862_ (lambda () _slots26845_))
                             (_K2685026873_
                              (lambda (_rest26865_ _t26866_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _t26866_
                                       'gxc#!class-type::t))
                                    (let ((_$e26868_
                                           (##structure-ref
                                            _t26866_
                                            '5
                                            gxc#!class-type::t
                                            '#f)))
                                      (if _$e26868_
                                          ((lambda (_xslots26871_)
                                             (_lp26842_
                                              _rest26865_
                                              (foldl1 _cons-slot26292_
                                                      _slots26845_
                                                      _xslots26871_)))
                                           _$e26868_)
                                          (begin
                                            (gxc#verbose
                                             '"make-class-type: incomplete mixin class "
                                             (##structure-ref
                                              _t26866_
                                              '1
                                              gxc#!type::t
                                              '#f))
                                            '#f)))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _t26866_
                                           'gxc#!struct-type::t))
                                        (_lp26842_ _rest26865_ _slots26845_)
                                        (error '"Unexpected mixin"
                                               _t26866_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest2684626854_))
                            (let ((_hd2685126876_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest2684626854_)))
                                  (_tl2685226878_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest2684626854_))))
                              (let* ((_t26881_ _hd2685126876_)
                                     (_rest26883_ _tl2685226878_))
                                (_K2685026873_ _rest26883_ _t26881_)))
                            (_else2684826862_))))))
                 (_mixin-ctor26291_
                  (lambda (_mixins26792_)
                    (letrec ((_ctor-e26794_
                              (lambda (_a26834_ _b26835_)
                                (if (or (eq? _a26834_ '#!void)
                                        (eq? _b26835_ '#!void))
                                    '#!void
                                    (if (not _a26834_)
                                        _b26835_
                                        (if (not _b26835_)
                                            _a26834_
                                            (if (eq? _a26834_ _b26835_)
                                                _a26834_
                                                (gxc#raise-compile-error
                                                 '"Illegal class-type construction; conflicting implicit constructors"
                                                 _stx26284_
                                                 _a26834_
                                                 _b26835_))))))))
                      (let _lp26796_ ((_rest26798_ _mixins26792_)
                                      (_ctor26799_ '#f))
                        (if (eq? _ctor26799_ '#!void)
                            '#!void
                            (let* ((_rest2680026808_ _rest26798_)
                                   (_else2680226816_ (lambda () _ctor26799_))
                                   (_K2680426822_
                                    (lambda (_rest26819_ _t26820_)
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _t26820_
                                             'gxc#!class-type::t))
                                          (_lp26796_
                                           _rest26819_
                                           (_ctor-e26794_
                                            _ctor26799_
                                            (##structure-ref
                                             _t26820_
                                             '6
                                             gxc#!class-type::t
                                             '#f)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-instance-of?
                                                 _t26820_
                                                 'gxc#!struct-type::t))
                                              (_lp26796_
                                               _rest26819_
                                               (_ctor-e26794_
                                                _ctor26799_
                                                (##structure-ref
                                                 _t26820_
                                                 '5
                                                 gxc#!struct-type::t
                                                 '#f)))
                                              (error '"Unexpected mixin"
                                                     _t26820_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _rest2680026808_))
                                  (let ((_hd2680526825_
                                         (let ()
                                           (declare (not safe))
                                           (##car _rest2680026808_)))
                                        (_tl2680626827_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _rest2680026808_))))
                                    (let* ((_t26830_ _hd2680526825_)
                                           (_rest26832_ _tl2680626827_))
                                      (_K2680426822_ _rest26832_ _t26830_)))
                                  (_else2680226816_))))))))
                 (_cons-slot26292_
                  (lambda (_slot26789_ _r26790_)
                    (if (memq _slot26789_ _r26790_)
                        _r26790_
                        (cons _slot26789_ _r26790_)))))
          (let* ((___stx3281132812_ _args26285_)
                 (_g2629626403_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx3281132812_))))
            (let ((___kont3281332814_
                   (lambda (_L26737_ _L26738_ _L26739_ _L26740_ _L26741_)
                     (let* ((_slots26784_ (gx#stx-e _L26740_))
                            (__obj34520 (make-object gxc#!class-type::t '8)))
                       (gxc#!class-type:::init!
                        __obj34520
                        (gx#stx-e _L26741_)
                        '#f
                        '()
                        _slots26784_
                        _slots26784_
                        (gx#stx-e _L26737_)
                        (gx#stx-e _L26738_))
                       __obj34520)))
                  (___kont3281532816_
                   (lambda (_L26527_
                            _L26528_
                            _L26529_
                            _L26530_
                            _L26531_
                            _L26532_)
                     (let ((_$e26575_ (_mixin-expr->list26287_ _L26531_)))
                       (if _$e26575_
                           ((lambda (_mixin26578_)
                              (let ((_mixin-t26580_
                                     (map _mixin-resolve-type26288_
                                          _mixin26578_)))
                                (if (ormap1 not _mixin-t26580_)
                                    (begin
                                      (gxc#verbose
                                       '"make-class-type: incomplete class"
                                       (gx#stx-e _L26532_))
                                      (let ((__obj34521
                                             (make-object
                                              gxc#!class-type::t
                                              '8)))
                                        (gxc#!class-type:::init!
                                         __obj34521
                                         (gx#stx-e _L26532_)
                                         '#!void
                                         _mixin26578_
                                         (gx#stx-e _L26530_)
                                         '#f
                                         (let ((_$e26582_ (gx#stx-e _L26527_)))
                                           (if _$e26582_ _$e26582_ '#!void))
                                         (gx#stx-e _L26528_))
                                        __obj34521))
                                    (let* ((_super26585_
                                            (_mixin-super26289_
                                             _mixin-t26580_
                                             _mixin26578_))
                                           (_slots26587_ (gx#stx-e _L26530_))
                                           (_xslots26589_
                                            (_mixin-slots26290_
                                             _mixin-t26580_))
                                           (_xslots26591_
                                            (if _xslots26589_
                                                (reverse (foldl1 _cons-slot26292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _xslots26589_
                         _slots26587_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '#f))
                                           (_ctor26593_ (gx#stx-e _L26527_))
                                           (_ctor26598_
                                            (let ((_$e26595_ _ctor26593_))
                                              (if _$e26595_
                                                  _$e26595_
                                                  (_mixin-ctor26291_
                                                   _mixin-t26580_)))))
                                      (let ((__obj34522
                                             (make-object
                                              gxc#!class-type::t
                                              '8)))
                                        (gxc#!class-type:::init!
                                         __obj34522
                                         (gx#stx-e _L26532_)
                                         _super26585_
                                         _mixin26578_
                                         _slots26587_
                                         _xslots26591_
                                         _ctor26598_
                                         (gx#stx-e _L26528_))
                                        __obj34522)))))
                            _$e26575_)
                           (begin
                             (gxc#verbose
                              '"make-class-type: incomplete class "
                              (gx#stx-e _L26532_))
                             (let ((__obj34523
                                    (make-object gxc#!class-type::t '8)))
                               (gxc#!class-type:::init!
                                __obj34523
                                (gx#stx-e _L26532_)
                                '#!void
                                '#f
                                (gx#stx-e _L26530_)
                                '#f
                                (let ((_$e26601_ (gx#stx-e _L26527_)))
                                  (if _$e26601_ _$e26601_ '#!void))
                                (gx#stx-e _L26528_))
                               __obj34523))))))
                  (___kont3281732818_
                   (lambda ()
                     (gxc#verbose
                      '"make-class-type: can't infer type "
                      (gx#syntax->datum _stx26284_))
                     '#f)))
              (if (gx#stx-pair? ___stx3281132812_)
                  (let ((_e2630326609_ (gx#stx-e ___stx3281132812_)))
                    (let ((_tl2630526614_
                           (let () (declare (not safe)) (##cdr _e2630326609_)))
                          (_hd2630426612_
                           (let ()
                             (declare (not safe))
                             (##car _e2630326609_))))
                      (if (gx#stx-pair? _hd2630426612_)
                          (let ((_e2630626617_ (gx#stx-e _hd2630426612_)))
                            (let ((_tl2630826622_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2630626617_)))
                                  (_hd2630726620_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2630626617_))))
                              (if (gx#identifier? _hd2630726620_)
                                  (if (gx#stx-eq? '%#quote _hd2630726620_)
                                      (if (gx#stx-pair? _tl2630826622_)
                                          (let ((_e2630926625_
                                                 (gx#stx-e _tl2630826622_)))
                                            (let ((_tl2631126630_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2630926625_)))
                                                  (_hd2631026628_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2630926625_))))
                                              (if (gx#stx-null? _tl2631126630_)
                                                  (if (gx#stx-pair?
                                                       _tl2630526614_)
                                                      (let ((_e2631226633_
                                                             (gx#stx-e
                                                              _tl2630526614_)))
                                                        (let ((_tl2631426638_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2631226633_)))
                      (_hd2631326636_
                       (let () (declare (not safe)) (##car _e2631226633_))))
                  (if (gx#stx-pair? _hd2631326636_)
                      (let ((_e2631526641_ (gx#stx-e _hd2631326636_)))
                        (let ((_tl2631726646_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2631526641_)))
                              (_hd2631626644_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2631526641_))))
                          (if (gx#identifier? _hd2631626644_)
                              (if (gx#stx-eq? '%#quote _hd2631626644_)
                                  (if (gx#stx-pair? _tl2631726646_)
                                      (let ((_e2631826649_
                                             (gx#stx-e _tl2631726646_)))
                                        (let ((_tl2632026654_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2631826649_)))
                                              (_hd2631926652_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2631826649_))))
                                          (if (gx#stx-null? _hd2631926652_)
                                              (if (gx#stx-null? _tl2632026654_)
                                                  (if (gx#stx-pair?
                                                       _tl2631426638_)
                                                      (let ((_e2632126657_
                                                             (gx#stx-e
                                                              _tl2631426638_)))
                                                        (let ((_tl2632326662_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2632126657_)))
                      (_hd2632226660_
                       (let () (declare (not safe)) (##car _e2632126657_))))
                  (if (gx#stx-pair? _hd2632226660_)
                      (let ((_e2632426665_ (gx#stx-e _hd2632226660_)))
                        (let ((_tl2632626670_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2632426665_)))
                              (_hd2632526668_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2632426665_))))
                          (if (gx#identifier? _hd2632526668_)
                              (if (gx#stx-eq? '%#quote _hd2632526668_)
                                  (if (gx#stx-pair? _tl2632626670_)
                                      (let ((_e2632726673_
                                             (gx#stx-e _tl2632626670_)))
                                        (let ((_tl2632926678_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2632726673_)))
                                              (_hd2632826676_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2632726673_))))
                                          (if (gx#stx-null? _tl2632926678_)
                                              (if (gx#stx-pair? _tl2632326662_)
                                                  (let ((_e2633026681_
                                                         (gx#stx-e
                                                          _tl2632326662_)))
                                                    (let ((_tl2633226686_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2633026681_)))
                                                          (_hd2633126684_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2633026681_))))
                                                      (if (gx#stx-pair?
                                                           _tl2633226686_)
                                                          (let ((_e2633326689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2633226686_)))
                    (let ((_tl2633526694_
                           (let () (declare (not safe)) (##cdr _e2633326689_)))
                          (_hd2633426692_
                           (let ()
                             (declare (not safe))
                             (##car _e2633326689_))))
                      (if (gx#stx-pair? _hd2633426692_)
                          (let ((_e2633626697_ (gx#stx-e _hd2633426692_)))
                            (let ((_tl2633826702_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2633626697_)))
                                  (_hd2633726700_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2633626697_))))
                              (if (gx#identifier? _hd2633726700_)
                                  (if (gx#stx-eq? '%#quote _hd2633726700_)
                                      (if (gx#stx-pair? _tl2633826702_)
                                          (let ((_e2633926705_
                                                 (gx#stx-e _tl2633826702_)))
                                            (let ((_tl2634126710_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2633926705_)))
                                                  (_hd2634026708_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2633926705_))))
                                              (if (gx#stx-null? _tl2634126710_)
                                                  (if (gx#stx-pair?
                                                       _tl2633526694_)
                                                      (let ((_e2634226713_
                                                             (gx#stx-e
                                                              _tl2633526694_)))
                                                        (let ((_tl2634426718_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2634226713_)))
                      (_hd2634326716_
                       (let () (declare (not safe)) (##car _e2634226713_))))
                  (if (gx#stx-pair? _hd2634326716_)
                      (let ((_e2634526721_ (gx#stx-e _hd2634326716_)))
                        (let ((_tl2634726726_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2634526721_)))
                              (_hd2634626724_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2634526721_))))
                          (if (gx#identifier? _hd2634626724_)
                              (if (gx#stx-eq? '%#quote _hd2634626724_)
                                  (if (gx#stx-pair? _tl2634726726_)
                                      (let ((_e2634826729_
                                             (gx#stx-e _tl2634726726_)))
                                        (let ((_tl2635026734_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2634826729_)))
                                              (_hd2634926732_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2634826729_))))
                                          (if (gx#stx-null? _tl2635026734_)
                                              (if (gx#stx-null? _tl2634426718_)
                                                  (___kont3281332814_
                                                   _hd2634926732_
                                                   _hd2634026708_
                                                   _hd2633126684_
                                                   _hd2632826676_
                                                   _hd2631026628_)
                                                  (___kont3281732818_))
                                              (___kont3281732818_))))
                                      (___kont3281732818_))
                                  (___kont3281732818_))
                              (___kont3281732818_))))
                      (___kont3281732818_))))
              (___kont3281732818_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3281732818_))))
                                          (___kont3281732818_))
                                      (___kont3281732818_))
                                  (___kont3281732818_))))
                          (___kont3281732818_))))
                  (___kont3281732818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3281732818_))
                                              (___kont3281732818_))))
                                      (___kont3281732818_))
                                  (___kont3281732818_))
                              (___kont3281732818_))))
                      (___kont3281732818_))))
              (___kont3281732818_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl2631426638_)
                                                      (let ((_e2636926447_
                                                             (gx#stx-e
                                                              _tl2631426638_)))
                                                        (let ((_tl2637126452_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2636926447_)))
                      (_hd2637026450_
                       (let () (declare (not safe)) (##car _e2636926447_))))
                  (if (gx#stx-pair? _hd2637026450_)
                      (let ((_e2637226455_ (gx#stx-e _hd2637026450_)))
                        (let ((_tl2637426460_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2637226455_)))
                              (_hd2637326458_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2637226455_))))
                          (if (gx#identifier? _hd2637326458_)
                              (if (gx#stx-eq? '%#quote _hd2637326458_)
                                  (if (gx#stx-pair? _tl2637426460_)
                                      (let ((_e2637526463_
                                             (gx#stx-e _tl2637426460_)))
                                        (let ((_tl2637726468_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2637526463_)))
                                              (_hd2637626466_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2637526463_))))
                                          (if (gx#stx-null? _tl2637726468_)
                                              (if (gx#stx-pair? _tl2637126452_)
                                                  (let ((_e2637826471_
                                                         (gx#stx-e
                                                          _tl2637126452_)))
                                                    (let ((_tl2638026476_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2637826471_)))
                                                          (_hd2637926474_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2637826471_))))
                                                      (if (gx#stx-pair?
                                                           _tl2638026476_)
                                                          (let ((_e2638126479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2638026476_)))
                    (let ((_tl2638326484_
                           (let () (declare (not safe)) (##cdr _e2638126479_)))
                          (_hd2638226482_
                           (let ()
                             (declare (not safe))
                             (##car _e2638126479_))))
                      (if (gx#stx-pair? _hd2638226482_)
                          (let ((_e2638426487_ (gx#stx-e _hd2638226482_)))
                            (let ((_tl2638626492_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2638426487_)))
                                  (_hd2638526490_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2638426487_))))
                              (if (gx#identifier? _hd2638526490_)
                                  (if (gx#stx-eq? '%#quote _hd2638526490_)
                                      (if (gx#stx-pair? _tl2638626492_)
                                          (let ((_e2638726495_
                                                 (gx#stx-e _tl2638626492_)))
                                            (let ((_tl2638926500_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2638726495_)))
                                                  (_hd2638826498_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2638726495_))))
                                              (if (gx#stx-null? _tl2638926500_)
                                                  (if (gx#stx-pair?
                                                       _tl2638326484_)
                                                      (let ((_e2639026503_
                                                             (gx#stx-e
                                                              _tl2638326484_)))
                                                        (let ((_tl2639226508_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2639026503_)))
                      (_hd2639126506_
                       (let () (declare (not safe)) (##car _e2639026503_))))
                  (if (gx#stx-pair? _hd2639126506_)
                      (let ((_e2639326511_ (gx#stx-e _hd2639126506_)))
                        (let ((_tl2639526516_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2639326511_)))
                              (_hd2639426514_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2639326511_))))
                          (if (gx#identifier? _hd2639426514_)
                              (if (gx#stx-eq? '%#quote _hd2639426514_)
                                  (if (gx#stx-pair? _tl2639526516_)
                                      (let ((_e2639626519_
                                             (gx#stx-e _tl2639526516_)))
                                        (let ((_tl2639826524_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2639626519_)))
                                              (_hd2639726522_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2639626519_))))
                                          (if (gx#stx-null? _tl2639826524_)
                                              (if (gx#stx-null? _tl2639226508_)
                                                  (___kont3281532816_
                                                   _hd2639726522_
                                                   _hd2638826498_
                                                   _hd2637926474_
                                                   _hd2637626466_
                                                   _hd2631326636_
                                                   _hd2631026628_)
                                                  (___kont3281732818_))
                                              (___kont3281732818_))))
                                      (___kont3281732818_))
                                  (___kont3281732818_))
                              (___kont3281732818_))))
                      (___kont3281732818_))))
              (___kont3281732818_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3281732818_))))
                                          (___kont3281732818_))
                                      (___kont3281732818_))
                                  (___kont3281732818_))))
                          (___kont3281732818_))))
                  (___kont3281732818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3281732818_))
                                              (___kont3281732818_))))
                                      (___kont3281732818_))
                                  (___kont3281732818_))
                              (___kont3281732818_))))
                      (___kont3281732818_))))
              (___kont3281732818_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl2631426638_)
                                                  (let ((_e2636926447_
                                                         (gx#stx-e
                                                          _tl2631426638_)))
                                                    (let ((_tl2637126452_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2636926447_)))
                                                          (_hd2637026450_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2636926447_))))
                                                      (if (gx#stx-pair?
                                                           _hd2637026450_)
                                                          (let ((_e2637226455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2637026450_)))
                    (let ((_tl2637426460_
                           (let () (declare (not safe)) (##cdr _e2637226455_)))
                          (_hd2637326458_
                           (let ()
                             (declare (not safe))
                             (##car _e2637226455_))))
                      (if (gx#identifier? _hd2637326458_)
                          (if (gx#stx-eq? '%#quote _hd2637326458_)
                              (if (gx#stx-pair? _tl2637426460_)
                                  (let ((_e2637526463_
                                         (gx#stx-e _tl2637426460_)))
                                    (let ((_tl2637726468_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2637526463_)))
                                          (_hd2637626466_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2637526463_))))
                                      (if (gx#stx-null? _tl2637726468_)
                                          (if (gx#stx-pair? _tl2637126452_)
                                              (let ((_e2637826471_
                                                     (gx#stx-e
                                                      _tl2637126452_)))
                                                (let ((_tl2638026476_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2637826471_)))
                                                      (_hd2637926474_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2637826471_))))
                                                  (if (gx#stx-pair?
                                                       _tl2638026476_)
                                                      (let ((_e2638126479_
                                                             (gx#stx-e
                                                              _tl2638026476_)))
                                                        (let ((_tl2638326484_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2638126479_)))
                      (_hd2638226482_
                       (let () (declare (not safe)) (##car _e2638126479_))))
                  (if (gx#stx-pair? _hd2638226482_)
                      (let ((_e2638426487_ (gx#stx-e _hd2638226482_)))
                        (let ((_tl2638626492_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2638426487_)))
                              (_hd2638526490_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2638426487_))))
                          (if (gx#identifier? _hd2638526490_)
                              (if (gx#stx-eq? '%#quote _hd2638526490_)
                                  (if (gx#stx-pair? _tl2638626492_)
                                      (let ((_e2638726495_
                                             (gx#stx-e _tl2638626492_)))
                                        (let ((_tl2638926500_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2638726495_)))
                                              (_hd2638826498_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2638726495_))))
                                          (if (gx#stx-null? _tl2638926500_)
                                              (if (gx#stx-pair? _tl2638326484_)
                                                  (let ((_e2639026503_
                                                         (gx#stx-e
                                                          _tl2638326484_)))
                                                    (let ((_tl2639226508_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2639026503_)))
                                                          (_hd2639126506_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2639026503_))))
                                                      (if (gx#stx-pair?
                                                           _hd2639126506_)
                                                          (let ((_e2639326511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2639126506_)))
                    (let ((_tl2639526516_
                           (let () (declare (not safe)) (##cdr _e2639326511_)))
                          (_hd2639426514_
                           (let ()
                             (declare (not safe))
                             (##car _e2639326511_))))
                      (if (gx#identifier? _hd2639426514_)
                          (if (gx#stx-eq? '%#quote _hd2639426514_)
                              (if (gx#stx-pair? _tl2639526516_)
                                  (let ((_e2639626519_
                                         (gx#stx-e _tl2639526516_)))
                                    (let ((_tl2639826524_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2639626519_)))
                                          (_hd2639726522_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2639626519_))))
                                      (if (gx#stx-null? _tl2639826524_)
                                          (if (gx#stx-null? _tl2639226508_)
                                              (___kont3281532816_
                                               _hd2639726522_
                                               _hd2638826498_
                                               _hd2637926474_
                                               _hd2637626466_
                                               _hd2631326636_
                                               _hd2631026628_)
                                              (___kont3281732818_))
                                          (___kont3281732818_))))
                                  (___kont3281732818_))
                              (___kont3281732818_))
                          (___kont3281732818_))))
                  (___kont3281732818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3281732818_))
                                              (___kont3281732818_))))
                                      (___kont3281732818_))
                                  (___kont3281732818_))
                              (___kont3281732818_))))
                      (___kont3281732818_))))
              (___kont3281732818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont3281732818_))
                                          (___kont3281732818_))))
                                  (___kont3281732818_))
                              (___kont3281732818_))
                          (___kont3281732818_))))
                  (___kont3281732818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3281732818_)))))
                                      (if (gx#stx-pair? _tl2631426638_)
                                          (let ((_e2636926447_
                                                 (gx#stx-e _tl2631426638_)))
                                            (let ((_tl2637126452_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2636926447_)))
                                                  (_hd2637026450_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2636926447_))))
                                              (if (gx#stx-pair? _hd2637026450_)
                                                  (let ((_e2637226455_
                                                         (gx#stx-e
                                                          _hd2637026450_)))
                                                    (let ((_tl2637426460_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2637226455_)))
                                                          (_hd2637326458_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2637226455_))))
                                                      (if (gx#identifier?
                                                           _hd2637326458_)
                                                          (if (gx#stx-eq?
                                                               '%#quote
                                                               _hd2637326458_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2637426460_)
                          (let ((_e2637526463_ (gx#stx-e _tl2637426460_)))
                            (let ((_tl2637726468_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2637526463_)))
                                  (_hd2637626466_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2637526463_))))
                              (if (gx#stx-null? _tl2637726468_)
                                  (if (gx#stx-pair? _tl2637126452_)
                                      (let ((_e2637826471_
                                             (gx#stx-e _tl2637126452_)))
                                        (let ((_tl2638026476_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2637826471_)))
                                              (_hd2637926474_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2637826471_))))
                                          (if (gx#stx-pair? _tl2638026476_)
                                              (let ((_e2638126479_
                                                     (gx#stx-e
                                                      _tl2638026476_)))
                                                (let ((_tl2638326484_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2638126479_)))
                                                      (_hd2638226482_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2638126479_))))
                                                  (if (gx#stx-pair?
                                                       _hd2638226482_)
                                                      (let ((_e2638426487_
                                                             (gx#stx-e
                                                              _hd2638226482_)))
                                                        (let ((_tl2638626492_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2638426487_)))
                      (_hd2638526490_
                       (let () (declare (not safe)) (##car _e2638426487_))))
                  (if (gx#identifier? _hd2638526490_)
                      (if (gx#stx-eq? '%#quote _hd2638526490_)
                          (if (gx#stx-pair? _tl2638626492_)
                              (let ((_e2638726495_ (gx#stx-e _tl2638626492_)))
                                (let ((_tl2638926500_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2638726495_)))
                                      (_hd2638826498_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2638726495_))))
                                  (if (gx#stx-null? _tl2638926500_)
                                      (if (gx#stx-pair? _tl2638326484_)
                                          (let ((_e2639026503_
                                                 (gx#stx-e _tl2638326484_)))
                                            (let ((_tl2639226508_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2639026503_)))
                                                  (_hd2639126506_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2639026503_))))
                                              (if (gx#stx-pair? _hd2639126506_)
                                                  (let ((_e2639326511_
                                                         (gx#stx-e
                                                          _hd2639126506_)))
                                                    (let ((_tl2639526516_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2639326511_)))
                                                          (_hd2639426514_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2639326511_))))
                                                      (if (gx#identifier?
                                                           _hd2639426514_)
                                                          (if (gx#stx-eq?
                                                               '%#quote
                                                               _hd2639426514_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2639526516_)
                          (let ((_e2639626519_ (gx#stx-e _tl2639526516_)))
                            (let ((_tl2639826524_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2639626519_)))
                                  (_hd2639726522_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2639626519_))))
                              (if (gx#stx-null? _tl2639826524_)
                                  (if (gx#stx-null? _tl2639226508_)
                                      (___kont3281532816_
                                       _hd2639726522_
                                       _hd2638826498_
                                       _hd2637926474_
                                       _hd2637626466_
                                       _hd2631326636_
                                       _hd2631026628_)
                                      (___kont3281732818_))
                                  (___kont3281732818_))))
                          (___kont3281732818_))
                      (___kont3281732818_))
                  (___kont3281732818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3281732818_))))
                                          (___kont3281732818_))
                                      (___kont3281732818_))))
                              (___kont3281732818_))
                          (___kont3281732818_))
                      (___kont3281732818_))))
              (___kont3281732818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont3281732818_))))
                                      (___kont3281732818_))
                                  (___kont3281732818_))))
                          (___kont3281732818_))
                      (___kont3281732818_))
                  (___kont3281732818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3281732818_))))
                                          (___kont3281732818_)))
                                  (if (gx#stx-pair? _tl2631426638_)
                                      (let ((_e2636926447_
                                             (gx#stx-e _tl2631426638_)))
                                        (let ((_tl2637126452_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2636926447_)))
                                              (_hd2637026450_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2636926447_))))
                                          (if (gx#stx-pair? _hd2637026450_)
                                              (let ((_e2637226455_
                                                     (gx#stx-e
                                                      _hd2637026450_)))
                                                (let ((_tl2637426460_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2637226455_)))
                                                      (_hd2637326458_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2637226455_))))
                                                  (if (gx#identifier?
                                                       _hd2637326458_)
                                                      (if (gx#stx-eq?
                                                           '%#quote
                                                           _hd2637326458_)
                                                          (if (gx#stx-pair?
                                                               _tl2637426460_)
                                                              (let ((_e2637526463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2637426460_)))
                        (let ((_tl2637726468_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2637526463_)))
                              (_hd2637626466_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2637526463_))))
                          (if (gx#stx-null? _tl2637726468_)
                              (if (gx#stx-pair? _tl2637126452_)
                                  (let ((_e2637826471_
                                         (gx#stx-e _tl2637126452_)))
                                    (let ((_tl2638026476_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2637826471_)))
                                          (_hd2637926474_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2637826471_))))
                                      (if (gx#stx-pair? _tl2638026476_)
                                          (let ((_e2638126479_
                                                 (gx#stx-e _tl2638026476_)))
                                            (let ((_tl2638326484_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2638126479_)))
                                                  (_hd2638226482_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2638126479_))))
                                              (if (gx#stx-pair? _hd2638226482_)
                                                  (let ((_e2638426487_
                                                         (gx#stx-e
                                                          _hd2638226482_)))
                                                    (let ((_tl2638626492_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2638426487_)))
                                                          (_hd2638526490_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2638426487_))))
                                                      (if (gx#identifier?
                                                           _hd2638526490_)
                                                          (if (gx#stx-eq?
                                                               '%#quote
                                                               _hd2638526490_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2638626492_)
                          (let ((_e2638726495_ (gx#stx-e _tl2638626492_)))
                            (let ((_tl2638926500_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2638726495_)))
                                  (_hd2638826498_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2638726495_))))
                              (if (gx#stx-null? _tl2638926500_)
                                  (if (gx#stx-pair? _tl2638326484_)
                                      (let ((_e2639026503_
                                             (gx#stx-e _tl2638326484_)))
                                        (let ((_tl2639226508_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2639026503_)))
                                              (_hd2639126506_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2639026503_))))
                                          (if (gx#stx-pair? _hd2639126506_)
                                              (let ((_e2639326511_
                                                     (gx#stx-e
                                                      _hd2639126506_)))
                                                (let ((_tl2639526516_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2639326511_)))
                                                      (_hd2639426514_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2639326511_))))
                                                  (if (gx#identifier?
                                                       _hd2639426514_)
                                                      (if (gx#stx-eq?
                                                           '%#quote
                                                           _hd2639426514_)
                                                          (if (gx#stx-pair?
                                                               _tl2639526516_)
                                                              (let ((_e2639626519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2639526516_)))
                        (let ((_tl2639826524_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2639626519_)))
                              (_hd2639726522_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2639626519_))))
                          (if (gx#stx-null? _tl2639826524_)
                              (if (gx#stx-null? _tl2639226508_)
                                  (___kont3281532816_
                                   _hd2639726522_
                                   _hd2638826498_
                                   _hd2637926474_
                                   _hd2637626466_
                                   _hd2631326636_
                                   _hd2631026628_)
                                  (___kont3281732818_))
                              (___kont3281732818_))))
                      (___kont3281732818_))
                  (___kont3281732818_))
              (___kont3281732818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont3281732818_))))
                                      (___kont3281732818_))
                                  (___kont3281732818_))))
                          (___kont3281732818_))
                      (___kont3281732818_))
                  (___kont3281732818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3281732818_))))
                                          (___kont3281732818_))))
                                  (___kont3281732818_))
                              (___kont3281732818_))))
                      (___kont3281732818_))
                  (___kont3281732818_))
              (___kont3281732818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont3281732818_))))
                                      (___kont3281732818_)))
                              (if (gx#stx-pair? _tl2631426638_)
                                  (let ((_e2636926447_
                                         (gx#stx-e _tl2631426638_)))
                                    (let ((_tl2637126452_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2636926447_)))
                                          (_hd2637026450_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2636926447_))))
                                      (if (gx#stx-pair? _hd2637026450_)
                                          (let ((_e2637226455_
                                                 (gx#stx-e _hd2637026450_)))
                                            (let ((_tl2637426460_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2637226455_)))
                                                  (_hd2637326458_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2637226455_))))
                                              (if (gx#identifier?
                                                   _hd2637326458_)
                                                  (if (gx#stx-eq?
                                                       '%#quote
                                                       _hd2637326458_)
                                                      (if (gx#stx-pair?
                                                           _tl2637426460_)
                                                          (let ((_e2637526463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2637426460_)))
                    (let ((_tl2637726468_
                           (let () (declare (not safe)) (##cdr _e2637526463_)))
                          (_hd2637626466_
                           (let ()
                             (declare (not safe))
                             (##car _e2637526463_))))
                      (if (gx#stx-null? _tl2637726468_)
                          (if (gx#stx-pair? _tl2637126452_)
                              (let ((_e2637826471_ (gx#stx-e _tl2637126452_)))
                                (let ((_tl2638026476_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2637826471_)))
                                      (_hd2637926474_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2637826471_))))
                                  (if (gx#stx-pair? _tl2638026476_)
                                      (let ((_e2638126479_
                                             (gx#stx-e _tl2638026476_)))
                                        (let ((_tl2638326484_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2638126479_)))
                                              (_hd2638226482_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2638126479_))))
                                          (if (gx#stx-pair? _hd2638226482_)
                                              (let ((_e2638426487_
                                                     (gx#stx-e
                                                      _hd2638226482_)))
                                                (let ((_tl2638626492_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2638426487_)))
                                                      (_hd2638526490_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2638426487_))))
                                                  (if (gx#identifier?
                                                       _hd2638526490_)
                                                      (if (gx#stx-eq?
                                                           '%#quote
                                                           _hd2638526490_)
                                                          (if (gx#stx-pair?
                                                               _tl2638626492_)
                                                              (let ((_e2638726495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2638626492_)))
                        (let ((_tl2638926500_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2638726495_)))
                              (_hd2638826498_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2638726495_))))
                          (if (gx#stx-null? _tl2638926500_)
                              (if (gx#stx-pair? _tl2638326484_)
                                  (let ((_e2639026503_
                                         (gx#stx-e _tl2638326484_)))
                                    (let ((_tl2639226508_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2639026503_)))
                                          (_hd2639126506_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2639026503_))))
                                      (if (gx#stx-pair? _hd2639126506_)
                                          (let ((_e2639326511_
                                                 (gx#stx-e _hd2639126506_)))
                                            (let ((_tl2639526516_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2639326511_)))
                                                  (_hd2639426514_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2639326511_))))
                                              (if (gx#identifier?
                                                   _hd2639426514_)
                                                  (if (gx#stx-eq?
                                                       '%#quote
                                                       _hd2639426514_)
                                                      (if (gx#stx-pair?
                                                           _tl2639526516_)
                                                          (let ((_e2639626519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2639526516_)))
                    (let ((_tl2639826524_
                           (let () (declare (not safe)) (##cdr _e2639626519_)))
                          (_hd2639726522_
                           (let ()
                             (declare (not safe))
                             (##car _e2639626519_))))
                      (if (gx#stx-null? _tl2639826524_)
                          (if (gx#stx-null? _tl2639226508_)
                              (___kont3281532816_
                               _hd2639726522_
                               _hd2638826498_
                               _hd2637926474_
                               _hd2637626466_
                               _hd2631326636_
                               _hd2631026628_)
                              (___kont3281732818_))
                          (___kont3281732818_))))
                  (___kont3281732818_))
              (___kont3281732818_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3281732818_))))
                                          (___kont3281732818_))))
                                  (___kont3281732818_))
                              (___kont3281732818_))))
                      (___kont3281732818_))
                  (___kont3281732818_))
              (___kont3281732818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont3281732818_))))
                                      (___kont3281732818_))))
                              (___kont3281732818_))
                          (___kont3281732818_))))
                  (___kont3281732818_))
              (___kont3281732818_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3281732818_))))
                                          (___kont3281732818_))))
                                  (___kont3281732818_)))))
                      (if (gx#stx-pair? _tl2631426638_)
                          (let ((_e2636926447_ (gx#stx-e _tl2631426638_)))
                            (let ((_tl2637126452_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2636926447_)))
                                  (_hd2637026450_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2636926447_))))
                              (if (gx#stx-pair? _hd2637026450_)
                                  (let ((_e2637226455_
                                         (gx#stx-e _hd2637026450_)))
                                    (let ((_tl2637426460_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2637226455_)))
                                          (_hd2637326458_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2637226455_))))
                                      (if (gx#identifier? _hd2637326458_)
                                          (if (gx#stx-eq?
                                               '%#quote
                                               _hd2637326458_)
                                              (if (gx#stx-pair? _tl2637426460_)
                                                  (let ((_e2637526463_
                                                         (gx#stx-e
                                                          _tl2637426460_)))
                                                    (let ((_tl2637726468_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2637526463_)))
                                                          (_hd2637626466_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2637526463_))))
                                                      (if (gx#stx-null?
                                                           _tl2637726468_)
                                                          (if (gx#stx-pair?
                                                               _tl2637126452_)
                                                              (let ((_e2637826471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2637126452_)))
                        (let ((_tl2638026476_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2637826471_)))
                              (_hd2637926474_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2637826471_))))
                          (if (gx#stx-pair? _tl2638026476_)
                              (let ((_e2638126479_ (gx#stx-e _tl2638026476_)))
                                (let ((_tl2638326484_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2638126479_)))
                                      (_hd2638226482_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2638126479_))))
                                  (if (gx#stx-pair? _hd2638226482_)
                                      (let ((_e2638426487_
                                             (gx#stx-e _hd2638226482_)))
                                        (let ((_tl2638626492_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2638426487_)))
                                              (_hd2638526490_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2638426487_))))
                                          (if (gx#identifier? _hd2638526490_)
                                              (if (gx#stx-eq?
                                                   '%#quote
                                                   _hd2638526490_)
                                                  (if (gx#stx-pair?
                                                       _tl2638626492_)
                                                      (let ((_e2638726495_
                                                             (gx#stx-e
                                                              _tl2638626492_)))
                                                        (let ((_tl2638926500_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2638726495_)))
                      (_hd2638826498_
                       (let () (declare (not safe)) (##car _e2638726495_))))
                  (if (gx#stx-null? _tl2638926500_)
                      (if (gx#stx-pair? _tl2638326484_)
                          (let ((_e2639026503_ (gx#stx-e _tl2638326484_)))
                            (let ((_tl2639226508_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2639026503_)))
                                  (_hd2639126506_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2639026503_))))
                              (if (gx#stx-pair? _hd2639126506_)
                                  (let ((_e2639326511_
                                         (gx#stx-e _hd2639126506_)))
                                    (let ((_tl2639526516_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2639326511_)))
                                          (_hd2639426514_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2639326511_))))
                                      (if (gx#identifier? _hd2639426514_)
                                          (if (gx#stx-eq?
                                               '%#quote
                                               _hd2639426514_)
                                              (if (gx#stx-pair? _tl2639526516_)
                                                  (let ((_e2639626519_
                                                         (gx#stx-e
                                                          _tl2639526516_)))
                                                    (let ((_tl2639826524_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2639626519_)))
                                                          (_hd2639726522_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2639626519_))))
                                                      (if (gx#stx-null?
                                                           _tl2639826524_)
                                                          (if (gx#stx-null?
                                                               _tl2639226508_)
                                                              (___kont3281532816_
                                                               _hd2639726522_
                                                               _hd2638826498_
                                                               _hd2637926474_
                                                               _hd2637626466_
                                                               _hd2631326636_
                                                               _hd2631026628_)
                                                              (___kont3281732818_))
                                                          (___kont3281732818_))))
                                                  (___kont3281732818_))
                                              (___kont3281732818_))
                                          (___kont3281732818_))))
                                  (___kont3281732818_))))
                          (___kont3281732818_))
                      (___kont3281732818_))))
              (___kont3281732818_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3281732818_))
                                              (___kont3281732818_))))
                                      (___kont3281732818_))))
                              (___kont3281732818_))))
                      (___kont3281732818_))
                  (___kont3281732818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3281732818_))
                                              (___kont3281732818_))
                                          (___kont3281732818_))))
                                  (___kont3281732818_))))
                          (___kont3281732818_)))))
              (___kont3281732818_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3281732818_))))
                                          (___kont3281732818_))
                                      (___kont3281732818_))
                                  (___kont3281732818_))))
                          (___kont3281732818_))))
                  (___kont3281732818_)))))))
    (define gxc#basic-expression-type-make-class-predicate
      (lambda (_stx26210_ _args26211_)
        (let* ((___stx3306133062_ _args26211_)
               (_g2621426230_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3306133062_))))
          (let ((___kont3306333064_
                 (lambda (_L26266_)
                   (let ((__tmp34540 (gxc#identifier-symbol _L26266_)))
                     (declare (not safe))
                     (##structure gxc#!class-pred::t __tmp34540))))
                (___kont3306533066_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx3306133062_)
                (let ((_e2621726242_ (gx#stx-e ___stx3306133062_)))
                  (let ((_tl2621926247_
                         (let () (declare (not safe)) (##cdr _e2621726242_)))
                        (_hd2621826245_
                         (let () (declare (not safe)) (##car _e2621726242_))))
                    (if (gx#stx-pair? _hd2621826245_)
                        (let ((_e2622026250_ (gx#stx-e _hd2621826245_)))
                          (let ((_tl2622226255_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2622026250_)))
                                (_hd2622126253_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2622026250_))))
                            (if (gx#identifier? _hd2622126253_)
                                (if (gx#stx-eq? '%#ref _hd2622126253_)
                                    (if (gx#stx-pair? _tl2622226255_)
                                        (let ((_e2622326258_
                                               (gx#stx-e _tl2622226255_)))
                                          (let ((_tl2622526263_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2622326258_)))
                                                (_hd2622426261_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2622326258_))))
                                            (if (gx#stx-null? _tl2622526263_)
                                                (if (gx#stx-null?
                                                     _tl2621926247_)
                                                    (___kont3306333064_
                                                     _hd2622426261_)
                                                    (___kont3306533066_))
                                                (___kont3306533066_))))
                                        (___kont3306533066_))
                                    (___kont3306533066_))
                                (___kont3306533066_))))
                        (___kont3306533066_))))
                (___kont3306533066_))))))
    (define gxc#basic-expression-type-make-class-slot-accessor__%
      (lambda (_stx26081_ _args26082_ _unchecked?26083_)
        (let* ((___stx3309533096_ _args26082_)
               (_g2608626112_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3309533096_))))
          (let ((___kont3309733098_
                 (lambda (_L26172_ _L26173_)
                   (let ((__tmp34542 (gxc#identifier-symbol _L26173_))
                         (__tmp34541 (gx#stx-e _L26172_)))
                     (declare (not safe))
                     (##structure
                      gxc#!class-getf::t
                      __tmp34542
                      __tmp34541
                      _unchecked?26083_))))
                (___kont3309933100_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx3309533096_)
                (let ((_e2609026124_ (gx#stx-e ___stx3309533096_)))
                  (let ((_tl2609226129_
                         (let () (declare (not safe)) (##cdr _e2609026124_)))
                        (_hd2609126127_
                         (let () (declare (not safe)) (##car _e2609026124_))))
                    (if (gx#stx-pair? _hd2609126127_)
                        (let ((_e2609326132_ (gx#stx-e _hd2609126127_)))
                          (let ((_tl2609526137_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2609326132_)))
                                (_hd2609426135_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2609326132_))))
                            (if (gx#identifier? _hd2609426135_)
                                (if (gx#stx-eq? '%#ref _hd2609426135_)
                                    (if (gx#stx-pair? _tl2609526137_)
                                        (let ((_e2609626140_
                                               (gx#stx-e _tl2609526137_)))
                                          (let ((_tl2609826145_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2609626140_)))
                                                (_hd2609726143_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2609626140_))))
                                            (if (gx#stx-null? _tl2609826145_)
                                                (if (gx#stx-pair?
                                                     _tl2609226129_)
                                                    (let ((_e2609926148_
                                                           (gx#stx-e
                                                            _tl2609226129_)))
                                                      (let ((_tl2610126153_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2609926148_)))
                    (_hd2610026151_
                     (let () (declare (not safe)) (##car _e2609926148_))))
                (if (gx#stx-pair? _hd2610026151_)
                    (let ((_e2610226156_ (gx#stx-e _hd2610026151_)))
                      (let ((_tl2610426161_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2610226156_)))
                            (_hd2610326159_
                             (let ()
                               (declare (not safe))
                               (##car _e2610226156_))))
                        (if (gx#identifier? _hd2610326159_)
                            (if (gx#stx-eq? '%#quote _hd2610326159_)
                                (if (gx#stx-pair? _tl2610426161_)
                                    (let ((_e2610526164_
                                           (gx#stx-e _tl2610426161_)))
                                      (let ((_tl2610726169_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2610526164_)))
                                            (_hd2610626167_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2610526164_))))
                                        (if (gx#stx-null? _tl2610726169_)
                                            (if (gx#stx-null? _tl2610126153_)
                                                (___kont3309733098_
                                                 _hd2610626167_
                                                 _hd2609726143_)
                                                (___kont3309933100_))
                                            (___kont3309933100_))))
                                    (___kont3309933100_))
                                (___kont3309933100_))
                            (___kont3309933100_))))
                    (___kont3309933100_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3309933100_))
                                                (___kont3309933100_))))
                                        (___kont3309933100_))
                                    (___kont3309933100_))
                                (___kont3309933100_))))
                        (___kont3309933100_))))
                (___kont3309933100_))))))
    (define gxc#basic-expression-type-make-class-slot-accessor__0
      (lambda (_stx26201_ _args26202_)
        (let ((_unchecked?26204_ '#f))
          (gxc#basic-expression-type-make-class-slot-accessor__%
           _stx26201_
           _args26202_
           _unchecked?26204_))))
    (define gxc#basic-expression-type-make-class-slot-accessor
      (lambda _g34544_
        (let ((_g34543_ (let () (declare (not safe)) (##length _g34544_))))
          (cond ((let () (declare (not safe)) (##fx= _g34543_ 2))
                 (apply gxc#basic-expression-type-make-class-slot-accessor__0
                        _g34544_))
                ((let () (declare (not safe)) (##fx= _g34543_ 3))
                 (apply gxc#basic-expression-type-make-class-slot-accessor__%
                        _g34544_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#basic-expression-type-make-class-slot-accessor
                  _g34544_))))))
    (define gxc#basic-expression-type-make-class-slot-mutator__%
      (lambda (_stx25951_ _args25952_ _unchecked?25953_)
        (let* ((___stx3315333154_ _args25952_)
               (_g2595625982_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3315333154_))))
          (let ((___kont3315533156_
                 (lambda (_L26042_ _L26043_)
                   (let ((__tmp34546 (gxc#identifier-symbol _L26043_))
                         (__tmp34545
                          (gx#stx-e (gx#datum->syntax__0 '#f 'class))))
                     (declare (not safe))
                     (##structure
                      gxc#!class-setf::t
                      __tmp34546
                      __tmp34545
                      _unchecked?25953_))))
                (___kont3315733158_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx3315333154_)
                (let ((_e2596025994_ (gx#stx-e ___stx3315333154_)))
                  (let ((_tl2596225999_
                         (let () (declare (not safe)) (##cdr _e2596025994_)))
                        (_hd2596125997_
                         (let () (declare (not safe)) (##car _e2596025994_))))
                    (if (gx#stx-pair? _hd2596125997_)
                        (let ((_e2596326002_ (gx#stx-e _hd2596125997_)))
                          (let ((_tl2596526007_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2596326002_)))
                                (_hd2596426005_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2596326002_))))
                            (if (gx#identifier? _hd2596426005_)
                                (if (gx#stx-eq? '%#ref _hd2596426005_)
                                    (if (gx#stx-pair? _tl2596526007_)
                                        (let ((_e2596626010_
                                               (gx#stx-e _tl2596526007_)))
                                          (let ((_tl2596826015_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2596626010_)))
                                                (_hd2596726013_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2596626010_))))
                                            (if (gx#stx-null? _tl2596826015_)
                                                (if (gx#stx-pair?
                                                     _tl2596225999_)
                                                    (let ((_e2596926018_
                                                           (gx#stx-e
                                                            _tl2596225999_)))
                                                      (let ((_tl2597126023_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2596926018_)))
                    (_hd2597026021_
                     (let () (declare (not safe)) (##car _e2596926018_))))
                (if (gx#stx-pair? _hd2597026021_)
                    (let ((_e2597226026_ (gx#stx-e _hd2597026021_)))
                      (let ((_tl2597426031_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2597226026_)))
                            (_hd2597326029_
                             (let ()
                               (declare (not safe))
                               (##car _e2597226026_))))
                        (if (gx#identifier? _hd2597326029_)
                            (if (gx#stx-eq? '%#quote _hd2597326029_)
                                (if (gx#stx-pair? _tl2597426031_)
                                    (let ((_e2597526034_
                                           (gx#stx-e _tl2597426031_)))
                                      (let ((_tl2597726039_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2597526034_)))
                                            (_hd2597626037_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2597526034_))))
                                        (if (gx#stx-null? _tl2597726039_)
                                            (if (gx#stx-null? _tl2597126023_)
                                                (___kont3315533156_
                                                 _hd2597626037_
                                                 _hd2596726013_)
                                                (___kont3315733158_))
                                            (___kont3315733158_))))
                                    (___kont3315733158_))
                                (___kont3315733158_))
                            (___kont3315733158_))))
                    (___kont3315733158_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3315733158_))
                                                (___kont3315733158_))))
                                        (___kont3315733158_))
                                    (___kont3315733158_))
                                (___kont3315733158_))))
                        (___kont3315733158_))))
                (___kont3315733158_))))))
    (define gxc#basic-expression-type-make-class-slot-mutator__0
      (lambda (_stx26071_ _args26072_)
        (let ((_unchecked?26074_ '#f))
          (gxc#basic-expression-type-make-class-slot-mutator__%
           _stx26071_
           _args26072_
           _unchecked?26074_))))
    (define gxc#basic-expression-type-make-class-slot-mutator
      (lambda _g34548_
        (let ((_g34547_ (let () (declare (not safe)) (##length _g34548_))))
          (cond ((let () (declare (not safe)) (##fx= _g34547_ 2))
                 (apply gxc#basic-expression-type-make-class-slot-mutator__0
                        _g34548_))
                ((let () (declare (not safe)) (##fx= _g34547_ 3))
                 (apply gxc#basic-expression-type-make-class-slot-mutator__%
                        _g34548_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#basic-expression-type-make-class-slot-mutator
                  _g34548_))))))
    (define gxc#basic-expression-type-make-class-slot-unchecked-accessor
      (lambda (_stx25947_ _args25948_)
        (gxc#basic-expression-type-make-class-slot-accessor__%
         _stx25947_
         _args25948_
         '#t)))
    (define gxc#basic-expression-type-make-class-slot-unchecked-mutator
      (lambda (_stx25944_ _args25945_)
        (gxc#basic-expression-type-make-class-slot-mutator__%
         _stx25944_
         _args25945_
         '#t)))
    (table-set!
     gxc#basic-expression-type-builtin
     'make-struct-type
     gxc#basic-expression-type-make-struct-type)
    (table-set!
     gxc#basic-expression-type-builtin
     'make-struct-predicate
     gxc#basic-expression-type-make-struct-predicate)
    (table-set!
     gxc#basic-expression-type-builtin
     'make-struct-field-accessor
     gxc#basic-expression-type-make-struct-field-accessor)
    (table-set!
     gxc#basic-expression-type-builtin
     'make-struct-field-mutator
     gxc#basic-expression-type-make-struct-field-mutator)
    (table-set!
     gxc#basic-expression-type-builtin
     'make-struct-field-unchecked-accessor
     gxc#basic-expression-type-make-struct-field-unchecked-accessor)
    (table-set!
     gxc#basic-expression-type-builtin
     'make-struct-field-unchecked-mutator
     gxc#basic-expression-type-make-struct-field-unchecked-mutator)
    (table-set!
     gxc#basic-expression-type-builtin
     'make-class-type
     gxc#basic-expression-type-make-class-type)
    (table-set!
     gxc#basic-expression-type-builtin
     'make-class-predicate
     gxc#basic-expression-type-make-class-predicate)
    (table-set!
     gxc#basic-expression-type-builtin
     'make-class-slot-accessor
     gxc#basic-expression-type-make-class-slot-accessor)
    (table-set!
     gxc#basic-expression-type-builtin
     'make-class-slot-mutator
     gxc#basic-expression-type-make-class-slot-mutator)
    (table-set!
     gxc#basic-expression-type-builtin
     'make-class-slot-unchecked-accessor
     gxc#basic-expression-type-make-class-slot-unchecked-accessor)
    (table-set!
     gxc#basic-expression-type-builtin
     'make-class-slot-unchecked-mutator
     gxc#basic-expression-type-make-class-slot-unchecked-mutator)
    (define gxc#basic-expression-type-ref%
      (lambda (_stx25893_)
        (let* ((_g2589525908_
                (lambda (_g2589625905_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2589625905_)))
               (_g2589425941_
                (lambda (_g2589625911_)
                  (if (gx#stx-pair? _g2589625911_)
                      (let ((_e2589825913_ (gx#stx-e _g2589625911_)))
                        (let ((_hd2589925916_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2589825913_)))
                              (_tl2590025918_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2589825913_))))
                          (if (gx#stx-pair? _tl2590025918_)
                              (let ((_e2590125921_ (gx#stx-e _tl2590025918_)))
                                (let ((_hd2590225924_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2590125921_)))
                                      (_tl2590325926_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2590125921_))))
                                  (if (gx#stx-null? _tl2590325926_)
                                      ((lambda (_L25929_)
                                         (gxc#optimizer-lookup-type
                                          (gxc#identifier-symbol _L25929_)))
                                       _hd2590225924_)
                                      (_g2589525908_ _g2589625911_))))
                              (_g2589525908_ _g2589625911_))))
                      (_g2589525908_ _g2589625911_)))))
          (_g2589425941_ _stx25893_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form25127_)
        (let* ((___stx3321133212_ _form25127_)
               (_g2513225289_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3321133212_))))
          (let ((___kont3321333214_ (lambda (_L25813_ _L25814_ _L25815_) '#t))
                (___kont3321933220_
                 (lambda (_L25601_
                          _L25602_
                          _L25603_
                          _L25604_
                          _L25605_
                          _L25606_)
                   '#t))
                (___kont3322533226_
                 (lambda (_L25397_ _L25398_ _L25399_ _L25400_) '#t))
                (___kont3322733228_ (lambda () '#f)))
            (let* ((___match3335233353_
                    (lambda (_e2524925301_
                             _hd2525025304_
                             _tl2525125306_
                             _e2525225309_
                             _hd2525325312_
                             _tl2525425314_
                             _e2525525317_
                             _hd2525625320_
                             _tl2525725322_
                             _e2525825325_
                             _hd2525925328_
                             _tl2526025330_
                             _e2526125333_
                             _hd2526225336_
                             _tl2526325338_
                             _e2526425341_
                             _hd2526525344_
                             _tl2526625346_
                             _e2526725349_
                             _hd2526825352_
                             _tl2526925354_
                             _e2527025357_
                             _hd2527125360_
                             _tl2527225362_
                             _e2527325365_
                             _hd2527425368_
                             _tl2527525370_
                             _e2527625373_
                             _hd2527725376_
                             _tl2527825378_
                             _e2527925381_
                             _hd2528025384_
                             _tl2528125386_
                             _e2528225389_
                             _hd2528325392_
                             _tl2528425394_)
                      (let ((_L25397_ _hd2528325392_)
                            (_L25398_ _hd2527425368_)
                            (_L25399_ _hd2526525344_)
                            (_L25400_ _hd2525025304_))
                        (if (and (gx#identifier? _L25400_)
                                 (gxc#runtime-identifier=? _L25399_ 'apply)
                                 (gx#free-identifier=? _L25400_ _L25397_)
                                 (not (gx#free-identifier=?
                                       _L25398_
                                       _L25400_)))
                            (___kont3322533226_
                             _L25397_
                             _L25398_
                             _L25399_
                             _L25400_)
                            (___kont3322733228_)))))
                   (___match3332433325_
                    (lambda (_e2524925301_
                             _hd2525025304_
                             _tl2525125306_
                             _e2525225309_
                             _hd2525325312_
                             _tl2525425314_
                             _e2525525317_
                             _hd2525625320_
                             _tl2525725322_
                             _e2525825325_
                             _hd2525925328_
                             _tl2526025330_
                             _e2526125333_
                             _hd2526225336_
                             _tl2526325338_
                             _e2526425341_
                             _hd2526525344_
                             _tl2526625346_
                             _e2526725349_
                             _hd2526825352_
                             _tl2526925354_
                             _e2527025357_
                             _hd2527125360_
                             _tl2527225362_
                             _e2527325365_
                             _hd2527425368_
                             _tl2527525370_)
                      (if (gx#stx-pair? _tl2526925354_)
                          (let ((_e2527625373_ (gx#stx-e _tl2526925354_)))
                            (let ((_tl2527825378_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2527625373_)))
                                  (_hd2527725376_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2527625373_))))
                              (if (gx#stx-pair? _hd2527725376_)
                                  (let ((_e2527925381_
                                         (gx#stx-e _hd2527725376_)))
                                    (let ((_tl2528125386_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2527925381_)))
                                          (_hd2528025384_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2527925381_))))
                                      (if (gx#identifier? _hd2528025384_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2528025384_)
                                              (if (gx#stx-pair? _tl2528125386_)
                                                  (let ((_e2528225389_
                                                         (gx#stx-e
                                                          _tl2528125386_)))
                                                    (let ((_tl2528425394_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2528225389_)))
                                                          (_hd2528325392_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2528225389_))))
                                                      (if (gx#stx-null?
                                                           _tl2528425394_)
                                                          (if (gx#stx-null?
                                                               _tl2527825378_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2525425314_)
                          (___match3335233353_
                           _e2524925301_
                           _hd2525025304_
                           _tl2525125306_
                           _e2525225309_
                           _hd2525325312_
                           _tl2525425314_
                           _e2525525317_
                           _hd2525625320_
                           _tl2525725322_
                           _e2525825325_
                           _hd2525925328_
                           _tl2526025330_
                           _e2526125333_
                           _hd2526225336_
                           _tl2526325338_
                           _e2526425341_
                           _hd2526525344_
                           _tl2526625346_
                           _e2526725349_
                           _hd2526825352_
                           _tl2526925354_
                           _e2527025357_
                           _hd2527125360_
                           _tl2527225362_
                           _e2527325365_
                           _hd2527425368_
                           _tl2527525370_
                           _e2527625373_
                           _hd2527725376_
                           _tl2527825378_
                           _e2527925381_
                           _hd2528025384_
                           _tl2528125386_
                           _e2528225389_
                           _hd2528325392_
                           _tl2528425394_)
                          (___kont3322733228_))
                      (___kont3322733228_))
                  (___kont3322733228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3322733228_))
                                              (___kont3322733228_))
                                          (___kont3322733228_))))
                                  (___kont3322733228_))))
                          (___kont3322733228_))))
                   (___match3325433255_
                    (lambda (_e2518525441_
                             _hd2518625444_
                             _tl2518725446_
                             ___splice3322133222_
                             _target2518825449_
                             _tl2519025451_)
                      (letrec ((_loop2519125454_
                                (lambda (_hd2518925457_ _arg2519525459_)
                                  (if (gx#stx-pair? _hd2518925457_)
                                      (let ((_e2519225462_
                                             (gx#stx-e _hd2518925457_)))
                                        (let ((_lp-tl2519425467_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2519225462_)))
                                              (_lp-hd2519325465_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2519225462_))))
                                          (_loop2519125454_
                                           _lp-tl2519425467_
                                           (cons _lp-hd2519325465_
                                                 _arg2519525459_))))
                                      (let ((_arg2519625470_
                                             (reverse _arg2519525459_)))
                                        (if (gx#stx-pair? _tl2518725446_)
                                            (let ((_e2519725473_
                                                   (gx#stx-e _tl2518725446_)))
                                              (let ((_tl2519925478_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2519725473_)))
                                                    (_hd2519825476_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2519725473_))))
                                                (if (gx#stx-pair?
                                                     _hd2519825476_)
                                                    (let ((_e2520025481_
                                                           (gx#stx-e
                                                            _hd2519825476_)))
                                                      (let ((_tl2520225486_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2520025481_)))
                    (_hd2520125484_
                     (let () (declare (not safe)) (##car _e2520025481_))))
                (if (gx#identifier? _hd2520125484_)
                    (if (gx#stx-eq? '%#call _hd2520125484_)
                        (if (gx#stx-pair? _tl2520225486_)
                            (let ((_e2520325489_ (gx#stx-e _tl2520225486_)))
                              (let ((_tl2520525494_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2520325489_)))
                                    (_hd2520425492_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2520325489_))))
                                (if (gx#stx-pair? _hd2520425492_)
                                    (let ((_e2520625497_
                                           (gx#stx-e _hd2520425492_)))
                                      (let ((_tl2520825502_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2520625497_)))
                                            (_hd2520725500_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2520625497_))))
                                        (if (gx#identifier? _hd2520725500_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2520725500_)
                                                (if (gx#stx-pair?
                                                     _tl2520825502_)
                                                    (let ((_e2520925505_
                                                           (gx#stx-e
                                                            _tl2520825502_)))
                                                      (let ((_tl2521125510_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2520925505_)))
                    (_hd2521025508_
                     (let () (declare (not safe)) (##car _e2520925505_))))
                (if (gx#stx-null? _tl2521125510_)
                    (if (gx#stx-pair? _tl2520525494_)
                        (let ((_e2521225513_ (gx#stx-e _tl2520525494_)))
                          (let ((_tl2521425518_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2521225513_)))
                                (_hd2521325516_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2521225513_))))
                            (if (gx#stx-pair? _hd2521325516_)
                                (let ((_e2521525521_
                                       (gx#stx-e _hd2521325516_)))
                                  (let ((_tl2521725526_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2521525521_)))
                                        (_hd2521625524_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2521525521_))))
                                    (if (gx#identifier? _hd2521625524_)
                                        (if (gx#stx-eq? '%#ref _hd2521625524_)
                                            (if (gx#stx-pair? _tl2521725526_)
                                                (let ((_e2521825529_
                                                       (gx#stx-e
                                                        _tl2521725526_)))
                                                  (let ((_tl2522025534_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2521825529_)))
                                                        (_hd2521925532_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2521825529_))))
                                                    (if (gx#stx-null?
                                                         _tl2522025534_)
                                                        (if (gx#stx-pair/null?
                                                             _tl2521425518_)
                                                            (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tl2521425518_)
                              '1)
                        (let ((___splice3322333224_
                               (gx#syntax-split-splice _tl2521425518_ '1)))
                          (let ((_tl2522325539_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice3322333224_ '1)))
                                (_target2522125537_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice3322333224_ '0))))
                            (if (gx#stx-pair? _tl2522325539_)
                                (let ((_e2523025542_
                                       (gx#stx-e _tl2522325539_)))
                                  (let ((_tl2523225547_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2523025542_)))
                                        (_hd2523125545_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2523025542_))))
                                    (if (gx#stx-pair? _hd2523125545_)
                                        (let ((_e2523325550_
                                               (gx#stx-e _hd2523125545_)))
                                          (let ((_tl2523525555_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2523325550_)))
                                                (_hd2523425553_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2523325550_))))
                                            (if (gx#identifier? _hd2523425553_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _hd2523425553_)
                                                    (if (gx#stx-pair?
                                                         _tl2523525555_)
                                                        (let ((_e2523625558_
                                                               (gx#stx-e
                                                                _tl2523525555_)))
                                                          (let ((_tl2523825563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e2523625558_)))
                        (_hd2523725561_
                         (let () (declare (not safe)) (##car _e2523625558_))))
                    (if (gx#stx-null? _tl2523825563_)
                        (if (gx#stx-null? _tl2523225547_)
                            (letrec ((_loop2522425566_
                                      (lambda (_hd2522225569_ _xarg2522825571_)
                                        (if (gx#stx-pair? _hd2522225569_)
                                            (let ((_e2522525574_
                                                   (gx#stx-e _hd2522225569_)))
                                              (let ((_lp-tl2522725579_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2522525574_)))
                                                    (_lp-hd2522625577_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2522525574_))))
                                                (if (gx#stx-pair?
                                                     _lp-hd2522625577_)
                                                    (let ((_e2523925582_
                                                           (gx#stx-e
                                                            _lp-hd2522625577_)))
                                                      (let ((_tl2524125587_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2523925582_)))
                    (_hd2524025585_
                     (let () (declare (not safe)) (##car _e2523925582_))))
                (if (gx#identifier? _hd2524025585_)
                    (if (gx#stx-eq? '%#ref _hd2524025585_)
                        (if (gx#stx-pair? _tl2524125587_)
                            (let ((_e2524225590_ (gx#stx-e _tl2524125587_)))
                              (let ((_tl2524425595_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2524225590_)))
                                    (_hd2524325593_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2524225590_))))
                                (if (gx#stx-null? _tl2524425595_)
                                    (_loop2522425566_
                                     _lp-tl2522725579_
                                     (cons _hd2524325593_ _xarg2522825571_))
                                    (___match3332433325_
                                     _e2518525441_
                                     _hd2518625444_
                                     _tl2518725446_
                                     _e2519725473_
                                     _hd2519825476_
                                     _tl2519925478_
                                     _e2520025481_
                                     _hd2520125484_
                                     _tl2520225486_
                                     _e2520325489_
                                     _hd2520425492_
                                     _tl2520525494_
                                     _e2520625497_
                                     _hd2520725500_
                                     _tl2520825502_
                                     _e2520925505_
                                     _hd2521025508_
                                     _tl2521125510_
                                     _e2521225513_
                                     _hd2521325516_
                                     _tl2521425518_
                                     _e2521525521_
                                     _hd2521625524_
                                     _tl2521725526_
                                     _e2521825529_
                                     _hd2521925532_
                                     _tl2522025534_))))
                            (___match3332433325_
                             _e2518525441_
                             _hd2518625444_
                             _tl2518725446_
                             _e2519725473_
                             _hd2519825476_
                             _tl2519925478_
                             _e2520025481_
                             _hd2520125484_
                             _tl2520225486_
                             _e2520325489_
                             _hd2520425492_
                             _tl2520525494_
                             _e2520625497_
                             _hd2520725500_
                             _tl2520825502_
                             _e2520925505_
                             _hd2521025508_
                             _tl2521125510_
                             _e2521225513_
                             _hd2521325516_
                             _tl2521425518_
                             _e2521525521_
                             _hd2521625524_
                             _tl2521725526_
                             _e2521825529_
                             _hd2521925532_
                             _tl2522025534_))
                        (___match3332433325_
                         _e2518525441_
                         _hd2518625444_
                         _tl2518725446_
                         _e2519725473_
                         _hd2519825476_
                         _tl2519925478_
                         _e2520025481_
                         _hd2520125484_
                         _tl2520225486_
                         _e2520325489_
                         _hd2520425492_
                         _tl2520525494_
                         _e2520625497_
                         _hd2520725500_
                         _tl2520825502_
                         _e2520925505_
                         _hd2521025508_
                         _tl2521125510_
                         _e2521225513_
                         _hd2521325516_
                         _tl2521425518_
                         _e2521525521_
                         _hd2521625524_
                         _tl2521725526_
                         _e2521825529_
                         _hd2521925532_
                         _tl2522025534_))
                    (___match3332433325_
                     _e2518525441_
                     _hd2518625444_
                     _tl2518725446_
                     _e2519725473_
                     _hd2519825476_
                     _tl2519925478_
                     _e2520025481_
                     _hd2520125484_
                     _tl2520225486_
                     _e2520325489_
                     _hd2520425492_
                     _tl2520525494_
                     _e2520625497_
                     _hd2520725500_
                     _tl2520825502_
                     _e2520925505_
                     _hd2521025508_
                     _tl2521125510_
                     _e2521225513_
                     _hd2521325516_
                     _tl2521425518_
                     _e2521525521_
                     _hd2521625524_
                     _tl2521725526_
                     _e2521825529_
                     _hd2521925532_
                     _tl2522025534_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match3332433325_
                                                     _e2518525441_
                                                     _hd2518625444_
                                                     _tl2518725446_
                                                     _e2519725473_
                                                     _hd2519825476_
                                                     _tl2519925478_
                                                     _e2520025481_
                                                     _hd2520125484_
                                                     _tl2520225486_
                                                     _e2520325489_
                                                     _hd2520425492_
                                                     _tl2520525494_
                                                     _e2520625497_
                                                     _hd2520725500_
                                                     _tl2520825502_
                                                     _e2520925505_
                                                     _hd2521025508_
                                                     _tl2521125510_
                                                     _e2521225513_
                                                     _hd2521325516_
                                                     _tl2521425518_
                                                     _e2521525521_
                                                     _hd2521625524_
                                                     _tl2521725526_
                                                     _e2521825529_
                                                     _hd2521925532_
                                                     _tl2522025534_))))
                                            (let ((_xarg2522925598_
                                                   (reverse _xarg2522825571_)))
                                              (if (gx#stx-null? _tl2519925478_)
                                                  (let ((_L25601_
                                                         _hd2523725561_)
                                                        (_L25602_
                                                         _xarg2522925598_)
                                                        (_L25603_
                                                         _hd2521925532_)
                                                        (_L25604_
                                                         _hd2521025508_)
                                                        (_L25605_
                                                         _tl2519025451_)
                                                        (_L25606_
                                                         _arg2519625470_))
                                                    (if (and (gx#identifier-list?
                                                              (foldr1 (lambda (_g2564925652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2565025654_)
                                (cons _g2564925652_ _g2565025654_))
                              '()
                              _L25606_))
                     (gx#identifier? _L25605_)
                     (gxc#runtime-identifier=? _L25604_ 'apply)
                     (fx= (length (foldr1 (lambda (_g2565625659_ _g2565725661_)
                                            (cons _g2565625659_ _g2565725661_))
                                          '()
                                          _L25606_))
                          (length (foldr1 (lambda (_g2566325666_ _g2566425668_)
                                            (cons _g2566325666_ _g2566425668_))
                                          '()
                                          _L25602_)))
                     (andmap2 gx#free-identifier=?
                              (foldr1 (lambda (_g2567025673_ _g2567125675_)
                                        (cons _g2567025673_ _g2567125675_))
                                      '()
                                      _L25606_)
                              (foldr1 (lambda (_g2567725680_ _g2567825682_)
                                        (cons _g2567725680_ _g2567825682_))
                                      '()
                                      _L25602_))
                     (gx#free-identifier=? _L25605_ _L25601_)
                     (not (find (lambda (_g2568425686_)
                                  (gx#free-identifier=?
                                   _g2568425686_
                                   _L25603_))
                                (foldr1 (lambda (_g2568825691_ _g2568925693_)
                                          (cons _g2568825691_ _g2568925693_))
                                        (cons _L25605_ '())
                                        _L25606_))))
                (___kont3321933220_
                 _L25601_
                 _L25602_
                 _L25603_
                 _L25604_
                 _L25605_
                 _L25606_)
                (___match3332433325_
                 _e2518525441_
                 _hd2518625444_
                 _tl2518725446_
                 _e2519725473_
                 _hd2519825476_
                 _tl2519925478_
                 _e2520025481_
                 _hd2520125484_
                 _tl2520225486_
                 _e2520325489_
                 _hd2520425492_
                 _tl2520525494_
                 _e2520625497_
                 _hd2520725500_
                 _tl2520825502_
                 _e2520925505_
                 _hd2521025508_
                 _tl2521125510_
                 _e2521225513_
                 _hd2521325516_
                 _tl2521425518_
                 _e2521525521_
                 _hd2521625524_
                 _tl2521725526_
                 _e2521825529_
                 _hd2521925532_
                 _tl2522025534_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3332433325_
                                                   _e2518525441_
                                                   _hd2518625444_
                                                   _tl2518725446_
                                                   _e2519725473_
                                                   _hd2519825476_
                                                   _tl2519925478_
                                                   _e2520025481_
                                                   _hd2520125484_
                                                   _tl2520225486_
                                                   _e2520325489_
                                                   _hd2520425492_
                                                   _tl2520525494_
                                                   _e2520625497_
                                                   _hd2520725500_
                                                   _tl2520825502_
                                                   _e2520925505_
                                                   _hd2521025508_
                                                   _tl2521125510_
                                                   _e2521225513_
                                                   _hd2521325516_
                                                   _tl2521425518_
                                                   _e2521525521_
                                                   _hd2521625524_
                                                   _tl2521725526_
                                                   _e2521825529_
                                                   _hd2521925532_
                                                   _tl2522025534_)))))))
                              (_loop2522425566_ _target2522125537_ '()))
                            (___match3332433325_
                             _e2518525441_
                             _hd2518625444_
                             _tl2518725446_
                             _e2519725473_
                             _hd2519825476_
                             _tl2519925478_
                             _e2520025481_
                             _hd2520125484_
                             _tl2520225486_
                             _e2520325489_
                             _hd2520425492_
                             _tl2520525494_
                             _e2520625497_
                             _hd2520725500_
                             _tl2520825502_
                             _e2520925505_
                             _hd2521025508_
                             _tl2521125510_
                             _e2521225513_
                             _hd2521325516_
                             _tl2521425518_
                             _e2521525521_
                             _hd2521625524_
                             _tl2521725526_
                             _e2521825529_
                             _hd2521925532_
                             _tl2522025534_))
                        (___match3332433325_
                         _e2518525441_
                         _hd2518625444_
                         _tl2518725446_
                         _e2519725473_
                         _hd2519825476_
                         _tl2519925478_
                         _e2520025481_
                         _hd2520125484_
                         _tl2520225486_
                         _e2520325489_
                         _hd2520425492_
                         _tl2520525494_
                         _e2520625497_
                         _hd2520725500_
                         _tl2520825502_
                         _e2520925505_
                         _hd2521025508_
                         _tl2521125510_
                         _e2521225513_
                         _hd2521325516_
                         _tl2521425518_
                         _e2521525521_
                         _hd2521625524_
                         _tl2521725526_
                         _e2521825529_
                         _hd2521925532_
                         _tl2522025534_))))
                (___match3332433325_
                 _e2518525441_
                 _hd2518625444_
                 _tl2518725446_
                 _e2519725473_
                 _hd2519825476_
                 _tl2519925478_
                 _e2520025481_
                 _hd2520125484_
                 _tl2520225486_
                 _e2520325489_
                 _hd2520425492_
                 _tl2520525494_
                 _e2520625497_
                 _hd2520725500_
                 _tl2520825502_
                 _e2520925505_
                 _hd2521025508_
                 _tl2521125510_
                 _e2521225513_
                 _hd2521325516_
                 _tl2521425518_
                 _e2521525521_
                 _hd2521625524_
                 _tl2521725526_
                 _e2521825529_
                 _hd2521925532_
                 _tl2522025534_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match3332433325_
                                                     _e2518525441_
                                                     _hd2518625444_
                                                     _tl2518725446_
                                                     _e2519725473_
                                                     _hd2519825476_
                                                     _tl2519925478_
                                                     _e2520025481_
                                                     _hd2520125484_
                                                     _tl2520225486_
                                                     _e2520325489_
                                                     _hd2520425492_
                                                     _tl2520525494_
                                                     _e2520625497_
                                                     _hd2520725500_
                                                     _tl2520825502_
                                                     _e2520925505_
                                                     _hd2521025508_
                                                     _tl2521125510_
                                                     _e2521225513_
                                                     _hd2521325516_
                                                     _tl2521425518_
                                                     _e2521525521_
                                                     _hd2521625524_
                                                     _tl2521725526_
                                                     _e2521825529_
                                                     _hd2521925532_
                                                     _tl2522025534_))
                                                (___match3332433325_
                                                 _e2518525441_
                                                 _hd2518625444_
                                                 _tl2518725446_
                                                 _e2519725473_
                                                 _hd2519825476_
                                                 _tl2519925478_
                                                 _e2520025481_
                                                 _hd2520125484_
                                                 _tl2520225486_
                                                 _e2520325489_
                                                 _hd2520425492_
                                                 _tl2520525494_
                                                 _e2520625497_
                                                 _hd2520725500_
                                                 _tl2520825502_
                                                 _e2520925505_
                                                 _hd2521025508_
                                                 _tl2521125510_
                                                 _e2521225513_
                                                 _hd2521325516_
                                                 _tl2521425518_
                                                 _e2521525521_
                                                 _hd2521625524_
                                                 _tl2521725526_
                                                 _e2521825529_
                                                 _hd2521925532_
                                                 _tl2522025534_))))
                                        (___match3332433325_
                                         _e2518525441_
                                         _hd2518625444_
                                         _tl2518725446_
                                         _e2519725473_
                                         _hd2519825476_
                                         _tl2519925478_
                                         _e2520025481_
                                         _hd2520125484_
                                         _tl2520225486_
                                         _e2520325489_
                                         _hd2520425492_
                                         _tl2520525494_
                                         _e2520625497_
                                         _hd2520725500_
                                         _tl2520825502_
                                         _e2520925505_
                                         _hd2521025508_
                                         _tl2521125510_
                                         _e2521225513_
                                         _hd2521325516_
                                         _tl2521425518_
                                         _e2521525521_
                                         _hd2521625524_
                                         _tl2521725526_
                                         _e2521825529_
                                         _hd2521925532_
                                         _tl2522025534_))))
                                (___match3332433325_
                                 _e2518525441_
                                 _hd2518625444_
                                 _tl2518725446_
                                 _e2519725473_
                                 _hd2519825476_
                                 _tl2519925478_
                                 _e2520025481_
                                 _hd2520125484_
                                 _tl2520225486_
                                 _e2520325489_
                                 _hd2520425492_
                                 _tl2520525494_
                                 _e2520625497_
                                 _hd2520725500_
                                 _tl2520825502_
                                 _e2520925505_
                                 _hd2521025508_
                                 _tl2521125510_
                                 _e2521225513_
                                 _hd2521325516_
                                 _tl2521425518_
                                 _e2521525521_
                                 _hd2521625524_
                                 _tl2521725526_
                                 _e2521825529_
                                 _hd2521925532_
                                 _tl2522025534_))))
                        (___match3332433325_
                         _e2518525441_
                         _hd2518625444_
                         _tl2518725446_
                         _e2519725473_
                         _hd2519825476_
                         _tl2519925478_
                         _e2520025481_
                         _hd2520125484_
                         _tl2520225486_
                         _e2520325489_
                         _hd2520425492_
                         _tl2520525494_
                         _e2520625497_
                         _hd2520725500_
                         _tl2520825502_
                         _e2520925505_
                         _hd2521025508_
                         _tl2521125510_
                         _e2521225513_
                         _hd2521325516_
                         _tl2521425518_
                         _e2521525521_
                         _hd2521625524_
                         _tl2521725526_
                         _e2521825529_
                         _hd2521925532_
                         _tl2522025534_))
                    (___match3332433325_
                     _e2518525441_
                     _hd2518625444_
                     _tl2518725446_
                     _e2519725473_
                     _hd2519825476_
                     _tl2519925478_
                     _e2520025481_
                     _hd2520125484_
                     _tl2520225486_
                     _e2520325489_
                     _hd2520425492_
                     _tl2520525494_
                     _e2520625497_
                     _hd2520725500_
                     _tl2520825502_
                     _e2520925505_
                     _hd2521025508_
                     _tl2521125510_
                     _e2521225513_
                     _hd2521325516_
                     _tl2521425518_
                     _e2521525521_
                     _hd2521625524_
                     _tl2521725526_
                     _e2521825529_
                     _hd2521925532_
                     _tl2522025534_))
                (___kont3322733228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3322733228_))
                                            (___kont3322733228_))
                                        (___kont3322733228_))))
                                (___kont3322733228_))))
                        (___kont3322733228_))
                    (___kont3322733228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3322733228_))
                                                (___kont3322733228_))
                                            (___kont3322733228_))))
                                    (___kont3322733228_))))
                            (___kont3322733228_))
                        (___kont3322733228_))
                    (___kont3322733228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3322733228_))))
                                            (___kont3322733228_)))))))
                        (_loop2519125454_ _target2518825449_ '()))))
                   (___match3324233243_
                    (lambda (_e2513725701_
                             _hd2513825704_
                             _tl2513925706_
                             ___splice3321533216_
                             _target2514025709_
                             _tl2514225711_)
                      (letrec ((_loop2514325714_
                                (lambda (_hd2514125717_ _arg2514725719_)
                                  (if (gx#stx-pair? _hd2514125717_)
                                      (let ((_e2514425722_
                                             (gx#stx-e _hd2514125717_)))
                                        (let ((_lp-tl2514625727_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2514425722_)))
                                              (_lp-hd2514525725_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2514425722_))))
                                          (_loop2514325714_
                                           _lp-tl2514625727_
                                           (cons _lp-hd2514525725_
                                                 _arg2514725719_))))
                                      (let ((_arg2514825730_
                                             (reverse _arg2514725719_)))
                                        (if (gx#stx-pair? _tl2513925706_)
                                            (let ((_e2514925733_
                                                   (gx#stx-e _tl2513925706_)))
                                              (let ((_tl2515125738_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2514925733_)))
                                                    (_hd2515025736_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2514925733_))))
                                                (if (gx#stx-pair?
                                                     _hd2515025736_)
                                                    (let ((_e2515225741_
                                                           (gx#stx-e
                                                            _hd2515025736_)))
                                                      (let ((_tl2515425746_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2515225741_)))
                    (_hd2515325744_
                     (let () (declare (not safe)) (##car _e2515225741_))))
                (if (gx#identifier? _hd2515325744_)
                    (if (gx#stx-eq? '%#call _hd2515325744_)
                        (if (gx#stx-pair? _tl2515425746_)
                            (let ((_e2515525749_ (gx#stx-e _tl2515425746_)))
                              (let ((_tl2515725754_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2515525749_)))
                                    (_hd2515625752_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2515525749_))))
                                (if (gx#stx-pair? _hd2515625752_)
                                    (let ((_e2515825757_
                                           (gx#stx-e _hd2515625752_)))
                                      (let ((_tl2516025762_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2515825757_)))
                                            (_hd2515925760_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2515825757_))))
                                        (if (gx#identifier? _hd2515925760_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2515925760_)
                                                (if (gx#stx-pair?
                                                     _tl2516025762_)
                                                    (let ((_e2516125765_
                                                           (gx#stx-e
                                                            _tl2516025762_)))
                                                      (let ((_tl2516325770_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2516125765_)))
                    (_hd2516225768_
                     (let () (declare (not safe)) (##car _e2516125765_))))
                (if (gx#stx-null? _tl2516325770_)
                    (if (gx#stx-pair/null? _tl2515725754_)
                        (let ((___splice3321733218_
                               (gx#syntax-split-splice _tl2515725754_ '0)))
                          (let ((_tl2516625775_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice3321733218_ '1)))
                                (_target2516425773_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice3321733218_ '0))))
                            (if (gx#stx-null? _tl2516625775_)
                                (letrec ((_loop2516725778_
                                          (lambda (_hd2516525781_
                                                   _xarg2517125783_)
                                            (if (gx#stx-pair? _hd2516525781_)
                                                (let ((_e2516825786_
                                                       (gx#stx-e
                                                        _hd2516525781_)))
                                                  (let ((_lp-tl2517025791_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2516825786_)))
                                                        (_lp-hd2516925789_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2516825786_))))
                                                    (if (gx#stx-pair?
                                                         _lp-hd2516925789_)
                                                        (let ((_e2517325794_
                                                               (gx#stx-e
                                                                _lp-hd2516925789_)))
                                                          (let ((_tl2517525799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e2517325794_)))
                        (_hd2517425797_
                         (let () (declare (not safe)) (##car _e2517325794_))))
                    (if (gx#identifier? _hd2517425797_)
                        (if (gx#stx-eq? '%#ref _hd2517425797_)
                            (if (gx#stx-pair? _tl2517525799_)
                                (let ((_e2517625802_
                                       (gx#stx-e _tl2517525799_)))
                                  (let ((_tl2517825807_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2517625802_)))
                                        (_hd2517725805_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2517625802_))))
                                    (if (gx#stx-null? _tl2517825807_)
                                        (_loop2516725778_
                                         _lp-tl2517025791_
                                         (cons _hd2517725805_
                                               _xarg2517125783_))
                                        (___match3325433255_
                                         _e2513725701_
                                         _hd2513825704_
                                         _tl2513925706_
                                         ___splice3321533216_
                                         _target2514025709_
                                         _tl2514225711_))))
                                (___match3325433255_
                                 _e2513725701_
                                 _hd2513825704_
                                 _tl2513925706_
                                 ___splice3321533216_
                                 _target2514025709_
                                 _tl2514225711_))
                            (___match3325433255_
                             _e2513725701_
                             _hd2513825704_
                             _tl2513925706_
                             ___splice3321533216_
                             _target2514025709_
                             _tl2514225711_))
                        (___match3325433255_
                         _e2513725701_
                         _hd2513825704_
                         _tl2513925706_
                         ___splice3321533216_
                         _target2514025709_
                         _tl2514225711_))))
                (___match3325433255_
                 _e2513725701_
                 _hd2513825704_
                 _tl2513925706_
                 ___splice3321533216_
                 _target2514025709_
                 _tl2514225711_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg2517225810_
                                                       (reverse _xarg2517125783_)))
                                                  (if (gx#stx-null?
                                                       _tl2515125738_)
                                                      (let ((_L25813_
                                                             _xarg2517225810_)
                                                            (_L25814_
                                                             _hd2516225768_)
                                                            (_L25815_
                                                             _arg2514825730_))
                                                        (if (and (gx#identifier-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr1 (lambda (_g2584325846_ _g2584425848_)
                                    (cons _g2584325846_ _g2584425848_))
                                  '()
                                  _L25815_))
                         (fx= (length (foldr1 (lambda (_g2585025853_
                                                       _g2585125855_)
                                                (cons _g2585025853_
                                                      _g2585125855_))
                                              '()
                                              _L25815_))
                              (length (foldr1 (lambda (_g2585725860_
                                                       _g2585825862_)
                                                (cons _g2585725860_
                                                      _g2585825862_))
                                              '()
                                              _L25813_)))
                         (andmap2 gx#free-identifier=?
                                  (foldr1 (lambda (_g2586425867_ _g2586525869_)
                                            (cons _g2586425867_ _g2586525869_))
                                          '()
                                          _L25815_)
                                  (foldr1 (lambda (_g2587125874_ _g2587225876_)
                                            (cons _g2587125874_ _g2587225876_))
                                          '()
                                          _L25813_))
                         (not (find (lambda (_g2587825880_)
                                      (gx#free-identifier=?
                                       _g2587825880_
                                       _L25814_))
                                    (foldr1 (lambda (_g2588225885_
                                                     _g2588325887_)
                                              (cons _g2588225885_
                                                    _g2588325887_))
                                            '()
                                            _L25815_))))
                    (___kont3321333214_ _L25813_ _L25814_ _L25815_)
                    (___match3325433255_
                     _e2513725701_
                     _hd2513825704_
                     _tl2513925706_
                     ___splice3321533216_
                     _target2514025709_
                     _tl2514225711_)))
              (___match3325433255_
               _e2513725701_
               _hd2513825704_
               _tl2513925706_
               ___splice3321533216_
               _target2514025709_
               _tl2514225711_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop2516725778_ _target2516425773_ '()))
                                (___match3325433255_
                                 _e2513725701_
                                 _hd2513825704_
                                 _tl2513925706_
                                 ___splice3321533216_
                                 _target2514025709_
                                 _tl2514225711_))))
                        (___match3325433255_
                         _e2513725701_
                         _hd2513825704_
                         _tl2513925706_
                         ___splice3321533216_
                         _target2514025709_
                         _tl2514225711_))
                    (___match3325433255_
                     _e2513725701_
                     _hd2513825704_
                     _tl2513925706_
                     ___splice3321533216_
                     _target2514025709_
                     _tl2514225711_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match3325433255_
                                                     _e2513725701_
                                                     _hd2513825704_
                                                     _tl2513925706_
                                                     ___splice3321533216_
                                                     _target2514025709_
                                                     _tl2514225711_))
                                                (___match3325433255_
                                                 _e2513725701_
                                                 _hd2513825704_
                                                 _tl2513925706_
                                                 ___splice3321533216_
                                                 _target2514025709_
                                                 _tl2514225711_))
                                            (___match3325433255_
                                             _e2513725701_
                                             _hd2513825704_
                                             _tl2513925706_
                                             ___splice3321533216_
                                             _target2514025709_
                                             _tl2514225711_))))
                                    (___match3325433255_
                                     _e2513725701_
                                     _hd2513825704_
                                     _tl2513925706_
                                     ___splice3321533216_
                                     _target2514025709_
                                     _tl2514225711_))))
                            (___match3325433255_
                             _e2513725701_
                             _hd2513825704_
                             _tl2513925706_
                             ___splice3321533216_
                             _target2514025709_
                             _tl2514225711_))
                        (___match3325433255_
                         _e2513725701_
                         _hd2513825704_
                         _tl2513925706_
                         ___splice3321533216_
                         _target2514025709_
                         _tl2514225711_))
                    (___match3325433255_
                     _e2513725701_
                     _hd2513825704_
                     _tl2513925706_
                     ___splice3321533216_
                     _target2514025709_
                     _tl2514225711_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match3325433255_
                                                     _e2513725701_
                                                     _hd2513825704_
                                                     _tl2513925706_
                                                     ___splice3321533216_
                                                     _target2514025709_
                                                     _tl2514225711_))))
                                            (___match3325433255_
                                             _e2513725701_
                                             _hd2513825704_
                                             _tl2513925706_
                                             ___splice3321533216_
                                             _target2514025709_
                                             _tl2514225711_)))))))
                        (_loop2514325714_ _target2514025709_ '())))))
              (if (gx#stx-pair? ___stx3321133212_)
                  (let ((_e2513725701_ (gx#stx-e ___stx3321133212_)))
                    (let ((_tl2513925706_
                           (let () (declare (not safe)) (##cdr _e2513725701_)))
                          (_hd2513825704_
                           (let ()
                             (declare (not safe))
                             (##car _e2513725701_))))
                      (if (gx#stx-pair/null? _hd2513825704_)
                          (let ((___splice3321533216_
                                 (gx#syntax-split-splice _hd2513825704_ '0)))
                            (let ((_tl2514225711_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3321533216_ '1)))
                                  (_target2514025709_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3321533216_ '0))))
                              (if (gx#stx-null? _tl2514225711_)
                                  (___match3324233243_
                                   _e2513725701_
                                   _hd2513825704_
                                   _tl2513925706_
                                   ___splice3321533216_
                                   _target2514025709_
                                   _tl2514225711_)
                                  (___match3325433255_
                                   _e2513725701_
                                   _hd2513825704_
                                   _tl2513925706_
                                   ___splice3321533216_
                                   _target2514025709_
                                   _tl2514225711_))))
                          (if (gx#stx-pair? _tl2513925706_)
                              (let ((_e2525225309_ (gx#stx-e _tl2513925706_)))
                                (let ((_tl2525425314_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2525225309_)))
                                      (_hd2525325312_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2525225309_))))
                                  (if (gx#stx-pair? _hd2525325312_)
                                      (let ((_e2525525317_
                                             (gx#stx-e _hd2525325312_)))
                                        (let ((_tl2525725322_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2525525317_)))
                                              (_hd2525625320_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2525525317_))))
                                          (if (gx#identifier? _hd2525625320_)
                                              (if (gx#stx-eq?
                                                   '%#call
                                                   _hd2525625320_)
                                                  (if (gx#stx-pair?
                                                       _tl2525725322_)
                                                      (let ((_e2525825325_
                                                             (gx#stx-e
                                                              _tl2525725322_)))
                                                        (let ((_tl2526025330_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2525825325_)))
                      (_hd2525925328_
                       (let () (declare (not safe)) (##car _e2525825325_))))
                  (if (gx#stx-pair? _hd2525925328_)
                      (let ((_e2526125333_ (gx#stx-e _hd2525925328_)))
                        (let ((_tl2526325338_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2526125333_)))
                              (_hd2526225336_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2526125333_))))
                          (if (gx#identifier? _hd2526225336_)
                              (if (gx#stx-eq? '%#ref _hd2526225336_)
                                  (if (gx#stx-pair? _tl2526325338_)
                                      (let ((_e2526425341_
                                             (gx#stx-e _tl2526325338_)))
                                        (let ((_tl2526625346_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2526425341_)))
                                              (_hd2526525344_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2526425341_))))
                                          (if (gx#stx-null? _tl2526625346_)
                                              (if (gx#stx-pair? _tl2526025330_)
                                                  (let ((_e2526725349_
                                                         (gx#stx-e
                                                          _tl2526025330_)))
                                                    (let ((_tl2526925354_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2526725349_)))
                                                          (_hd2526825352_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2526725349_))))
                                                      (if (gx#stx-pair?
                                                           _hd2526825352_)
                                                          (let ((_e2527025357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2526825352_)))
                    (let ((_tl2527225362_
                           (let () (declare (not safe)) (##cdr _e2527025357_)))
                          (_hd2527125360_
                           (let ()
                             (declare (not safe))
                             (##car _e2527025357_))))
                      (if (gx#identifier? _hd2527125360_)
                          (if (gx#stx-eq? '%#ref _hd2527125360_)
                              (if (gx#stx-pair? _tl2527225362_)
                                  (let ((_e2527325365_
                                         (gx#stx-e _tl2527225362_)))
                                    (let ((_tl2527525370_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2527325365_)))
                                          (_hd2527425368_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2527325365_))))
                                      (if (gx#stx-null? _tl2527525370_)
                                          (if (gx#stx-pair? _tl2526925354_)
                                              (let ((_e2527625373_
                                                     (gx#stx-e
                                                      _tl2526925354_)))
                                                (let ((_tl2527825378_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2527625373_)))
                                                      (_hd2527725376_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2527625373_))))
                                                  (if (gx#stx-pair?
                                                       _hd2527725376_)
                                                      (let ((_e2527925381_
                                                             (gx#stx-e
                                                              _hd2527725376_)))
                                                        (let ((_tl2528125386_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2527925381_)))
                      (_hd2528025384_
                       (let () (declare (not safe)) (##car _e2527925381_))))
                  (if (gx#identifier? _hd2528025384_)
                      (if (gx#stx-eq? '%#ref _hd2528025384_)
                          (if (gx#stx-pair? _tl2528125386_)
                              (let ((_e2528225389_ (gx#stx-e _tl2528125386_)))
                                (let ((_tl2528425394_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2528225389_)))
                                      (_hd2528325392_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2528225389_))))
                                  (if (gx#stx-null? _tl2528425394_)
                                      (if (gx#stx-null? _tl2527825378_)
                                          (if (gx#stx-null? _tl2525425314_)
                                              (___match3335233353_
                                               _e2513725701_
                                               _hd2513825704_
                                               _tl2513925706_
                                               _e2525225309_
                                               _hd2525325312_
                                               _tl2525425314_
                                               _e2525525317_
                                               _hd2525625320_
                                               _tl2525725322_
                                               _e2525825325_
                                               _hd2525925328_
                                               _tl2526025330_
                                               _e2526125333_
                                               _hd2526225336_
                                               _tl2526325338_
                                               _e2526425341_
                                               _hd2526525344_
                                               _tl2526625346_
                                               _e2526725349_
                                               _hd2526825352_
                                               _tl2526925354_
                                               _e2527025357_
                                               _hd2527125360_
                                               _tl2527225362_
                                               _e2527325365_
                                               _hd2527425368_
                                               _tl2527525370_
                                               _e2527625373_
                                               _hd2527725376_
                                               _tl2527825378_
                                               _e2527925381_
                                               _hd2528025384_
                                               _tl2528125386_
                                               _e2528225389_
                                               _hd2528325392_
                                               _tl2528425394_)
                                              (___kont3322733228_))
                                          (___kont3322733228_))
                                      (___kont3322733228_))))
                              (___kont3322733228_))
                          (___kont3322733228_))
                      (___kont3322733228_))))
              (___kont3322733228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont3322733228_))
                                          (___kont3322733228_))))
                                  (___kont3322733228_))
                              (___kont3322733228_))
                          (___kont3322733228_))))
                  (___kont3322733228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3322733228_))
                                              (___kont3322733228_))))
                                      (___kont3322733228_))
                                  (___kont3322733228_))
                              (___kont3322733228_))))
                      (___kont3322733228_))))
              (___kont3322733228_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3322733228_))
                                              (___kont3322733228_))))
                                      (___kont3322733228_))))
                              (___kont3322733228_)))))
                  (___kont3322733228_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form24595_)
        (let* ((___stx3335533356_ _form24595_)
               (_g2459924723_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3335533356_))))
          (let ((___kont3335733358_
                 (lambda (_L25093_ _L25094_ _L25095_)
                   (gxc#identifier-symbol _L25094_)))
                (___kont3336333364_
                 (lambda (_L24941_ _L24942_ _L24943_ _L24944_)
                   (gxc#identifier-symbol _L24941_)))
                (___kont3336733368_
                 (lambda (_L24808_ _L24809_ _L24810_)
                   (gxc#identifier-symbol _L24808_))))
            (let* ((___match3346433465_
                    (lambda (_e2468924728_
                             _hd2469024731_
                             _tl2469124733_
                             _e2469224736_
                             _hd2469324739_
                             _tl2469424741_
                             _e2469524744_
                             _hd2469624747_
                             _tl2469724749_
                             _e2469824752_
                             _hd2469924755_
                             _tl2470024757_
                             _e2470124760_
                             _hd2470224763_
                             _tl2470324765_
                             _e2470424768_
                             _hd2470524771_
                             _tl2470624773_
                             _e2470724776_
                             _hd2470824779_
                             _tl2470924781_
                             _e2471024784_
                             _hd2471124787_
                             _tl2471224789_
                             _e2471324792_
                             _hd2471424795_
                             _tl2471524797_)
                      (if (gx#stx-pair? _tl2470924781_)
                          (let ((_e2471624800_ (gx#stx-e _tl2470924781_)))
                            (let ((_tl2471824805_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2471624800_)))
                                  (_hd2471724803_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2471624800_))))
                              (if (gx#stx-null? _tl2471824805_)
                                  (if (gx#stx-null? _tl2469424741_)
                                      (___kont3336733368_
                                       _hd2471424795_
                                       _hd2470524771_
                                       _hd2469024731_)
                                      (_g2459924723_))
                                  (_g2459924723_))))
                          (_g2459924723_))))
                   (___match3339433395_
                    (lambda (_e2465024845_
                             _hd2465124848_
                             _tl2465224850_
                             ___splice3336533366_
                             _target2465324853_
                             _tl2465524855_)
                      (letrec ((_loop2465624858_
                                (lambda (_hd2465424861_ _arg2466024863_)
                                  (if (gx#stx-pair? _hd2465424861_)
                                      (let ((_e2465724866_
                                             (gx#stx-e _hd2465424861_)))
                                        (let ((_lp-tl2465924871_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2465724866_)))
                                              (_lp-hd2465824869_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2465724866_))))
                                          (_loop2465624858_
                                           _lp-tl2465924871_
                                           (cons _lp-hd2465824869_
                                                 _arg2466024863_))))
                                      (let ((_arg2466124874_
                                             (reverse _arg2466024863_)))
                                        (if (gx#stx-pair? _tl2465224850_)
                                            (let ((_e2466224877_
                                                   (gx#stx-e _tl2465224850_)))
                                              (let ((_tl2466424882_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2466224877_)))
                                                    (_hd2466324880_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2466224877_))))
                                                (if (gx#stx-pair?
                                                     _hd2466324880_)
                                                    (let ((_e2466524885_
                                                           (gx#stx-e
                                                            _hd2466324880_)))
                                                      (let ((_tl2466724890_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2466524885_)))
                    (_hd2466624888_
                     (let () (declare (not safe)) (##car _e2466524885_))))
                (if (gx#identifier? _hd2466624888_)
                    (if (gx#stx-eq? '%#call _hd2466624888_)
                        (if (gx#stx-pair? _tl2466724890_)
                            (let ((_e2466824893_ (gx#stx-e _tl2466724890_)))
                              (let ((_tl2467024898_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2466824893_)))
                                    (_hd2466924896_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2466824893_))))
                                (if (gx#stx-pair? _hd2466924896_)
                                    (let ((_e2467124901_
                                           (gx#stx-e _hd2466924896_)))
                                      (let ((_tl2467324906_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2467124901_)))
                                            (_hd2467224904_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2467124901_))))
                                        (if (gx#identifier? _hd2467224904_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2467224904_)
                                                (if (gx#stx-pair?
                                                     _tl2467324906_)
                                                    (let ((_e2467424909_
                                                           (gx#stx-e
                                                            _tl2467324906_)))
                                                      (let ((_tl2467624914_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2467424909_)))
                    (_hd2467524912_
                     (let () (declare (not safe)) (##car _e2467424909_))))
                (if (gx#stx-null? _tl2467624914_)
                    (if (gx#stx-pair? _tl2467024898_)
                        (let ((_e2467724917_ (gx#stx-e _tl2467024898_)))
                          (let ((_tl2467924922_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2467724917_)))
                                (_hd2467824920_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2467724917_))))
                            (if (gx#stx-pair? _hd2467824920_)
                                (let ((_e2468024925_
                                       (gx#stx-e _hd2467824920_)))
                                  (let ((_tl2468224930_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2468024925_)))
                                        (_hd2468124928_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2468024925_))))
                                    (if (gx#identifier? _hd2468124928_)
                                        (if (gx#stx-eq? '%#ref _hd2468124928_)
                                            (if (gx#stx-pair? _tl2468224930_)
                                                (let ((_e2468324933_
                                                       (gx#stx-e
                                                        _tl2468224930_)))
                                                  (let ((_tl2468524938_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2468324933_)))
                                                        (_hd2468424936_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2468324933_))))
                                                    (if (gx#stx-null?
                                                         _tl2468524938_)
                                                        (if (gx#stx-null?
                                                             _tl2466424882_)
                                                            (___kont3336333364_
                                                             _hd2468424936_
                                                             _hd2467524912_
                                                             _tl2465524855_
                                                             _arg2466124874_)
                                                            (___match3346433465_
                                                             _e2465024845_
                                                             _hd2465124848_
                                                             _tl2465224850_
                                                             _e2466224877_
                                                             _hd2466324880_
                                                             _tl2466424882_
                                                             _e2466524885_
                                                             _hd2466624888_
                                                             _tl2466724890_
                                                             _e2466824893_
                                                             _hd2466924896_
                                                             _tl2467024898_
                                                             _e2467124901_
                                                             _hd2467224904_
                                                             _tl2467324906_
                                                             _e2467424909_
                                                             _hd2467524912_
                                                             _tl2467624914_
                                                             _e2467724917_
                                                             _hd2467824920_
                                                             _tl2467924922_
                                                             _e2468024925_
                                                             _hd2468124928_
                                                             _tl2468224930_
                                                             _e2468324933_
                                                             _hd2468424936_
                                                             _tl2468524938_))
                                                        (_g2459924723_))))
                                                (_g2459924723_))
                                            (_g2459924723_))
                                        (_g2459924723_))))
                                (_g2459924723_))))
                        (_g2459924723_))
                    (_g2459924723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2459924723_))
                                                (_g2459924723_))
                                            (_g2459924723_))))
                                    (_g2459924723_))))
                            (_g2459924723_))
                        (_g2459924723_))
                    (_g2459924723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2459924723_))))
                                            (_g2459924723_)))))))
                        (_loop2465624858_ _target2465324853_ '()))))
                   (___match3338233383_
                    (lambda (_e2460424981_
                             _hd2460524984_
                             _tl2460624986_
                             ___splice3335933360_
                             _target2460724989_
                             _tl2460924991_)
                      (letrec ((_loop2461024994_
                                (lambda (_hd2460824997_ _arg2461424999_)
                                  (if (gx#stx-pair? _hd2460824997_)
                                      (let ((_e2461125002_
                                             (gx#stx-e _hd2460824997_)))
                                        (let ((_lp-tl2461325007_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2461125002_)))
                                              (_lp-hd2461225005_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2461125002_))))
                                          (_loop2461024994_
                                           _lp-tl2461325007_
                                           (cons _lp-hd2461225005_
                                                 _arg2461424999_))))
                                      (let ((_arg2461525010_
                                             (reverse _arg2461424999_)))
                                        (if (gx#stx-pair? _tl2460624986_)
                                            (let ((_e2461625013_
                                                   (gx#stx-e _tl2460624986_)))
                                              (let ((_tl2461825018_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2461625013_)))
                                                    (_hd2461725016_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2461625013_))))
                                                (if (gx#stx-pair?
                                                     _hd2461725016_)
                                                    (let ((_e2461925021_
                                                           (gx#stx-e
                                                            _hd2461725016_)))
                                                      (let ((_tl2462125026_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2461925021_)))
                    (_hd2462025024_
                     (let () (declare (not safe)) (##car _e2461925021_))))
                (if (gx#identifier? _hd2462025024_)
                    (if (gx#stx-eq? '%#call _hd2462025024_)
                        (if (gx#stx-pair? _tl2462125026_)
                            (let ((_e2462225029_ (gx#stx-e _tl2462125026_)))
                              (let ((_tl2462425034_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2462225029_)))
                                    (_hd2462325032_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2462225029_))))
                                (if (gx#stx-pair? _hd2462325032_)
                                    (let ((_e2462525037_
                                           (gx#stx-e _hd2462325032_)))
                                      (let ((_tl2462725042_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2462525037_)))
                                            (_hd2462625040_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2462525037_))))
                                        (if (gx#identifier? _hd2462625040_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2462625040_)
                                                (if (gx#stx-pair?
                                                     _tl2462725042_)
                                                    (let ((_e2462825045_
                                                           (gx#stx-e
                                                            _tl2462725042_)))
                                                      (let ((_tl2463025050_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2462825045_)))
                    (_hd2462925048_
                     (let () (declare (not safe)) (##car _e2462825045_))))
                (if (gx#stx-null? _tl2463025050_)
                    (if (gx#stx-pair/null? _tl2462425034_)
                        (let ((___splice3336133362_
                               (gx#syntax-split-splice _tl2462425034_ '0)))
                          (let ((_tl2463325055_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice3336133362_ '1)))
                                (_target2463125053_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice3336133362_ '0))))
                            (if (gx#stx-null? _tl2463325055_)
                                (letrec ((_loop2463425058_
                                          (lambda (_hd2463225061_
                                                   _xarg2463825063_)
                                            (if (gx#stx-pair? _hd2463225061_)
                                                (let ((_e2463525066_
                                                       (gx#stx-e
                                                        _hd2463225061_)))
                                                  (let ((_lp-tl2463725071_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2463525066_)))
                                                        (_lp-hd2463625069_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2463525066_))))
                                                    (if (gx#stx-pair?
                                                         _lp-hd2463625069_)
                                                        (let ((_e2464025074_
                                                               (gx#stx-e
                                                                _lp-hd2463625069_)))
                                                          (let ((_tl2464225079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e2464025074_)))
                        (_hd2464125077_
                         (let () (declare (not safe)) (##car _e2464025074_))))
                    (if (gx#identifier? _hd2464125077_)
                        (if (gx#stx-eq? '%#ref _hd2464125077_)
                            (if (gx#stx-pair? _tl2464225079_)
                                (let ((_e2464325082_
                                       (gx#stx-e _tl2464225079_)))
                                  (let ((_tl2464525087_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2464325082_)))
                                        (_hd2464425085_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2464325082_))))
                                    (if (gx#stx-null? _tl2464525087_)
                                        (_loop2463425058_
                                         _lp-tl2463725071_
                                         (cons _hd2464425085_
                                               _xarg2463825063_))
                                        (___match3339433395_
                                         _e2460424981_
                                         _hd2460524984_
                                         _tl2460624986_
                                         ___splice3335933360_
                                         _target2460724989_
                                         _tl2460924991_))))
                                (___match3339433395_
                                 _e2460424981_
                                 _hd2460524984_
                                 _tl2460624986_
                                 ___splice3335933360_
                                 _target2460724989_
                                 _tl2460924991_))
                            (___match3339433395_
                             _e2460424981_
                             _hd2460524984_
                             _tl2460624986_
                             ___splice3335933360_
                             _target2460724989_
                             _tl2460924991_))
                        (___match3339433395_
                         _e2460424981_
                         _hd2460524984_
                         _tl2460624986_
                         ___splice3335933360_
                         _target2460724989_
                         _tl2460924991_))))
                (___match3339433395_
                 _e2460424981_
                 _hd2460524984_
                 _tl2460624986_
                 ___splice3335933360_
                 _target2460724989_
                 _tl2460924991_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg2463925090_
                                                       (reverse _xarg2463825063_)))
                                                  (if (gx#stx-null?
                                                       _tl2461825018_)
                                                      (___kont3335733358_
                                                       _xarg2463925090_
                                                       _hd2462925048_
                                                       _arg2461525010_)
                                                      (___match3339433395_
                                                       _e2460424981_
                                                       _hd2460524984_
                                                       _tl2460624986_
                                                       ___splice3335933360_
                                                       _target2460724989_
                                                       _tl2460924991_)))))))
                                  (_loop2463425058_ _target2463125053_ '()))
                                (___match3339433395_
                                 _e2460424981_
                                 _hd2460524984_
                                 _tl2460624986_
                                 ___splice3335933360_
                                 _target2460724989_
                                 _tl2460924991_))))
                        (___match3339433395_
                         _e2460424981_
                         _hd2460524984_
                         _tl2460624986_
                         ___splice3335933360_
                         _target2460724989_
                         _tl2460924991_))
                    (___match3339433395_
                     _e2460424981_
                     _hd2460524984_
                     _tl2460624986_
                     ___splice3335933360_
                     _target2460724989_
                     _tl2460924991_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match3339433395_
                                                     _e2460424981_
                                                     _hd2460524984_
                                                     _tl2460624986_
                                                     ___splice3335933360_
                                                     _target2460724989_
                                                     _tl2460924991_))
                                                (___match3339433395_
                                                 _e2460424981_
                                                 _hd2460524984_
                                                 _tl2460624986_
                                                 ___splice3335933360_
                                                 _target2460724989_
                                                 _tl2460924991_))
                                            (___match3339433395_
                                             _e2460424981_
                                             _hd2460524984_
                                             _tl2460624986_
                                             ___splice3335933360_
                                             _target2460724989_
                                             _tl2460924991_))))
                                    (___match3339433395_
                                     _e2460424981_
                                     _hd2460524984_
                                     _tl2460624986_
                                     ___splice3335933360_
                                     _target2460724989_
                                     _tl2460924991_))))
                            (___match3339433395_
                             _e2460424981_
                             _hd2460524984_
                             _tl2460624986_
                             ___splice3335933360_
                             _target2460724989_
                             _tl2460924991_))
                        (___match3339433395_
                         _e2460424981_
                         _hd2460524984_
                         _tl2460624986_
                         ___splice3335933360_
                         _target2460724989_
                         _tl2460924991_))
                    (___match3339433395_
                     _e2460424981_
                     _hd2460524984_
                     _tl2460624986_
                     ___splice3335933360_
                     _target2460724989_
                     _tl2460924991_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match3339433395_
                                                     _e2460424981_
                                                     _hd2460524984_
                                                     _tl2460624986_
                                                     ___splice3335933360_
                                                     _target2460724989_
                                                     _tl2460924991_))))
                                            (___match3339433395_
                                             _e2460424981_
                                             _hd2460524984_
                                             _tl2460624986_
                                             ___splice3335933360_
                                             _target2460724989_
                                             _tl2460924991_)))))))
                        (_loop2461024994_ _target2460724989_ '())))))
              (if (gx#stx-pair? ___stx3335533356_)
                  (let ((_e2460424981_ (gx#stx-e ___stx3335533356_)))
                    (let ((_tl2460624986_
                           (let () (declare (not safe)) (##cdr _e2460424981_)))
                          (_hd2460524984_
                           (let ()
                             (declare (not safe))
                             (##car _e2460424981_))))
                      (if (gx#stx-pair/null? _hd2460524984_)
                          (let ((___splice3335933360_
                                 (gx#syntax-split-splice _hd2460524984_ '0)))
                            (let ((_tl2460924991_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3335933360_ '1)))
                                  (_target2460724989_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3335933360_ '0))))
                              (if (gx#stx-null? _tl2460924991_)
                                  (___match3338233383_
                                   _e2460424981_
                                   _hd2460524984_
                                   _tl2460624986_
                                   ___splice3335933360_
                                   _target2460724989_
                                   _tl2460924991_)
                                  (___match3339433395_
                                   _e2460424981_
                                   _hd2460524984_
                                   _tl2460624986_
                                   ___splice3335933360_
                                   _target2460724989_
                                   _tl2460924991_))))
                          (if (gx#stx-pair? _tl2460624986_)
                              (let ((_e2469224736_ (gx#stx-e _tl2460624986_)))
                                (let ((_tl2469424741_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2469224736_)))
                                      (_hd2469324739_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2469224736_))))
                                  (if (gx#stx-pair? _hd2469324739_)
                                      (let ((_e2469524744_
                                             (gx#stx-e _hd2469324739_)))
                                        (let ((_tl2469724749_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2469524744_)))
                                              (_hd2469624747_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2469524744_))))
                                          (if (gx#identifier? _hd2469624747_)
                                              (if (gx#stx-eq?
                                                   '%#call
                                                   _hd2469624747_)
                                                  (if (gx#stx-pair?
                                                       _tl2469724749_)
                                                      (let ((_e2469824752_
                                                             (gx#stx-e
                                                              _tl2469724749_)))
                                                        (let ((_tl2470024757_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2469824752_)))
                      (_hd2469924755_
                       (let () (declare (not safe)) (##car _e2469824752_))))
                  (if (gx#stx-pair? _hd2469924755_)
                      (let ((_e2470124760_ (gx#stx-e _hd2469924755_)))
                        (let ((_tl2470324765_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2470124760_)))
                              (_hd2470224763_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2470124760_))))
                          (if (gx#identifier? _hd2470224763_)
                              (if (gx#stx-eq? '%#ref _hd2470224763_)
                                  (if (gx#stx-pair? _tl2470324765_)
                                      (let ((_e2470424768_
                                             (gx#stx-e _tl2470324765_)))
                                        (let ((_tl2470624773_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2470424768_)))
                                              (_hd2470524771_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2470424768_))))
                                          (if (gx#stx-null? _tl2470624773_)
                                              (if (gx#stx-pair? _tl2470024757_)
                                                  (let ((_e2470724776_
                                                         (gx#stx-e
                                                          _tl2470024757_)))
                                                    (let ((_tl2470924781_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2470724776_)))
                                                          (_hd2470824779_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2470724776_))))
                                                      (if (gx#stx-pair?
                                                           _hd2470824779_)
                                                          (let ((_e2471024784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2470824779_)))
                    (let ((_tl2471224789_
                           (let () (declare (not safe)) (##cdr _e2471024784_)))
                          (_hd2471124787_
                           (let ()
                             (declare (not safe))
                             (##car _e2471024784_))))
                      (if (gx#identifier? _hd2471124787_)
                          (if (gx#stx-eq? '%#ref _hd2471124787_)
                              (if (gx#stx-pair? _tl2471224789_)
                                  (let ((_e2471324792_
                                         (gx#stx-e _tl2471224789_)))
                                    (let ((_tl2471524797_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2471324792_)))
                                          (_hd2471424795_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2471324792_))))
                                      (if (gx#stx-null? _tl2471524797_)
                                          (if (gx#stx-pair? _tl2470924781_)
                                              (let ((_e2471624800_
                                                     (gx#stx-e
                                                      _tl2470924781_)))
                                                (let ((_tl2471824805_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2471624800_)))
                                                      (_hd2471724803_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2471624800_))))
                                                  (if (gx#stx-null?
                                                       _tl2471824805_)
                                                      (if (gx#stx-null?
                                                           _tl2469424741_)
                                                          (___kont3336733368_
                                                           _hd2471424795_
                                                           _hd2470524771_
                                                           _hd2460524984_)
                                                          (_g2459924723_))
                                                      (_g2459924723_))))
                                              (_g2459924723_))
                                          (_g2459924723_))))
                                  (_g2459924723_))
                              (_g2459924723_))
                          (_g2459924723_))))
                  (_g2459924723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2459924723_))
                                              (_g2459924723_))))
                                      (_g2459924723_))
                                  (_g2459924723_))
                              (_g2459924723_))))
                      (_g2459924723_))))
              (_g2459924723_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2459924723_))
                                              (_g2459924723_))))
                                      (_g2459924723_))))
                              (_g2459924723_)))))
                  (_g2459924723_)))))))
    (define gxc#lambda-form-arity
      (lambda (_form24399_)
        (let* ((_g2440124415_
                (lambda (_g2440224412_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2440224412_)))
               (_g2440024592_
                (lambda (_g2440224418_)
                  (if (gx#stx-pair? _g2440224418_)
                      (let ((_e2440524420_ (gx#stx-e _g2440224418_)))
                        (let ((_hd2440624423_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2440524420_)))
                              (_tl2440724425_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2440524420_))))
                          (if (gx#stx-pair? _tl2440724425_)
                              (let ((_e2440824428_ (gx#stx-e _tl2440724425_)))
                                (let ((_hd2440924431_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2440824428_)))
                                      (_tl2441024433_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2440824428_))))
                                  (if (gx#stx-null? _tl2441024433_)
                                      ((lambda (_L24436_ _L24437_)
                                         (let* ((___stx3347733478_ _L24437_)
                                                (_g2445224480_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    ___stx3347733478_))))
                                           (let ((___kont3347933480_
                                                  (lambda (_L24571_)
                                                    (length (foldr1 (lambda (_g2458124584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2458224586_)
                              (cons _g2458124584_ _g2458224586_))
                            '()
                            _L24571_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont3348333484_
                                                  (lambda (_L24522_ _L24523_)
                                                    (cons (length (foldr1 (lambda (_g2453424537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _g2453524539_)
                                    (cons _g2453424537_ _g2453524539_))
                                  '()
                                  _L24523_))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont3348733488_
                                                  (lambda (_L24485_)
                                                    (cons '0 '()))))
                                             (let* ((___match3350233503_
                                                     (lambda (___splice3348533486_
                                                              _target2446624498_
                                                              _tl2446824500_)
                                                       (letrec ((_loop2446924503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd2446724506_ _arg2447324508_)
                           (if (gx#stx-pair? _hd2446724506_)
                               (let ((_e2447024511_ (gx#stx-e _hd2446724506_)))
                                 (let ((_lp-tl2447224516_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e2447024511_)))
                                       (_lp-hd2447124514_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e2447024511_))))
                                   (_loop2446924503_
                                    _lp-tl2447224516_
                                    (cons _lp-hd2447124514_ _arg2447324508_))))
                               (let ((_arg2447424519_
                                      (reverse _arg2447324508_)))
                                 (___kont3348333484_
                                  _tl2446824500_
                                  _arg2447424519_))))))
                 (_loop2446924503_ _target2446624498_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match3349633497_
                                                     (lambda (___splice3348133482_
                                                              _target2445524547_
                                                              _tl2445724549_)
                                                       (letrec ((_loop2445824552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd2445624555_ _arg2446224557_)
                           (if (gx#stx-pair? _hd2445624555_)
                               (let ((_e2445924560_ (gx#stx-e _hd2445624555_)))
                                 (let ((_lp-tl2446124565_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e2445924560_)))
                                       (_lp-hd2446024563_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e2445924560_))))
                                   (_loop2445824552_
                                    _lp-tl2446124565_
                                    (cons _lp-hd2446024563_ _arg2446224557_))))
                               (let ((_arg2446324568_
                                      (reverse _arg2446224557_)))
                                 (___kont3347933480_ _arg2446324568_))))))
                 (_loop2445824552_ _target2445524547_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    ___stx3347733478_)
                                                   (let ((___splice3348133482_
                                                          (gx#syntax-split-splice
                                                           ___stx3347733478_
                                                           '0)))
                                                     (let ((_tl2445724549_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice3348133482_
                                                               '1)))
                                                           (_target2445524547_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice3348133482_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _tl2445724549_)
                                                           (___match3349633497_
                                                            ___splice3348133482_
                                                            _target2445524547_
                                                            _tl2445724549_)
                                                           (___match3350233503_
                                                            ___splice3348133482_
                                                            _target2445524547_
                                                            _tl2445724549_))))
                                                   (___kont3348733488_
                                                    ___stx3347733478_))))))
                                       _hd2440924431_
                                       _hd2440624423_)
                                      (_g2440124415_ _g2440224418_))))
                              (_g2440124415_ _g2440224418_))))
                      (_g2440124415_ _g2440224418_)))))
          (_g2440024592_ _form24399_))))
    (define gxc#lambda-expr?
      (lambda (_expr24352_)
        (let* ((___stx3350533506_ _expr24352_)
               (_g2435524365_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3350533506_))))
          (let ((___kont3350733508_ (lambda (_L24385_) '#t))
                (___kont3350933510_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx3350533506_)
                (let ((_e2435824377_ (gx#stx-e ___stx3350533506_)))
                  (let ((_tl2436024382_
                         (let () (declare (not safe)) (##cdr _e2435824377_)))
                        (_hd2435924380_
                         (let () (declare (not safe)) (##car _e2435824377_))))
                    (if (gx#identifier? _hd2435924380_)
                        (if (gx#stx-eq? '%#lambda _hd2435924380_)
                            (___kont3350733508_ _tl2436024382_)
                            (___kont3350933510_))
                        (___kont3350933510_))))
                (___kont3350933510_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr24305_)
        (let* ((___stx3352333524_ _expr24305_)
               (_g2430824318_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3352333524_))))
          (let ((___kont3352533526_ (lambda (_L24338_) '#t))
                (___kont3352733528_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx3352333524_)
                (let ((_e2431124330_ (gx#stx-e ___stx3352333524_)))
                  (let ((_tl2431324335_
                         (let () (declare (not safe)) (##cdr _e2431124330_)))
                        (_hd2431224333_
                         (let () (declare (not safe)) (##car _e2431124330_))))
                    (if (gx#identifier? _hd2431224333_)
                        (if (gx#stx-eq? '%#case-lambda _hd2431224333_)
                            (___kont3352533526_ _tl2431324335_)
                            (___kont3352733528_))
                        (___kont3352733528_))))
                (___kont3352733528_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr24174_)
        (let* ((___stx3354133542_ _expr24174_)
               (_g2417724207_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3354133542_))))
          (let ((___kont3354333544_
                 (lambda (_L24275_ _L24276_ _L24277_)
                   (if (gx#identifier? _L24277_)
                       (if (gxc#lambda-expr? _L24276_)
                           (gxc#case-lambda-expr? _L24275_)
                           '#f)
                       '#f)))
                (___kont3354533546_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx3354133542_)
                (let ((_e2418224219_ (gx#stx-e ___stx3354133542_)))
                  (let ((_tl2418424224_
                         (let () (declare (not safe)) (##cdr _e2418224219_)))
                        (_hd2418324222_
                         (let () (declare (not safe)) (##car _e2418224219_))))
                    (if (gx#identifier? _hd2418324222_)
                        (if (gx#stx-eq? '%#let-values _hd2418324222_)
                            (if (gx#stx-pair? _tl2418424224_)
                                (let ((_e2418524227_
                                       (gx#stx-e _tl2418424224_)))
                                  (let ((_tl2418724232_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2418524227_)))
                                        (_hd2418624230_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2418524227_))))
                                    (if (gx#stx-pair? _hd2418624230_)
                                        (let ((_e2418824235_
                                               (gx#stx-e _hd2418624230_)))
                                          (let ((_tl2419024240_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2418824235_)))
                                                (_hd2418924238_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2418824235_))))
                                            (if (gx#stx-pair? _hd2418924238_)
                                                (let ((_e2419124243_
                                                       (gx#stx-e
                                                        _hd2418924238_)))
                                                  (let ((_tl2419324248_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2419124243_)))
                                                        (_hd2419224246_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2419124243_))))
                                                    (if (gx#stx-pair?
                                                         _hd2419224246_)
                                                        (let ((_e2419424251_
                                                               (gx#stx-e
                                                                _hd2419224246_)))
                                                          (let ((_tl2419624256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e2419424251_)))
                        (_hd2419524254_
                         (let () (declare (not safe)) (##car _e2419424251_))))
                    (if (gx#stx-null? _tl2419624256_)
                        (if (gx#stx-pair? _tl2419324248_)
                            (let ((_e2419724259_ (gx#stx-e _tl2419324248_)))
                              (let ((_tl2419924264_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2419724259_)))
                                    (_hd2419824262_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2419724259_))))
                                (if (gx#stx-null? _tl2419924264_)
                                    (if (gx#stx-null? _tl2419024240_)
                                        (if (gx#stx-pair? _tl2418724232_)
                                            (let ((_e2420024267_
                                                   (gx#stx-e _tl2418724232_)))
                                              (let ((_tl2420224272_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2420024267_)))
                                                    (_hd2420124270_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2420024267_))))
                                                (if (gx#stx-null?
                                                     _tl2420224272_)
                                                    (___kont3354333544_
                                                     _hd2420124270_
                                                     _hd2419824262_
                                                     _hd2419524254_)
                                                    (___kont3354533546_))))
                                            (___kont3354533546_))
                                        (___kont3354533546_))
                                    (___kont3354533546_))))
                            (___kont3354533546_))
                        (___kont3354533546_))))
                (___kont3354533546_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3354533546_))))
                                        (___kont3354533546_))))
                                (___kont3354533546_))
                            (___kont3354533546_))
                        (___kont3354533546_))))
                (___kont3354533546_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr23499_)
        (let* ((___stx3360333604_ _expr23499_)
               (_g2350223660_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3360333604_))))
          (let ((___kont3360533606_
                 (lambda (_L24048_
                          _L24049_
                          _L24050_
                          _L24051_
                          _L24052_
                          _L24053_
                          _L24054_
                          _L24055_
                          _L24056_
                          _L24057_
                          _L24058_)
                   (if (gxc#runtime-identifier=? _L24055_ 'apply)
                       (if (gxc#runtime-identifier=? _L24051_ 'apply)
                           (if (gxc#runtime-identifier=?
                                _L24050_
                                'keyword-dispatch)
                               (if (gx#free-identifier=? _L24058_ _L24049_)
                                   (if (gx#free-identifier=? _L24057_ _L24054_)
                                       (if (gx#free-identifier=?
                                            _L24052_
                                            _L24048_)
                                           (gx#free-identifier=?
                                            _L24056_
                                            _L24053_)
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont3360733608_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx3360333604_)
                (let ((_e2351523672_ (gx#stx-e ___stx3360333604_)))
                  (let ((_tl2351723677_
                         (let () (declare (not safe)) (##cdr _e2351523672_)))
                        (_hd2351623675_
                         (let () (declare (not safe)) (##car _e2351523672_))))
                    (if (gx#identifier? _hd2351623675_)
                        (if (gx#stx-eq? '%#let-values _hd2351623675_)
                            (if (gx#stx-pair? _tl2351723677_)
                                (let ((_e2351823680_
                                       (gx#stx-e _tl2351723677_)))
                                  (let ((_tl2352023685_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2351823680_)))
                                        (_hd2351923683_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2351823680_))))
                                    (if (gx#stx-pair? _hd2351923683_)
                                        (let ((_e2352123688_
                                               (gx#stx-e _hd2351923683_)))
                                          (let ((_tl2352323693_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2352123688_)))
                                                (_hd2352223691_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2352123688_))))
                                            (if (gx#stx-pair? _hd2352223691_)
                                                (let ((_e2352423696_
                                                       (gx#stx-e
                                                        _hd2352223691_)))
                                                  (let ((_tl2352623701_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2352423696_)))
                                                        (_hd2352523699_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2352423696_))))
                                                    (if (gx#stx-pair?
                                                         _hd2352523699_)
                                                        (let ((_e2352723704_
                                                               (gx#stx-e
                                                                _hd2352523699_)))
                                                          (let ((_tl2352923709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e2352723704_)))
                        (_hd2352823707_
                         (let () (declare (not safe)) (##car _e2352723704_))))
                    (if (gx#stx-null? _tl2352923709_)
                        (if (gx#stx-pair? _tl2352623701_)
                            (let ((_e2353023712_ (gx#stx-e _tl2352623701_)))
                              (let ((_tl2353223717_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2353023712_)))
                                    (_hd2353123715_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2353023712_))))
                                (if (gx#stx-pair? _hd2353123715_)
                                    (let ((_e2353323720_
                                           (gx#stx-e _hd2353123715_)))
                                      (let ((_tl2353523725_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2353323720_)))
                                            (_hd2353423723_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2353323720_))))
                                        (if (gx#identifier? _hd2353423723_)
                                            (if (gx#stx-eq?
                                                 '%#let-values
                                                 _hd2353423723_)
                                                (if (gx#stx-pair?
                                                     _tl2353523725_)
                                                    (let ((_e2353623728_
                                                           (gx#stx-e
                                                            _tl2353523725_)))
                                                      (let ((_tl2353823733_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2353623728_)))
                    (_hd2353723731_
                     (let () (declare (not safe)) (##car _e2353623728_))))
                (if (gx#stx-pair? _hd2353723731_)
                    (let ((_e2353923736_ (gx#stx-e _hd2353723731_)))
                      (let ((_tl2354123741_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2353923736_)))
                            (_hd2354023739_
                             (let ()
                               (declare (not safe))
                               (##car _e2353923736_))))
                        (if (gx#stx-pair? _hd2354023739_)
                            (let ((_e2354223744_ (gx#stx-e _hd2354023739_)))
                              (let ((_tl2354423749_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2354223744_)))
                                    (_hd2354323747_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2354223744_))))
                                (if (gx#stx-pair? _hd2354323747_)
                                    (let ((_e2354523752_
                                           (gx#stx-e _hd2354323747_)))
                                      (let ((_tl2354723757_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2354523752_)))
                                            (_hd2354623755_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2354523752_))))
                                        (if (gx#stx-null? _tl2354723757_)
                                            (if (gx#stx-pair? _tl2354423749_)
                                                (let ((_e2354823760_
                                                       (gx#stx-e
                                                        _tl2354423749_)))
                                                  (let ((_tl2355023765_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2354823760_)))
                                                        (_hd2354923763_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2354823760_))))
                                                    (if (gx#stx-null?
                                                         _tl2355023765_)
                                                        (if (gx#stx-null?
                                                             _tl2354123741_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2353823733_)
                        (let ((_e2355123768_ (gx#stx-e _tl2353823733_)))
                          (let ((_tl2355323773_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2355123768_)))
                                (_hd2355223771_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2355123768_))))
                            (if (gx#stx-pair? _hd2355223771_)
                                (let ((_e2355423776_
                                       (gx#stx-e _hd2355223771_)))
                                  (let ((_tl2355623781_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2355423776_)))
                                        (_hd2355523779_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2355423776_))))
                                    (if (gx#identifier? _hd2355523779_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd2355523779_)
                                            (if (gx#stx-pair? _tl2355623781_)
                                                (let ((_e2355723784_
                                                       (gx#stx-e
                                                        _tl2355623781_)))
                                                  (let ((_tl2355923789_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2355723784_)))
                                                        (_hd2355823787_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2355723784_))))
                                                    (if (gx#stx-pair?
                                                         _hd2355823787_)
                                                        (let ((_e2356023792_
                                                               (gx#stx-e
                                                                _hd2355823787_)))
                                                          (let ((_tl2356223797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e2356023792_)))
                        (_hd2356123795_
                         (let () (declare (not safe)) (##car _e2356023792_))))
                    (if (gx#stx-pair? _tl2355923789_)
                        (let ((_e2356323800_ (gx#stx-e _tl2355923789_)))
                          (let ((_tl2356523805_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2356323800_)))
                                (_hd2356423803_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2356323800_))))
                            (if (gx#stx-pair? _hd2356423803_)
                                (let ((_e2356623808_
                                       (gx#stx-e _hd2356423803_)))
                                  (let ((_tl2356823813_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2356623808_)))
                                        (_hd2356723811_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2356623808_))))
                                    (if (gx#identifier? _hd2356723811_)
                                        (if (gx#stx-eq? '%#call _hd2356723811_)
                                            (if (gx#stx-pair? _tl2356823813_)
                                                (let ((_e2356923816_
                                                       (gx#stx-e
                                                        _tl2356823813_)))
                                                  (let ((_tl2357123821_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2356923816_)))
                                                        (_hd2357023819_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2356923816_))))
                                                    (if (gx#stx-pair?
                                                         _hd2357023819_)
                                                        (let ((_e2357223824_
                                                               (gx#stx-e
                                                                _hd2357023819_)))
                                                          (let ((_tl2357423829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e2357223824_)))
                        (_hd2357323827_
                         (let () (declare (not safe)) (##car _e2357223824_))))
                    (if (gx#identifier? _hd2357323827_)
                        (if (gx#stx-eq? '%#ref _hd2357323827_)
                            (if (gx#stx-pair? _tl2357423829_)
                                (let ((_e2357523832_
                                       (gx#stx-e _tl2357423829_)))
                                  (let ((_tl2357723837_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2357523832_)))
                                        (_hd2357623835_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2357523832_))))
                                    (if (gx#stx-null? _tl2357723837_)
                                        (if (gx#stx-pair? _tl2357123821_)
                                            (let ((_e2357823840_
                                                   (gx#stx-e _tl2357123821_)))
                                              (let ((_tl2358023845_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2357823840_)))
                                                    (_hd2357923843_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2357823840_))))
                                                (if (gx#stx-pair?
                                                     _hd2357923843_)
                                                    (let ((_e2358123848_
                                                           (gx#stx-e
                                                            _hd2357923843_)))
                                                      (let ((_tl2358323853_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2358123848_)))
                    (_hd2358223851_
                     (let () (declare (not safe)) (##car _e2358123848_))))
                (if (gx#identifier? _hd2358223851_)
                    (if (gx#stx-eq? '%#ref _hd2358223851_)
                        (if (gx#stx-pair? _tl2358323853_)
                            (let ((_e2358423856_ (gx#stx-e _tl2358323853_)))
                              (let ((_tl2358623861_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2358423856_)))
                                    (_hd2358523859_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2358423856_))))
                                (if (gx#stx-null? _tl2358623861_)
                                    (if (gx#stx-pair? _tl2358023845_)
                                        (let ((_e2358723864_
                                               (gx#stx-e _tl2358023845_)))
                                          (let ((_tl2358923869_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2358723864_)))
                                                (_hd2358823867_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2358723864_))))
                                            (if (gx#stx-pair? _hd2358823867_)
                                                (let ((_e2359023872_
                                                       (gx#stx-e
                                                        _hd2358823867_)))
                                                  (let ((_tl2359223877_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2359023872_)))
                                                        (_hd2359123875_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2359023872_))))
                                                    (if (gx#identifier?
                                                         _hd2359123875_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2359123875_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2359223877_)
                        (let ((_e2359323880_ (gx#stx-e _tl2359223877_)))
                          (let ((_tl2359523885_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2359323880_)))
                                (_hd2359423883_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2359323880_))))
                            (if (gx#stx-null? _tl2359523885_)
                                (if (gx#stx-null? _tl2356523805_)
                                    (if (gx#stx-null? _tl2355323773_)
                                        (if (gx#stx-null? _tl2353223717_)
                                            (if (gx#stx-null? _tl2352323693_)
                                                (if (gx#stx-pair?
                                                     _tl2352023685_)
                                                    (let ((_e2359623888_
                                                           (gx#stx-e
                                                            _tl2352023685_)))
                                                      (let ((_tl2359823893_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2359623888_)))
                    (_hd2359723891_
                     (let () (declare (not safe)) (##car _e2359623888_))))
                (if (gx#stx-pair? _hd2359723891_)
                    (let ((_e2359923896_ (gx#stx-e _hd2359723891_)))
                      (let ((_tl2360123901_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2359923896_)))
                            (_hd2360023899_
                             (let ()
                               (declare (not safe))
                               (##car _e2359923896_))))
                        (if (gx#identifier? _hd2360023899_)
                            (if (gx#stx-eq? '%#lambda _hd2360023899_)
                                (if (gx#stx-pair? _tl2360123901_)
                                    (let ((_e2360223904_
                                           (gx#stx-e _tl2360123901_)))
                                      (let ((_tl2360423909_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2360223904_)))
                                            (_hd2360323907_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2360223904_))))
                                        (if (gx#stx-pair? _tl2360423909_)
                                            (let ((_e2360523912_
                                                   (gx#stx-e _tl2360423909_)))
                                              (let ((_tl2360723917_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2360523912_)))
                                                    (_hd2360623915_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2360523912_))))
                                                (if (gx#stx-pair?
                                                     _hd2360623915_)
                                                    (let ((_e2360823920_
                                                           (gx#stx-e
                                                            _hd2360623915_)))
                                                      (let ((_tl2361023925_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2360823920_)))
                    (_hd2360923923_
                     (let () (declare (not safe)) (##car _e2360823920_))))
                (if (gx#identifier? _hd2360923923_)
                    (if (gx#stx-eq? '%#call _hd2360923923_)
                        (if (gx#stx-pair? _tl2361023925_)
                            (let ((_e2361123928_ (gx#stx-e _tl2361023925_)))
                              (let ((_tl2361323933_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2361123928_)))
                                    (_hd2361223931_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2361123928_))))
                                (if (gx#stx-pair? _hd2361223931_)
                                    (let ((_e2361423936_
                                           (gx#stx-e _hd2361223931_)))
                                      (let ((_tl2361623941_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2361423936_)))
                                            (_hd2361523939_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2361423936_))))
                                        (if (gx#identifier? _hd2361523939_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2361523939_)
                                                (if (gx#stx-pair?
                                                     _tl2361623941_)
                                                    (let ((_e2361723944_
                                                           (gx#stx-e
                                                            _tl2361623941_)))
                                                      (let ((_tl2361923949_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2361723944_)))
                    (_hd2361823947_
                     (let () (declare (not safe)) (##car _e2361723944_))))
                (if (gx#stx-null? _tl2361923949_)
                    (if (gx#stx-pair? _tl2361323933_)
                        (let ((_e2362023952_ (gx#stx-e _tl2361323933_)))
                          (let ((_tl2362223957_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2362023952_)))
                                (_hd2362123955_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2362023952_))))
                            (if (gx#stx-pair? _hd2362123955_)
                                (let ((_e2362323960_
                                       (gx#stx-e _hd2362123955_)))
                                  (let ((_tl2362523965_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2362323960_)))
                                        (_hd2362423963_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2362323960_))))
                                    (if (gx#identifier? _hd2362423963_)
                                        (if (gx#stx-eq? '%#ref _hd2362423963_)
                                            (if (gx#stx-pair? _tl2362523965_)
                                                (let ((_e2362623968_
                                                       (gx#stx-e
                                                        _tl2362523965_)))
                                                  (let ((_tl2362823973_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2362623968_)))
                                                        (_hd2362723971_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2362623968_))))
                                                    (if (gx#stx-null?
                                                         _tl2362823973_)
                                                        (if (gx#stx-pair?
                                                             _tl2362223957_)
                                                            (let ((_e2362923976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2362223957_)))
                      (let ((_tl2363123981_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2362923976_)))
                            (_hd2363023979_
                             (let ()
                               (declare (not safe))
                               (##car _e2362923976_))))
                        (if (gx#stx-pair? _hd2363023979_)
                            (let ((_e2363223984_ (gx#stx-e _hd2363023979_)))
                              (let ((_tl2363423989_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2363223984_)))
                                    (_hd2363323987_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2363223984_))))
                                (if (gx#identifier? _hd2363323987_)
                                    (if (gx#stx-eq? '%#quote _hd2363323987_)
                                        (if (gx#stx-pair? _tl2363423989_)
                                            (let ((_e2363523992_
                                                   (gx#stx-e _tl2363423989_)))
                                              (let ((_tl2363723997_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2363523992_)))
                                                    (_hd2363623995_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2363523992_))))
                                                (if (gx#stx-null?
                                                     _tl2363723997_)
                                                    (if (gx#stx-pair?
                                                         _tl2363123981_)
                                                        (let ((_e2363824000_
                                                               (gx#stx-e
                                                                _tl2363123981_)))
                                                          (let ((_tl2364024005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e2363824000_)))
                        (_hd2363924003_
                         (let () (declare (not safe)) (##car _e2363824000_))))
                    (if (gx#stx-pair? _hd2363924003_)
                        (let ((_e2364124008_ (gx#stx-e _hd2363924003_)))
                          (let ((_tl2364324013_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2364124008_)))
                                (_hd2364224011_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2364124008_))))
                            (if (gx#identifier? _hd2364224011_)
                                (if (gx#stx-eq? '%#ref _hd2364224011_)
                                    (if (gx#stx-pair? _tl2364324013_)
                                        (let ((_e2364424016_
                                               (gx#stx-e _tl2364324013_)))
                                          (let ((_tl2364624021_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2364424016_)))
                                                (_hd2364524019_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2364424016_))))
                                            (if (gx#stx-null? _tl2364624021_)
                                                (if (gx#stx-pair?
                                                     _tl2364024005_)
                                                    (let ((_e2364724024_
                                                           (gx#stx-e
                                                            _tl2364024005_)))
                                                      (let ((_tl2364924029_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2364724024_)))
                    (_hd2364824027_
                     (let () (declare (not safe)) (##car _e2364724024_))))
                (if (gx#stx-pair? _hd2364824027_)
                    (let ((_e2365024032_ (gx#stx-e _hd2364824027_)))
                      (let ((_tl2365224037_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2365024032_)))
                            (_hd2365124035_
                             (let ()
                               (declare (not safe))
                               (##car _e2365024032_))))
                        (if (gx#identifier? _hd2365124035_)
                            (if (gx#stx-eq? '%#ref _hd2365124035_)
                                (if (gx#stx-pair? _tl2365224037_)
                                    (let ((_e2365324040_
                                           (gx#stx-e _tl2365224037_)))
                                      (let ((_tl2365524045_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2365324040_)))
                                            (_hd2365424043_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2365324040_))))
                                        (if (gx#stx-null? _tl2365524045_)
                                            (if (gx#stx-null? _tl2364924029_)
                                                (if (gx#stx-null?
                                                     _tl2360723917_)
                                                    (if (gx#stx-null?
                                                         _tl2359823893_)
                                                        (___kont3360533606_
                                                         _hd2365424043_
                                                         _hd2364524019_
                                                         _hd2362723971_
                                                         _hd2361823947_
                                                         _hd2360323907_
                                                         _hd2359423883_
                                                         _hd2358523859_
                                                         _hd2357623835_
                                                         _hd2356123795_
                                                         _hd2354623755_
                                                         _hd2352823707_)
                                                        (___kont3360733608_))
                                                    (___kont3360733608_))
                                                (___kont3360733608_))
                                            (___kont3360733608_))))
                                    (___kont3360733608_))
                                (___kont3360733608_))
                            (___kont3360733608_))))
                    (___kont3360733608_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3360733608_))
                                                (___kont3360733608_))))
                                        (___kont3360733608_))
                                    (___kont3360733608_))
                                (___kont3360733608_))))
                        (___kont3360733608_))))
                (___kont3360733608_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3360733608_))))
                                            (___kont3360733608_))
                                        (___kont3360733608_))
                                    (___kont3360733608_))))
                            (___kont3360733608_))))
                    (___kont3360733608_))
                (___kont3360733608_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3360733608_))
                                            (___kont3360733608_))
                                        (___kont3360733608_))))
                                (___kont3360733608_))))
                        (___kont3360733608_))
                    (___kont3360733608_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3360733608_))
                                                (___kont3360733608_))
                                            (___kont3360733608_))))
                                    (___kont3360733608_))))
                            (___kont3360733608_))
                        (___kont3360733608_))
                    (___kont3360733608_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3360733608_))))
                                            (___kont3360733608_))))
                                    (___kont3360733608_))
                                (___kont3360733608_))
                            (___kont3360733608_))))
                    (___kont3360733608_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3360733608_))
                                                (___kont3360733608_))
                                            (___kont3360733608_))
                                        (___kont3360733608_))
                                    (___kont3360733608_))
                                (___kont3360733608_))))
                        (___kont3360733608_))
                    (___kont3360733608_))
                (___kont3360733608_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3360733608_))))
                                        (___kont3360733608_))
                                    (___kont3360733608_))))
                            (___kont3360733608_))
                        (___kont3360733608_))
                    (___kont3360733608_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3360733608_))))
                                            (___kont3360733608_))
                                        (___kont3360733608_))))
                                (___kont3360733608_))
                            (___kont3360733608_))
                        (___kont3360733608_))))
                (___kont3360733608_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3360733608_))
                                            (___kont3360733608_))
                                        (___kont3360733608_))))
                                (___kont3360733608_))))
                        (___kont3360733608_))))
                (___kont3360733608_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3360733608_))
                                            (___kont3360733608_))
                                        (___kont3360733608_))))
                                (___kont3360733608_))))
                        (___kont3360733608_))
                    (___kont3360733608_))
                (___kont3360733608_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3360733608_))
                                            (___kont3360733608_))))
                                    (___kont3360733608_))))
                            (___kont3360733608_))))
                    (___kont3360733608_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3360733608_))
                                                (___kont3360733608_))
                                            (___kont3360733608_))))
                                    (___kont3360733608_))))
                            (___kont3360733608_))
                        (___kont3360733608_))))
                (___kont3360733608_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3360733608_))))
                                        (___kont3360733608_))))
                                (___kont3360733608_))
                            (___kont3360733608_))
                        (___kont3360733608_))))
                (___kont3360733608_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx23241_ _id23242_ _clauses23243_ _gensym?23244_)
        (let _lp23246_ ((_rest23248_ _clauses23243_)
                        (_ids23249_ '())
                        (_impls23250_ '())
                        (_clauses23251_ '()))
          (let* ((_rest2325223260_ _rest23248_)
                 (_else2325423268_
                  (lambda ()
                    (values (reverse _ids23249_)
                            (reverse _impls23250_)
                            (reverse _clauses23251_))))
                 (_K2325623473_
                  (lambda (_rest23271_ _clause23272_)
                    (if (gxc#dispatch-lambda-form? _clause23272_)
                        (_lp23246_
                         _rest23271_
                         _ids23249_
                         _impls23250_
                         (cons _clause23272_ _clauses23251_))
                        (let* ((_g2327423285_
                                (lambda (_g2327523282_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2327523282_)))
                               (_g2327323470_
                                (lambda (_g2327523288_)
                                  (if (gx#stx-pair? _g2327523288_)
                                      (let ((_e2327823290_
                                             (gx#stx-e _g2327523288_)))
                                        (let ((_hd2327923293_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2327823290_)))
                                              (_tl2328023295_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2327823290_))))
                                          ((lambda (_L23298_ _L23299_)
                                             (let* ((_id23316_
                                                     (make-symbol
                                                      (gx#stx-e _id23242_)
                                                      '"__"
                                                      (length _clauses23251_)
                                                      (if _gensym?23244_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id23318_
                                                     (gx#core-quote-syntax__1
                                                      _id23316_
                                                      (gx#stx-source
                                                       _stx23241_)))
                                                    (_impl23320_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L23299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L23298_))
              _stx23241_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause23467_
                                                     (let* ((___stx3398733988_
                                                             _L23299_)
                                                            (_g2332423352_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                ___stx3398733988_))))
                                                       (let ((___kont3398933990_
                                                              (lambda (_L23446_)
                                                                (cons _L23299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons _id23318_ '()))
                                                 (foldr1 (lambda (_g2345623459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2345723461_)
                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                               (cons _g2345623459_ '()))
                         _g2345723461_))
                 '()
                 _L23446_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx23241_)
                                    '()))))
                     (___kont3399333994_
                      (lambda (_L23397_ _L23398_)
                        (cons _L23299_
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'apply '()))
                                                 (cons (cons '%#ref
                                                             (cons _id23318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (foldr1 cons
                       (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                   (cons _L23397_ '()))
                             '())
                       (foldr1 (lambda (_g2340923412_ _g2341023414_)
                                 (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                             (cons _g2340923412_ '()))
                                       _g2341023414_))
                               '()
                               _L23398_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx23241_)
                                    '()))))
                     (___kont3399733998_
                      (lambda (_L23357_)
                        (cons _L23299_
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'apply '()))
                                                 (cons (cons '%#ref
                                                             (cons _id23318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                           (cons _L23357_ '()))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx23241_)
                                    '())))))
                 (let* ((___match3401234013_
                         (lambda (___splice3399533996_
                                  _target2333823373_
                                  _tl2334023375_)
                           (letrec ((_loop2334123378_
                                     (lambda (_hd2333923381_ _arg2334523383_)
                                       (if (gx#stx-pair? _hd2333923381_)
                                           (let ((_e2334223386_
                                                  (gx#stx-e _hd2333923381_)))
                                             (let ((_lp-tl2334423391_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2334223386_)))
                                                   (_lp-hd2334323389_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2334223386_))))
                                               (_loop2334123378_
                                                _lp-tl2334423391_
                                                (cons _lp-hd2334323389_
                                                      _arg2334523383_))))
                                           (let ((_arg2334623394_
                                                  (reverse _arg2334523383_)))
                                             (___kont3399333994_
                                              _tl2334023375_
                                              _arg2334623394_))))))
                             (_loop2334123378_ _target2333823373_ '()))))
                        (___match3400634007_
                         (lambda (___splice3399133992_
                                  _target2332723422_
                                  _tl2332923424_)
                           (letrec ((_loop2333023427_
                                     (lambda (_hd2332823430_ _arg2333423432_)
                                       (if (gx#stx-pair? _hd2332823430_)
                                           (let ((_e2333123435_
                                                  (gx#stx-e _hd2332823430_)))
                                             (let ((_lp-tl2333323440_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2333123435_)))
                                                   (_lp-hd2333223438_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2333123435_))))
                                               (_loop2333023427_
                                                _lp-tl2333323440_
                                                (cons _lp-hd2333223438_
                                                      _arg2333423432_))))
                                           (let ((_arg2333523443_
                                                  (reverse _arg2333423432_)))
                                             (___kont3398933990_
                                              _arg2333523443_))))))
                             (_loop2333023427_ _target2332723422_ '())))))
                   (if (gx#stx-pair/null? ___stx3398733988_)
                       (let ((___splice3399133992_
                              (gx#syntax-split-splice ___stx3398733988_ '0)))
                         (let ((_tl2332923424_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice3399133992_ '1)))
                               (_target2332723422_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice3399133992_ '0))))
                           (if (gx#stx-null? _tl2332923424_)
                               (___match3400634007_
                                ___splice3399133992_
                                _target2332723422_
                                _tl2332923424_)
                               (___match3401234013_
                                ___splice3399133992_
                                _target2332723422_
                                _tl2332923424_))))
                       (___kont3399733998_ ___stx3398733988_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp23246_
                                                _rest23271_
                                                (cons _id23318_ _ids23249_)
                                                (cons _impl23320_ _impls23250_)
                                                (cons _clause23467_
                                                      _clauses23251_))))
                                           _tl2328023295_
                                           _hd2327923293_)))
                                      (_g2327423285_ _g2327523288_)))))
                          (_g2327323470_ _clause23272_))))))
            (if (let () (declare (not safe)) (##pair? _rest2325223260_))
                (let ((_hd2325723476_
                       (let () (declare (not safe)) (##car _rest2325223260_)))
                      (_tl2325823478_
                       (let () (declare (not safe)) (##cdr _rest2325223260_))))
                  (let* ((_clause23481_ _hd2325723476_)
                         (_rest23483_ _tl2325823478_))
                    (_K2325623473_ _rest23483_ _clause23481_)))
                (_else2325423268_))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx23488_ _id23489_ _clauses23490_)
        (let ((_gensym?23492_ '#f))
          (gxc#lift-case-lambda-clauses__%
           _stx23488_
           _id23489_
           _clauses23490_
           _gensym?23492_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g34550_
        (let ((_g34549_ (let () (declare (not safe)) (##length _g34550_))))
          (cond ((let () (declare (not safe)) (##fx= _g34549_ 3))
                 (apply gxc#lift-case-lambda-clauses__0 _g34550_))
                ((let () (declare (not safe)) (##fx= _g34549_ 4))
                 (apply gxc#lift-case-lambda-clauses__% _g34550_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g34550_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx22518_)
        (letrec ((_case-lambda-clause-def22520_
                  (lambda (_id23237_ _impl23238_)
                    (gxc#xform-wrap-source
                     (cons '%#define-values
                           (cons (cons _id23237_ '())
                                 (cons (gxc#compile-e _impl23238_) '())))
                     _stx22518_)))
                 (_opt-lambda-dispatch-name22521_
                  (lambda (_id23233_)
                    (if (uninterned-symbol? _id23233_)
                        (let ((_str23235_ (symbol->string _id23233_)))
                          (if (string-prefix? '"opt-lambda" _str23235_)
                              '"%"
                              _id23233_))
                        _id23233_)))
                 (_kw-lambda-dispatch-name22522_
                  (lambda (_id23228_ _name23229_)
                    (if (uninterned-symbol? _id23228_)
                        (let ((_str23231_ (symbol->string _id23228_)))
                          (if (string-prefix? '"kw-lambda" _str23231_)
                              _name23229_
                              _id23228_))
                        _id23228_))))
          (let* ((___stx3403534036_ _stx22518_)
                 (_g2252722586_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx3403534036_))))
            (let ((___kont3403734038_
                   (lambda (_L23137_ _L23138_)
                     (let* ((___stx3401534016_ _L23137_)
                            (_g2315523169_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx3401534016_))))
                       (let ((___kont3401734018_
                              (lambda (_L23213_) _stx22518_))
                             (___kont3401934020_
                              (lambda (_L23182_)
                                (let ((_g34551_
                                       (gxc#lift-case-lambda-clauses__0
                                        _stx22518_
                                        _L23138_
                                        _L23182_)))
                                  (begin
                                    (let ((_g34552_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g34551_)
                                                 (##vector-length _g34551_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g34552_ 3)))
                                          (error "Context expects 3 values"
                                                 _g34552_)))
                                    (let ((_ids23192_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g34551_ 0)))
                                          (_impls23193_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g34551_ 1)))
                                          (_clauses23194_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g34551_ 2))))
                                      (let* ((_g34553_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids23192_))
                                             (_defs23197_
                                              (map _case-lambda-clause-def22520_
                                                   _ids23192_
                                                   _impls23193_)))
                                        (gxc#verbose
                                         '"lift case-lambda clauses "
                                         (gxc#identifier-symbol _L23138_)
                                         '" => "
                                         (map gxc#identifier-symbol
                                              _ids23192_))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin
                                               (foldr1 cons
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#define-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _L23138_ '())
                                  (cons (gxc#xform-wrap-source
                                         (cons '%#case-lambda _clauses23194_)
                                         (gx#datum->syntax__0
                                          '#f
                                          'case-lambda-expr))
                                        '())))
                      _stx22518_)
                     '())
               _defs23197_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx22518_))))))))
                         (let ((___match3402634027_
                                (lambda (_e2315823205_
                                         _hd2315923208_
                                         _tl2316023210_)
                                  (let ((_L23213_ _tl2316023210_))
                                    (if (andmap1 gxc#dispatch-lambda-form?
                                                 _L23213_)
                                        (___kont3401734018_ _L23213_)
                                        (___kont3401934020_
                                         _tl2316023210_))))))
                           (if (gx#stx-pair? ___stx3401534016_)
                               (let ((_e2315823205_
                                      (gx#stx-e ___stx3401534016_)))
                                 (let ((_tl2316023210_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e2315823205_)))
                                       (_hd2315923208_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e2315823205_))))
                                   (___match3402634027_
                                    _e2315823205_
                                    _hd2315923208_
                                    _tl2316023210_)))
                               (_g2315523169_)))))))
                  (___kont3403934040_
                   (lambda (_L22955_ _L22956_)
                     (let* ((_g2297223002_
                             (lambda (_g2297322999_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2297322999_)))
                            (_g2297123097_
                             (lambda (_g2297323005_)
                               (if (gx#stx-pair? _g2297323005_)
                                   (let ((_e2297723007_
                                          (gx#stx-e _g2297323005_)))
                                     (let ((_hd2297823010_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2297723007_)))
                                           (_tl2297923012_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2297723007_))))
                                       (if (gx#stx-pair? _tl2297923012_)
                                           (let ((_e2298023015_
                                                  (gx#stx-e _tl2297923012_)))
                                             (let ((_hd2298123018_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2298023015_)))
                                                   (_tl2298223020_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2298023015_))))
                                               (if (gx#stx-pair?
                                                    _hd2298123018_)
                                                   (let ((_e2298323023_
                                                          (gx#stx-e
                                                           _hd2298123018_)))
                                                     (let ((_hd2298423026_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2298323023_)))
                                                           (_tl2298523028_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2298323023_))))
                                                       (if (gx#stx-pair?
                                                            _hd2298423026_)
                                                           (let ((_e2298623031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd2298423026_)))
                     (let ((_hd2298723034_
                            (let ()
                              (declare (not safe))
                              (##car _e2298623031_)))
                           (_tl2298823036_
                            (let ()
                              (declare (not safe))
                              (##cdr _e2298623031_))))
                       (if (gx#stx-pair? _hd2298723034_)
                           (let ((_e2298923039_ (gx#stx-e _hd2298723034_)))
                             (let ((_hd2299023042_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e2298923039_)))
                                   (_tl2299123044_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e2298923039_))))
                               (if (gx#stx-null? _tl2299123044_)
                                   (if (gx#stx-pair? _tl2298823036_)
                                       (let ((_e2299223047_
                                              (gx#stx-e _tl2298823036_)))
                                         (let ((_hd2299323050_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2299223047_)))
                                               (_tl2299423052_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2299223047_))))
                                           (if (gx#stx-null? _tl2299423052_)
                                               (if (gx#stx-null?
                                                    _tl2298523028_)
                                                   (if (gx#stx-pair?
                                                        _tl2298223020_)
                                                       (let ((_e2299523055_
                                                              (gx#stx-e
                                                               _tl2298223020_)))
                                                         (let ((_hd2299623058_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2299523055_)))
                       (_tl2299723060_
                        (let () (declare (not safe)) (##cdr _e2299523055_))))
                   (if (gx#stx-null? _tl2299723060_)
                       ((lambda (_L23063_ _L23064_ _L23065_)
                          (let* ((_lambda-id23089_
                                  (make-symbol
                                   (gx#stx-e _L22956_)
                                   '"__"
                                   (_opt-lambda-dispatch-name22521_
                                    (gx#stx-e _L23065_))))
                                 (_lambda-id23091_
                                  (gx#core-quote-syntax__1
                                   _lambda-id23089_
                                   (gx#stx-source _stx22518_)))
                                 (_g34554_
                                  (gx#core-bind-runtime!__0 _lambda-id23091_))
                                 (_new-case-lambda-expr23094_
                                  (gxc#apply-expression-subst
                                   _L23063_
                                   _L23065_
                                   _lambda-id23091_)))
                            (gxc#verbose
                             '"lift opt-lambda dispatch "
                             (gxc#identifier-symbol _L22956_)
                             '" => "
                             (gxc#identifier-symbol _lambda-id23091_))
                            (gxc#xform-wrap-source
                             (cons '%#begin
                                   (cons (gxc#xform-wrap-source
                                          (cons '%#define-values
                                                (cons (cons _lambda-id23091_
                                                            '())
                                                      (cons (gxc#compile-e
                                                             _L23064_)
                                                            '())))
                                          _stx22518_)
                                         (cons (gxc#lift-top-lambda-define-values%
                                                (gxc#xform-wrap-source
                                                 (cons '%#define-values
                                                       (cons (cons _L22956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons _new-case-lambda-expr23094_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _stx22518_))
                                               '())))
                             _stx22518_)))
                        _hd2299623058_
                        _hd2299323050_
                        _hd2299023042_)
                       (_g2297223002_ _g2297323005_))))
               (_g2297223002_ _g2297323005_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2297223002_
                                                    _g2297323005_))
                                               (_g2297223002_ _g2297323005_))))
                                       (_g2297223002_ _g2297323005_))
                                   (_g2297223002_ _g2297323005_))))
                           (_g2297223002_ _g2297323005_))))
                   (_g2297223002_ _g2297323005_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2297223002_
                                                    _g2297323005_))))
                                           (_g2297223002_ _g2297323005_))))
                                   (_g2297223002_ _g2297323005_)))))
                       (_g2297123097_ _L22955_))))
                  (___kont3404134042_
                   (lambda (_L22669_ _L22670_)
                     (let* ((_g2268622739_
                             (lambda (_g2268722736_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2268722736_)))
                            (_g2268522915_
                             (lambda (_g2268722742_)
                               (if (gx#stx-pair? _g2268722742_)
                                   (let ((_e2269322744_
                                          (gx#stx-e _g2268722742_)))
                                     (let ((_hd2269422747_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2269322744_)))
                                           (_tl2269522749_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2269322744_))))
                                       (if (gx#stx-pair? _tl2269522749_)
                                           (let ((_e2269622752_
                                                  (gx#stx-e _tl2269522749_)))
                                             (let ((_hd2269722755_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2269622752_)))
                                                   (_tl2269822757_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2269622752_))))
                                               (if (gx#stx-pair?
                                                    _hd2269722755_)
                                                   (let ((_e2269922760_
                                                          (gx#stx-e
                                                           _hd2269722755_)))
                                                     (let ((_hd2270022763_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2269922760_)))
                                                           (_tl2270122765_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2269922760_))))
                                                       (if (gx#stx-pair?
                                                            _hd2270022763_)
                                                           (let ((_e2270222768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd2270022763_)))
                     (let ((_hd2270322771_
                            (let ()
                              (declare (not safe))
                              (##car _e2270222768_)))
                           (_tl2270422773_
                            (let ()
                              (declare (not safe))
                              (##cdr _e2270222768_))))
                       (if (gx#stx-pair? _hd2270322771_)
                           (let ((_e2270522776_ (gx#stx-e _hd2270322771_)))
                             (let ((_hd2270622779_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e2270522776_)))
                                   (_tl2270722781_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e2270522776_))))
                               (if (gx#stx-null? _tl2270722781_)
                                   (if (gx#stx-pair? _tl2270422773_)
                                       (let ((_e2270822784_
                                              (gx#stx-e _tl2270422773_)))
                                         (let ((_hd2270922787_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2270822784_)))
                                               (_tl2271022789_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2270822784_))))
                                           (if (gx#stx-pair? _hd2270922787_)
                                               (let ((_e2271122792_
                                                      (gx#stx-e
                                                       _hd2270922787_)))
                                                 (let ((_hd2271222795_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2271122792_)))
                                                       (_tl2271322797_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2271122792_))))
                                                   (if (gx#stx-pair?
                                                        _tl2271322797_)
                                                       (let ((_e2271422800_
                                                              (gx#stx-e
                                                               _tl2271322797_)))
                                                         (let ((_hd2271522803_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2271422800_)))
                       (_tl2271622805_
                        (let () (declare (not safe)) (##cdr _e2271422800_))))
                   (if (gx#stx-pair? _hd2271522803_)
                       (let ((_e2271722808_ (gx#stx-e _hd2271522803_)))
                         (let ((_hd2271822811_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2271722808_)))
                               (_tl2271922813_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2271722808_))))
                           (if (gx#stx-pair? _hd2271822811_)
                               (let ((_e2272022816_ (gx#stx-e _hd2271822811_)))
                                 (let ((_hd2272122819_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e2272022816_)))
                                       (_tl2272222821_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e2272022816_))))
                                   (if (gx#stx-pair? _hd2272122819_)
                                       (let ((_e2272322824_
                                              (gx#stx-e _hd2272122819_)))
                                         (let ((_hd2272422827_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2272322824_)))
                                               (_tl2272522829_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2272322824_))))
                                           (if (gx#stx-null? _tl2272522829_)
                                               (if (gx#stx-pair?
                                                    _tl2272222821_)
                                                   (let ((_e2272622832_
                                                          (gx#stx-e
                                                           _tl2272222821_)))
                                                     (let ((_hd2272722835_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2272622832_)))
                                                           (_tl2272822837_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2272622832_))))
                                                       (if (gx#stx-null?
                                                            _tl2272822837_)
                                                           (if (gx#stx-null?
                                                                _tl2271922813_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl2271622805_)
                           (let ((_e2272922840_ (gx#stx-e _tl2271622805_)))
                             (let ((_hd2273022843_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e2272922840_)))
                                   (_tl2273122845_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e2272922840_))))
                               (if (gx#stx-null? _tl2273122845_)
                                   (if (gx#stx-null? _tl2271022789_)
                                       (if (gx#stx-null? _tl2270122765_)
                                           (if (gx#stx-pair? _tl2269822757_)
                                               (let ((_e2273222848_
                                                      (gx#stx-e
                                                       _tl2269822757_)))
                                                 (let ((_hd2273322851_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2273222848_)))
                                                       (_tl2273422853_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2273222848_))))
                                                   (if (gx#stx-null?
                                                        _tl2273422853_)
                                                       ((lambda (_L22856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L22857_
                         _L22858_
                         _L22859_
                         _L22860_)
                  (let* ((_get-kws-id22900_
                          (make-symbol
                           (gx#stx-e _L22670_)
                           '"__"
                           (_kw-lambda-dispatch-name22522_
                            (gx#stx-e _L22860_)
                            '"@")))
                         (_get-kws-id22902_
                          (gx#core-quote-syntax__1
                           _get-kws-id22900_
                           (gx#stx-source _stx22518_)))
                         (_main-id22904_
                          (make-symbol
                           (gx#stx-e _L22670_)
                           '"__"
                           (_kw-lambda-dispatch-name22522_
                            (gx#stx-e _L22859_)
                            '"%")))
                         (_main-id22906_
                          (gx#core-quote-syntax__1
                           _main-id22904_
                           (gx#stx-source _stx22518_)))
                         (_g34555_
                          (gx#core-bind-runtime!__0 _get-kws-id22902_))
                         (_g34556_ (gx#core-bind-runtime!__0 _main-id22906_))
                         (_new-kw-dispatch22910_
                          (gxc#apply-expression-subst
                           _L22856_
                           _L22860_
                           _get-kws-id22902_))
                         (_new-get-kws22912_
                          (gxc#apply-expression-subst
                           _L22857_
                           _L22859_
                           _main-id22906_)))
                    (gxc#verbose
                     '"lift kw-lambda dispatch "
                     (gxc#identifier-symbol _L22670_)
                     '" => "
                     (gxc#identifier-symbol _get-kws-id22902_)
                     '" => "
                     (gxc#identifier-symbol _main-id22906_))
                    (gxc#xform-wrap-source
                     (cons '%#begin
                           (cons (gxc#lift-top-lambda-define-values%
                                  (gxc#xform-wrap-source
                                   (cons '%#define-values
                                         (cons (cons _main-id22906_ '())
                                               (cons _L22858_ '())))
                                   _stx22518_))
                                 (cons (gxc#xform-wrap-source
                                        (cons '%#define-values
                                              (cons (cons _get-kws-id22902_
                                                          '())
                                                    (cons _new-get-kws22912_
                                                          '())))
                                        _stx22518_)
                                       (cons (gxc#xform-wrap-source
                                              (cons '%#define-values
                                                    (cons (cons _L22670_ '())
                                                          (cons _new-kw-dispatch22910_
                                                                '())))
                                              _stx22518_)
                                             '()))))
                     _stx22518_)))
                _hd2273322851_
                _hd2273022843_
                _hd2272722835_
                _hd2272422827_
                _hd2270622779_)
               (_g2268622739_ _g2268722742_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2268622739_ _g2268722742_))
                                           (_g2268622739_ _g2268722742_))
                                       (_g2268622739_ _g2268722742_))
                                   (_g2268622739_ _g2268722742_))))
                           (_g2268622739_ _g2268722742_))
                       (_g2268622739_ _g2268722742_))
                   (_g2268622739_ _g2268722742_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2268622739_
                                                    _g2268722742_))
                                               (_g2268622739_ _g2268722742_))))
                                       (_g2268622739_ _g2268722742_))))
                               (_g2268622739_ _g2268722742_))))
                       (_g2268622739_ _g2268722742_))))
               (_g2268622739_ _g2268722742_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2268622739_ _g2268722742_))))
                                       (_g2268622739_ _g2268722742_))
                                   (_g2268622739_ _g2268722742_))))
                           (_g2268622739_ _g2268722742_))))
                   (_g2268622739_ _g2268722742_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2268622739_
                                                    _g2268722742_))))
                                           (_g2268622739_ _g2268722742_))))
                                   (_g2268622739_ _g2268722742_)))))
                       (_g2268522915_ _L22669_))))
                  (___kont3404334044_
                   (lambda (_L22615_ _L22616_)
                     (gxc#xform-wrap-source
                      (cons '%#define-values
                            (cons _L22616_
                                  (cons (gxc#compile-e _L22615_) '())))
                      _stx22518_))))
              (let* ((___match3412834129_
                      (lambda (_e2255922637_
                               _hd2256022640_
                               _tl2256122642_
                               _e2256222645_
                               _hd2256322648_
                               _tl2256422650_
                               _e2256522653_
                               _hd2256622656_
                               _tl2256722658_
                               _e2256822661_
                               _hd2256922664_
                               _tl2257022666_)
                        (let ((_L22669_ _hd2256922664_)
                              (_L22670_ _hd2256622656_))
                          (if (and (gx#identifier? _L22670_)
                                   (gxc#kw-lambda-expr? _L22669_))
                              (___kont3404134042_ _L22669_ _L22670_)
                              (___kont3404334044_
                               _hd2256922664_
                               _hd2256322648_)))))
                     (___match3410034101_
                      (lambda (_e2254522923_
                               _hd2254622926_
                               _tl2254722928_
                               _e2254822931_
                               _hd2254922934_
                               _tl2255022936_
                               _e2255122939_
                               _hd2255222942_
                               _tl2255322944_
                               _e2255422947_
                               _hd2255522950_
                               _tl2255622952_)
                        (let ((_L22955_ _hd2255522950_)
                              (_L22956_ _hd2255222942_))
                          (if (and (gx#identifier? _L22956_)
                                   (gxc#opt-lambda-expr? _L22955_))
                              (___kont3403934040_ _L22955_ _L22956_)
                              (___match3412834129_
                               _e2254522923_
                               _hd2254622926_
                               _tl2254722928_
                               _e2254822931_
                               _hd2254922934_
                               _tl2255022936_
                               _e2255122939_
                               _hd2255222942_
                               _tl2255322944_
                               _e2255422947_
                               _hd2255522950_
                               _tl2255622952_)))))
                     (___match3407234073_
                      (lambda (_e2253123105_
                               _hd2253223108_
                               _tl2253323110_
                               _e2253423113_
                               _hd2253523116_
                               _tl2253623118_
                               _e2253723121_
                               _hd2253823124_
                               _tl2253923126_
                               _e2254023129_
                               _hd2254123132_
                               _tl2254223134_)
                        (let ((_L23137_ _hd2254123132_)
                              (_L23138_ _hd2253823124_))
                          (if (and (gx#identifier? _L23138_)
                                   (gxc#case-lambda-expr? _L23137_))
                              (___kont3403734038_ _L23137_ _L23138_)
                              (___match3410034101_
                               _e2253123105_
                               _hd2253223108_
                               _tl2253323110_
                               _e2253423113_
                               _hd2253523116_
                               _tl2253623118_
                               _e2253723121_
                               _hd2253823124_
                               _tl2253923126_
                               _e2254023129_
                               _hd2254123132_
                               _tl2254223134_))))))
                (if (gx#stx-pair? ___stx3403534036_)
                    (let ((_e2253123105_ (gx#stx-e ___stx3403534036_)))
                      (let ((_tl2253323110_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2253123105_)))
                            (_hd2253223108_
                             (let ()
                               (declare (not safe))
                               (##car _e2253123105_))))
                        (if (gx#stx-pair? _tl2253323110_)
                            (let ((_e2253423113_ (gx#stx-e _tl2253323110_)))
                              (let ((_tl2253623118_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2253423113_)))
                                    (_hd2253523116_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2253423113_))))
                                (if (gx#stx-pair? _hd2253523116_)
                                    (let ((_e2253723121_
                                           (gx#stx-e _hd2253523116_)))
                                      (let ((_tl2253923126_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2253723121_)))
                                            (_hd2253823124_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2253723121_))))
                                        (if (gx#stx-null? _tl2253923126_)
                                            (if (gx#stx-pair? _tl2253623118_)
                                                (let ((_e2254023129_
                                                       (gx#stx-e
                                                        _tl2253623118_)))
                                                  (let ((_tl2254223134_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2254023129_)))
                                                        (_hd2254123132_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2254023129_))))
                                                    (if (gx#stx-null?
                                                         _tl2254223134_)
                                                        (___match3407234073_
                                                         _e2253123105_
                                                         _hd2253223108_
                                                         _tl2253323110_
                                                         _e2253423113_
                                                         _hd2253523116_
                                                         _tl2253623118_
                                                         _e2253723121_
                                                         _hd2253823124_
                                                         _tl2253923126_
                                                         _e2254023129_
                                                         _hd2254123132_
                                                         _tl2254223134_)
                                                        (_g2252722586_))))
                                                (_g2252722586_))
                                            (if (gx#stx-pair? _tl2253623118_)
                                                (let ((_e2257922607_
                                                       (gx#stx-e
                                                        _tl2253623118_)))
                                                  (let ((_tl2258122612_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2257922607_)))
                                                        (_hd2258022610_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2257922607_))))
                                                    (if (gx#stx-null?
                                                         _tl2258122612_)
                                                        (___kont3404334044_
                                                         _hd2258022610_
                                                         _hd2253523116_)
                                                        (_g2252722586_))))
                                                (_g2252722586_)))))
                                    (if (gx#stx-pair? _tl2253623118_)
                                        (let ((_e2257922607_
                                               (gx#stx-e _tl2253623118_)))
                                          (let ((_tl2258122612_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2257922607_)))
                                                (_hd2258022610_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2257922607_))))
                                            (if (gx#stx-null? _tl2258122612_)
                                                (___kont3404334044_
                                                 _hd2258022610_
                                                 _hd2253523116_)
                                                (_g2252722586_))))
                                        (_g2252722586_)))))
                            (_g2252722586_))))
                    (_g2252722586_))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx21450_)
        (letrec* ((_bind-e__3119931200_
                   (lambda (_id22502_ _expr22503_ _compile?22504_)
                     (cons (cons _id22502_ '())
                           (cons (if _compile?22504_
                                     (gxc#compile-e _expr22503_)
                                     _expr22503_)
                                 '()))))
                  (_bind-e__0__3120131202_
                   (lambda (_id22509_ _expr22510_)
                     (let ((_compile?22512_ '#t))
                       (_bind-e__3119931200_
                        _id22509_
                        _expr22510_
                        _compile?22512_))))
                  (_bind-e21452_
                   (lambda _g34558_
                     (let ((_g34557_
                            (let () (declare (not safe)) (##length _g34558_))))
                       (cond ((let () (declare (not safe)) (##fx= _g34557_ 2))
                              (apply _bind-e__0__3120131202_ _g34558_))
                             ((let () (declare (not safe)) (##fx= _g34557_ 3))
                              (apply _bind-e__3119931200_ _g34558_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g34558_))))))
                  (_compile-bindings21453_
                   (lambda (_bindings22086_)
                     (let _lp22088_ ((_rest22090_ _bindings22086_)
                                     (_lift122091_ '())
                                     (_lift222092_ '())
                                     (_bind22093_ '()))
                       (let* ((_rest2209422102_ _rest22090_)
                              (_else2209622110_
                               (lambda ()
                                 (values (reverse _lift122091_)
                                         (reverse _lift222092_)
                                         (reverse _bind22093_))))
                              (_K2209822489_
                               (lambda (_rest22113_ _hd22114_)
                                 (let* ((___stx3417134172_ _hd22114_)
                                        (_g2211822154_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3417134172_))))
                                   (let ((___kont3417334174_
                                          (lambda (_L22396_ _L22397_)
                                            (let* ((___stx3415134152_ _L22396_)
                                                   (_g2241222426_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       ___stx3415134152_))))
                                              (let ((___kont3415334154_
                                                     (lambda (_L22474_)
                                                       (_lp22088_
                                                        _rest22113_
                                                        _lift122091_
                                                        _lift222092_
                                                        (cons (_bind-e__3119931200_
                                                               _L22397_
                                                               _L22396_
                                                               '#f)
                                                              _bind22093_))))
                                                    (___kont3415534156_
                                                     (lambda (_L22439_)
                                                       (let ((_g34559_
                                                              (gxc#lift-case-lambda-clauses__%
                                                               _stx21450_
                                                               _L22397_
                                                               _L22439_
                                                               '#t)))
                                                         (begin
                                                           (let ((_g34560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (if (##values? _g34559_)
                                (##vector-length _g34559_)
                                1))))
                     (if (not (let () (declare (not safe)) (##fx= _g34560_ 3)))
                         (error "Context expects 3 values" _g34560_)))
                   (let ((_ids22449_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g34559_ 0)))
                         (_impls22450_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g34559_ 1)))
                         (_clauses22451_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g34559_ 2))))
                     (let* ((_g34561_
                             (for-each gx#core-bind-runtime! _ids22449_))
                            (_xbind22454_
                             (map _bind-e21452_ _ids22449_ _impls22450_))
                            (_expr*22456_
                             (gxc#xform-wrap-source
                              (cons '%#case-lambda _clauses22451_)
                              (gx#datum->syntax__0 '#f 'case-lambda-expr)))
                            (_bind*22458_
                             (_bind-e__3119931200_ _L22397_ _expr*22456_ '#f)))
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#identifier-symbol _L22397_)
                        '" => "
                        (map gxc#identifier-symbol _ids22449_))
                       (_lp22088_
                        _rest22113_
                        _lift122091_
                        (foldl1 cons _lift222092_ _xbind22454_)
                        (cons _bind*22458_ _bind22093_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match3416234163_
                                                       (lambda (_e2241522466_
                                                                _hd2241622469_
                                                                _tl2241722471_)
                                                         (let ((_L22474_
                                                                _tl2241722471_))
                                                           (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L22474_)
                       (___kont3415334154_ _L22474_)
                       (___kont3415534156_ _tl2241722471_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx3415134152_)
                                                      (let ((_e2241522466_
                                                             (gx#stx-e
                                                              ___stx3415134152_)))
                                                        (let ((_tl2241722471_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2241522466_)))
                      (_hd2241622469_
                       (let () (declare (not safe)) (##car _e2241522466_))))
                  (___match3416234163_
                   _e2241522466_
                   _hd2241622469_
                   _tl2241722471_)))
              (_g2241222426_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont3417534176_
                                          (lambda (_L22224_ _L22225_)
                                            (let* ((_g2223922269_
                                                    (lambda (_g2224022266_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2224022266_)))
                                                   (_g2223822364_
                                                    (lambda (_g2224022272_)
                                                      (if (gx#stx-pair?
                                                           _g2224022272_)
                                                          (let ((_e2224422274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _g2224022272_)))
                    (let ((_hd2224522277_
                           (let () (declare (not safe)) (##car _e2224422274_)))
                          (_tl2224622279_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2224422274_))))
                      (if (gx#stx-pair? _tl2224622279_)
                          (let ((_e2224722282_ (gx#stx-e _tl2224622279_)))
                            (let ((_hd2224822285_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2224722282_)))
                                  (_tl2224922287_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2224722282_))))
                              (if (gx#stx-pair? _hd2224822285_)
                                  (let ((_e2225022290_
                                         (gx#stx-e _hd2224822285_)))
                                    (let ((_hd2225122293_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2225022290_)))
                                          (_tl2225222295_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2225022290_))))
                                      (if (gx#stx-pair? _hd2225122293_)
                                          (let ((_e2225322298_
                                                 (gx#stx-e _hd2225122293_)))
                                            (let ((_hd2225422301_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2225322298_)))
                                                  (_tl2225522303_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2225322298_))))
                                              (if (gx#stx-pair? _hd2225422301_)
                                                  (let ((_e2225622306_
                                                         (gx#stx-e
                                                          _hd2225422301_)))
                                                    (let ((_hd2225722309_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2225622306_)))
                                                          (_tl2225822311_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2225622306_))))
                                                      (if (gx#stx-null?
                                                           _tl2225822311_)
                                                          (if (gx#stx-pair?
                                                               _tl2225522303_)
                                                              (let ((_e2225922314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2225522303_)))
                        (let ((_hd2226022317_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2225922314_)))
                              (_tl2226122319_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2225922314_))))
                          (if (gx#stx-null? _tl2226122319_)
                              (if (gx#stx-null? _tl2225222295_)
                                  (if (gx#stx-pair? _tl2224922287_)
                                      (let ((_e2226222322_
                                             (gx#stx-e _tl2224922287_)))
                                        (let ((_hd2226322325_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2226222322_)))
                                              (_tl2226422327_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2226222322_))))
                                          (if (gx#stx-null? _tl2226422327_)
                                              ((lambda (_L22330_
                                                        _L22331_
                                                        _L22332_)
                                                 (let* ((_lambda-id22356_
                                                         (make-symbol
                                                          (gx#stx-e _L22225_)
                                                          (gensym '__)))
                                                        (_lambda-id22358_
                                                         (gx#core-quote-syntax__1
                                                          _lambda-id22356_
                                                          (gx#stx-source
                                                           _stx21450_)))
                                                        (_g34562_
                                                         (gx#core-bind-runtime!__0
                                                          _lambda-id22358_))
                                                        (_new-case-lambda-expr22361_
                                                         (gxc#apply-expression-subst
                                                          _L22330_
                                                          _L22332_
                                                          _lambda-id22358_)))
                                                   (gxc#verbose
                                                    '"lift opt-lambda dispatch "
                                                    (gxc#identifier-symbol
                                                     _L22225_)
                                                    '" => "
                                                    (gxc#identifier-symbol
                                                     _lambda-id22358_))
                                                   (_lp22088_
                                                    (cons (_bind-e__3119931200_
                                                           _L22225_
                                                           _new-case-lambda-expr22361_
                                                           '#f)
                                                          _rest22113_)
                                                    (cons (_bind-e__0__3120131202_
                                                           _lambda-id22358_
                                                           _L22331_)
                                                          _lift122091_)
                                                    _lift222092_
                                                    _bind22093_)))
                                               _hd2226322325_
                                               _hd2226022317_
                                               _hd2225722309_)
                                              (_g2223922269_ _g2224022272_))))
                                      (_g2223922269_ _g2224022272_))
                                  (_g2223922269_ _g2224022272_))
                              (_g2223922269_ _g2224022272_))))
                      (_g2223922269_ _g2224022272_))
                  (_g2223922269_ _g2224022272_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2223922269_
                                                   _g2224022272_))))
                                          (_g2223922269_ _g2224022272_))))
                                  (_g2223922269_ _g2224022272_))))
                          (_g2223922269_ _g2224022272_))))
                  (_g2223922269_ _g2224022272_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2223822364_ _L22224_))))
                                         (___kont3417734178_
                                          (lambda (_L22175_ _L22176_)
                                            (_lp22088_
                                             _rest22113_
                                             _lift122091_
                                             _lift222092_
                                             (cons (cons _L22176_
                                                         (cons (gxc#compile-e
                                                                _L22175_)
                                                               '()))
                                                   _bind22093_)))))
                                     (let* ((___match3422234223_
                                             (lambda (_e2213322200_
                                                      _hd2213422203_
                                                      _tl2213522205_
                                                      _e2213622208_
                                                      _hd2213722211_
                                                      _tl2213822213_
                                                      _e2213922216_
                                                      _hd2214022219_
                                                      _tl2214122221_)
                                               (let ((_L22224_ _hd2214022219_)
                                                     (_L22225_ _hd2213722211_))
                                                 (if (and (gx#identifier?
                                                           _L22225_)
                                                          (gxc#opt-lambda-expr?
                                                           _L22224_))
                                                     (___kont3417534176_
                                                      _L22224_
                                                      _L22225_)
                                                     (___kont3417734178_
                                                      _hd2214022219_
                                                      _hd2213422203_)))))
                                            (___match3420034201_
                                             (lambda (_e2212222372_
                                                      _hd2212322375_
                                                      _tl2212422377_
                                                      _e2212522380_
                                                      _hd2212622383_
                                                      _tl2212722385_
                                                      _e2212822388_
                                                      _hd2212922391_
                                                      _tl2213022393_)
                                               (let ((_L22396_ _hd2212922391_)
                                                     (_L22397_ _hd2212622383_))
                                                 (if (and (gx#identifier?
                                                           _L22397_)
                                                          (gxc#case-lambda-expr?
                                                           _L22396_))
                                                     (___kont3417334174_
                                                      _L22396_
                                                      _L22397_)
                                                     (___match3422234223_
                                                      _e2212222372_
                                                      _hd2212322375_
                                                      _tl2212422377_
                                                      _e2212522380_
                                                      _hd2212622383_
                                                      _tl2212722385_
                                                      _e2212822388_
                                                      _hd2212922391_
                                                      _tl2213022393_))))))
                                       (if (gx#stx-pair? ___stx3417134172_)
                                           (let ((_e2212222372_
                                                  (gx#stx-e
                                                   ___stx3417134172_)))
                                             (let ((_tl2212422377_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2212222372_)))
                                                   (_hd2212322375_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2212222372_))))
                                               (if (gx#stx-pair?
                                                    _hd2212322375_)
                                                   (let ((_e2212522380_
                                                          (gx#stx-e
                                                           _hd2212322375_)))
                                                     (let ((_tl2212722385_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2212522380_)))
                                                           (_hd2212622383_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2212522380_))))
                                                       (if (gx#stx-null?
                                                            _tl2212722385_)
                                                           (if (gx#stx-pair?
                                                                _tl2212422377_)
                                                               (let ((_e2212822388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl2212422377_)))
                         (let ((_tl2213022393_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2212822388_)))
                               (_hd2212922391_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2212822388_))))
                           (if (gx#stx-null? _tl2213022393_)
                               (___match3420034201_
                                _e2212222372_
                                _hd2212322375_
                                _tl2212422377_
                                _e2212522380_
                                _hd2212622383_
                                _tl2212722385_
                                _e2212822388_
                                _hd2212922391_
                                _tl2213022393_)
                               (_g2211822154_))))
                       (_g2211822154_))
                   (if (gx#stx-pair? _tl2212422377_)
                       (let ((_e2214722167_ (gx#stx-e _tl2212422377_)))
                         (let ((_tl2214922172_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2214722167_)))
                               (_hd2214822170_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2214722167_))))
                           (if (gx#stx-null? _tl2214922172_)
                               (___kont3417734178_
                                _hd2214822170_
                                _hd2212322375_)
                               (_g2211822154_))))
                       (_g2211822154_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        _tl2212422377_)
                                                       (let ((_e2214722167_
                                                              (gx#stx-e
                                                               _tl2212422377_)))
                                                         (let ((_tl2214922172_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e2214722167_)))
                       (_hd2214822170_
                        (let () (declare (not safe)) (##car _e2214722167_))))
                   (if (gx#stx-null? _tl2214922172_)
                       (___kont3417734178_ _hd2214822170_ _hd2212322375_)
                       (_g2211822154_))))
               (_g2211822154_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2211822154_))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest2209422102_))
                             (let ((_hd2209922492_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest2209422102_)))
                                   (_tl2210022494_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest2209422102_))))
                               (let* ((_hd22497_ _hd2209922492_)
                                      (_rest22499_ _tl2210022494_))
                                 (_K2209822489_ _rest22499_ _hd22497_)))
                             (_else2209622110_))))))
                  (_lift-kw-lambda?21454_
                   (lambda (_bind22010_)
                     (let* ((___stx3423934240_ _bind22010_)
                            (_g2201322030_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx3423934240_))))
                       (let ((___kont3424134242_
                              (lambda (_L22066_ _L22067_)
                                (if (gx#identifier? _L22067_)
                                    (gxc#kw-lambda-expr? _L22066_)
                                    '#f)))
                             (___kont3424334244_ (lambda () '#f)))
                         (if (gx#stx-pair? ___stx3423934240_)
                             (let ((_e2201722042_
                                    (gx#stx-e ___stx3423934240_)))
                               (let ((_tl2201922047_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2201722042_)))
                                     (_hd2201822045_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2201722042_))))
                                 (if (gx#stx-pair? _hd2201822045_)
                                     (let ((_e2202022050_
                                            (gx#stx-e _hd2201822045_)))
                                       (let ((_tl2202222055_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2202022050_)))
                                             (_hd2202122053_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2202022050_))))
                                         (if (gx#stx-null? _tl2202222055_)
                                             (if (gx#stx-pair? _tl2201922047_)
                                                 (let ((_e2202322058_
                                                        (gx#stx-e
                                                         _tl2201922047_)))
                                                   (let ((_tl2202522063_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2202322058_)))
                                                         (_hd2202422061_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2202322058_))))
                                                     (if (gx#stx-null?
                                                          _tl2202522063_)
                                                         (___kont3424134242_
                                                          _hd2202422061_
                                                          _hd2202122053_)
                                                         (___kont3424334244_))))
                                                 (___kont3424334244_))
                                             (___kont3424334244_))))
                                     (___kont3424334244_))))
                             (___kont3424334244_))))))
                  (_lift-kw-lambda-bindings21455_
                   (lambda (_bindings21622_)
                     (let _lp21624_ ((_rest21626_ _bindings21622_)
                                     (_lift121627_ '())
                                     (_lift221628_ '())
                                     (_bind21629_ '()))
                       (let* ((_rest2163021638_ _rest21626_)
                              (_else2163221646_
                               (lambda ()
                                 (values (reverse _lift121627_)
                                         (reverse _lift221628_)
                                         (reverse _bind21629_))))
                              (_K2163421998_
                               (lambda (_rest21649_ _hd21650_)
                                 (let* ((___stx3426934270_ _hd21650_)
                                        (_g2165321678_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3426934270_))))
                                   (let ((___kont3427134272_
                                          (lambda (_L21748_ _L21749_)
                                            (let* ((_g2176321816_
                                                    (lambda (_g2176421813_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2176421813_)))
                                                   (_g2176221992_
                                                    (lambda (_g2176421819_)
                                                      (if (gx#stx-pair?
                                                           _g2176421819_)
                                                          (let ((_e2177021821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _g2176421819_)))
                    (let ((_hd2177121824_
                           (let () (declare (not safe)) (##car _e2177021821_)))
                          (_tl2177221826_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2177021821_))))
                      (if (gx#stx-pair? _tl2177221826_)
                          (let ((_e2177321829_ (gx#stx-e _tl2177221826_)))
                            (let ((_hd2177421832_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2177321829_)))
                                  (_tl2177521834_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2177321829_))))
                              (if (gx#stx-pair? _hd2177421832_)
                                  (let ((_e2177621837_
                                         (gx#stx-e _hd2177421832_)))
                                    (let ((_hd2177721840_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2177621837_)))
                                          (_tl2177821842_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2177621837_))))
                                      (if (gx#stx-pair? _hd2177721840_)
                                          (let ((_e2177921845_
                                                 (gx#stx-e _hd2177721840_)))
                                            (let ((_hd2178021848_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2177921845_)))
                                                  (_tl2178121850_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2177921845_))))
                                              (if (gx#stx-pair? _hd2178021848_)
                                                  (let ((_e2178221853_
                                                         (gx#stx-e
                                                          _hd2178021848_)))
                                                    (let ((_hd2178321856_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2178221853_)))
                                                          (_tl2178421858_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2178221853_))))
                                                      (if (gx#stx-null?
                                                           _tl2178421858_)
                                                          (if (gx#stx-pair?
                                                               _tl2178121850_)
                                                              (let ((_e2178521861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2178121850_)))
                        (let ((_hd2178621864_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2178521861_)))
                              (_tl2178721866_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2178521861_))))
                          (if (gx#stx-pair? _hd2178621864_)
                              (let ((_e2178821869_ (gx#stx-e _hd2178621864_)))
                                (let ((_hd2178921872_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2178821869_)))
                                      (_tl2179021874_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2178821869_))))
                                  (if (gx#stx-pair? _tl2179021874_)
                                      (let ((_e2179121877_
                                             (gx#stx-e _tl2179021874_)))
                                        (let ((_hd2179221880_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2179121877_)))
                                              (_tl2179321882_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2179121877_))))
                                          (if (gx#stx-pair? _hd2179221880_)
                                              (let ((_e2179421885_
                                                     (gx#stx-e
                                                      _hd2179221880_)))
                                                (let ((_hd2179521888_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2179421885_)))
                                                      (_tl2179621890_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2179421885_))))
                                                  (if (gx#stx-pair?
                                                       _hd2179521888_)
                                                      (let ((_e2179721893_
                                                             (gx#stx-e
                                                              _hd2179521888_)))
                                                        (let ((_hd2179821896_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e2179721893_)))
                      (_tl2179921898_
                       (let () (declare (not safe)) (##cdr _e2179721893_))))
                  (if (gx#stx-pair? _hd2179821896_)
                      (let ((_e2180021901_ (gx#stx-e _hd2179821896_)))
                        (let ((_hd2180121904_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2180021901_)))
                              (_tl2180221906_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2180021901_))))
                          (if (gx#stx-null? _tl2180221906_)
                              (if (gx#stx-pair? _tl2179921898_)
                                  (let ((_e2180321909_
                                         (gx#stx-e _tl2179921898_)))
                                    (let ((_hd2180421912_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2180321909_)))
                                          (_tl2180521914_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2180321909_))))
                                      (if (gx#stx-null? _tl2180521914_)
                                          (if (gx#stx-null? _tl2179621890_)
                                              (if (gx#stx-pair? _tl2179321882_)
                                                  (let ((_e2180621917_
                                                         (gx#stx-e
                                                          _tl2179321882_)))
                                                    (let ((_hd2180721920_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2180621917_)))
                                                          (_tl2180821922_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2180621917_))))
                                                      (if (gx#stx-null?
                                                           _tl2180821922_)
                                                          (if (gx#stx-null?
                                                               _tl2178721866_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2177821842_)
                          (if (gx#stx-pair? _tl2177521834_)
                              (let ((_e2180921925_ (gx#stx-e _tl2177521834_)))
                                (let ((_hd2181021928_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2180921925_)))
                                      (_tl2181121930_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2180921925_))))
                                  (if (gx#stx-null? _tl2181121930_)
                                      ((lambda (_L21933_
                                                _L21934_
                                                _L21935_
                                                _L21936_
                                                _L21937_)
                                         (let* ((_get-kws-id21977_
                                                 (make-symbol
                                                  (gx#stx-e _L21749_)
                                                  (gensym '__)))
                                                (_get-kws-id21979_
                                                 (gx#core-quote-syntax__1
                                                  _get-kws-id21977_
                                                  (gx#stx-source _stx21450_)))
                                                (_main-id21981_
                                                 (make-symbol
                                                  (gx#stx-e _L21749_)
                                                  (gensym '__)))
                                                (_main-id21983_
                                                 (gx#core-quote-syntax__1
                                                  _main-id21981_
                                                  (gx#stx-source _stx21450_)))
                                                (_g34563_
                                                 (gx#core-bind-runtime!__0
                                                  _get-kws-id21979_))
                                                (_g34564_
                                                 (gx#core-bind-runtime!__0
                                                  _main-id21983_))
                                                (_new-kw-dispatch21987_
                                                 (gxc#apply-expression-subst
                                                  _L21933_
                                                  _L21937_
                                                  _get-kws-id21979_))
                                                (_new-get-kws21989_
                                                 (gxc#apply-expression-subst
                                                  _L21934_
                                                  _L21936_
                                                  _main-id21983_)))
                                           (gxc#verbose
                                            '"lift kw-lambda dispatch "
                                            (gxc#identifier-symbol _L21749_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _get-kws-id21979_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _main-id21983_))
                                           (_lp21624_
                                            _rest21649_
                                            (cons (_bind-e__3119931200_
                                                   _main-id21983_
                                                   _L21935_
                                                   '#f)
                                                  _lift121627_)
                                            (cons (_bind-e__3119931200_
                                                   _get-kws-id21979_
                                                   _new-get-kws21989_
                                                   '#f)
                                                  _lift221628_)
                                            (cons (_bind-e__3119931200_
                                                   _L21749_
                                                   _new-kw-dispatch21987_
                                                   '#f)
                                                  _bind21629_))))
                                       _hd2181021928_
                                       _hd2180721920_
                                       _hd2180421912_
                                       _hd2180121904_
                                       _hd2178321856_)
                                      (_g2176321816_ _g2176421819_))))
                              (_g2176321816_ _g2176421819_))
                          (_g2176321816_ _g2176421819_))
                      (_g2176321816_ _g2176421819_))
                  (_g2176321816_ _g2176421819_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2176321816_
                                                   _g2176421819_))
                                              (_g2176321816_ _g2176421819_))
                                          (_g2176321816_ _g2176421819_))))
                                  (_g2176321816_ _g2176421819_))
                              (_g2176321816_ _g2176421819_))))
                      (_g2176321816_ _g2176421819_))))
              (_g2176321816_ _g2176421819_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2176321816_ _g2176421819_))))
                                      (_g2176321816_ _g2176421819_))))
                              (_g2176321816_ _g2176421819_))))
                      (_g2176321816_ _g2176421819_))
                  (_g2176321816_ _g2176421819_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2176321816_
                                                   _g2176421819_))))
                                          (_g2176321816_ _g2176421819_))))
                                  (_g2176321816_ _g2176421819_))))
                          (_g2176321816_ _g2176421819_))))
                  (_g2176321816_ _g2176421819_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2176221992_ _L21748_))))
                                         (___kont3427334274_
                                          (lambda (_L21699_ _L21700_)
                                            (_lp21624_
                                             _rest21649_
                                             _lift121627_
                                             _lift221628_
                                             (cons (cons _L21700_
                                                         (cons _L21699_ '()))
                                                   _bind21629_)))))
                                     (let ((___match3429634297_
                                            (lambda (_e2165721724_
                                                     _hd2165821727_
                                                     _tl2165921729_
                                                     _e2166021732_
                                                     _hd2166121735_
                                                     _tl2166221737_
                                                     _e2166321740_
                                                     _hd2166421743_
                                                     _tl2166521745_)
                                              (let ((_L21748_ _hd2166421743_)
                                                    (_L21749_ _hd2166121735_))
                                                (if (and (gx#identifier?
                                                          _L21749_)
                                                         (gxc#kw-lambda-expr?
                                                          _L21748_))
                                                    (___kont3427134272_
                                                     _L21748_
                                                     _L21749_)
                                                    (___kont3427334274_
                                                     _hd2166421743_
                                                     _hd2165821727_))))))
                                       (if (gx#stx-pair? ___stx3426934270_)
                                           (let ((_e2165721724_
                                                  (gx#stx-e
                                                   ___stx3426934270_)))
                                             (let ((_tl2165921729_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2165721724_)))
                                                   (_hd2165821727_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2165721724_))))
                                               (if (gx#stx-pair?
                                                    _hd2165821727_)
                                                   (let ((_e2166021732_
                                                          (gx#stx-e
                                                           _hd2165821727_)))
                                                     (let ((_tl2166221737_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2166021732_)))
                                                           (_hd2166121735_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2166021732_))))
                                                       (if (gx#stx-null?
                                                            _tl2166221737_)
                                                           (if (gx#stx-pair?
                                                                _tl2165921729_)
                                                               (let ((_e2166321740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl2165921729_)))
                         (let ((_tl2166521745_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2166321740_)))
                               (_hd2166421743_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2166321740_))))
                           (if (gx#stx-null? _tl2166521745_)
                               (___match3429634297_
                                _e2165721724_
                                _hd2165821727_
                                _tl2165921729_
                                _e2166021732_
                                _hd2166121735_
                                _tl2166221737_
                                _e2166321740_
                                _hd2166421743_
                                _tl2166521745_)
                               (_g2165321678_))))
                       (_g2165321678_))
                   (if (gx#stx-pair? _tl2165921729_)
                       (let ((_e2167121691_ (gx#stx-e _tl2165921729_)))
                         (let ((_tl2167321696_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2167121691_)))
                               (_hd2167221694_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2167121691_))))
                           (if (gx#stx-null? _tl2167321696_)
                               (___kont3427334274_
                                _hd2167221694_
                                _hd2165821727_)
                               (_g2165321678_))))
                       (_g2165321678_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        _tl2165921729_)
                                                       (let ((_e2167121691_
                                                              (gx#stx-e
                                                               _tl2165921729_)))
                                                         (let ((_tl2167321696_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e2167121691_)))
                       (_hd2167221694_
                        (let () (declare (not safe)) (##car _e2167121691_))))
                   (if (gx#stx-null? _tl2167321696_)
                       (___kont3427334274_ _hd2167221694_ _hd2165821727_)
                       (_g2165321678_))))
               (_g2165321678_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2165321678_))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest2163021638_))
                             (let ((_hd2163522001_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest2163021638_)))
                                   (_tl2163622003_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest2163021638_))))
                               (let* ((_hd22006_ _hd2163522001_)
                                      (_rest22008_ _tl2163622003_))
                                 (_K2163421998_ _rest22008_ _hd22006_)))
                             (_else2163221646_)))))))
          (let* ((___stx3431334314_ _stx21450_)
                 (_g2145821484_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx3431334314_))))
            (let ((___kont3431534316_
                   (lambda (_L21544_ _L21545_)
                     (call-with-parameters
                      (lambda ()
                        (if (ormap1 _lift-kw-lambda?21454_
                                    (foldr1 (lambda (_g2157321576_
                                                     _g2157421578_)
                                              (cons _g2157321576_
                                                    _g2157421578_))
                                            '()
                                            _L21545_))
                            (let ((_g34565_
                                   (_lift-kw-lambda-bindings21455_
                                    (foldr1 (lambda (_g2158021583_
                                                     _g2158121585_)
                                              (cons _g2158021583_
                                                    _g2158121585_))
                                            '()
                                            _L21545_))))
                              (begin
                                (let ((_g34566_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g34565_)
                                             (##vector-length _g34565_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g34566_ 3)))
                                      (error "Context expects 3 values"
                                             _g34566_)))
                                (let ((_lift121588_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g34565_ 0)))
                                      (_lift221589_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g34565_ 1)))
                                      (_hd21590_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g34565_ 2))))
                                  (let* ((_expr21592_
                                          (gxc#xform-wrap-source
                                           (cons '%#let-values
                                                 (cons _hd21590_
                                                       (cons _L21544_ '())))
                                           _stx21450_))
                                         (_expr21594_
                                          (gxc#xform-wrap-source
                                           (cons '%#let-values
                                                 (cons _lift221589_
                                                       (cons _expr21592_ '())))
                                           _stx21450_))
                                         (_expr21596_
                                          (gxc#xform-wrap-source
                                           (cons '%#let-values
                                                 (cons _lift121588_
                                                       (cons _expr21594_ '())))
                                           _stx21450_)))
                                    (gxc#lift-top-lambda-let-values%
                                     _expr21596_)))))
                            (let ((_g34567_
                                   (_compile-bindings21453_
                                    (foldr1 (lambda (_g2159821601_
                                                     _g2159921603_)
                                              (cons _g2159821601_
                                                    _g2159921603_))
                                            '()
                                            _L21545_))))
                              (begin
                                (let ((_g34568_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g34567_)
                                             (##vector-length _g34567_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g34568_ 3)))
                                      (error "Context expects 3 values"
                                             _g34568_)))
                                (let ((_lift121606_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g34567_ 0)))
                                      (_lift221607_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g34567_ 1)))
                                      (_hd21608_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g34567_ 2))))
                                  (let* ((_body21610_ (gxc#compile-e _L21544_))
                                         (_expr21612_
                                          (gxc#xform-wrap-source
                                           (cons '%#let-values
                                                 (cons _hd21608_
                                                       (cons _body21610_ '())))
                                           _stx21450_))
                                         (_expr21614_
                                          (if (null? _lift221607_)
                                              _expr21612_
                                              (gxc#xform-wrap-source
                                               (cons '%#let-values
                                                     (cons _lift221607_
                                                           (cons _expr21612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx21450_)))
                                         (_expr21616_
                                          (if (null? _lift121606_)
                                              _expr21614_
                                              (gxc#xform-wrap-source
                                               (cons '%#let-values
                                                     (cons _lift121606_
                                                           (cons _expr21614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx21450_))))
                                    _expr21616_))))))
                      gx#current-expander-context
                      (let ((__obj34524 (make-object gx#local-context::t '5)))
                        (gx#local-context:::init!__0 __obj34524)
                        __obj34524))))
                  (___kont3431934320_
                   (lambda () (gxc#xform-let-values% _stx21450_))))
              (let ((___match3434034341_
                     (lambda (_e2146221496_
                              _hd2146321499_
                              _tl2146421501_
                              _e2146521504_
                              _hd2146621507_
                              _tl2146721509_
                              ___splice3431734318_
                              _target2146821512_
                              _tl2147021514_)
                       (letrec ((_loop2147121517_
                                 (lambda (_hd2146921520_ _bind2147521522_)
                                   (if (gx#stx-pair? _hd2146921520_)
                                       (let ((_e2147221525_
                                              (gx#stx-e _hd2146921520_)))
                                         (let ((_lp-tl2147421530_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2147221525_)))
                                               (_lp-hd2147321528_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2147221525_))))
                                           (_loop2147121517_
                                            _lp-tl2147421530_
                                            (cons _lp-hd2147321528_
                                                  _bind2147521522_))))
                                       (let ((_bind2147621533_
                                              (reverse _bind2147521522_)))
                                         (if (gx#stx-pair? _tl2146721509_)
                                             (let ((_e2147721536_
                                                    (gx#stx-e _tl2146721509_)))
                                               (let ((_tl2147921541_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2147721536_)))
                                                     (_hd2147821539_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2147721536_))))
                                                 (if (gx#stx-null?
                                                      _tl2147921541_)
                                                     (let ((_L21544_
                                                            _hd2147821539_)
                                                           (_L21545_
                                                            _bind2147621533_))
                                                       (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr1 (lambda (_g2156521568_ _g2156621570_)
                                     (cons _g2156521568_ _g2156621570_))
                                   '()
                                   _L21545_))
                   (___kont3431534316_ _L21544_ _L21545_)
                   (___kont3431934320_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont3431934320_))))
                                             (___kont3431934320_)))))))
                         (_loop2147121517_ _target2146821512_ '())))))
                (if (gx#stx-pair? ___stx3431334314_)
                    (let ((_e2146221496_ (gx#stx-e ___stx3431334314_)))
                      (let ((_tl2146421501_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2146221496_)))
                            (_hd2146321499_
                             (let ()
                               (declare (not safe))
                               (##car _e2146221496_))))
                        (if (gx#stx-pair? _tl2146421501_)
                            (let ((_e2146521504_ (gx#stx-e _tl2146421501_)))
                              (let ((_tl2146721509_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2146521504_)))
                                    (_hd2146621507_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2146521504_))))
                                (if (gx#stx-pair/null? _hd2146621507_)
                                    (let ((___splice3431734318_
                                           (gx#syntax-split-splice
                                            _hd2146621507_
                                            '0)))
                                      (let ((_tl2147021514_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3431734318_
                                                '1)))
                                            (_target2146821512_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3431734318_
                                                '0))))
                                        (if (gx#stx-null? _tl2147021514_)
                                            (___match3434034341_
                                             _e2146221496_
                                             _hd2146321499_
                                             _tl2146421501_
                                             _e2146521504_
                                             _hd2146621507_
                                             _tl2146721509_
                                             ___splice3431734318_
                                             _target2146821512_
                                             _tl2147021514_)
                                            (___kont3431934320_))))
                                    (___kont3431934320_))))
                            (___kont3431934320_))))
                    (___kont3431934320_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx20594_)
        (letrec* ((_bind-e__3120431205_
                   (lambda (_id21434_ _expr21435_ _compile?21436_)
                     (cons (cons _id21434_ '())
                           (cons (if _compile?21436_
                                     (gxc#compile-e _expr21435_)
                                     _expr21435_)
                                 '()))))
                  (_bind-e__0__3120631207_
                   (lambda (_id21441_ _expr21442_)
                     (let ((_compile?21444_ '#t))
                       (_bind-e__3120431205_
                        _id21441_
                        _expr21442_
                        _compile?21444_))))
                  (_bind-e20596_
                   (lambda _g34570_
                     (let ((_g34569_
                            (let () (declare (not safe)) (##length _g34570_))))
                       (cond ((let () (declare (not safe)) (##fx= _g34569_ 2))
                              (apply _bind-e__0__3120631207_ _g34570_))
                             ((let () (declare (not safe)) (##fx= _g34569_ 3))
                              (apply _bind-e__3120431205_ _g34570_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g34570_))))))
                  (_compile-bindings20597_
                   (lambda (_rest20732_)
                     (let _lp20734_ ((_rest20736_ _rest20732_)
                                     (_bind20737_ '()))
                       (let* ((_rest2073820746_ _rest20736_)
                              (_else2074020754_
                               (lambda () (reverse _bind20737_)))
                              (_K2074221421_
                               (lambda (_rest20757_ _hd20758_)
                                 (let* ((___stx3436334364_ _hd20758_)
                                        (_g2076320810_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3436334364_))))
                                   (let ((___kont3436534366_
                                          (lambda (_L21328_ _L21329_)
                                            (let* ((___stx3434334344_ _L21328_)
                                                   (_g2134421358_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       ___stx3434334344_))))
                                              (let ((___kont3434534346_
                                                     (lambda (_L21406_)
                                                       (_lp20734_
                                                        _rest20757_
                                                        (cons (_bind-e__3120431205_
                                                               _L21329_
                                                               _L21328_
                                                               '#f)
                                                              _bind20737_))))
                                                    (___kont3434734348_
                                                     (lambda (_L21371_)
                                                       (let ((_g34571_
                                                              (gxc#lift-case-lambda-clauses__%
                                                               _stx20594_
                                                               _L21329_
                                                               _L21371_
                                                               '#t)))
                                                         (begin
                                                           (let ((_g34572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (if (##values? _g34571_)
                                (##vector-length _g34571_)
                                1))))
                     (if (not (let () (declare (not safe)) (##fx= _g34572_ 3)))
                         (error "Context expects 3 values" _g34572_)))
                   (let ((_ids21381_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g34571_ 0)))
                         (_impls21382_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g34571_ 1)))
                         (_clauses21383_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g34571_ 2))))
                     (let* ((_g34573_
                             (for-each gx#core-bind-runtime! _ids21381_))
                            (_xbind21386_
                             (map _bind-e20596_ _ids21381_ _impls21382_))
                            (_expr*21388_
                             (gxc#xform-wrap-source
                              (cons '%#case-lambda _clauses21383_)
                              (gx#datum->syntax__0 '#f 'case-lambda-expr)))
                            (_bind*21390_
                             (_bind-e__3120431205_ _L21329_ _expr*21388_ '#f)))
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#identifier-symbol _L21329_)
                        '" => "
                        (map gxc#identifier-symbol _ids21381_))
                       (_lp20734_
                        _rest20757_
                        (cons _bind*21390_
                              (foldl1 cons _bind20737_ _xbind21386_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match3435434355_
                                                       (lambda (_e2134721398_
                                                                _hd2134821401_
                                                                _tl2134921403_)
                                                         (let ((_L21406_
                                                                _tl2134921403_))
                                                           (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L21406_)
                       (___kont3434534346_ _L21406_)
                       (___kont3434734348_ _tl2134921403_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx3434334344_)
                                                      (let ((_e2134721398_
                                                             (gx#stx-e
                                                              ___stx3434334344_)))
                                                        (let ((_tl2134921403_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2134721398_)))
                      (_hd2134821401_
                       (let () (declare (not safe)) (##car _e2134721398_))))
                  (___match3435434355_
                   _e2134721398_
                   _hd2134821401_
                   _tl2134921403_)))
              (_g2134421358_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont3436734368_
                                          (lambda (_L21156_ _L21157_)
                                            (let* ((_g2117121201_
                                                    (lambda (_g2117221198_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2117221198_)))
                                                   (_g2117021296_
                                                    (lambda (_g2117221204_)
                                                      (if (gx#stx-pair?
                                                           _g2117221204_)
                                                          (let ((_e2117621206_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _g2117221204_)))
                    (let ((_hd2117721209_
                           (let () (declare (not safe)) (##car _e2117621206_)))
                          (_tl2117821211_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2117621206_))))
                      (if (gx#stx-pair? _tl2117821211_)
                          (let ((_e2117921214_ (gx#stx-e _tl2117821211_)))
                            (let ((_hd2118021217_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2117921214_)))
                                  (_tl2118121219_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2117921214_))))
                              (if (gx#stx-pair? _hd2118021217_)
                                  (let ((_e2118221222_
                                         (gx#stx-e _hd2118021217_)))
                                    (let ((_hd2118321225_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2118221222_)))
                                          (_tl2118421227_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2118221222_))))
                                      (if (gx#stx-pair? _hd2118321225_)
                                          (let ((_e2118521230_
                                                 (gx#stx-e _hd2118321225_)))
                                            (let ((_hd2118621233_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2118521230_)))
                                                  (_tl2118721235_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2118521230_))))
                                              (if (gx#stx-pair? _hd2118621233_)
                                                  (let ((_e2118821238_
                                                         (gx#stx-e
                                                          _hd2118621233_)))
                                                    (let ((_hd2118921241_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2118821238_)))
                                                          (_tl2119021243_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2118821238_))))
                                                      (if (gx#stx-null?
                                                           _tl2119021243_)
                                                          (if (gx#stx-pair?
                                                               _tl2118721235_)
                                                              (let ((_e2119121246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2118721235_)))
                        (let ((_hd2119221249_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2119121246_)))
                              (_tl2119321251_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2119121246_))))
                          (if (gx#stx-null? _tl2119321251_)
                              (if (gx#stx-null? _tl2118421227_)
                                  (if (gx#stx-pair? _tl2118121219_)
                                      (let ((_e2119421254_
                                             (gx#stx-e _tl2118121219_)))
                                        (let ((_hd2119521257_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2119421254_)))
                                              (_tl2119621259_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2119421254_))))
                                          (if (gx#stx-null? _tl2119621259_)
                                              ((lambda (_L21262_
                                                        _L21263_
                                                        _L21264_)
                                                 (let* ((_lambda-id21288_
                                                         (make-symbol
                                                          (gx#stx-e _L21157_)
                                                          (gensym '__)))
                                                        (_lambda-id21290_
                                                         (gx#core-quote-syntax__1
                                                          _lambda-id21288_
                                                          (gx#stx-source
                                                           _stx20594_)))
                                                        (_g34574_
                                                         (gx#core-bind-runtime!__0
                                                          _lambda-id21290_))
                                                        (_new-case-lambda-expr21293_
                                                         (gxc#apply-expression-subst
                                                          _L21262_
                                                          _L21264_
                                                          _lambda-id21290_)))
                                                   (gxc#verbose
                                                    '"lift opt-lambda dispatch "
                                                    (gxc#identifier-symbol
                                                     _L21157_)
                                                    '" => "
                                                    (gxc#identifier-symbol
                                                     _lambda-id21290_))
                                                   (_lp20734_
                                                    (cons (_bind-e__3120431205_
                                                           _L21157_
                                                           _new-case-lambda-expr21293_
                                                           '#f)
                                                          _rest20757_)
                                                    (cons (_bind-e__0__3120631207_
                                                           _lambda-id21290_
                                                           _L21263_)
                                                          _bind20737_))))
                                               _hd2119521257_
                                               _hd2119221249_
                                               _hd2118921241_)
                                              (_g2117121201_ _g2117221204_))))
                                      (_g2117121201_ _g2117221204_))
                                  (_g2117121201_ _g2117221204_))
                              (_g2117121201_ _g2117221204_))))
                      (_g2117121201_ _g2117221204_))
                  (_g2117121201_ _g2117221204_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2117121201_
                                                   _g2117221204_))))
                                          (_g2117121201_ _g2117221204_))))
                                  (_g2117121201_ _g2117221204_))))
                          (_g2117121201_ _g2117221204_))))
                  (_g2117121201_ _g2117221204_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2117021296_ _L21156_))))
                                         (___kont3436934370_
                                          (lambda (_L20880_ _L20881_)
                                            (let* ((_g2089520948_
                                                    (lambda (_g2089620945_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2089620945_)))
                                                   (_g2089421124_
                                                    (lambda (_g2089620951_)
                                                      (if (gx#stx-pair?
                                                           _g2089620951_)
                                                          (let ((_e2090220953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _g2089620951_)))
                    (let ((_hd2090320956_
                           (let () (declare (not safe)) (##car _e2090220953_)))
                          (_tl2090420958_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2090220953_))))
                      (if (gx#stx-pair? _tl2090420958_)
                          (let ((_e2090520961_ (gx#stx-e _tl2090420958_)))
                            (let ((_hd2090620964_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2090520961_)))
                                  (_tl2090720966_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2090520961_))))
                              (if (gx#stx-pair? _hd2090620964_)
                                  (let ((_e2090820969_
                                         (gx#stx-e _hd2090620964_)))
                                    (let ((_hd2090920972_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2090820969_)))
                                          (_tl2091020974_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2090820969_))))
                                      (if (gx#stx-pair? _hd2090920972_)
                                          (let ((_e2091120977_
                                                 (gx#stx-e _hd2090920972_)))
                                            (let ((_hd2091220980_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2091120977_)))
                                                  (_tl2091320982_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2091120977_))))
                                              (if (gx#stx-pair? _hd2091220980_)
                                                  (let ((_e2091420985_
                                                         (gx#stx-e
                                                          _hd2091220980_)))
                                                    (let ((_hd2091520988_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2091420985_)))
                                                          (_tl2091620990_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2091420985_))))
                                                      (if (gx#stx-null?
                                                           _tl2091620990_)
                                                          (if (gx#stx-pair?
                                                               _tl2091320982_)
                                                              (let ((_e2091720993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2091320982_)))
                        (let ((_hd2091820996_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2091720993_)))
                              (_tl2091920998_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2091720993_))))
                          (if (gx#stx-pair? _hd2091820996_)
                              (let ((_e2092021001_ (gx#stx-e _hd2091820996_)))
                                (let ((_hd2092121004_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2092021001_)))
                                      (_tl2092221006_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2092021001_))))
                                  (if (gx#stx-pair? _tl2092221006_)
                                      (let ((_e2092321009_
                                             (gx#stx-e _tl2092221006_)))
                                        (let ((_hd2092421012_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2092321009_)))
                                              (_tl2092521014_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2092321009_))))
                                          (if (gx#stx-pair? _hd2092421012_)
                                              (let ((_e2092621017_
                                                     (gx#stx-e
                                                      _hd2092421012_)))
                                                (let ((_hd2092721020_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2092621017_)))
                                                      (_tl2092821022_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2092621017_))))
                                                  (if (gx#stx-pair?
                                                       _hd2092721020_)
                                                      (let ((_e2092921025_
                                                             (gx#stx-e
                                                              _hd2092721020_)))
                                                        (let ((_hd2093021028_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e2092921025_)))
                      (_tl2093121030_
                       (let () (declare (not safe)) (##cdr _e2092921025_))))
                  (if (gx#stx-pair? _hd2093021028_)
                      (let ((_e2093221033_ (gx#stx-e _hd2093021028_)))
                        (let ((_hd2093321036_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2093221033_)))
                              (_tl2093421038_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2093221033_))))
                          (if (gx#stx-null? _tl2093421038_)
                              (if (gx#stx-pair? _tl2093121030_)
                                  (let ((_e2093521041_
                                         (gx#stx-e _tl2093121030_)))
                                    (let ((_hd2093621044_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2093521041_)))
                                          (_tl2093721046_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2093521041_))))
                                      (if (gx#stx-null? _tl2093721046_)
                                          (if (gx#stx-null? _tl2092821022_)
                                              (if (gx#stx-pair? _tl2092521014_)
                                                  (let ((_e2093821049_
                                                         (gx#stx-e
                                                          _tl2092521014_)))
                                                    (let ((_hd2093921052_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2093821049_)))
                                                          (_tl2094021054_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2093821049_))))
                                                      (if (gx#stx-null?
                                                           _tl2094021054_)
                                                          (if (gx#stx-null?
                                                               _tl2091920998_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2091020974_)
                          (if (gx#stx-pair? _tl2090720966_)
                              (let ((_e2094121057_ (gx#stx-e _tl2090720966_)))
                                (let ((_hd2094221060_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2094121057_)))
                                      (_tl2094321062_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2094121057_))))
                                  (if (gx#stx-null? _tl2094321062_)
                                      ((lambda (_L21065_
                                                _L21066_
                                                _L21067_
                                                _L21068_
                                                _L21069_)
                                         (let* ((_get-kws-id21109_
                                                 (make-symbol
                                                  (gx#stx-e _L20881_)
                                                  (gensym '__)))
                                                (_get-kws-id21111_
                                                 (gx#core-quote-syntax__1
                                                  _get-kws-id21109_
                                                  (gx#stx-source _stx20594_)))
                                                (_main-id21113_
                                                 (make-symbol
                                                  (gx#stx-e _L20881_)
                                                  (gensym '__)))
                                                (_main-id21115_
                                                 (gx#core-quote-syntax__1
                                                  _main-id21113_
                                                  (gx#stx-source _stx20594_)))
                                                (_g34575_
                                                 (gx#core-bind-runtime!__0
                                                  _get-kws-id21111_))
                                                (_g34576_
                                                 (gx#core-bind-runtime!__0
                                                  _main-id21115_))
                                                (_new-kw-dispatch21119_
                                                 (gxc#apply-expression-subst
                                                  _L21065_
                                                  _L21069_
                                                  _get-kws-id21111_))
                                                (_new-get-kws21121_
                                                 (gxc#apply-expression-subst
                                                  _L21066_
                                                  _L21068_
                                                  _main-id21115_)))
                                           (gxc#verbose
                                            '"lift kw-lambda dispatch "
                                            (gxc#identifier-symbol _L20881_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _get-kws-id21111_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _main-id21115_))
                                           (_lp20734_
                                            (cons (_bind-e__3120431205_
                                                   _main-id21115_
                                                   _L21067_
                                                   '#f)
                                                  (cons (_bind-e__3120431205_
                                                         _get-kws-id21111_
                                                         _new-get-kws21121_
                                                         '#f)
                                                        (cons (_bind-e__3120431205_
                                                               _L20881_
                                                               _new-kw-dispatch21119_
                                                               '#f)
                                                              _rest20757_)))
                                            _bind20737_)))
                                       _hd2094221060_
                                       _hd2093921052_
                                       _hd2093621044_
                                       _hd2093321036_
                                       _hd2091520988_)
                                      (_g2089520948_ _g2089620951_))))
                              (_g2089520948_ _g2089620951_))
                          (_g2089520948_ _g2089620951_))
                      (_g2089520948_ _g2089620951_))
                  (_g2089520948_ _g2089620951_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2089520948_
                                                   _g2089620951_))
                                              (_g2089520948_ _g2089620951_))
                                          (_g2089520948_ _g2089620951_))))
                                  (_g2089520948_ _g2089620951_))
                              (_g2089520948_ _g2089620951_))))
                      (_g2089520948_ _g2089620951_))))
              (_g2089520948_ _g2089620951_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2089520948_ _g2089620951_))))
                                      (_g2089520948_ _g2089620951_))))
                              (_g2089520948_ _g2089620951_))))
                      (_g2089520948_ _g2089620951_))
                  (_g2089520948_ _g2089620951_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2089520948_
                                                   _g2089620951_))))
                                          (_g2089520948_ _g2089620951_))))
                                  (_g2089520948_ _g2089620951_))))
                          (_g2089520948_ _g2089620951_))))
                  (_g2089520948_ _g2089620951_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2089421124_ _L20880_))))
                                         (___kont3437134372_
                                          (lambda (_L20831_ _L20832_)
                                            (_lp20734_
                                             _rest20757_
                                             (cons (cons _L20832_
                                                         (cons (gxc#compile-e
                                                                _L20831_)
                                                               '()))
                                                   _bind20737_)))))
                                     (let* ((___match3443834439_
                                             (lambda (_e2078920856_
                                                      _hd2079020859_
                                                      _tl2079120861_
                                                      _e2079220864_
                                                      _hd2079320867_
                                                      _tl2079420869_
                                                      _e2079520872_
                                                      _hd2079620875_
                                                      _tl2079720877_)
                                               (let ((_L20880_ _hd2079620875_)
                                                     (_L20881_ _hd2079320867_))
                                                 (if (and (gx#identifier?
                                                           _L20881_)
                                                          (gxc#kw-lambda-expr?
                                                           _L20880_))
                                                     (___kont3436934370_
                                                      _L20880_
                                                      _L20881_)
                                                     (___kont3437134372_
                                                      _hd2079620875_
                                                      _hd2079020859_)))))
                                            (___match3441634417_
                                             (lambda (_e2077821132_
                                                      _hd2077921135_
                                                      _tl2078021137_
                                                      _e2078121140_
                                                      _hd2078221143_
                                                      _tl2078321145_
                                                      _e2078421148_
                                                      _hd2078521151_
                                                      _tl2078621153_)
                                               (let ((_L21156_ _hd2078521151_)
                                                     (_L21157_ _hd2078221143_))
                                                 (if (and (gx#identifier?
                                                           _L21157_)
                                                          (gxc#opt-lambda-expr?
                                                           _L21156_))
                                                     (___kont3436734368_
                                                      _L21156_
                                                      _L21157_)
                                                     (___match3443834439_
                                                      _e2077821132_
                                                      _hd2077921135_
                                                      _tl2078021137_
                                                      _e2078121140_
                                                      _hd2078221143_
                                                      _tl2078321145_
                                                      _e2078421148_
                                                      _hd2078521151_
                                                      _tl2078621153_)))))
                                            (___match3439434395_
                                             (lambda (_e2076721304_
                                                      _hd2076821307_
                                                      _tl2076921309_
                                                      _e2077021312_
                                                      _hd2077121315_
                                                      _tl2077221317_
                                                      _e2077321320_
                                                      _hd2077421323_
                                                      _tl2077521325_)
                                               (let ((_L21328_ _hd2077421323_)
                                                     (_L21329_ _hd2077121315_))
                                                 (if (and (gx#identifier?
                                                           _L21329_)
                                                          (gxc#case-lambda-expr?
                                                           _L21328_))
                                                     (___kont3436534366_
                                                      _L21328_
                                                      _L21329_)
                                                     (___match3441634417_
                                                      _e2076721304_
                                                      _hd2076821307_
                                                      _tl2076921309_
                                                      _e2077021312_
                                                      _hd2077121315_
                                                      _tl2077221317_
                                                      _e2077321320_
                                                      _hd2077421323_
                                                      _tl2077521325_))))))
                                       (if (gx#stx-pair? ___stx3436334364_)
                                           (let ((_e2076721304_
                                                  (gx#stx-e
                                                   ___stx3436334364_)))
                                             (let ((_tl2076921309_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2076721304_)))
                                                   (_hd2076821307_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2076721304_))))
                                               (if (gx#stx-pair?
                                                    _hd2076821307_)
                                                   (let ((_e2077021312_
                                                          (gx#stx-e
                                                           _hd2076821307_)))
                                                     (let ((_tl2077221317_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2077021312_)))
                                                           (_hd2077121315_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2077021312_))))
                                                       (if (gx#stx-null?
                                                            _tl2077221317_)
                                                           (if (gx#stx-pair?
                                                                _tl2076921309_)
                                                               (let ((_e2077321320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl2076921309_)))
                         (let ((_tl2077521325_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2077321320_)))
                               (_hd2077421323_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2077321320_))))
                           (if (gx#stx-null? _tl2077521325_)
                               (___match3439434395_
                                _e2076721304_
                                _hd2076821307_
                                _tl2076921309_
                                _e2077021312_
                                _hd2077121315_
                                _tl2077221317_
                                _e2077321320_
                                _hd2077421323_
                                _tl2077521325_)
                               (_g2076320810_))))
                       (_g2076320810_))
                   (if (gx#stx-pair? _tl2076921309_)
                       (let ((_e2080320823_ (gx#stx-e _tl2076921309_)))
                         (let ((_tl2080520828_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2080320823_)))
                               (_hd2080420826_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2080320823_))))
                           (if (gx#stx-null? _tl2080520828_)
                               (___kont3437134372_
                                _hd2080420826_
                                _hd2076821307_)
                               (_g2076320810_))))
                       (_g2076320810_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        _tl2076921309_)
                                                       (let ((_e2080320823_
                                                              (gx#stx-e
                                                               _tl2076921309_)))
                                                         (let ((_tl2080520828_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e2080320823_)))
                       (_hd2080420826_
                        (let () (declare (not safe)) (##car _e2080320823_))))
                   (if (gx#stx-null? _tl2080520828_)
                       (___kont3437134372_ _hd2080420826_ _hd2076821307_)
                       (_g2076320810_))))
               (_g2076320810_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2076320810_))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest2073820746_))
                             (let ((_hd2074321424_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest2073820746_)))
                                   (_tl2074421426_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest2073820746_))))
                               (let* ((_hd21429_ _hd2074321424_)
                                      (_rest21431_ _tl2074421426_))
                                 (_K2074221421_ _rest21431_ _hd21429_)))
                             (_else2074020754_)))))))
          (let* ((___stx3445534456_ _stx20594_)
                 (_g2060020627_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx3445534456_))))
            (let ((___kont3445734458_
                   (lambda (_L20687_ _L20688_ _L20689_)
                     (call-with-parameters
                      (lambda ()
                        (let ((_hd20726_
                               (_compile-bindings20597_
                                (foldr1 (lambda (_g2071820721_ _g2071920723_)
                                          (cons _g2071820721_ _g2071920723_))
                                        '()
                                        _L20688_)))
                              (_body20727_ (gxc#compile-e _L20687_)))
                          (gxc#xform-wrap-source
                           (cons _L20689_
                                 (cons _hd20726_ (cons _body20727_ '())))
                           _stx20594_)))
                      gx#current-expander-context
                      (let ((__obj34525 (make-object gx#local-context::t '5)))
                        (gx#local-context:::init!__0 __obj34525)
                        __obj34525))))
                  (___kont3446134462_
                   (lambda () (gxc#xform-let-values% _stx20594_))))
              (let ((___match3448234483_
                     (lambda (_e2060520639_
                              _hd2060620642_
                              _tl2060720644_
                              _e2060820647_
                              _hd2060920650_
                              _tl2061020652_
                              ___splice3445934460_
                              _target2061120655_
                              _tl2061320657_)
                       (letrec ((_loop2061420660_
                                 (lambda (_hd2061220663_ _bind2061820665_)
                                   (if (gx#stx-pair? _hd2061220663_)
                                       (let ((_e2061520668_
                                              (gx#stx-e _hd2061220663_)))
                                         (let ((_lp-tl2061720673_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2061520668_)))
                                               (_lp-hd2061620671_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2061520668_))))
                                           (_loop2061420660_
                                            _lp-tl2061720673_
                                            (cons _lp-hd2061620671_
                                                  _bind2061820665_))))
                                       (let ((_bind2061920676_
                                              (reverse _bind2061820665_)))
                                         (if (gx#stx-pair? _tl2061020652_)
                                             (let ((_e2062020679_
                                                    (gx#stx-e _tl2061020652_)))
                                               (let ((_tl2062220684_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2062020679_)))
                                                     (_hd2062120682_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2062020679_))))
                                                 (if (gx#stx-null?
                                                      _tl2062220684_)
                                                     (let ((_L20687_
                                                            _hd2062120682_)
                                                           (_L20688_
                                                            _bind2061920676_)
                                                           (_L20689_
                                                            _hd2060620642_))
                                                       (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr1 (lambda (_g2071020713_ _g2071120715_)
                                     (cons _g2071020713_ _g2071120715_))
                                   '()
                                   _L20688_))
                   (___kont3445734458_ _L20687_ _L20688_ _L20689_)
                   (___kont3446134462_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont3446134462_))))
                                             (___kont3446134462_)))))))
                         (_loop2061420660_ _target2061120655_ '())))))
                (if (gx#stx-pair? ___stx3445534456_)
                    (let ((_e2060520639_ (gx#stx-e ___stx3445534456_)))
                      (let ((_tl2060720644_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2060520639_)))
                            (_hd2060620642_
                             (let ()
                               (declare (not safe))
                               (##car _e2060520639_))))
                        (if (gx#stx-pair? _tl2060720644_)
                            (let ((_e2060820647_ (gx#stx-e _tl2060720644_)))
                              (let ((_tl2061020652_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2060820647_)))
                                    (_hd2060920650_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2060820647_))))
                                (if (gx#stx-pair/null? _hd2060920650_)
                                    (let ((___splice3445934460_
                                           (gx#syntax-split-splice
                                            _hd2060920650_
                                            '0)))
                                      (let ((_tl2061320657_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3445934460_
                                                '1)))
                                            (_target2061120655_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3445934460_
                                                '0))))
                                        (if (gx#stx-null? _tl2061320657_)
                                            (___match3448234483_
                                             _e2060520639_
                                             _hd2060620642_
                                             _tl2060720644_
                                             _e2060820647_
                                             _hd2060920650_
                                             _tl2061020652_
                                             ___splice3445934460_
                                             _target2061120655_
                                             _tl2061320657_)
                                            (___kont3446134462_))))
                                    (___kont3446134462_))))
                            (___kont3446134462_))))
                    (___kont3446134462_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind20512_)
        (let* ((___stx3448534486_ _bind20512_)
               (_g2051520532_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3448534486_))))
          (let ((___kont3448734488_
                 (lambda (_L20568_ _L20569_)
                   (if (gx#identifier? _L20569_)
                       (let ((_$e20585_ (gxc#case-lambda-expr? _L20568_)))
                         (if _$e20585_
                             _$e20585_
                             (let ((_$e20588_ (gxc#opt-lambda-expr? _L20568_)))
                               (if _$e20588_
                                   _$e20588_
                                   (gxc#kw-lambda-expr? _L20568_)))))
                       '#f)))
                (___kont3448934490_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx3448534486_)
                (let ((_e2051920544_ (gx#stx-e ___stx3448534486_)))
                  (let ((_tl2052120549_
                         (let () (declare (not safe)) (##cdr _e2051920544_)))
                        (_hd2052020547_
                         (let () (declare (not safe)) (##car _e2051920544_))))
                    (if (gx#stx-pair? _hd2052020547_)
                        (let ((_e2052220552_ (gx#stx-e _hd2052020547_)))
                          (let ((_tl2052420557_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2052220552_)))
                                (_hd2052320555_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2052220552_))))
                            (if (gx#stx-null? _tl2052420557_)
                                (if (gx#stx-pair? _tl2052120549_)
                                    (let ((_e2052520560_
                                           (gx#stx-e _tl2052120549_)))
                                      (let ((_tl2052720565_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2052520560_)))
                                            (_hd2052620563_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2052520560_))))
                                        (if (gx#stx-null? _tl2052720565_)
                                            (___kont3448734488_
                                             _hd2052620563_
                                             _hd2052320555_)
                                            (___kont3448934490_))))
                                    (___kont3448934490_))
                                (___kont3448934490_))))
                        (___kont3448934490_))))
                (___kont3448934490_))))))))
