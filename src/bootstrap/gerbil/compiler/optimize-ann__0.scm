(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (inlining-limit 200))
  (define gxc#&optmize-annotated
    (##make-promise
     (lambda ()
       (let ((_tbl41160_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl41160_ (force gxc#&basic-xform))
           (table-set! _tbl41160_ '%#begin-annotation gxc#optimize-annotation%)
           _tbl41160_)))))
  (define gxc#apply-optimize-annotated
    (lambda (_stx41153_ . _args41155_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx41153_ _args41155_))
       gxc#current-compile-methods
       (force gxc#&optmize-annotated))))
  (define gxc#&generate-runtime-repr
    (##make-promise
     (lambda ()
       (let ((_tbl41150_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl41150_ (force gxc#&generate-runtime))
           (table-set! _tbl41150_ '%#quote-syntax identity)
           _tbl41150_)))))
  (define gxc#apply-generate-runtime-repr
    (lambda (_stx41143_ . _args41145_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx41143_ _args41145_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-repr))))
  (define gxc#&push-match-vars
    (##make-promise
     (lambda ()
       (let ((_tbl41140_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl41140_ '%#lambda gxc#xform-lambda%)
           (table-set!
            _tbl41140_
            '%#let-values
            gxc#push-match-vars-let-values%)
           (table-set! _tbl41140_ '%#letrec-values gxc#push-match-vars-stop)
           (table-set! _tbl41140_ '%#if gxc#push-match-vars-if%)
           (table-set! _tbl41140_ '%#call gxc#push-match-vars-call%)
           _tbl41140_)))))
  (define gxc#apply-push-match-vars
    (lambda (_stx41133_ . _args41135_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx41133_ _args41135_))
       gxc#current-compile-methods
       (force gxc#&push-match-vars))))
  (define gxc#current-annotation-optimizer (make-parameter '()))
  (define gxc#optimize-annotation%
    (lambda (_stx41051_)
      (let* ((___stx4117641177_ _stx41051_)
             (_g4105441071_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4117641177_))))
        (let ((___kont4117841179_
               (lambda (_L41107_ _L41108_)
                 (let ((_ann41124_ (gx#stx-e _L41108_)))
                   (call-with-parameters
                    (lambda ()
                      (let ((_$e41127_ _ann41124_))
                        (if (eq? '@match _$e41127_)
                            (begin
                              (gxc#verbose '"Optimizing match expansion")
                              (gxc#optimize-match _L41107_))
                            (if (eq? '@syntax-case _$e41127_)
                                (begin
                                  (gxc#verbose
                                   '"Optimizing syntax-case expansion")
                                  (gxc#optimize-syntax-case _L41107_))
                                (gxc#compile-e _L41107_)))))
                    gxc#current-annotation-optimizer
                    (cons _ann41124_ (gxc#current-annotation-optimizer))))))
              (___kont4118041181_
               (lambda () (gxc#xform-begin-annotation% _stx41051_))))
          (let ((___match4120141202_
                 (lambda (_e4105841083_
                          _hd4105941086_
                          _tl4106041088_
                          _e4106141091_
                          _hd4106241094_
                          _tl4106341096_
                          _e4106441099_
                          _hd4106541102_
                          _tl4106641104_)
                   (let ((_L41107_ _hd4106541102_) (_L41108_ _hd4106241094_))
                     (if (gx#identifier? _L41108_)
                         (___kont4117841179_ _L41107_ _L41108_)
                         (___kont4118041181_))))))
            (if (gx#stx-pair? ___stx4117641177_)
                (let ((_e4105841083_ (gx#stx-e ___stx4117641177_)))
                  (let ((_tl4106041088_ (##cdr _e4105841083_))
                        (_hd4105941086_ (##car _e4105841083_)))
                    (if (gx#stx-pair? _tl4106041088_)
                        (let ((_e4106141091_ (gx#stx-e _tl4106041088_)))
                          (let ((_tl4106341096_ (##cdr _e4106141091_))
                                (_hd4106241094_ (##car _e4106141091_)))
                            (if (gx#stx-pair? _tl4106341096_)
                                (let ((_e4106441099_
                                       (gx#stx-e _tl4106341096_)))
                                  (let ((_tl4106641104_ (##cdr _e4106441099_))
                                        (_hd4106541102_ (##car _e4106441099_)))
                                    (if (gx#stx-null? _tl4106641104_)
                                        (___match4120141202_
                                         _e4105841083_
                                         _hd4105941086_
                                         _tl4106041088_
                                         _e4106141091_
                                         _hd4106241094_
                                         _tl4106341096_
                                         _e4106441099_
                                         _hd4106541102_
                                         _tl4106641104_)
                                        (___kont4118041181_))))
                                (___kont4118041181_))))
                        (___kont4118041181_))))
                (___kont4118041181_)))))))
  (define gxc#optimize-match
    (lambda (_stx40350_)
      (let* ((_g4035240382_
              (lambda (_g4035340379_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4035340379_)))
             (_g4035141048_
              (lambda (_g4035340385_)
                (if (gx#stx-pair? _g4035340385_)
                    (let ((_e4035740387_ (gx#stx-e _g4035340385_)))
                      (let ((_hd4035840390_ (##car _e4035740387_))
                            (_tl4035940392_ (##cdr _e4035740387_)))
                        (if (gx#identifier? _hd4035840390_)
                            (if (gx#stx-eq? '%#let-values _hd4035840390_)
                                (if (gx#stx-pair? _tl4035940392_)
                                    (let ((_e4036040395_
                                           (gx#stx-e _tl4035940392_)))
                                      (let ((_hd4036140398_
                                             (##car _e4036040395_))
                                            (_tl4036240400_
                                             (##cdr _e4036040395_)))
                                        (if (gx#stx-pair? _hd4036140398_)
                                            (let ((_e4036340403_
                                                   (gx#stx-e _hd4036140398_)))
                                              (let ((_hd4036440406_
                                                     (##car _e4036340403_))
                                                    (_tl4036540408_
                                                     (##cdr _e4036340403_)))
                                                (if (gx#stx-pair?
                                                     _hd4036440406_)
                                                    (let ((_e4036640411_
                                                           (gx#stx-e
                                                            _hd4036440406_)))
                                                      (let ((_hd4036740414_
                                                             (##car _e4036640411_))
                                                            (_tl4036840416_
                                                             (##cdr _e4036640411_)))
                                                        (if (gx#stx-pair?
                                                             _hd4036740414_)
                                                            (let ((_e4036940419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd4036740414_)))
                      (let ((_hd4037040422_ (##car _e4036940419_))
                            (_tl4037140424_ (##cdr _e4036940419_)))
                        (if (gx#stx-null? _tl4037140424_)
                            (if (gx#stx-pair? _tl4036840416_)
                                (let ((_e4037240427_
                                       (gx#stx-e _tl4036840416_)))
                                  (let ((_hd4037340430_ (##car _e4037240427_))
                                        (_tl4037440432_ (##cdr _e4037240427_)))
                                    (if (gx#stx-null? _tl4037440432_)
                                        (if (gx#stx-null? _tl4036540408_)
                                            (if (gx#stx-pair? _tl4036240400_)
                                                (let ((_e4037540435_
                                                       (gx#stx-e
                                                        _tl4036240400_)))
                                                  (let ((_hd4037640438_
                                                         (##car _e4037540435_))
                                                        (_tl4037740440_
                                                         (##cdr _e4037540435_)))
                                                    (if (gx#stx-null?
                                                         _tl4037740440_)
                                                        ((lambda (_L40443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L40444_
                          _L40445_)
                   (let _lp40469_ ((_body40471_ _L40443_)
                                   (_negation40472_ (cons _L40445_ _L40444_))
                                   (_clauses40473_ '())
                                   (_konts40474_ '()))
                     (let* ((___stx4138441385_ _body40471_)
                            (_g4047740517_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx4138441385_))))
                       (let ((___kont4138641387_
                              (lambda (_L40847_)
                                (let* ((___stx4132041321_ _L40847_)
                                       (_g4086140891_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx4132041321_))))
                                  (let ((___kont4132241323_
                                         (lambda (_L40987_ _L40988_ _L40989_)
                                           (if (null? _clauses40473_)
                                               (let* ((_negation4101341020_
                                                       _negation40472_)
                                                      (_E4101541024_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _negation4101341020_)))
                                                      (_K4101641030_
                                                       (lambda (_negate41027_
                                                                _E41028_)
                                                         (gxc#xform-wrap-source
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _E41028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons _negate41027_ '()))
                                    '())
                              (cons (cons '%#let-values
                                          (cons (cons (cons (cons _L40989_ '())
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L40988_)
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L40987_ '())))
                                    '())))
                  _stx40350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _negation4101341020_)
                                                     (let ((_hd4101741033_
                                                            (##car _negation4101341020_))
                                                           (_tl4101841035_
                                                            (##cdr _negation4101341020_)))
                                                       (let* ((_E41038_
                                                               _hd4101741033_)
                                                              (_negate41040_
                                                               _tl4101841035_))
                                                         (_K4101641030_
                                                          _negate41040_
                                                          _E41038_)))
                                                     (_E4101541024_)))
                                               (gxc#optimize-match-body
                                                _stx40350_
                                                _negation40472_
                                                (cons (cons '#f
                                                            (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#lambda)
                          (cons '() (cons _L40987_ '()))))
              _clauses40473_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _L40989_
                                                            (gxc#compile-e
                                                             _L40988_))
                                                      _konts40474_)))))
                                        (___kont4132441325_
                                         (lambda ()
                                           (let* ((_negation4089740904_
                                                   _negation40472_)
                                                  (_E4089940908_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _negation4089740904_)))
                                                  (_K4090040914_
                                                   (lambda (_negate40911_
                                                            _E40912_)
                                                     (gxc#xform-wrap-source
                                                      (cons '%#let-values
                                                            (cons (cons (cons (cons _E40912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                            '())
                                      (cons _negate40911_ '()))
                                '())
                          (cons _L40847_ '())))
              _stx40350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _negation4089740904_)
                                                 (let ((_hd4090140917_
                                                        (##car _negation4089740904_))
                                                       (_tl4090240919_
                                                        (##cdr _negation4089740904_)))
                                                   (let* ((_E40922_
                                                           _hd4090140917_)
                                                          (_negate40924_
                                                           _tl4090240919_))
                                                     (_K4090040914_
                                                      _negate40924_
                                                      _E40922_)))
                                                 (_E4089940908_))))))
                                    (let ((_g4086040926_
                                           (lambda ()
                                             (if (null? _clauses40473_)
                                                 (___kont4132441325_)
                                                 (_g4086140891_)))))
                                      (if (gx#stx-pair? ___stx4132041321_)
                                          (let ((_e4086640931_
                                                 (gx#stx-e ___stx4132041321_)))
                                            (let ((_tl4086840936_
                                                   (##cdr _e4086640931_))
                                                  (_hd4086740934_
                                                   (##car _e4086640931_)))
                                              (if (gx#identifier?
                                                   _hd4086740934_)
                                                  (if (gx#stx-eq?
                                                       '%#let-values
                                                       _hd4086740934_)
                                                      (if (gx#stx-pair?
                                                           _tl4086840936_)
                                                          (let ((_e4086940939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4086840936_)))
                    (let ((_tl4087140944_ (##cdr _e4086940939_))
                          (_hd4087040942_ (##car _e4086940939_)))
                      (if (gx#stx-pair? _hd4087040942_)
                          (let ((_e4087240947_ (gx#stx-e _hd4087040942_)))
                            (let ((_tl4087440952_ (##cdr _e4087240947_))
                                  (_hd4087340950_ (##car _e4087240947_)))
                              (if (gx#stx-pair? _hd4087340950_)
                                  (let ((_e4087540955_
                                         (gx#stx-e _hd4087340950_)))
                                    (let ((_tl4087740960_
                                           (##cdr _e4087540955_))
                                          (_hd4087640958_
                                           (##car _e4087540955_)))
                                      (if (gx#stx-pair? _hd4087640958_)
                                          (let ((_e4087840963_
                                                 (gx#stx-e _hd4087640958_)))
                                            (let ((_tl4088040968_
                                                   (##cdr _e4087840963_))
                                                  (_hd4087940966_
                                                   (##car _e4087840963_)))
                                              (if (gx#stx-null? _tl4088040968_)
                                                  (if (gx#stx-pair?
                                                       _tl4087740960_)
                                                      (let ((_e4088140971_
                                                             (gx#stx-e
                                                              _tl4087740960_)))
                                                        (let ((_tl4088340976_
                                                               (##cdr _e4088140971_))
                                                              (_hd4088240974_
                                                               (##car _e4088140971_)))
                                                          (if (gx#stx-null?
                                                               _tl4088340976_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl4087440952_)
                          (if (gx#stx-pair? _tl4087140944_)
                              (let ((_e4088440979_ (gx#stx-e _tl4087140944_)))
                                (let ((_tl4088640984_ (##cdr _e4088440979_))
                                      (_hd4088540982_ (##car _e4088440979_)))
                                  (if (gx#stx-null? _tl4088640984_)
                                      (___kont4132241323_
                                       _hd4088540982_
                                       _hd4088240974_
                                       _hd4087940966_)
                                      (_g4086040926_))))
                              (_g4086040926_))
                          (_g4086040926_))
                      (_g4086040926_))))
              (_g4086040926_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4086040926_))))
                                          (_g4086040926_))))
                                  (_g4086040926_))))
                          (_g4086040926_))))
                  (_g4086040926_))
              (_g4086040926_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4086040926_))))
                                          (_g4086040926_)))))))
                             (___kont4138841389_
                              (lambda (_L40578_ _L40579_ _L40580_)
                                (let* ((___stx4120441205_ _L40579_)
                                       (_g4060740656_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx4120441205_))))
                                  (let ((___kont4120641207_
                                         (lambda (_L40784_ _L40785_ _L40786_)
                                           (_lp40469_
                                            _L40578_
                                            _negation40472_
                                            (cons (cons _L40580_
                                                        (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#lambda)
                                                              (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L40784_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _clauses40473_)
                                            (cons (cons _L40786_
                                                        (gxc#compile-e
                                                         _L40785_))
                                                  _konts40474_))))
                                        (___kont4120841209_
                                         (lambda (_L40685_)
                                           (_lp40469_
                                            _L40578_
                                            (cons _L40580_
                                                  (gxc#compile-e _L40685_))
                                            _clauses40473_
                                            _konts40474_))))
                                    (if (gx#stx-pair? ___stx4120441205_)
                                        (let ((_e4061240704_
                                               (gx#stx-e ___stx4120441205_)))
                                          (let ((_tl4061440709_
                                                 (##cdr _e4061240704_))
                                                (_hd4061340707_
                                                 (##car _e4061240704_)))
                                            (if (gx#identifier? _hd4061340707_)
                                                (if (gx#stx-eq?
                                                     '%#lambda
                                                     _hd4061340707_)
                                                    (if (gx#stx-pair?
                                                         _tl4061440709_)
                                                        (let ((_e4061540712_
                                                               (gx#stx-e
                                                                _tl4061440709_)))
                                                          (let ((_tl4061740717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4061540712_))
                        (_hd4061640715_ (##car _e4061540712_)))
                    (if (gx#stx-null? _hd4061640715_)
                        (if (gx#stx-pair? _tl4061740717_)
                            (let ((_e4061840720_ (gx#stx-e _tl4061740717_)))
                              (let ((_tl4062040725_ (##cdr _e4061840720_))
                                    (_hd4061940723_ (##car _e4061840720_)))
                                (if (gx#stx-pair? _hd4061940723_)
                                    (let ((_e4062140728_
                                           (gx#stx-e _hd4061940723_)))
                                      (let ((_tl4062340733_
                                             (##cdr _e4062140728_))
                                            (_hd4062240731_
                                             (##car _e4062140728_)))
                                        (if (gx#identifier? _hd4062240731_)
                                            (if (gx#stx-eq?
                                                 '%#let-values
                                                 _hd4062240731_)
                                                (if (gx#stx-pair?
                                                     _tl4062340733_)
                                                    (let ((_e4062440736_
                                                           (gx#stx-e
                                                            _tl4062340733_)))
                                                      (let ((_tl4062640741_
                                                             (##cdr _e4062440736_))
                                                            (_hd4062540739_
                                                             (##car _e4062440736_)))
                                                        (if (gx#stx-pair?
                                                             _hd4062540739_)
                                                            (let ((_e4062740744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd4062540739_)))
                      (let ((_tl4062940749_ (##cdr _e4062740744_))
                            (_hd4062840747_ (##car _e4062740744_)))
                        (if (gx#stx-pair? _hd4062840747_)
                            (let ((_e4063040752_ (gx#stx-e _hd4062840747_)))
                              (let ((_tl4063240757_ (##cdr _e4063040752_))
                                    (_hd4063140755_ (##car _e4063040752_)))
                                (if (gx#stx-pair? _hd4063140755_)
                                    (let ((_e4063340760_
                                           (gx#stx-e _hd4063140755_)))
                                      (let ((_tl4063540765_
                                             (##cdr _e4063340760_))
                                            (_hd4063440763_
                                             (##car _e4063340760_)))
                                        (if (gx#stx-null? _tl4063540765_)
                                            (if (gx#stx-pair? _tl4063240757_)
                                                (let ((_e4063640768_
                                                       (gx#stx-e
                                                        _tl4063240757_)))
                                                  (let ((_tl4063840773_
                                                         (##cdr _e4063640768_))
                                                        (_hd4063740771_
                                                         (##car _e4063640768_)))
                                                    (if (gx#stx-null?
                                                         _tl4063840773_)
                                                        (if (gx#stx-null?
                                                             _tl4062940749_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4062640741_)
                        (let ((_e4063940776_ (gx#stx-e _tl4062640741_)))
                          (let ((_tl4064140781_ (##cdr _e4063940776_))
                                (_hd4064040779_ (##car _e4063940776_)))
                            (if (gx#stx-null? _tl4064140781_)
                                (if (gx#stx-null? _tl4062040725_)
                                    (___kont4120641207_
                                     _hd4064040779_
                                     _hd4063740771_
                                     _hd4063440763_)
                                    (_g4060740656_))
                                (_g4060740656_))))
                        (_g4060740656_))
                    (_g4060740656_))
                (_g4060740656_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4060740656_))
                                            (_g4060740656_))))
                                    (_g4060740656_))))
                            (_g4060740656_))))
                    (_g4060740656_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4060740656_))
                                                (_g4060740656_))
                                            (_g4060740656_))))
                                    (_g4060740656_))))
                            (_g4060740656_))
                        (_g4060740656_))))
                (_g4060740656_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#begin-annotation
                                                         _hd4061340707_)
                                                        (if (gx#stx-pair?
                                                             _tl4061440709_)
                                                            (let ((_e4064640669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl4061440709_)))
                      (let ((_tl4064840674_ (##cdr _e4064640669_))
                            (_hd4064740672_ (##car _e4064640669_)))
                        (if (gx#identifier? _hd4064740672_)
                            (if (gx#stx-eq? '@match-else _hd4064740672_)
                                (if (gx#stx-pair? _tl4064840674_)
                                    (let ((_e4064940677_
                                           (gx#stx-e _tl4064840674_)))
                                      (let ((_tl4065140682_
                                             (##cdr _e4064940677_))
                                            (_hd4065040680_
                                             (##car _e4064940677_)))
                                        (if (gx#stx-null? _tl4065140682_)
                                            (___kont4120841209_ _hd4065040680_)
                                            (_g4060740656_))))
                                    (_g4060740656_))
                                (_g4060740656_))
                            (_g4060740656_))))
                    (_g4060740656_))
                (_g4060740656_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4060740656_))))
                                        (_g4060740656_)))))))
                         (if (gx#stx-pair? ___stx4138441385_)
                             (let ((_e4048040823_
                                    (gx#stx-e ___stx4138441385_)))
                               (let ((_tl4048240828_ (##cdr _e4048040823_))
                                     (_hd4048140826_ (##car _e4048040823_)))
                                 (if (gx#identifier? _hd4048140826_)
                                     (if (gx#stx-eq?
                                          '%#begin-annotation
                                          _hd4048140826_)
                                         (if (gx#stx-pair? _tl4048240828_)
                                             (let ((_e4048340831_
                                                    (gx#stx-e _tl4048240828_)))
                                               (let ((_tl4048540836_
                                                      (##cdr _e4048340831_))
                                                     (_hd4048440834_
                                                      (##car _e4048340831_)))
                                                 (if (gx#identifier?
                                                      _hd4048440834_)
                                                     (if (gx#stx-eq?
                                                          '@match-body
                                                          _hd4048440834_)
                                                         (if (gx#stx-pair?
                                                              _tl4048540836_)
                                                             (let ((_e4048640839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl4048540836_)))
                       (let ((_tl4048840844_ (##cdr _e4048640839_))
                             (_hd4048740842_ (##car _e4048640839_)))
                         (if (gx#stx-null? _tl4048840844_)
                             (___kont4138641387_ _hd4048740842_)
                             (_g4047740517_))))
                     (_g4047740517_))
                 (_g4047740517_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g4047740517_))))
                                             (_g4047740517_))
                                         (if (gx#stx-eq?
                                              '%#let-values
                                              _hd4048140826_)
                                             (if (gx#stx-pair? _tl4048240828_)
                                                 (let ((_e4049540530_
                                                        (gx#stx-e
                                                         _tl4048240828_)))
                                                   (let ((_tl4049740535_
                                                          (##cdr _e4049540530_))
                                                         (_hd4049640533_
                                                          (##car _e4049540530_)))
                                                     (if (gx#stx-pair?
                                                          _hd4049640533_)
                                                         (let ((_e4049840538_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd4049640533_)))
                   (let ((_tl4050040543_ (##cdr _e4049840538_))
                         (_hd4049940541_ (##car _e4049840538_)))
                     (if (gx#stx-pair? _hd4049940541_)
                         (let ((_e4050140546_ (gx#stx-e _hd4049940541_)))
                           (let ((_tl4050340551_ (##cdr _e4050140546_))
                                 (_hd4050240549_ (##car _e4050140546_)))
                             (if (gx#stx-pair? _hd4050240549_)
                                 (let ((_e4050440554_
                                        (gx#stx-e _hd4050240549_)))
                                   (let ((_tl4050640559_ (##cdr _e4050440554_))
                                         (_hd4050540557_
                                          (##car _e4050440554_)))
                                     (if (gx#stx-null? _tl4050640559_)
                                         (if (gx#stx-pair? _tl4050340551_)
                                             (let ((_e4050740562_
                                                    (gx#stx-e _tl4050340551_)))
                                               (let ((_tl4050940567_
                                                      (##cdr _e4050740562_))
                                                     (_hd4050840565_
                                                      (##car _e4050740562_)))
                                                 (if (gx#stx-null?
                                                      _tl4050940567_)
                                                     (if (gx#stx-null?
                                                          _tl4050040543_)
                                                         (if (gx#stx-pair?
                                                              _tl4049740535_)
                                                             (let ((_e4051040570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl4049740535_)))
                       (let ((_tl4051240575_ (##cdr _e4051040570_))
                             (_hd4051140573_ (##car _e4051040570_)))
                         (if (gx#stx-null? _tl4051240575_)
                             (___kont4138841389_
                              _hd4051140573_
                              _hd4050840565_
                              _hd4050540557_)
                             (_g4047740517_))))
                     (_g4047740517_))
                 (_g4047740517_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g4047740517_))))
                                             (_g4047740517_))
                                         (_g4047740517_))))
                                 (_g4047740517_))))
                         (_g4047740517_))))
                 (_g4047740517_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g4047740517_))
                                             (_g4047740517_)))
                                     (_g4047740517_))))
                             (_g4047740517_))))))
                 _hd4037640438_
                 _hd4037340430_
                 _hd4037040422_)
                (_g4035240382_ _g4035340385_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4035240382_ _g4035340385_))
                                            (_g4035240382_ _g4035340385_))
                                        (_g4035240382_ _g4035340385_))))
                                (_g4035240382_ _g4035340385_))
                            (_g4035240382_ _g4035340385_))))
                    (_g4035240382_ _g4035340385_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4035240382_
                                                     _g4035340385_))))
                                            (_g4035240382_ _g4035340385_))))
                                    (_g4035240382_ _g4035340385_))
                                (_g4035240382_ _g4035340385_))
                            (_g4035240382_ _g4035340385_))))
                    (_g4035240382_ _g4035340385_)))))
        (_g4035141048_ _stx40350_))))
  (define gxc#optimize-match-body
    (lambda (_stx40056_ _negation40057_ _clauses40058_ _konts40059_)
      (letrec ((_push-variables40061_
                (lambda (_clause40308_ _kont40309_)
                  (let ((_clause4031040320_ _clause40308_)
                        (_kont4031140322_ _kont40309_))
                    (let* ((_E4031340326_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause4031040320_
                                     _kont4031140322_)))
                           (_K4031440333_
                            (lambda (_clause-lambda40329_
                                     _clause-name40330_
                                     _K40331_)
                              (cons _clause-name40330_
                                    (gxc#apply-push-match-vars
                                     _clause-lambda40329_
                                     '()
                                     _K40331_)))))
                      (if (##pair? _clause4031040320_)
                          (let ((_hd4031740336_ (##car _clause4031040320_))
                                (_tl4031840338_ (##cdr _clause4031040320_)))
                            (let* ((_clause-name40341_ _hd4031740336_)
                                   (_clause-lambda40343_ _tl4031840338_))
                              (if (##pair? _kont4031140322_)
                                  (let* ((_hd4031540345_
                                          (##car _kont4031140322_))
                                         (_K40348_ _hd4031540345_))
                                    (_K4031440333_
                                     _clause-lambda40343_
                                     _clause-name40341_
                                     _K40348_))
                                  (_E4031340326_))))
                          (_E4031340326_))))))
               (_start-match40062_
                (lambda (_kont40242_)
                  (let* ((_g4024440260_
                          (lambda (_g4024540257_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g4024540257_)))
                         (_g4024340305_
                          (lambda (_g4024540263_)
                            (if (gx#stx-pair? _g4024540263_)
                                (let ((_e4024740265_ (gx#stx-e _g4024540263_)))
                                  (let ((_hd4024840268_ (##car _e4024740265_))
                                        (_tl4024940270_ (##cdr _e4024740265_)))
                                    (if (gx#identifier? _hd4024840268_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd4024840268_)
                                            (if (gx#stx-pair? _tl4024940270_)
                                                (let ((_e4025040273_
                                                       (gx#stx-e
                                                        _tl4024940270_)))
                                                  (let ((_hd4025140276_
                                                         (##car _e4025040273_))
                                                        (_tl4025240278_
                                                         (##cdr _e4025040273_)))
                                                    (if (gx#stx-null?
                                                         _hd4025140276_)
                                                        (if (gx#stx-pair?
                                                             _tl4025240278_)
                                                            (let ((_e4025340281_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl4025240278_)))
                      (let ((_hd4025440284_ (##car _e4025340281_))
                            (_tl4025540286_ (##cdr _e4025340281_)))
                        (if (gx#stx-null? _tl4025540286_)
                            ((lambda (_L40289_) _L40289_) _hd4025440284_)
                            (_g4024440260_ _g4024540263_))))
                    (_g4024440260_ _g4024540263_))
                (_g4024440260_ _g4024540263_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4024440260_ _g4024540263_))
                                            (_g4024440260_ _g4024540263_))
                                        (_g4024440260_ _g4024540263_))))
                                (_g4024440260_ _g4024540263_)))))
                    (_g4024340305_ _kont40242_))))
               (_match-body40063_
                (lambda (_blocks40139_)
                  (let* ((_blocks4014040149_ _blocks40139_)
                         (_E4014240153_
                          (lambda ()
                            (error '"No clause matching" _blocks4014040149_)))
                         (_K4014340225_
                          (lambda (_rest40156_ _start40157_)
                            (let _lp40159_ ((_rest40161_ _rest40156_)
                                            (_body40162_
                                             (_start-match40062_
                                              _start40157_)))
                              (let* ((_rest4016340171_ _rest40161_)
                                     (_else4016540179_ (lambda () _body40162_))
                                     (_K4016740213_
                                      (lambda (_rest40182_ _block40183_)
                                        (let* ((_block4018440191_ _block40183_)
                                               (_E4018640195_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _block4018440191_)))
                                               (_K4018740201_
                                                (lambda (_kont40198_ _K40199_)
                                                  (_lp40159_
                                                   _rest40182_
                                                   (cons '%#let-values
                                                         (cons (cons (cons (cons _K40199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         '())
                                   (cons _kont40198_ '()))
                             '())
                       (cons _body40162_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _block4018440191_)
                                              (let ((_hd4018840204_
                                                     (##car _block4018440191_))
                                                    (_tl4018940206_
                                                     (##cdr _block4018440191_)))
                                                (let* ((_K40209_
                                                        _hd4018840204_)
                                                       (_kont40211_
                                                        _tl4018940206_))
                                                  (_K4018740201_
                                                   _kont40211_
                                                   _K40209_)))
                                              (_E4018640195_))))))
                                (if (##pair? _rest4016340171_)
                                    (let ((_hd4016840216_
                                           (##car _rest4016340171_))
                                          (_tl4016940218_
                                           (##cdr _rest4016340171_)))
                                      (let* ((_block40221_ _hd4016840216_)
                                             (_rest40223_ _tl4016940218_))
                                        (_K4016740213_
                                         _rest40223_
                                         _block40221_)))
                                    (_else4016540179_)))))))
                    (if (##pair? _blocks4014040149_)
                        (let ((_hd4014440228_ (##car _blocks4014040149_))
                              (_tl4014540230_ (##cdr _blocks4014040149_)))
                          (if (##pair? _hd4014440228_)
                              (let ((_hd4014640233_ (##car _hd4014440228_))
                                    (_tl4014740235_ (##cdr _hd4014440228_)))
                                (if (##eq? _hd4014640233_ '#f)
                                    (let* ((_start40238_ _tl4014740235_)
                                           (_rest40240_ _tl4014540230_))
                                      (_K4014340225_ _rest40240_ _start40238_))
                                    (_E4014240153_)))
                              (_E4014240153_)))
                        (_E4014240153_))))))
        (call-with-parameters
         (lambda ()
           (let* ((_clauses40066_
                   (map _push-variables40061_ _clauses40058_ _konts40059_))
                  (_blocks40068_
                   (gxc#optimize-match-basic-blocks _clauses40066_))
                  (_blocks40070_
                   (gxc#optimize-match-fold-basic-blocks _blocks40068_))
                  (_body40072_ (_match-body40063_ _blocks40070_))
                  (_bind40106_
                   (map (lambda (_e4007340075_)
                          (let* ((_g4007740084_ _e4007340075_)
                                 (_E4007940088_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g4007740084_)))
                                 (_K4008040094_
                                  (lambda (_kont40091_ _K40092_)
                                    (cons (cons _K40092_ '())
                                          (cons _kont40091_ '())))))
                            (if (##pair? _g4007740084_)
                                (let ((_hd4008140097_ (##car _g4007740084_))
                                      (_tl4008240099_ (##cdr _g4007740084_)))
                                  (let* ((_K40102_ _hd4008140097_)
                                         (_kont40104_ _tl4008240099_))
                                    (_K4008040094_ _kont40104_ _K40102_)))
                                (_E4007940088_))))
                        _konts40059_))
                  (_negate40136_
                   (let* ((_negation4010740114_ _negation40057_)
                          (_E4010940118_
                           (lambda ()
                             (error '"No clause matching"
                                    _negation4010740114_)))
                          (_K4011040124_
                           (lambda (_kont40121_ _K40122_)
                             (cons (cons _K40122_ '())
                                   (cons _kont40121_ '())))))
                     (if (##pair? _negation4010740114_)
                         (let ((_hd4011140127_ (##car _negation4010740114_))
                               (_tl4011240129_ (##cdr _negation4010740114_)))
                           (let* ((_K40132_ _hd4011140127_)
                                  (_kont40134_ _tl4011240129_))
                             (_K4011040124_ _kont40134_ _K40132_)))
                         (_E4010940118_)))))
             (gxc#xform-wrap-source
              (cons '%#let-values
                    (cons (cons _negate40136_ '())
                          (cons (cons '%#let-values
                                      (cons _bind40106_
                                            (cons _body40072_ '())))
                                '())))
              _stx40056_)))
         gx#current-expander-context
         (let ((__obj44249 (make-object gx#local-context::t '5)))
           (begin (gx#local-context:::init!__0 __obj44249) __obj44249))))))
  (define gxc#optimize-match-basic-blocks
    (lambda (_clauses40016_)
      (let _lp40018_ ((_rest40020_ _clauses40016_) (_blocks40021_ '()))
        (let* ((_rest4002240030_ _rest40020_)
               (_else4002440038_ (lambda () (reverse _blocks40021_)))
               (_K4002640044_
                (lambda (_rest40041_ _clause40042_)
                  (_lp40018_
                   _rest40041_
                   (gxc#optimize-match-lift-basic-blocks
                    _clause40042_
                    _blocks40021_)))))
          (if (##pair? _rest4002240030_)
              (let ((_hd4002740047_ (##car _rest4002240030_))
                    (_tl4002840049_ (##cdr _rest4002240030_)))
                (let* ((_clause40052_ _hd4002740047_)
                       (_rest40054_ _tl4002840049_))
                  (_K4002640044_ _rest40054_ _clause40052_)))
              (_else4002440038_))))))
  (define gxc#optimize-match-lift-basic-blocks
    (lambda (_clause39360_ _blocks39361_)
      (letrec ((_bind->args39363_
                (lambda (_bind40011_)
                  (foldl1 (lambda (_b40013_ _r40014_)
                            (cons (cons '%#ref (cons (car _b40013_) '()))
                                  _r40014_))
                          '()
                          _bind40011_)))
               (_create-block39364_
                (lambda (_body39960_ _let-bind39961_ _bind39962_ _assert39963_)
                  (let* ((_id39965_ (make-symbol (gensym '__match)))
                         (_id39967_ (gx#core-quote-syntax__0 _id39965_))
                         (_g44252_ (gx#core-bind-runtime!__0 _id39967_))
                         (_block39970_
                          (cons _id39967_
                                (cons _body39960_
                                      (cons _bind39962_
                                            (cons _assert39963_ '())))))
                         (_continue39972_
                          (cons '%#call
                                (cons (cons '%#ref (cons _id39967_ '()))
                                      (_bind->args39363_ _bind39962_))))
                         (_continue40008_
                          (if (null? _let-bind39961_)
                              _continue39972_
                              (let ((_locals40006_
                                     (map (lambda (_e3997339975_)
                                            (let* ((_g3997739984_
                                                    _e3997339975_)
                                                   (_E3997939988_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _g3997739984_)))
                                                   (_K3998039994_
                                                    (lambda (_expr39991_
                                                             _id39992_)
                                                      (cons (cons _id39992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _expr39991_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _g3997739984_)
                                                  (let ((_hd3998139997_
                                                         (##car _g3997739984_))
                                                        (_tl3998239999_
                                                         (##cdr _g3997739984_)))
                                                    (let* ((_id40002_
                                                            _hd3998139997_)
                                                           (_expr40004_
                                                            _tl3998239999_))
                                                      (_K3998039994_
                                                       _expr40004_
                                                       _id40002_)))
                                                  (_E3997939988_))))
                                          _let-bind39961_)))
                                (cons '%#let-values
                                      (cons _locals40006_
                                            (cons _continue39972_ '())))))))
                    (values _continue40008_ _block39970_))))
               (_basic-block39365_
                (lambda (_body39546_ _bind39547_ _assert39548_)
                  (let* ((___stx4149241493_ _body39546_)
                         (_g3955339637_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4149241493_))))
                    (let ((___kont4149441495_
                           (lambda (_L39896_ _L39897_ _L39898_)
                             (let ((_g44253_
                                    (_create-block39364_
                                     _L39897_
                                     '()
                                     _bind39547_
                                     (cons (cons _L39898_ '#t)
                                           _assert39548_))))
                               (begin
                                 (let ((_g44254_
                                        (if (##values? _g44253_)
                                            (##vector-length _g44253_)
                                            1)))
                                   (if (not (##fx= _g44254_ 2))
                                       (error "Context expects 2 values"
                                              _g44254_)))
                                 (let ((_k-continue39916_
                                        (##vector-ref _g44253_ 0))
                                       (_k-block39917_
                                        (##vector-ref _g44253_ 1)))
                                   (let* ((___stx4147441475_ _L39896_)
                                          (_g3992039929_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx4147441475_))))
                                     (let ((___kont4147641477_
                                            (lambda ()
                                              (values (cons '%#if
                                                            (cons _L39898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _k-continue39916_ (cons _L39896_ '()))))
              (cons _k-block39917_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4147841479_
                                            (lambda ()
                                              (let ((_g44255_
                                                     (_create-block39364_
                                                      _L39896_
                                                      '()
                                                      _bind39547_
                                                      (cons (cons _L39898_ '#f)
                                                            _assert39548_))))
                                                (begin
                                                  (let ((_g44256_
                                                         (if (##values?
                                                              _g44255_)
                                                             (##vector-length
                                                              _g44255_)
                                                             1)))
                                                    (if (not (##fx= _g44256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g44256_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_e-continue39936_
                                                         (##vector-ref
                                                          _g44255_
                                                          0))
                                                        (_e-block39937_
                                                         (##vector-ref
                                                          _g44255_
                                                          1)))
                                                    (values (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L39898_
                                (cons _k-continue39916_
                                      (cons _e-continue39936_ '()))))
                    (cons _k-block39917_ (cons _e-block39937_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair? ___stx4147441475_)
                                           (let ((_e3992239944_
                                                  (gx#stx-e
                                                   ___stx4147441475_)))
                                             (let ((_tl3992439949_
                                                    (##cdr _e3992239944_))
                                                   (_hd3992339947_
                                                    (##car _e3992239944_)))
                                               (if (gx#identifier?
                                                    _hd3992339947_)
                                                   (if (gx#stx-eq?
                                                        '%#call
                                                        _hd3992339947_)
                                                       (___kont4147641477_)
                                                       (___kont4147841479_))
                                                   (___kont4147841479_))))
                                           (___kont4147841479_)))))))))
                          (___kont4149641497_
                           (lambda () (values _body39546_ '())))
                          (___kont4150041501_
                           (lambda (_L39725_ _L39726_ _L39727_)
                             (let* ((_let-bind39762_
                                     (map cons
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g3974739750_
                                                             _g3974839752_)
                                                      (cons _g3974739750_
                                                            _g3974839752_))
                                                    '()
                                                    _L39727_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g3975439757_
                                                             _g3975539759_)
                                                      (cons _g3975439757_
                                                            _g3975539759_))
                                                    '()
                                                    _L39726_))))
                                    (_g44257_
                                     (_create-block39364_
                                      _L39725_
                                      _let-bind39762_
                                      (foldl1 cons _bind39547_ _let-bind39762_)
                                      _assert39548_)))
                               (begin
                                 (let ((_g44258_
                                        (if (##values? _g44257_)
                                            (##vector-length _g44257_)
                                            1)))
                                   (if (not (##fx= _g44258_ 2))
                                       (error "Context expects 2 values"
                                              _g44258_)))
                                 (let ((_continue39764_
                                        (##vector-ref _g44257_ 0))
                                       (_block39765_
                                        (##vector-ref _g44257_ 1)))
                                   (let ()
                                     (values _continue39764_
                                             (cons _block39765_ '()))))))))
                          (___kont4150441505_
                           (lambda () (values _body39546_ '()))))
                      (let* ((___match4158341584_
                              (lambda (_e3960439649_
                                       _hd3960539652_
                                       _tl3960639654_
                                       _e3960739657_
                                       _hd3960839660_
                                       _tl3960939662_
                                       ___splice4150241503_
                                       _target3961039665_
                                       _tl3961239667_)
                                (letrec ((_loop3961339670_
                                          (lambda (_hd3961139673_
                                                   _expr3961739675_
                                                   _id3961839677_)
                                            (if (gx#stx-pair? _hd3961139673_)
                                                (let ((_e3961439680_
                                                       (gx#stx-e
                                                        _hd3961139673_)))
                                                  (let ((_lp-tl3961639685_
                                                         (##cdr _e3961439680_))
                                                        (_lp-hd3961539683_
                                                         (##car _e3961439680_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd3961539683_)
                                                        (let ((_e3962139688_
                                                               (gx#stx-e
                                                                _lp-hd3961539683_)))
                                                          (let ((_tl3962339693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3962139688_))
                        (_hd3962239691_ (##car _e3962139688_)))
                    (if (gx#stx-pair? _hd3962239691_)
                        (let ((_e3962439696_ (gx#stx-e _hd3962239691_)))
                          (let ((_tl3962639701_ (##cdr _e3962439696_))
                                (_hd3962539699_ (##car _e3962439696_)))
                            (if (gx#stx-null? _tl3962639701_)
                                (if (gx#stx-pair? _tl3962339693_)
                                    (let ((_e3962739704_
                                           (gx#stx-e _tl3962339693_)))
                                      (let ((_tl3962939709_
                                             (##cdr _e3962739704_))
                                            (_hd3962839707_
                                             (##car _e3962739704_)))
                                        (if (gx#stx-null? _tl3962939709_)
                                            (_loop3961339670_
                                             _lp-tl3961639685_
                                             (cons _hd3962839707_
                                                   _expr3961739675_)
                                             (cons _hd3962539699_
                                                   _id3961839677_))
                                            (___kont4150441505_))))
                                    (___kont4150441505_))
                                (___kont4150441505_))))
                        (___kont4150441505_))))
                (___kont4150441505_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_id3962039714_
                                                       (reverse _id3961839677_))
                                                      (_expr3961939712_
                                                       (reverse _expr3961739675_)))
                                                  (if (gx#stx-pair?
                                                       _tl3960939662_)
                                                      (let ((_e3963039717_
                                                             (gx#stx-e
                                                              _tl3960939662_)))
                                                        (let ((_tl3963239722_
                                                               (##cdr _e3963039717_))
                                                              (_hd3963139720_
                                                               (##car _e3963039717_)))
                                                          (if (gx#stx-null?
                                                               _tl3963239722_)
                                                              (___kont4150041501_
                                                               _hd3963139720_
                                                               _expr3961939712_
                                                               _id3962039714_)
                                                              (___kont4150441505_))))
                                                      (___kont4150441505_)))))))
                                  (_loop3961339670_
                                   _target3961039665_
                                   '()
                                   '()))))
                             (___match4155941560_
                              (lambda (_e3957039773_
                                       _hd3957139776_
                                       _tl3957239778_
                                       _e3957339781_
                                       _hd3957439784_
                                       _tl3957539786_
                                       ___splice4149841499_
                                       _target3957639789_
                                       _tl3957839791_)
                                (letrec ((_loop3957939794_
                                          (lambda (_hd3957739797_)
                                            (if (gx#stx-pair? _hd3957739797_)
                                                (let ((_e3958039800_
                                                       (gx#stx-e
                                                        _hd3957739797_)))
                                                  (let ((_lp-tl3958239805_
                                                         (##cdr _e3958039800_))
                                                        (_lp-hd3958139803_
                                                         (##car _e3958039800_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd3958139803_)
                                                        (let ((_e3958339808_
                                                               (gx#stx-e
                                                                _lp-hd3958139803_)))
                                                          (let ((_tl3958539813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3958339808_))
                        (_hd3958439811_ (##car _e3958339808_)))
                    (if (gx#stx-pair? _hd3958439811_)
                        (let ((_e3958639816_ (gx#stx-e _hd3958439811_)))
                          (let ((_tl3958839821_ (##cdr _e3958639816_))
                                (_hd3958739819_ (##car _e3958639816_)))
                            (if (gx#stx-null? _tl3958839821_)
                                (if (gx#stx-pair? _tl3958539813_)
                                    (let ((_e3958939824_
                                           (gx#stx-e _tl3958539813_)))
                                      (let ((_tl3959139829_
                                             (##cdr _e3958939824_))
                                            (_hd3959039827_
                                             (##car _e3958939824_)))
                                        (if (gx#stx-pair? _hd3959039827_)
                                            (let ((_e3959239832_
                                                   (gx#stx-e _hd3959039827_)))
                                              (let ((_tl3959439837_
                                                     (##cdr _e3959239832_))
                                                    (_hd3959339835_
                                                     (##car _e3959239832_)))
                                                (if (gx#identifier?
                                                     _hd3959339835_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd3959339835_)
                                                        (if (gx#stx-pair?
                                                             _tl3959439837_)
                                                            (let ((_e3959539840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3959439837_)))
                      (let ((_tl3959739845_ (##cdr _e3959539840_))
                            (_hd3959639843_ (##car _e3959539840_)))
                        (if (gx#stx-null? _tl3959739845_)
                            (if (gx#stx-null? _tl3959139829_)
                                (_loop3957939794_ _lp-tl3958239805_)
                                (___match4158341584_
                                 _e3957039773_
                                 _hd3957139776_
                                 _tl3957239778_
                                 _e3957339781_
                                 _hd3957439784_
                                 _tl3957539786_
                                 ___splice4149841499_
                                 _target3957639789_
                                 _tl3957839791_))
                            (___match4158341584_
                             _e3957039773_
                             _hd3957139776_
                             _tl3957239778_
                             _e3957339781_
                             _hd3957439784_
                             _tl3957539786_
                             ___splice4149841499_
                             _target3957639789_
                             _tl3957839791_))))
                    (___match4158341584_
                     _e3957039773_
                     _hd3957139776_
                     _tl3957239778_
                     _e3957339781_
                     _hd3957439784_
                     _tl3957539786_
                     ___splice4149841499_
                     _target3957639789_
                     _tl3957839791_))
                (___match4158341584_
                 _e3957039773_
                 _hd3957139776_
                 _tl3957239778_
                 _e3957339781_
                 _hd3957439784_
                 _tl3957539786_
                 ___splice4149841499_
                 _target3957639789_
                 _tl3957839791_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match4158341584_
                                                     _e3957039773_
                                                     _hd3957139776_
                                                     _tl3957239778_
                                                     _e3957339781_
                                                     _hd3957439784_
                                                     _tl3957539786_
                                                     ___splice4149841499_
                                                     _target3957639789_
                                                     _tl3957839791_))))
                                            (___match4158341584_
                                             _e3957039773_
                                             _hd3957139776_
                                             _tl3957239778_
                                             _e3957339781_
                                             _hd3957439784_
                                             _tl3957539786_
                                             ___splice4149841499_
                                             _target3957639789_
                                             _tl3957839791_))))
                                    (___match4158341584_
                                     _e3957039773_
                                     _hd3957139776_
                                     _tl3957239778_
                                     _e3957339781_
                                     _hd3957439784_
                                     _tl3957539786_
                                     ___splice4149841499_
                                     _target3957639789_
                                     _tl3957839791_))
                                (___match4158341584_
                                 _e3957039773_
                                 _hd3957139776_
                                 _tl3957239778_
                                 _e3957339781_
                                 _hd3957439784_
                                 _tl3957539786_
                                 ___splice4149841499_
                                 _target3957639789_
                                 _tl3957839791_))))
                        (___match4158341584_
                         _e3957039773_
                         _hd3957139776_
                         _tl3957239778_
                         _e3957339781_
                         _hd3957439784_
                         _tl3957539786_
                         ___splice4149841499_
                         _target3957639789_
                         _tl3957839791_))))
                (___match4158341584_
                 _e3957039773_
                 _hd3957139776_
                 _tl3957239778_
                 _e3957339781_
                 _hd3957439784_
                 _tl3957539786_
                 ___splice4149841499_
                 _target3957639789_
                 _tl3957839791_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (if (gx#stx-pair?
                                                       _tl3957539786_)
                                                      (let ((_e3959839849_
                                                             (gx#stx-e
                                                              _tl3957539786_)))
                                                        (let ((_tl3960039854_
                                                               (##cdr _e3959839849_))
                                                              (_hd3959939852_
                                                               (##car _e3959839849_)))
                                                          (if (gx#stx-null?
                                                               _tl3960039854_)
                                                              (___kont4149641497_)
                                                              (___match4158341584_
                                                               _e3957039773_
                                                               _hd3957139776_
                                                               _tl3957239778_
                                                               _e3957339781_
                                                               _hd3957439784_
                                                               _tl3957539786_
                                                               ___splice4149841499_
                                                               _target3957639789_
                                                               _tl3957839791_))))
                                                      (___match4158341584_
                                                       _e3957039773_
                                                       _hd3957139776_
                                                       _tl3957239778_
                                                       _e3957339781_
                                                       _hd3957439784_
                                                       _tl3957539786_
                                                       ___splice4149841499_
                                                       _target3957639789_
                                                       _tl3957839791_)))))))
                                  (_loop3957939794_ _target3957639789_)))))
                        (if (gx#stx-pair? ___stx4149241493_)
                            (let ((_e3955839864_ (gx#stx-e ___stx4149241493_)))
                              (let ((_tl3956039869_ (##cdr _e3955839864_))
                                    (_hd3955939867_ (##car _e3955839864_)))
                                (if (gx#identifier? _hd3955939867_)
                                    (if (gx#stx-eq? '%#if _hd3955939867_)
                                        (if (gx#stx-pair? _tl3956039869_)
                                            (let ((_e3956139872_
                                                   (gx#stx-e _tl3956039869_)))
                                              (let ((_tl3956339877_
                                                     (##cdr _e3956139872_))
                                                    (_hd3956239875_
                                                     (##car _e3956139872_)))
                                                (if (gx#stx-pair?
                                                     _tl3956339877_)
                                                    (let ((_e3956439880_
                                                           (gx#stx-e
                                                            _tl3956339877_)))
                                                      (let ((_tl3956639885_
                                                             (##cdr _e3956439880_))
                                                            (_hd3956539883_
                                                             (##car _e3956439880_)))
                                                        (if (gx#stx-pair?
                                                             _tl3956639885_)
                                                            (let ((_e3956739888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3956639885_)))
                      (let ((_tl3956939893_ (##cdr _e3956739888_))
                            (_hd3956839891_ (##car _e3956739888_)))
                        (if (gx#stx-null? _tl3956939893_)
                            (___kont4149441495_
                             _hd3956839891_
                             _hd3956539883_
                             _hd3956239875_)
                            (___kont4150441505_))))
                    (___kont4150441505_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4150441505_))))
                                            (___kont4150441505_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd3955939867_)
                                            (if (gx#stx-pair? _tl3956039869_)
                                                (let ((_e3957339781_
                                                       (gx#stx-e
                                                        _tl3956039869_)))
                                                  (let ((_tl3957539786_
                                                         (##cdr _e3957339781_))
                                                        (_hd3957439784_
                                                         (##car _e3957339781_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3957439784_)
                                                        (let ((___splice4149841499_
                                                               (gx#syntax-split-splice
                                                                _hd3957439784_
                                                                '0)))
                                                          (let ((_tl3957839791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice4149841499_ '1))
                        (_target3957639789_
                         (##vector-ref ___splice4149841499_ '0)))
                    (if (gx#stx-null? _tl3957839791_)
                        (___match4155941560_
                         _e3955839864_
                         _hd3955939867_
                         _tl3956039869_
                         _e3957339781_
                         _hd3957439784_
                         _tl3957539786_
                         ___splice4149841499_
                         _target3957639789_
                         _tl3957839791_)
                        (___kont4150441505_))))
                (___kont4150441505_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4150441505_))
                                            (___kont4150441505_)))
                                    (___kont4150441505_))))
                            (___kont4150441505_)))))))
               (_fold-blocks39366_
                (lambda (_rest39465_ _blocks39466_)
                  (let* ((_rest3946739484_ _rest39465_)
                         (_E3947039488_
                          (lambda ()
                            (error '"No clause matching" _rest3946739484_))))
                    (let ((_K3947239508_
                           (lambda (_rest39499_
                                    _assert39500_
                                    _bind39501_
                                    _body39502_
                                    _name39503_)
                             (let ((_g44259_
                                    (_basic-block39365_
                                     _body39502_
                                     _bind39501_
                                     _assert39500_)))
                               (begin
                                 (let ((_g44260_
                                        (if (##values? _g44259_)
                                            (##vector-length _g44259_)
                                            1)))
                                   (if (not (##fx= _g44260_ 2))
                                       (error "Context expects 2 values"
                                              _g44260_)))
                                 (let ((_body39505_ (##vector-ref _g44259_ 0))
                                       (_body-blocks39506_
                                        (##vector-ref _g44259_ 1)))
                                   (_fold-blocks39366_
                                    (foldl1 cons
                                            _rest39499_
                                            _body-blocks39506_)
                                    (cons (cons _name39503_
                                                (cons 'continue:
                                                      (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (reverse (map car _bind39501_))
                                (cons _body39505_ '())))
                    (cons _assert39500_ (cons _bind39501_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _blocks39466_)))))))
                          (_K3947139493_ (lambda () _blocks39466_)))
                      (let ((_try-match3946939496_
                             (lambda ()
                               (if (##null? _rest3946739484_)
                                   (_K3947139493_)
                                   (_E3947039488_)))))
                        (if (##pair? _rest3946739484_)
                            (let ((_tl3947439513_ (##cdr _rest3946739484_))
                                  (_hd3947339511_ (##car _rest3946739484_)))
                              (if (##pair? _hd3947339511_)
                                  (let ((_tl3947639518_ (##cdr _hd3947339511_))
                                        (_hd3947539516_
                                         (##car _hd3947339511_)))
                                    (if (##pair? _tl3947639518_)
                                        (let ((_tl3947839525_
                                               (##cdr _tl3947639518_))
                                              (_hd3947739523_
                                               (##car _tl3947639518_)))
                                          (if (##pair? _tl3947839525_)
                                              (let ((_tl3948039532_
                                                     (##cdr _tl3947839525_))
                                                    (_hd3947939530_
                                                     (##car _tl3947839525_)))
                                                (if (##pair? _tl3948039532_)
                                                    (let ((_tl3948239539_
                                                           (##cdr _tl3948039532_))
                                                          (_hd3948139537_
                                                           (##car _tl3948039532_)))
                                                      (if (##null? _tl3948239539_)
                                                          (let ((_name39521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3947539516_)
                        (_body39528_ _hd3947739523_)
                        (_bind39535_ _hd3947939530_)
                        (_assert39542_ _hd3948139537_)
                        (_rest39544_ _tl3947439513_))
                    (_K3947239508_
                     _rest39544_
                     _assert39542_
                     _bind39535_
                     _body39528_
                     _name39521_))
                  (_E3947039488_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E3947039488_)))
                                              (_E3947039488_)))
                                        (_E3947039488_)))
                                  (_E3947039488_)))
                            (_try-match3946939496_))))))))
        (let* ((_clause3936739374_ _clause39360_)
               (_E3936939378_
                (lambda () (error '"No clause matching" _clause3936739374_)))
               (_K3937039453_
                (lambda (_body39381_ _name39382_)
                  (let* ((_g3938439400_
                          (lambda (_g3938539397_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3938539397_)))
                         (_g3938339450_
                          (lambda (_g3938539403_)
                            (if (gx#stx-pair? _g3938539403_)
                                (let ((_e3938739405_ (gx#stx-e _g3938539403_)))
                                  (let ((_hd3938839408_ (##car _e3938739405_))
                                        (_tl3938939410_ (##cdr _e3938739405_)))
                                    (if (gx#identifier? _hd3938839408_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3938839408_)
                                            (if (gx#stx-pair? _tl3938939410_)
                                                (let ((_e3939039413_
                                                       (gx#stx-e
                                                        _tl3938939410_)))
                                                  (let ((_hd3939139416_
                                                         (##car _e3939039413_))
                                                        (_tl3939239418_
                                                         (##cdr _e3939039413_)))
                                                    (if (gx#stx-null?
                                                         _hd3939139416_)
                                                        (if (gx#stx-pair?
                                                             _tl3939239418_)
                                                            (let ((_e3939339421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3939239418_)))
                      (let ((_hd3939439424_ (##car _e3939339421_))
                            (_tl3939539426_ (##cdr _e3939339421_)))
                        (if (gx#stx-null? _tl3939539426_)
                            ((lambda (_L39429_)
                               (let ((_g44261_
                                      (_basic-block39365_ _L39429_ '() '())))
                                 (begin
                                   (let ((_g44262_
                                          (if (##values? _g44261_)
                                              (##vector-length _g44261_)
                                              1)))
                                     (if (not (##fx= _g44262_ 2))
                                         (error "Context expects 2 values"
                                                _g44262_)))
                                   (let ((_body39447_
                                          (##vector-ref _g44261_ 0))
                                         (_body-blocks39448_
                                          (##vector-ref _g44261_ 1)))
                                     (_fold-blocks39366_
                                      _body-blocks39448_
                                      (cons (cons _name39382_
                                                  (cons 'restart:
                                                        (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons '() (cons _body39447_ '())))
                      (cons '() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _blocks39361_))))))
                             _hd3939439424_)
                            (_g3938439400_ _g3938539403_))))
                    (_g3938439400_ _g3938539403_))
                (_g3938439400_ _g3938539403_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3938439400_ _g3938539403_))
                                            (_g3938439400_ _g3938539403_))
                                        (_g3938439400_ _g3938539403_))))
                                (_g3938439400_ _g3938539403_)))))
                    (_g3938339450_ _body39381_)))))
          (if (##pair? _clause3936739374_)
              (let ((_hd3937139456_ (##car _clause3936739374_))
                    (_tl3937239458_ (##cdr _clause3936739374_)))
                (let* ((_name39461_ _hd3937139456_)
                       (_body39463_ _tl3937239458_))
                  (_K3937039453_ _body39463_ _name39461_)))
              (_E3936939378_))))))
  (define gxc#optimize-match-fold-basic-blocks
    (lambda (_blocks38966_)
      (let _lp38968_ ((_rest38970_ _blocks38966_) (_blocks38971_ '()))
        (let* ((_rest3897238980_ _rest38970_)
               (_else3897439029_
                (lambda ()
                  (foldl1 (lambda (_block38988_ _r38989_)
                            (let* ((_block3899039001_ _block38988_)
                                   (_E3899239005_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _block3899039001_)))
                                   (_K3899339011_
                                    (lambda (_kont39008_ _name39009_)
                                      (cons (cons _name39009_ _kont39008_)
                                            _r38989_))))
                              (if (##pair? _block3899039001_)
                                  (let ((_hd3899439014_
                                         (##car _block3899039001_))
                                        (_tl3899539016_
                                         (##cdr _block3899039001_)))
                                    (let ((_name39019_ _hd3899439014_))
                                      (if (##pair? _tl3899539016_)
                                          (let ((_tl3899739021_
                                                 (##cdr _tl3899539016_)))
                                            (if (##pair? _tl3899739021_)
                                                (let* ((_hd3899839024_
                                                        (##car _tl3899739021_))
                                                       (_kont39027_
                                                        _hd3899839024_))
                                                  (_K3899339011_
                                                   _kont39027_
                                                   _name39019_))
                                                (_E3899239005_)))
                                          (_E3899239005_))))
                                  (_E3899239005_))))
                          '()
                          _blocks38971_)))
               (_K3897639348_
                (lambda (_rest39032_ _block39033_)
                  (let* ((_block3903439059_ _block39033_)
                         (_E3903739063_
                          (lambda ()
                            (error '"No clause matching" _block3903439059_))))
                    (let ((_K3904939319_
                           (lambda (_assert39241_ _kont39242_ _name39243_)
                             (let* ((_g3924539261_
                                     (lambda (_g3924639258_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3924639258_)))
                                    (_g3924439316_
                                     (lambda (_g3924639264_)
                                       (if (gx#stx-pair? _g3924639264_)
                                           (let ((_e3924839266_
                                                  (gx#stx-e _g3924639264_)))
                                             (let ((_hd3924939269_
                                                    (##car _e3924839266_))
                                                   (_tl3925039271_
                                                    (##cdr _e3924839266_)))
                                               (if (gx#identifier?
                                                    _hd3924939269_)
                                                   (if (gx#stx-eq?
                                                        '%#lambda
                                                        _hd3924939269_)
                                                       (if (gx#stx-pair?
                                                            _tl3925039271_)
                                                           (let ((_e3925139274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3925039271_)))
                     (let ((_hd3925239277_ (##car _e3925139274_))
                           (_tl3925339279_ (##cdr _e3925139274_)))
                       (if (gx#stx-null? _hd3925239277_)
                           (if (gx#stx-pair? _tl3925339279_)
                               (let ((_e3925439282_ (gx#stx-e _tl3925339279_)))
                                 (let ((_hd3925539285_ (##car _e3925439282_))
                                       (_tl3925639287_ (##cdr _e3925439282_)))
                                   (if (gx#stx-null? _tl3925639287_)
                                       ((lambda (_L39290_)
                                          (let* ((_body39305_
                                                  (gxc#optimize-match-block
                                                   _L39290_
                                                   _assert39241_
                                                   '()
                                                   _rest39032_))
                                                 (_block39307_
                                                  (cons _name39243_
                                                        (cons 'restart:
                                                              (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '() (cons _body39305_ '())))
                            (cons _assert39241_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_blocks39309_
                                                  (cons _block39307_
                                                        _blocks38971_))
                                                 (_rest39311_
                                                  (gxc#optimize-match-prune-blocks
                                                   _rest39032_
                                                   _blocks39309_))
                                                 (_rest39313_
                                                  (gxc#optimize-match-fuse-restart-blocks
                                                   _rest39311_
                                                   _blocks39309_)))
                                            (_lp38968_
                                             _rest39313_
                                             _blocks39309_)))
                                        _hd3925539285_)
                                       (_g3924539261_ _g3924639264_))))
                               (_g3924539261_ _g3924639264_))
                           (_g3924539261_ _g3924639264_))))
                   (_g3924539261_ _g3924639264_))
               (_g3924539261_ _g3924639264_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3924539261_
                                                    _g3924639264_))))
                                           (_g3924539261_ _g3924639264_)))))
                               (_g3924439316_ _kont39242_))))
                          (_K3903839202_
                           (lambda (_bind39067_
                                    _assert39068_
                                    _kont39069_
                                    _name39070_)
                             (let* ((_g3907239098_
                                     (lambda (_g3907339095_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3907339095_)))
                                    (_g3907139199_
                                     (lambda (_g3907339101_)
                                       (if (gx#stx-pair? _g3907339101_)
                                           (let ((_e3907639103_
                                                  (gx#stx-e _g3907339101_)))
                                             (let ((_hd3907739106_
                                                    (##car _e3907639103_))
                                                   (_tl3907839108_
                                                    (##cdr _e3907639103_)))
                                               (if (gx#identifier?
                                                    _hd3907739106_)
                                                   (if (gx#stx-eq?
                                                        '%#lambda
                                                        _hd3907739106_)
                                                       (if (gx#stx-pair?
                                                            _tl3907839108_)
                                                           (let ((_e3907939111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3907839108_)))
                     (let ((_hd3908039114_ (##car _e3907939111_))
                           (_tl3908139116_ (##cdr _e3907939111_)))
                       (if (gx#stx-pair/null? _hd3908039114_)
                           (let ((_g44263_
                                  (gx#syntax-split-splice _hd3908039114_ '0)))
                             (begin
                               (let ((_g44264_
                                      (if (##values? _g44263_)
                                          (##vector-length _g44263_)
                                          1)))
                                 (if (not (##fx= _g44264_ 2))
                                     (error "Context expects 2 values"
                                            _g44264_)))
                               (let ((_target3908239119_
                                      (##vector-ref _g44263_ 0))
                                     (_tl3908439121_
                                      (##vector-ref _g44263_ 1)))
                                 (if (gx#stx-null? _tl3908439121_)
                                     (letrec ((_loop3908539124_
                                               (lambda (_hd3908339127_
                                                        _id3908939129_)
                                                 (if (gx#stx-pair?
                                                      _hd3908339127_)
                                                     (let ((_e3908639132_
                                                            (gx#stx-e
                                                             _hd3908339127_)))
                                                       (let ((_lp-hd3908739135_
                                                              (##car _e3908639132_))
                                                             (_lp-tl3908839137_
                                                              (##cdr _e3908639132_)))
                                                         (_loop3908539124_
                                                          _lp-tl3908839137_
                                                          (cons _lp-hd3908739135_
                                                                _id3908939129_))))
                                                     (let ((_id3909039140_
                                                            (reverse _id3908939129_)))
                                                       (if (gx#stx-pair?
                                                            _tl3908139116_)
                                                           (let ((_e3909139143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3908139116_)))
                     (let ((_hd3909239146_ (##car _e3909139143_))
                           (_tl3909339148_ (##cdr _e3909139143_)))
                       (if (gx#stx-null? _tl3909339148_)
                           ((lambda (_L39151_ _L39152_)
                              (let* ((_body39181_
                                      (gxc#optimize-match-block
                                       _L39151_
                                       _assert39068_
                                       _bind39067_
                                       _rest39032_))
                                     (_block39190_
                                      (cons _name39070_
                                            (cons 'continue:
                                                  (cons (cons '%#lambda
                                                              (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g3918239185_ _g3918339187_)
                                        (cons _g3918239185_ _g3918339187_))
                                      '()
                                      _L39152_))
                            (cons _body39181_ '())))
                (cons _assert39068_ (cons _bind39067_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_blocks39192_
                                      (cons _block39190_ _blocks38971_))
                                     (_rest39194_
                                      (gxc#optimize-match-prune-blocks
                                       _rest39032_
                                       _blocks39192_))
                                     (_rest39196_
                                      (gxc#optimize-match-fuse-restart-blocks
                                       _rest39194_
                                       _blocks39192_)))
                                (_lp38968_ _rest39196_ _blocks39192_)))
                            _hd3909239146_
                            _id3909039140_)
                           (_g3907239098_ _g3907339101_))))
                   (_g3907239098_ _g3907339101_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop3908539124_
                                        _target3908239119_
                                        '()))
                                     (_g3907239098_ _g3907339101_)))))
                           (_g3907239098_ _g3907339101_))))
                   (_g3907239098_ _g3907339101_))
               (_g3907239098_ _g3907339101_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3907239098_
                                                    _g3907339101_))))
                                           (_g3907239098_ _g3907339101_)))))
                               (_g3907139199_ _kont39069_)))))
                      (if (##pair? _block3903439059_)
                          (let ((_tl3905139324_ (##cdr _block3903439059_))
                                (_hd3905039322_ (##car _block3903439059_)))
                            (if (##pair? _tl3905139324_)
                                (let ((_tl3905339331_ (##cdr _tl3905139324_))
                                      (_hd3905239329_ (##car _tl3905139324_)))
                                  (if (##eq? _hd3905239329_ 'restart:)
                                      (if (##pair? _tl3905339331_)
                                          (let ((_tl3905539336_
                                                 (##cdr _tl3905339331_))
                                                (_hd3905439334_
                                                 (##car _tl3905339331_)))
                                            (if (##pair? _tl3905539336_)
                                                (let ((_tl3905739343_
                                                       (##cdr _tl3905539336_))
                                                      (_hd3905639341_
                                                       (##car _tl3905539336_)))
                                                  (if (##null? _tl3905739343_)
                                                      (let ((_name39327_
                                                             _hd3905039322_)
                                                            (_kont39339_
                                                             _hd3905439334_)
                                                            (_assert39346_
                                                             _hd3905639341_))
                                                        (_K3904939319_
                                                         _assert39346_
                                                         _kont39339_
                                                         _name39327_))
                                                      (_E3903739063_)))
                                                (_E3903739063_)))
                                          (_E3903739063_))
                                      (if (##eq? _hd3905239329_ 'continue:)
                                          (if (##pair? _tl3905339331_)
                                              (let ((_tl3904439219_
                                                     (##cdr _tl3905339331_))
                                                    (_hd3904339217_
                                                     (##car _tl3905339331_)))
                                                (if (##pair? _tl3904439219_)
                                                    (let ((_tl3904639226_
                                                           (##cdr _tl3904439219_))
                                                          (_hd3904539224_
                                                           (##car _tl3904439219_)))
                                                      (if (##pair? _tl3904639226_)
                                                          (let ((_tl3904839233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _tl3904639226_))
                        (_hd3904739231_ (##car _tl3904639226_)))
                    (if (##null? _tl3904839233_)
                        (let ((_name39210_ _hd3905039322_)
                              (_kont39222_ _hd3904339217_)
                              (_assert39229_ _hd3904539224_)
                              (_bind39236_ _hd3904739231_))
                          (_K3903839202_
                           _bind39236_
                           _assert39229_
                           _kont39222_
                           _name39210_))
                        (_E3903739063_)))
                  (_E3903739063_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E3903739063_)))
                                              (_E3903739063_))
                                          (_E3903739063_))))
                                (_E3903739063_)))
                          (_E3903739063_)))))))
          (if (##pair? _rest3897238980_)
              (let ((_hd3897739351_ (##car _rest3897238980_))
                    (_tl3897839353_ (##cdr _rest3897238980_)))
                (let* ((_block39356_ _hd3897739351_)
                       (_rest39358_ _tl3897839353_))
                  (_K3897639348_ _rest39358_ _block39356_)))
              (_else3897439029_))))))
  (define gxc#optimize-match-block
    (lambda (_body33589_ _assert33590_ _bind33591_ _blocks33592_)
      (letrec* ((_env-assert33827_ '())
                (_env-type33828_ '())
                (_env-bind33829_ '())
                (_in-splice?33830_ '#f)
                (_do-assert33831_
                 (lambda (_assert38889_ _K38890_)
                   (if (pair? _assert38889_)
                       (let _lp38892_ ((_rest38894_ _assert38889_)
                                       (_env-assert38895_ _env-assert33827_)
                                       (_env-type38896_ _env-type33828_))
                         (let* ((_rest3889738905_ _rest38894_)
                                (_else3889938913_
                                 (lambda ()
                                   (_do-assert!33837_
                                    _env-assert38895_
                                    _env-type38896_
                                    _K38890_)))
                                (_K3890138954_
                                 (lambda (_rest38916_ _assert38917_)
                                   (let* ((_assert3891838925_ _assert38917_)
                                          (_E3892038929_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _assert3891838925_)))
                                          (_K3892138942_
                                           (lambda (_val38932_ _expr38933_)
                                             (let* ((_sexpr38935_
                                                     (gxc#apply-generate-runtime-repr
                                                      _expr38933_))
                                                    (_env-assert38937_
                                                     (cons (cons _sexpr38935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _val38932_)
                   _env-assert38895_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_env-type38939_
                                                     (_fold-assert-type33833_
                                                      _expr38933_
                                                      _val38932_
                                                      _env-type38896_)))
                                               (_lp38892_
                                                _rest38916_
                                                _env-assert38937_
                                                _env-type38939_)))))
                                     (if (##pair? _assert3891838925_)
                                         (let ((_hd3892238945_
                                                (##car _assert3891838925_))
                                               (_tl3892338947_
                                                (##cdr _assert3891838925_)))
                                           (let* ((_expr38950_ _hd3892238945_)
                                                  (_val38952_ _tl3892338947_))
                                             (_K3892138942_
                                              _val38952_
                                              _expr38950_)))
                                         (_E3892038929_))))))
                           (if (##pair? _rest3889738905_)
                               (let ((_hd3890238957_ (##car _rest3889738905_))
                                     (_tl3890338959_ (##cdr _rest3889738905_)))
                                 (let* ((_assert38962_ _hd3890238957_)
                                        (_rest38964_ _tl3890338959_))
                                   (_K3890138954_ _rest38964_ _assert38962_)))
                               (_else3889938913_))))
                       (_K38890_))))
                (_predicate-type33832_
                 (lambda (_id38834_)
                   (let* ((_sym38836_ (gxc#identifier-symbol _id38834_))
                          (_$e38838_ _sym38836_))
                     (let ((_default3884038871_
                            (lambda ()
                              (let* ((_g3884338850_
                                      (gxc#optimizer-resolve-type _sym38836_))
                                     (_else3884538858_ (lambda () '#f))
                                     (_K3884738863_
                                      (lambda (_struct-t38861_)
                                        (gxc#optimizer-resolve-type
                                         _struct-t38861_))))
                                (if (##structure-instance-of?
                                     _g3884338850_
                                     'gxc#!struct-pred::t)
                                    (let* ((_e3884838866_
                                            (##vector-ref _g3884338850_ '1))
                                           (_struct-t38869_ _e3884838866_))
                                      (gxc#optimizer-resolve-type
                                       _struct-t38869_))
                                    (_else3884538858_)))))
                           (_table3884138873_
                            '#(#f
                               (##box? . 3)
                               #f
                               (##pair? . 0)
                               #f
                               (gx#stx-vector? . 7)
                               (gx#identifier? . 4)
                               #f
                               #f
                               #f
                               (vector? . 2)
                               #f
                               #f
                               #f
                               #f
                               #f
                               (null? . 1)
                               #f
                               #f
                               #f
                               #f
                               (gx#stx-pair? . 5)
                               #f
                               (gx#stx-null? . 6)
                               #f
                               #f
                               #f
                               (##vector? . 2)
                               #f
                               (pair? . 0)
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               (gx#stx-datum? . 9)
                               (box? . 3)
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               (##null? . 1)
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               (gx#stx-box? . 8)
                               #f
                               #f
                               #f)))
                       (if (symbol? _$e38838_)
                           (let* ((_h38876_ (##symbol-hash _$e38838_))
                                  (_ix38879_ (##fxmodulo _h38876_ '63))
                                  (_q38882_
                                   (##vector-ref _table3884138873_ _ix38879_)))
                             (if _q38882_
                                 (if (eq? (##car _q38882_) _$e38838_)
                                     (let ((_x38886_ (##cdr _q38882_)))
                                       (if (##fx< _x38886_ '5)
                                           (if (##fx< _x38886_ '2)
                                               (if (##fx= _x38886_ '0)
                                                   'pair
                                                   'null)
                                               (if (##fx= _x38886_ '2)
                                                   'vector
                                                   (if (##fx= _x38886_ '3)
                                                       'box
                                                       'identifier)))
                                           (if (##fx< _x38886_ '7)
                                               (if (##fx= _x38886_ '5)
                                                   'stx-pair
                                                   'stx-null)
                                               (if (##fx= _x38886_ '7)
                                                   'stx-vector
                                                   (if (##fx= _x38886_ '8)
                                                       'stx-box
                                                       'stx-datum)))))
                                     (_default3884038871_))
                                 (_default3884038871_)))
                           (_default3884038871_))))))
                (_fold-assert-type33833_
                 (lambda (_expr37782_ _val37783_ _env37784_)
                   (let* ((___stx4175041751_ _expr37782_)
                          (_g3779237971_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4175041751_))))
                     (let ((___kont4175241753_
                            (lambda (_L38803_ _L38804_)
                              (let ((_$e38826_
                                     (_predicate-type33832_ _L38804_)))
                                (if _$e38826_
                                    ((lambda (_t38829_)
                                       (cons (cons _L38803_
                                                   (cons _t38829_
                                                         (cons _val37783_
                                                               '())))
                                             _env37784_))
                                     _$e38826_)
                                    _env37784_))))
                           (___kont4175441755_
                            (lambda (_L38493_ _L38494_ _L38495_)
                              (let ((_$e38520_
                                     (gxc#identifier-symbol _L38495_)))
                                (if (let ((_$e38523_ (eq? '##fx= _$e38520_)))
                                      (if _$e38523_
                                          _$e38523_
                                          (eq? 'fx= _$e38520_)))
                                    (let* ((___stx4165641657_ _L38494_)
                                           (_g3852738556_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               ___stx4165641657_))))
                                      (let ((___kont4165841659_
                                             (lambda (_L38624_ _L38625_)
                                               (let ((_$e38650_
                                                      (_countf-symbol33834_
                                                       _L38625_)))
                                                 (if _$e38650_
                                                     ((lambda (_sym38653_)
                                                        (cons (cons _L38624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _sym38653_
                                  (cons (gx#stx-e _L38493_)
                                        (cons _val37783_ '()))))
                      _env37784_))
              _$e38650_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _env37784_))))
                                            (___kont4166041661_
                                             (lambda () _env37784_)))
                                        (if (gx#stx-pair? ___stx4165641657_)
                                            (let ((_e3853138568_
                                                   (gx#stx-e
                                                    ___stx4165641657_)))
                                              (let ((_tl3853338573_
                                                     (##cdr _e3853138568_))
                                                    (_hd3853238571_
                                                     (##car _e3853138568_)))
                                                (if (gx#identifier?
                                                     _hd3853238571_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd3853238571_)
                                                        (if (gx#stx-pair?
                                                             _tl3853338573_)
                                                            (let ((_e3853438576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3853338573_)))
                      (let ((_tl3853638581_ (##cdr _e3853438576_))
                            (_hd3853538579_ (##car _e3853438576_)))
                        (if (gx#stx-pair? _hd3853538579_)
                            (let ((_e3853738584_ (gx#stx-e _hd3853538579_)))
                              (let ((_tl3853938589_ (##cdr _e3853738584_))
                                    (_hd3853838587_ (##car _e3853738584_)))
                                (if (gx#identifier? _hd3853838587_)
                                    (if (gx#stx-eq? '%#ref _hd3853838587_)
                                        (if (gx#stx-pair? _tl3853938589_)
                                            (let ((_e3854038592_
                                                   (gx#stx-e _tl3853938589_)))
                                              (let ((_tl3854238597_
                                                     (##cdr _e3854038592_))
                                                    (_hd3854138595_
                                                     (##car _e3854038592_)))
                                                (if (gx#stx-null?
                                                     _tl3854238597_)
                                                    (if (gx#stx-pair?
                                                         _tl3853638581_)
                                                        (let ((_e3854338600_
                                                               (gx#stx-e
                                                                _tl3853638581_)))
                                                          (let ((_tl3854538605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3854338600_))
                        (_hd3854438603_ (##car _e3854338600_)))
                    (if (gx#stx-pair? _hd3854438603_)
                        (let ((_e3854638608_ (gx#stx-e _hd3854438603_)))
                          (let ((_tl3854838613_ (##cdr _e3854638608_))
                                (_hd3854738611_ (##car _e3854638608_)))
                            (if (gx#identifier? _hd3854738611_)
                                (if (gx#stx-eq? '%#ref _hd3854738611_)
                                    (if (gx#stx-pair? _tl3854838613_)
                                        (let ((_e3854938616_
                                               (gx#stx-e _tl3854838613_)))
                                          (let ((_tl3855138621_
                                                 (##cdr _e3854938616_))
                                                (_hd3855038619_
                                                 (##car _e3854938616_)))
                                            (if (gx#stx-null? _tl3855138621_)
                                                (if (gx#stx-null?
                                                     _tl3854538605_)
                                                    (___kont4165841659_
                                                     _hd3855038619_
                                                     _hd3854138595_)
                                                    (___kont4166041661_))
                                                (___kont4166041661_))))
                                        (___kont4166041661_))
                                    (___kont4166041661_))
                                (___kont4166041661_))))
                        (___kont4166041661_))))
                (___kont4166041661_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4166041661_))))
                                            (___kont4166041661_))
                                        (___kont4166041661_))
                                    (___kont4166041661_))))
                            (___kont4166041661_))))
                    (___kont4166041661_))
                (___kont4166041661_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4166041661_))))
                                            (___kont4166041661_))))
                                    (if (let ((_$e38658_
                                               (eq? '##eq? _$e38520_)))
                                          (if _$e38658_
                                              _$e38658_
                                              (let ((_$e38661_
                                                     (eq? 'eq? _$e38520_)))
                                                (if _$e38661_
                                                    _$e38661_
                                                    (let ((_$e38664_
                                                           (eq? '##eqv?
                                                                _$e38520_)))
                                                      (if _$e38664_
                                                          _$e38664_
                                                          (let ((_$e38667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (eq? 'eqv? _$e38520_)))
                    (if _$e38667_
                        _$e38667_
                        (let ((_$e38670_ (eq? '##equal? _$e38520_)))
                          (if _$e38670_
                              _$e38670_
                              (let ((_$e38673_ (eq? 'equal? _$e38520_)))
                                (if _$e38673_
                                    _$e38673_
                                    (let ((_$e38676_
                                           (eq? 'gx#free-identifier=?
                                                _$e38520_)))
                                      (if _$e38676_
                                          _$e38676_
                                          (eq? 'gx#stx-eq?
                                               _$e38520_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        ((lambda (_sym38679_)
                                           (let* ((_sym38681_
                                                   (_eqf-symbol33835_
                                                    _sym38679_))
                                                  (___stx4172441725_ _L38494_)
                                                  (_g3868438697_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      ___stx4172441725_))))
                                             (let ((___kont4172641727_
                                                    (lambda (_L38725_)
                                                      (cons (cons _L38725_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _sym38681_
                                (cons (gx#stx-e _L38493_)
                                      (cons _val37783_ '()))))
                    _env37784_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4172841729_
                                                    (lambda () _env37784_)))
                                               (if (gx#stx-pair?
                                                    ___stx4172441725_)
                                                   (let ((_e3868738709_
                                                          (gx#stx-e
                                                           ___stx4172441725_)))
                                                     (let ((_tl3868938714_
                                                            (##cdr _e3868738709_))
                                                           (_hd3868838712_
                                                            (##car _e3868738709_)))
                                                       (if (gx#identifier?
                                                            _hd3868838712_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd3868838712_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3868938714_)
                           (let ((_e3869038717_ (gx#stx-e _tl3868938714_)))
                             (let ((_tl3869238722_ (##cdr _e3869038717_))
                                   (_hd3869138720_ (##car _e3869038717_)))
                               (if (gx#stx-null? _tl3869238722_)
                                   (___kont4172641727_ _hd3869138720_)
                                   (___kont4172841729_))))
                           (___kont4172841729_))
                       (___kont4172841729_))
                   (___kont4172841729_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4172841729_)))))
                                         _$e38520_)
                                        _env37784_)))))
                           (___kont4175641757_
                            (lambda (_L38397_ _L38398_ _L38399_)
                              (_fold-assert-type33833_
                               (cons (gx#datum->syntax__0 '#f '%#call)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)
                                                 (cons _L38399_ '()))
                                           (cons _L38397_
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#quote)
                                                             (cons _L38398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _val37783_
                               _env37784_)))
                           (___kont4175841759_
                            (lambda (_L38287_ _L38288_ _L38289_)
                              (let ((_$e38318_
                                     (gxc#identifier-symbol _L38289_)))
                                (if (let ((_$e38321_
                                           (eq? 'gx#free-identifier=?
                                                _$e38318_)))
                                      (if _$e38321_
                                          _$e38321_
                                          (eq? 'gx#stx-eq? _$e38318_)))
                                    ((lambda (_sym38324_)
                                       (let ((_sym38326_
                                              (_eqf-symbol33835_ _sym38324_)))
                                         (cons (cons _L38288_
                                                     (cons _sym38326_
                                                           (cons _L38287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _val37783_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _env37784_)))
                                     _$e38318_)
                                    _env37784_))))
                           (___kont4176041761_
                            (lambda (_L38171_ _L38172_ _L38173_)
                              (_fold-assert-type33833_
                               (cons (gx#datum->syntax__0 '#f '%#call)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)
                                                 (cons _L38173_ '()))
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        '%#ref)
                                                       (cons _L38171_ '()))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#quote-syntax)
                                                             (cons _L38172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _val37783_
                               _env37784_)))
                           (___kont4176241763_
                            (lambda (_L38055_ _L38056_ _L38057_)
                              (_fold-assert-type33833_
                               (gxc#apply-expression-subst
                                _L38056_
                                _L38057_
                                _L38055_)
                               _val37783_
                               _env37784_)))
                           (___kont4176441765_ (lambda () _env37784_)))
                       (if (gx#stx-pair? ___stx4175041751_)
                           (let ((_e3779638747_ (gx#stx-e ___stx4175041751_)))
                             (let ((_tl3779838752_ (##cdr _e3779638747_))
                                   (_hd3779738750_ (##car _e3779638747_)))
                               (if (gx#identifier? _hd3779738750_)
                                   (if (gx#stx-eq? '%#call _hd3779738750_)
                                       (if (gx#stx-pair? _tl3779838752_)
                                           (let ((_e3779938755_
                                                  (gx#stx-e _tl3779838752_)))
                                             (let ((_tl3780138760_
                                                    (##cdr _e3779938755_))
                                                   (_hd3780038758_
                                                    (##car _e3779938755_)))
                                               (if (gx#stx-pair?
                                                    _hd3780038758_)
                                                   (let ((_e3780238763_
                                                          (gx#stx-e
                                                           _hd3780038758_)))
                                                     (let ((_tl3780438768_
                                                            (##cdr _e3780238763_))
                                                           (_hd3780338766_
                                                            (##car _e3780238763_)))
                                                       (if (gx#identifier?
                                                            _hd3780338766_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd3780338766_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3780438768_)
                           (let ((_e3780538771_ (gx#stx-e _tl3780438768_)))
                             (let ((_tl3780738776_ (##cdr _e3780538771_))
                                   (_hd3780638774_ (##car _e3780538771_)))
                               (if (gx#stx-null? _tl3780738776_)
                                   (if (gx#stx-pair? _tl3780138760_)
                                       (let ((_e3780838779_
                                              (gx#stx-e _tl3780138760_)))
                                         (let ((_tl3781038784_
                                                (##cdr _e3780838779_))
                                               (_hd3780938782_
                                                (##car _e3780838779_)))
                                           (if (gx#stx-pair? _hd3780938782_)
                                               (let ((_e3781138787_
                                                      (gx#stx-e
                                                       _hd3780938782_)))
                                                 (let ((_tl3781338792_
                                                        (##cdr _e3781138787_))
                                                       (_hd3781238790_
                                                        (##car _e3781138787_)))
                                                   (if (gx#identifier?
                                                        _hd3781238790_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd3781238790_)
                                                           (if (gx#stx-pair?
                                                                _tl3781338792_)
                                                               (let ((_e3781438795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3781338792_)))
                         (let ((_tl3781638800_ (##cdr _e3781438795_))
                               (_hd3781538798_ (##car _e3781438795_)))
                           (if (gx#stx-null? _tl3781638800_)
                               (if (gx#stx-null? _tl3781038784_)
                                   (___kont4175241753_
                                    _hd3781538798_
                                    _hd3780638774_)
                                   (if (gx#stx-pair? _tl3781038784_)
                                       (let ((_e3783538469_
                                              (gx#stx-e _tl3781038784_)))
                                         (let ((_tl3783738474_
                                                (##cdr _e3783538469_))
                                               (_hd3783638472_
                                                (##car _e3783538469_)))
                                           (if (gx#stx-pair? _hd3783638472_)
                                               (let ((_e3783838477_
                                                      (gx#stx-e
                                                       _hd3783638472_)))
                                                 (let ((_tl3784038482_
                                                        (##cdr _e3783838477_))
                                                       (_hd3783938480_
                                                        (##car _e3783838477_)))
                                                   (if (gx#identifier?
                                                        _hd3783938480_)
                                                       (if (gx#stx-eq?
                                                            '%#quote
                                                            _hd3783938480_)
                                                           (if (gx#stx-pair?
                                                                _tl3784038482_)
                                                               (let ((_e3784138485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3784038482_)))
                         (let ((_tl3784338490_ (##cdr _e3784138485_))
                               (_hd3784238488_ (##car _e3784138485_)))
                           (if (gx#stx-null? _tl3784338490_)
                               (if (gx#stx-null? _tl3783738474_)
                                   (___kont4175441755_
                                    _hd3784238488_
                                    _hd3780938782_
                                    _hd3780638774_)
                                   (___kont4176441765_))
                               (___kont4176441765_))))
                       (___kont4176441765_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3783938480_)
                       (if (gx#stx-pair? _tl3784038482_)
                           (let ((_e3790138279_ (gx#stx-e _tl3784038482_)))
                             (let ((_tl3790338284_ (##cdr _e3790138279_))
                                   (_hd3790238282_ (##car _e3790138279_)))
                               (if (gx#stx-null? _tl3790338284_)
                                   (if (gx#stx-null? _tl3783738474_)
                                       (___kont4175841759_
                                        _hd3790238282_
                                        _hd3781538798_
                                        _hd3780638774_)
                                       (___kont4176441765_))
                                   (___kont4176441765_))))
                           (___kont4176441765_))
                       (___kont4176441765_)))
               (___kont4176441765_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4176441765_))))
                                       (___kont4176441765_)))
                               (if (gx#stx-pair? _tl3781038784_)
                                   (let ((_e3783538469_
                                          (gx#stx-e _tl3781038784_)))
                                     (let ((_tl3783738474_
                                            (##cdr _e3783538469_))
                                           (_hd3783638472_
                                            (##car _e3783538469_)))
                                       (if (gx#stx-pair? _hd3783638472_)
                                           (let ((_e3783838477_
                                                  (gx#stx-e _hd3783638472_)))
                                             (let ((_tl3784038482_
                                                    (##cdr _e3783838477_))
                                                   (_hd3783938480_
                                                    (##car _e3783838477_)))
                                               (if (gx#identifier?
                                                    _hd3783938480_)
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3783938480_)
                                                       (if (gx#stx-pair?
                                                            _tl3784038482_)
                                                           (let ((_e3784138485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3784038482_)))
                     (let ((_tl3784338490_ (##cdr _e3784138485_))
                           (_hd3784238488_ (##car _e3784138485_)))
                       (if (gx#stx-null? _tl3784338490_)
                           (if (gx#stx-null? _tl3783738474_)
                               (___kont4175441755_
                                _hd3784238488_
                                _hd3780938782_
                                _hd3780638774_)
                               (___kont4176441765_))
                           (___kont4176441765_))))
                   (___kont4176441765_))
               (___kont4176441765_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4176441765_))))
                                           (___kont4176441765_))))
                                   (___kont4176441765_)))))
                       (if (gx#stx-pair? _tl3781038784_)
                           (let ((_e3783538469_ (gx#stx-e _tl3781038784_)))
                             (let ((_tl3783738474_ (##cdr _e3783538469_))
                                   (_hd3783638472_ (##car _e3783538469_)))
                               (if (gx#stx-pair? _hd3783638472_)
                                   (let ((_e3783838477_
                                          (gx#stx-e _hd3783638472_)))
                                     (let ((_tl3784038482_
                                            (##cdr _e3783838477_))
                                           (_hd3783938480_
                                            (##car _e3783838477_)))
                                       (if (gx#identifier? _hd3783938480_)
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3783938480_)
                                               (if (gx#stx-pair?
                                                    _tl3784038482_)
                                                   (let ((_e3784138485_
                                                          (gx#stx-e
                                                           _tl3784038482_)))
                                                     (let ((_tl3784338490_
                                                            (##cdr _e3784138485_))
                                                           (_hd3784238488_
                                                            (##car _e3784138485_)))
                                                       (if (gx#stx-null?
                                                            _tl3784338490_)
                                                           (if (gx#stx-null?
                                                                _tl3783738474_)
                                                               (___kont4175441755_
                                                                _hd3784238488_
                                                                _hd3780938782_
                                                                _hd3780638774_)
                                                               (___kont4176441765_))
                                                           (___kont4176441765_))))
                                                   (___kont4176441765_))
                                               (___kont4176441765_))
                                           (___kont4176441765_))))
                                   (___kont4176441765_))))
                           (___kont4176441765_)))
                   (if (gx#stx-pair? _tl3781038784_)
                       (let ((_e3783538469_ (gx#stx-e _tl3781038784_)))
                         (let ((_tl3783738474_ (##cdr _e3783538469_))
                               (_hd3783638472_ (##car _e3783538469_)))
                           (if (gx#stx-pair? _hd3783638472_)
                               (let ((_e3783838477_ (gx#stx-e _hd3783638472_)))
                                 (let ((_tl3784038482_ (##cdr _e3783838477_))
                                       (_hd3783938480_ (##car _e3783838477_)))
                                   (if (gx#identifier? _hd3783938480_)
                                       (if (gx#stx-eq? '%#quote _hd3783938480_)
                                           (if (gx#stx-pair? _tl3784038482_)
                                               (let ((_e3784138485_
                                                      (gx#stx-e
                                                       _tl3784038482_)))
                                                 (let ((_tl3784338490_
                                                        (##cdr _e3784138485_))
                                                       (_hd3784238488_
                                                        (##car _e3784138485_)))
                                                   (if (gx#stx-null?
                                                        _tl3784338490_)
                                                       (if (gx#stx-null?
                                                            _tl3783738474_)
                                                           (___kont4175441755_
                                                            _hd3784238488_
                                                            _hd3780938782_
                                                            _hd3780638774_)
                                                           (if (gx#stx-eq?
                                                                '%#quote
                                                                _hd3781238790_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3781338792_)
                           (let ((_e3786538381_ (gx#stx-e _tl3781338792_)))
                             (let ((_tl3786738386_ (##cdr _e3786538381_))
                                   (_hd3786638384_ (##car _e3786538381_)))
                               (___kont4176441765_)))
                           (___kont4176441765_))
                       (if (gx#stx-eq? '%#quote-syntax _hd3781238790_)
                           (if (gx#stx-pair? _tl3781338792_)
                               (let ((_e3792538139_ (gx#stx-e _tl3781338792_)))
                                 (let ((_tl3792738144_ (##cdr _e3792538139_))
                                       (_hd3792638142_ (##car _e3792538139_)))
                                   (___kont4176441765_)))
                               (___kont4176441765_))
                           (___kont4176441765_))))
               (if (gx#stx-eq? '%#quote _hd3781238790_)
                   (if (gx#stx-pair? _tl3781338792_)
                       (let ((_e3786538381_ (gx#stx-e _tl3781338792_)))
                         (let ((_tl3786738386_ (##cdr _e3786538381_))
                               (_hd3786638384_ (##car _e3786538381_)))
                           (if (gx#stx-null? _tl3786738386_)
                               (if (gx#stx-null? _tl3783738474_)
                                   (___kont4175641757_
                                    _hd3783638472_
                                    _hd3786638384_
                                    _hd3780638774_)
                                   (___kont4176441765_))
                               (___kont4176441765_))))
                       (___kont4176441765_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3781238790_)
                       (if (gx#stx-pair? _tl3781338792_)
                           (let ((_e3792538139_ (gx#stx-e _tl3781338792_)))
                             (let ((_tl3792738144_ (##cdr _e3792538139_))
                                   (_hd3792638142_ (##car _e3792538139_)))
                               (___kont4176441765_)))
                           (___kont4176441765_))
                       (___kont4176441765_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3781238790_)
                                                   (if (gx#stx-pair?
                                                        _tl3781338792_)
                                                       (let ((_e3786538381_
                                                              (gx#stx-e
                                                               _tl3781338792_)))
                                                         (let ((_tl3786738386_
                                                                (##cdr _e3786538381_))
                                                               (_hd3786638384_
                                                                (##car _e3786538381_)))
                                                           (if (gx#stx-null?
                                                                _tl3786738386_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3783738474_)
                           (___kont4175641757_
                            _hd3783638472_
                            _hd3786638384_
                            _hd3780638774_)
                           (___kont4176441765_))
                       (___kont4176441765_))))
               (___kont4176441765_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote-syntax
                                                        _hd3781238790_)
                                                       (if (gx#stx-pair?
                                                            _tl3781338792_)
                                                           (let ((_e3792538139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3781338792_)))
                     (let ((_tl3792738144_ (##cdr _e3792538139_))
                           (_hd3792638142_ (##car _e3792538139_)))
                       (___kont4176441765_)))
                   (___kont4176441765_))
               (___kont4176441765_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3781238790_)
                                               (if (gx#stx-pair?
                                                    _tl3781338792_)
                                                   (let ((_e3786538381_
                                                          (gx#stx-e
                                                           _tl3781338792_)))
                                                     (let ((_tl3786738386_
                                                            (##cdr _e3786538381_))
                                                           (_hd3786638384_
                                                            (##car _e3786538381_)))
                                                       (if (gx#stx-null?
                                                            _tl3786738386_)
                                                           (if (gx#stx-null?
                                                                _tl3783738474_)
                                                               (___kont4175641757_
                                                                _hd3783638472_
                                                                _hd3786638384_
                                                                _hd3780638774_)
                                                               (___kont4176441765_))
                                                           (___kont4176441765_))))
                                                   (___kont4176441765_))
                                               (if (gx#stx-eq?
                                                    '%#quote-syntax
                                                    _hd3781238790_)
                                                   (if (gx#stx-pair?
                                                        _tl3781338792_)
                                                       (let ((_e3792538139_
                                                              (gx#stx-e
                                                               _tl3781338792_)))
                                                         (let ((_tl3792738144_
                                                                (##cdr _e3792538139_))
                                                               (_hd3792638142_
                                                                (##car _e3792538139_)))
                                                           (if (gx#stx-null?
                                                                _tl3792738144_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3783938480_)
                           (if (gx#stx-pair? _tl3784038482_)
                               (let ((_e3793438163_ (gx#stx-e _tl3784038482_)))
                                 (let ((_tl3793638168_ (##cdr _e3793438163_))
                                       (_hd3793538166_ (##car _e3793438163_)))
                                   (if (gx#stx-null? _tl3793638168_)
                                       (if (gx#stx-null? _tl3783738474_)
                                           (___kont4176041761_
                                            _hd3793538166_
                                            _hd3792638142_
                                            _hd3780638774_)
                                           (___kont4176441765_))
                                       (___kont4176441765_))))
                               (___kont4176441765_))
                           (___kont4176441765_))
                       (___kont4176441765_))))
               (___kont4176441765_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4176441765_))))
                                       (if (gx#stx-eq? '%#quote _hd3781238790_)
                                           (if (gx#stx-pair? _tl3781338792_)
                                               (let ((_e3786538381_
                                                      (gx#stx-e
                                                       _tl3781338792_)))
                                                 (let ((_tl3786738386_
                                                        (##cdr _e3786538381_))
                                                       (_hd3786638384_
                                                        (##car _e3786538381_)))
                                                   (if (gx#stx-null?
                                                        _tl3786738386_)
                                                       (if (gx#stx-null?
                                                            _tl3783738474_)
                                                           (___kont4175641757_
                                                            _hd3783638472_
                                                            _hd3786638384_
                                                            _hd3780638774_)
                                                           (___kont4176441765_))
                                                       (___kont4176441765_))))
                                               (___kont4176441765_))
                                           (if (gx#stx-eq?
                                                '%#quote-syntax
                                                _hd3781238790_)
                                               (if (gx#stx-pair?
                                                    _tl3781338792_)
                                                   (let ((_e3792538139_
                                                          (gx#stx-e
                                                           _tl3781338792_)))
                                                     (let ((_tl3792738144_
                                                            (##cdr _e3792538139_))
                                                           (_hd3792638142_
                                                            (##car _e3792538139_)))
                                                       (___kont4176441765_)))
                                                   (___kont4176441765_))
                                               (___kont4176441765_))))))
                               (if (gx#stx-eq? '%#quote _hd3781238790_)
                                   (if (gx#stx-pair? _tl3781338792_)
                                       (let ((_e3786538381_
                                              (gx#stx-e _tl3781338792_)))
                                         (let ((_tl3786738386_
                                                (##cdr _e3786538381_))
                                               (_hd3786638384_
                                                (##car _e3786538381_)))
                                           (if (gx#stx-null? _tl3786738386_)
                                               (if (gx#stx-null?
                                                    _tl3783738474_)
                                                   (___kont4175641757_
                                                    _hd3783638472_
                                                    _hd3786638384_
                                                    _hd3780638774_)
                                                   (___kont4176441765_))
                                               (___kont4176441765_))))
                                       (___kont4176441765_))
                                   (if (gx#stx-eq?
                                        '%#quote-syntax
                                        _hd3781238790_)
                                       (if (gx#stx-pair? _tl3781338792_)
                                           (let ((_e3792538139_
                                                  (gx#stx-e _tl3781338792_)))
                                             (let ((_tl3792738144_
                                                    (##cdr _e3792538139_))
                                                   (_hd3792638142_
                                                    (##car _e3792538139_)))
                                               (___kont4176441765_)))
                                           (___kont4176441765_))
                                       (___kont4176441765_))))))
                       (if (gx#stx-eq? '%#quote _hd3781238790_)
                           (if (gx#stx-pair? _tl3781338792_)
                               (let ((_e3786538381_ (gx#stx-e _tl3781338792_)))
                                 (let ((_tl3786738386_ (##cdr _e3786538381_))
                                       (_hd3786638384_ (##car _e3786538381_)))
                                   (___kont4176441765_)))
                               (___kont4176441765_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3781238790_)
                               (if (gx#stx-pair? _tl3781338792_)
                                   (let ((_e3792538139_
                                          (gx#stx-e _tl3781338792_)))
                                     (let ((_tl3792738144_
                                            (##cdr _e3792538139_))
                                           (_hd3792638142_
                                            (##car _e3792538139_)))
                                       (___kont4176441765_)))
                                   (___kont4176441765_))
                               (___kont4176441765_)))))
               (if (gx#stx-pair? _tl3781038784_)
                   (let ((_e3783538469_ (gx#stx-e _tl3781038784_)))
                     (let ((_tl3783738474_ (##cdr _e3783538469_))
                           (_hd3783638472_ (##car _e3783538469_)))
                       (if (gx#stx-pair? _hd3783638472_)
                           (let ((_e3783838477_ (gx#stx-e _hd3783638472_)))
                             (let ((_tl3784038482_ (##cdr _e3783838477_))
                                   (_hd3783938480_ (##car _e3783838477_)))
                               (if (gx#identifier? _hd3783938480_)
                                   (if (gx#stx-eq? '%#quote _hd3783938480_)
                                       (if (gx#stx-pair? _tl3784038482_)
                                           (let ((_e3784138485_
                                                  (gx#stx-e _tl3784038482_)))
                                             (let ((_tl3784338490_
                                                    (##cdr _e3784138485_))
                                                   (_hd3784238488_
                                                    (##car _e3784138485_)))
                                               (if (gx#stx-null?
                                                    _tl3784338490_)
                                                   (if (gx#stx-null?
                                                        _tl3783738474_)
                                                       (___kont4175441755_
                                                        _hd3784238488_
                                                        _hd3780938782_
                                                        _hd3780638774_)
                                                       (___kont4176441765_))
                                                   (___kont4176441765_))))
                                           (___kont4176441765_))
                                       (___kont4176441765_))
                                   (___kont4176441765_))))
                           (___kont4176441765_))))
                   (___kont4176441765_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair?
                                                    _tl3781038784_)
                                                   (let ((_e3783538469_
                                                          (gx#stx-e
                                                           _tl3781038784_)))
                                                     (let ((_tl3783738474_
                                                            (##cdr _e3783538469_))
                                                           (_hd3783638472_
                                                            (##car _e3783538469_)))
                                                       (if (gx#stx-pair?
                                                            _hd3783638472_)
                                                           (let ((_e3783838477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3783638472_)))
                     (let ((_tl3784038482_ (##cdr _e3783838477_))
                           (_hd3783938480_ (##car _e3783838477_)))
                       (if (gx#identifier? _hd3783938480_)
                           (if (gx#stx-eq? '%#quote _hd3783938480_)
                               (if (gx#stx-pair? _tl3784038482_)
                                   (let ((_e3784138485_
                                          (gx#stx-e _tl3784038482_)))
                                     (let ((_tl3784338490_
                                            (##cdr _e3784138485_))
                                           (_hd3784238488_
                                            (##car _e3784138485_)))
                                       (if (gx#stx-null? _tl3784338490_)
                                           (if (gx#stx-null? _tl3783738474_)
                                               (___kont4175441755_
                                                _hd3784238488_
                                                _hd3780938782_
                                                _hd3780638774_)
                                               (___kont4176441765_))
                                           (___kont4176441765_))))
                                   (___kont4176441765_))
                               (___kont4176441765_))
                           (___kont4176441765_))))
                   (___kont4176441765_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4176441765_)))))
                                       (___kont4176441765_))
                                   (___kont4176441765_))))
                           (___kont4176441765_))
                       (if (gx#stx-eq? '%#lambda _hd3780338766_)
                           (if (gx#stx-pair? _tl3780438768_)
                               (let ((_e3794938007_ (gx#stx-e _tl3780438768_)))
                                 (let ((_tl3795138012_ (##cdr _e3794938007_))
                                       (_hd3795038010_ (##car _e3794938007_)))
                                   (if (gx#stx-pair? _hd3795038010_)
                                       (let ((_e3795238015_
                                              (gx#stx-e _hd3795038010_)))
                                         (let ((_tl3795438020_
                                                (##cdr _e3795238015_))
                                               (_hd3795338018_
                                                (##car _e3795238015_)))
                                           (if (gx#stx-null? _tl3795438020_)
                                               (if (gx#stx-pair?
                                                    _tl3795138012_)
                                                   (let ((_e3795538023_
                                                          (gx#stx-e
                                                           _tl3795138012_)))
                                                     (let ((_tl3795738028_
                                                            (##cdr _e3795538023_))
                                                           (_hd3795638026_
                                                            (##car _e3795538023_)))
                                                       (if (gx#stx-null?
                                                            _tl3795738028_)
                                                           (if (gx#stx-pair?
                                                                _tl3780138760_)
                                                               (let ((_e3795838031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3780138760_)))
                         (let ((_tl3796038036_ (##cdr _e3795838031_))
                               (_hd3795938034_ (##car _e3795838031_)))
                           (if (gx#stx-pair? _hd3795938034_)
                               (let ((_e3796138039_ (gx#stx-e _hd3795938034_)))
                                 (let ((_tl3796338044_ (##cdr _e3796138039_))
                                       (_hd3796238042_ (##car _e3796138039_)))
                                   (if (gx#identifier? _hd3796238042_)
                                       (if (gx#stx-eq? '%#ref _hd3796238042_)
                                           (if (gx#stx-pair? _tl3796338044_)
                                               (let ((_e3796438047_
                                                      (gx#stx-e
                                                       _tl3796338044_)))
                                                 (let ((_tl3796638052_
                                                        (##cdr _e3796438047_))
                                                       (_hd3796538050_
                                                        (##car _e3796438047_)))
                                                   (if (gx#stx-null?
                                                        _tl3796638052_)
                                                       (if (gx#stx-null?
                                                            _tl3796038036_)
                                                           (___kont4176241763_
                                                            _hd3796538050_
                                                            _hd3795638026_
                                                            _hd3795338018_)
                                                           (___kont4176441765_))
                                                       (___kont4176441765_))))
                                               (___kont4176441765_))
                                           (___kont4176441765_))
                                       (___kont4176441765_))))
                               (___kont4176441765_))))
                       (___kont4176441765_))
                   (___kont4176441765_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4176441765_))
                                               (___kont4176441765_))))
                                       (___kont4176441765_))))
                               (___kont4176441765_))
                           (___kont4176441765_)))
                   (___kont4176441765_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4176441765_))))
                                           (___kont4176441765_))
                                       (___kont4176441765_))
                                   (___kont4176441765_))))
                           (___kont4176441765_))))))
                (_countf-symbol33834_
                 (lambda (_id37774_)
                   (let ((_$e37776_ (gxc#identifier-symbol _id37774_)))
                     (if (let ((_$e37779_ (eq? '##vector-length _$e37776_)))
                           (if _$e37779_
                               _$e37779_
                               (eq? 'vector-length _$e37776_)))
                         'vector-length
                         (if (eq? 'values-count _$e37776_)
                             'values-count
                             '#f)))))
                (_eqf-symbol33835_
                 (lambda (_sym37760_)
                   (let ((_$e37762_ _sym37760_))
                     (if (let ((_$e37765_ (eq? '##eq? _$e37762_)))
                           (if _$e37765_ _$e37765_ (eq? 'eq? _$e37762_)))
                         'eq?
                         (if (let ((_$e37768_ (eq? '##eqv? _$e37762_)))
                               (if _$e37768_ _$e37768_ (eq? 'eqv? _$e37762_)))
                             'eqv?
                             (if (let ((_$e37771_ (eq? '##equal? _$e37762_)))
                                   (if _$e37771_
                                       _$e37771_
                                       (eq? 'equal? _$e37762_)))
                                 'equal?
                                 (if (eq? 'gx#free-identifier=? _$e37762_)
                                     'free-identifier=?
                                     (if (eq? 'gx#stx-eq? _$e37762_)
                                         'stx-eq?
                                         '#f))))))))
                (_eqf-symbol?33836_
                 (lambda (_sym37743_)
                   (let ((_$e37745_ _sym37743_))
                     (if (let ((_$e37748_ (eq? 'eq? _$e37745_)))
                           (if _$e37748_
                               _$e37748_
                               (let ((_$e37751_ (eq? 'eqv? _$e37745_)))
                                 (if _$e37751_
                                     _$e37751_
                                     (let ((_$e37754_ (eq? 'equal? _$e37745_)))
                                       (if _$e37754_
                                           _$e37754_
                                           (let ((_$e37757_
                                                  (eq? 'free-identifier=?
                                                       _$e37745_)))
                                             (if _$e37757_
                                                 _$e37757_
                                                 (eq? 'stx-eq?
                                                      _$e37745_)))))))))
                         '#t
                         '#f))))
                (_do-assert!33837_
                 (lambda (_assert37734_ _type37735_ _K37736_)
                   (let ((_unwind-assert37738_ _env-assert33827_)
                         (_unwind-type37739_ _env-type33828_))
                     (begin
                       (set! _env-assert33827_ _assert37734_)
                       (set! _env-type33828_ _type37735_)
                       (let ((_val37741_ (_K37736_)))
                         (begin
                           (set! _env-assert33827_ _unwind-assert37738_)
                           (set! _env-type33828_ _unwind-type37739_)
                           _val37741_))))))
                (_do-bind33838_
                 (lambda (_bind37731_ _K37732_)
                   (if (pair? _bind37731_)
                       (_do-bind!33840_
                        (_fold-bind-env33839_ _bind37731_ _env-bind33829_)
                        _K37732_)
                       (_K37732_))))
                (_fold-bind-env33839_
                 (lambda (_bind37660_ _env37661_)
                   (let _lp37663_ ((_rest37665_ _bind37660_)
                                   (_env37666_ _env37661_))
                     (let* ((_rest3766737675_ _rest37665_)
                            (_else3766937683_ (lambda () _env37666_))
                            (_K3767137719_
                             (lambda (_rest37686_ _bind37687_)
                               (let* ((_bind3768837695_ _bind37687_)
                                      (_E3769037699_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _bind3768837695_)))
                                      (_K3769137707_
                                       (lambda (_expr37702_ _id37703_)
                                         (let ((_sexpr37705_
                                                (gxc#apply-generate-runtime-repr
                                                 _expr37702_)))
                                           (_lp37663_
                                            _rest37686_
                                            (cons (cons _sexpr37705_ _id37703_)
                                                  _env37666_))))))
                                 (if (##pair? _bind3768837695_)
                                     (let ((_hd3769237710_
                                            (##car _bind3768837695_))
                                           (_tl3769337712_
                                            (##cdr _bind3768837695_)))
                                       (let* ((_id37715_ _hd3769237710_)
                                              (_expr37717_ _tl3769337712_))
                                         (_K3769137707_
                                          _expr37717_
                                          _id37715_)))
                                     (_E3769037699_))))))
                       (if (##pair? _rest3766737675_)
                           (let ((_hd3767237722_ (##car _rest3766737675_))
                                 (_tl3767337724_ (##cdr _rest3766737675_)))
                             (let* ((_bind37727_ _hd3767237722_)
                                    (_rest37729_ _tl3767337724_))
                               (_K3767137719_ _rest37729_ _bind37727_)))
                           (_else3766937683_))))))
                (_do-bind!33840_
                 (lambda (_env37653_ _K37654_)
                   (let ((_unwind37656_ _env-bind33829_))
                     (begin
                       (set! _env-bind33829_ _env37653_)
                       (let ((_val37658_ (_K37654_)))
                         (begin
                           (set! _env-bind33829_ _unwind37656_)
                           _val37658_))))))
                (_do-splice!33841_
                 (lambda (_K37647_)
                   (let ((_unwind37649_ _in-splice?33830_))
                     (begin
                       (set! _in-splice?33830_ '#t)
                       (let ((_val37651_ (_K37647_)))
                         (begin
                           (set! _in-splice?33830_ _unwind37649_)
                           _val37651_))))))
                (_optimize-e33842_
                 (lambda (_expr36844_)
                   (let* ((___stx4220242203_ _expr36844_)
                          (_g3685137024_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4220242203_))))
                     (let ((___kont4220442205_
                            (lambda (_L37619_ _L37620_ _L37621_)
                              (let ((_$e37638_ (_assert-e33845_ _L37621_)))
                                (if (eq? '#t _$e37638_)
                                    (_optimize-e33842_ _L37620_)
                                    (if (eq? '#f _$e37638_)
                                        (_optimize-e33842_ _L37619_)
                                        (let ((_K37641_
                                               (_optimize-t__0__4116541166_
                                                _L37620_
                                                _L37621_))
                                              (_E37642_
                                               (_optimize-f__4116741168_
                                                _L37619_
                                                _L37621_)))
                                          (if (equal? (gxc#apply-generate-runtime-repr
                                                       _K37641_)
                                                      (gxc#apply-generate-runtime-repr
                                                       _E37642_))
                                              _K37641_
                                              (cons '%#if
                                                    (cons _L37621_
                                                          (cons _K37641_
                                                                (cons _E37642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (___kont4220642207_
                            (lambda (_L37549_ _L37550_)
                              (let ((_$e37570_ (_lookup-block33850_ _L37550_)))
                                (if _$e37570_
                                    ((lambda (_block37573_)
                                       (if (_nonlinear-block?33852_
                                            _block37573_)
                                           _expr36844_
                                           (_optimize-e33842_
                                            (_inline-block33851_
                                             _block37573_
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g3757437577_
                                                                _g3757537579_)
                                                         (cons _g3757437577_
                                                               _g3757537579_))
                                                       '()
                                                       _L37549_))))))
                                     _$e37570_)
                                    _expr36844_))))
                           (___kont4221042211_
                            (lambda (_L37439_ _L37440_ _L37441_)
                              (let ((_body37460_ (_optimize-e33842_ _L37439_)))
                                (cons '%#let-values
                                      (cons (begin
                                              (gx#syntax-check-splice-targets
                                               _L37440_
                                               _L37441_)
                                              (foldr2 (lambda (_g3746137465_
                                                               _g3746237467_
                                                               _g3746337469_)
                                                        (cons (cons (cons _g3746237467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                        (cons _g3746137465_ '()))
                                  '()))
                      _g3746337469_))
              '()
              _L37440_
              _L37441_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _body37460_ '()))))))
                           (___kont4221442215_
                            (lambda (_L37307_ _L37308_ _L37309_)
                              (_bind-e__0__4117341174_
                               (map cons
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3732737330_
                                                       _g3732837332_)
                                                (cons _g3732737330_
                                                      _g3732837332_))
                                              '()
                                              _L37309_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3733437337_
                                                       _g3733537339_)
                                                (cons _g3733437337_
                                                      _g3733537339_))
                                              '()
                                              _L37308_)))
                               _L37307_)))
                           (___kont4221842219_
                            (lambda (_L37164_
                                     _L37165_
                                     _L37166_
                                     _L37167_
                                     _L37168_)
                              (_do-splice!33841_
                               (lambda ()
                                 (let ((_expr37210_
                                        (_optimize-e33842_ _L37166_)))
                                   (cons '%#letrec-values
                                         (cons (cons (cons (cons _L37168_ '())
                                                           (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (begin
                                       '#!void
                                       (foldr1 (lambda (_g3721137214_
                                                        _g3721237216_)
                                                 (cons _g3721137214_
                                                       _g3721237216_))
                                               '()
                                               _L37167_))
                                     (cons _expr37210_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr1 (lambda (_g3721837221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g3721937223_)
                         (cons _g3721837221_ _g3721937223_))
                       '()
                       _L37165_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L37164_ '()))))))))
                           (___kont4222442225_ (lambda () _expr36844_)))
                       (let* ((___match4241142412_
                               (lambda (_e3697237036_
                                        _hd3697337039_
                                        _tl3697437041_
                                        _e3697537044_
                                        _hd3697637047_
                                        _tl3697737049_
                                        _e3697837052_
                                        _hd3697937055_
                                        _tl3698037057_
                                        _e3698137060_
                                        _hd3698237063_
                                        _tl3698337065_
                                        _e3698437068_
                                        _hd3698537071_
                                        _tl3698637073_
                                        _e3698737076_
                                        _hd3698837079_
                                        _tl3698937081_
                                        _e3699037084_
                                        _hd3699137087_
                                        _tl3699237089_
                                        _e3699337092_
                                        _hd3699437095_
                                        _tl3699537097_
                                        ___splice4222042221_
                                        _target3699637100_
                                        _tl3699837102_)
                                 (letrec ((_loop3699937105_
                                           (lambda (_hd3699737108_
                                                    _id3700337110_)
                                             (if (gx#stx-pair? _hd3699737108_)
                                                 (let ((_e3700037113_
                                                        (gx#stx-e
                                                         _hd3699737108_)))
                                                   (let ((_lp-tl3700237118_
                                                          (##cdr _e3700037113_))
                                                         (_lp-hd3700137116_
                                                          (##car _e3700037113_)))
                                                     (_loop3699937105_
                                                      _lp-tl3700237118_
                                                      (cons _lp-hd3700137116_
                                                            _id3700337110_))))
                                                 (let ((_id3700437121_
                                                        (reverse _id3700337110_)))
                                                   (if (gx#stx-pair?
                                                        _tl3699537097_)
                                                       (let ((_e3700537124_
                                                              (gx#stx-e
                                                               _tl3699537097_)))
                                                         (let ((_tl3700737129_
                                                                (##cdr _e3700537124_))
                                                               (_hd3700637127_
                                                                (##car _e3700537124_)))
                                                           (if (gx#stx-null?
                                                                _tl3700737129_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3698937081_)
                           (if (gx#stx-pair/null? _tl3698037057_)
                               (let ((___splice4222242223_
                                      (gx#syntax-split-splice
                                       _tl3698037057_
                                       '0)))
                                 (let ((_tl3701037134_
                                        (##vector-ref ___splice4222242223_ '1))
                                       (_target3700837132_
                                        (##vector-ref
                                         ___splice4222242223_
                                         '0)))
                                   (if (gx#stx-null? _tl3701037134_)
                                       (letrec ((_loop3701137137_
                                                 (lambda (_hd3700937140_
                                                          _bind3701537142_)
                                                   (if (gx#stx-pair?
                                                        _hd3700937140_)
                                                       (let ((_e3701237145_
                                                              (gx#stx-e
                                                               _hd3700937140_)))
                                                         (let ((_lp-tl3701437150_
                                                                (##cdr _e3701237145_))
                                                               (_lp-hd3701337148_
                                                                (##car _e3701237145_)))
                                                           (_loop3701137137_
                                                            _lp-tl3701437150_
                                                            (cons _lp-hd3701337148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _bind3701537142_))))
               (let ((_bind3701637153_ (reverse _bind3701537142_)))
                 (if (gx#stx-pair? _tl3697737049_)
                     (let ((_e3701737156_ (gx#stx-e _tl3697737049_)))
                       (let ((_tl3701937161_ (##cdr _e3701737156_))
                             (_hd3701837159_ (##car _e3701737156_)))
                         (if (gx#stx-null? _tl3701937161_)
                             (___kont4221842219_
                              _hd3701837159_
                              _bind3701637153_
                              _hd3700637127_
                              _id3700437121_
                              _hd3698537071_)
                             (___kont4222442225_))))
                     (___kont4222442225_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3701137137_
                                          _target3700837132_
                                          '()))
                                       (___kont4222442225_))))
                               (___kont4222442225_))
                           (___kont4222442225_))
                       (___kont4222442225_))))
               (___kont4222442225_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_loop3699937105_ _target3699637100_ '()))))
                              (___match4234542346_
                               (lambda (_e3693837231_
                                        _hd3693937234_
                                        _tl3694037236_
                                        _e3694137239_
                                        _hd3694237242_
                                        _tl3694337244_
                                        ___splice4221642217_
                                        _target3694437247_
                                        _tl3694637249_)
                                 (letrec ((_loop3694737252_
                                           (lambda (_hd3694537255_
                                                    _expr3695137257_
                                                    _id3695237259_)
                                             (if (gx#stx-pair? _hd3694537255_)
                                                 (let ((_e3694837262_
                                                        (gx#stx-e
                                                         _hd3694537255_)))
                                                   (let ((_lp-tl3695037267_
                                                          (##cdr _e3694837262_))
                                                         (_lp-hd3694937265_
                                                          (##car _e3694837262_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3694937265_)
                                                         (let ((_e3695537270_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3694937265_)))
                   (let ((_tl3695737275_ (##cdr _e3695537270_))
                         (_hd3695637273_ (##car _e3695537270_)))
                     (if (gx#stx-pair? _hd3695637273_)
                         (let ((_e3695837278_ (gx#stx-e _hd3695637273_)))
                           (let ((_tl3696037283_ (##cdr _e3695837278_))
                                 (_hd3695937281_ (##car _e3695837278_)))
                             (if (gx#stx-null? _tl3696037283_)
                                 (if (gx#stx-pair? _tl3695737275_)
                                     (let ((_e3696137286_
                                            (gx#stx-e _tl3695737275_)))
                                       (let ((_tl3696337291_
                                              (##cdr _e3696137286_))
                                             (_hd3696237289_
                                              (##car _e3696137286_)))
                                         (if (gx#stx-null? _tl3696337291_)
                                             (_loop3694737252_
                                              _lp-tl3695037267_
                                              (cons _hd3696237289_
                                                    _expr3695137257_)
                                              (cons _hd3695937281_
                                                    _id3695237259_))
                                             (___kont4222442225_))))
                                     (___kont4222442225_))
                                 (___kont4222442225_))))
                         (___kont4222442225_))))
                 (___kont4222442225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3695437296_
                                                        (reverse _id3695237259_))
                                                       (_expr3695337294_
                                                        (reverse _expr3695137257_)))
                                                   (if (gx#stx-pair?
                                                        _tl3694337244_)
                                                       (let ((_e3696437299_
                                                              (gx#stx-e
                                                               _tl3694337244_)))
                                                         (let ((_tl3696637304_
                                                                (##cdr _e3696437299_))
                                                               (_hd3696537302_
                                                                (##car _e3696437299_)))
                                                           (if (gx#stx-null?
                                                                _tl3696637304_)
                                                               (___kont4221442215_
                                                                _hd3696537302_
                                                                _expr3695337294_
                                                                _id3695437296_)
                                                               (___kont4222442225_))))
                                                       (___kont4222442225_)))))))
                                   (_loop3694737252_
                                    _target3694437247_
                                    '()
                                    '()))))
                              (___match4232142322_
                               (lambda (_e3690037347_
                                        _hd3690137350_
                                        _tl3690237352_
                                        _e3690337355_
                                        _hd3690437358_
                                        _tl3690537360_
                                        ___splice4221242213_
                                        _target3690637363_
                                        _tl3690837365_)
                                 (letrec ((_loop3690937368_
                                           (lambda (_hd3690737371_
                                                    _xid3691337373_
                                                    _id3691437375_)
                                             (if (gx#stx-pair? _hd3690737371_)
                                                 (let ((_e3691037378_
                                                        (gx#stx-e
                                                         _hd3690737371_)))
                                                   (let ((_lp-tl3691237383_
                                                          (##cdr _e3691037378_))
                                                         (_lp-hd3691137381_
                                                          (##car _e3691037378_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3691137381_)
                                                         (let ((_e3691737386_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3691137381_)))
                   (let ((_tl3691937391_ (##cdr _e3691737386_))
                         (_hd3691837389_ (##car _e3691737386_)))
                     (if (gx#stx-pair? _hd3691837389_)
                         (let ((_e3692037394_ (gx#stx-e _hd3691837389_)))
                           (let ((_tl3692237399_ (##cdr _e3692037394_))
                                 (_hd3692137397_ (##car _e3692037394_)))
                             (if (gx#stx-null? _tl3692237399_)
                                 (if (gx#stx-pair? _tl3691937391_)
                                     (let ((_e3692337402_
                                            (gx#stx-e _tl3691937391_)))
                                       (let ((_tl3692537407_
                                              (##cdr _e3692337402_))
                                             (_hd3692437405_
                                              (##car _e3692337402_)))
                                         (if (gx#stx-pair? _hd3692437405_)
                                             (let ((_e3692637410_
                                                    (gx#stx-e _hd3692437405_)))
                                               (let ((_tl3692837415_
                                                      (##cdr _e3692637410_))
                                                     (_hd3692737413_
                                                      (##car _e3692637410_)))
                                                 (if (gx#identifier?
                                                      _hd3692737413_)
                                                     (if (gx#stx-eq?
                                                          '%#ref
                                                          _hd3692737413_)
                                                         (if (gx#stx-pair?
                                                              _tl3692837415_)
                                                             (let ((_e3692937418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3692837415_)))
                       (let ((_tl3693137423_ (##cdr _e3692937418_))
                             (_hd3693037421_ (##car _e3692937418_)))
                         (if (gx#stx-null? _tl3693137423_)
                             (if (gx#stx-null? _tl3692537407_)
                                 (_loop3690937368_
                                  _lp-tl3691237383_
                                  (cons _hd3693037421_ _xid3691337373_)
                                  (cons _hd3692137397_ _id3691437375_))
                                 (___match4234542346_
                                  _e3690037347_
                                  _hd3690137350_
                                  _tl3690237352_
                                  _e3690337355_
                                  _hd3690437358_
                                  _tl3690537360_
                                  ___splice4221242213_
                                  _target3690637363_
                                  _tl3690837365_))
                             (___match4234542346_
                              _e3690037347_
                              _hd3690137350_
                              _tl3690237352_
                              _e3690337355_
                              _hd3690437358_
                              _tl3690537360_
                              ___splice4221242213_
                              _target3690637363_
                              _tl3690837365_))))
                     (___match4234542346_
                      _e3690037347_
                      _hd3690137350_
                      _tl3690237352_
                      _e3690337355_
                      _hd3690437358_
                      _tl3690537360_
                      ___splice4221242213_
                      _target3690637363_
                      _tl3690837365_))
                 (___match4234542346_
                  _e3690037347_
                  _hd3690137350_
                  _tl3690237352_
                  _e3690337355_
                  _hd3690437358_
                  _tl3690537360_
                  ___splice4221242213_
                  _target3690637363_
                  _tl3690837365_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___match4234542346_
                                                      _e3690037347_
                                                      _hd3690137350_
                                                      _tl3690237352_
                                                      _e3690337355_
                                                      _hd3690437358_
                                                      _tl3690537360_
                                                      ___splice4221242213_
                                                      _target3690637363_
                                                      _tl3690837365_))))
                                             (___match4234542346_
                                              _e3690037347_
                                              _hd3690137350_
                                              _tl3690237352_
                                              _e3690337355_
                                              _hd3690437358_
                                              _tl3690537360_
                                              ___splice4221242213_
                                              _target3690637363_
                                              _tl3690837365_))))
                                     (___match4234542346_
                                      _e3690037347_
                                      _hd3690137350_
                                      _tl3690237352_
                                      _e3690337355_
                                      _hd3690437358_
                                      _tl3690537360_
                                      ___splice4221242213_
                                      _target3690637363_
                                      _tl3690837365_))
                                 (___match4234542346_
                                  _e3690037347_
                                  _hd3690137350_
                                  _tl3690237352_
                                  _e3690337355_
                                  _hd3690437358_
                                  _tl3690537360_
                                  ___splice4221242213_
                                  _target3690637363_
                                  _tl3690837365_))))
                         (___match4234542346_
                          _e3690037347_
                          _hd3690137350_
                          _tl3690237352_
                          _e3690337355_
                          _hd3690437358_
                          _tl3690537360_
                          ___splice4221242213_
                          _target3690637363_
                          _tl3690837365_))))
                 (___match4234542346_
                  _e3690037347_
                  _hd3690137350_
                  _tl3690237352_
                  _e3690337355_
                  _hd3690437358_
                  _tl3690537360_
                  ___splice4221242213_
                  _target3690637363_
                  _tl3690837365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3691637428_
                                                        (reverse _id3691437375_))
                                                       (_xid3691537426_
                                                        (reverse _xid3691337373_)))
                                                   (if (gx#stx-pair?
                                                        _tl3690537360_)
                                                       (let ((_e3693237431_
                                                              (gx#stx-e
                                                               _tl3690537360_)))
                                                         (let ((_tl3693437436_
                                                                (##cdr _e3693237431_))
                                                               (_hd3693337434_
                                                                (##car _e3693237431_)))
                                                           (if (gx#stx-null?
                                                                _tl3693437436_)
                                                               (___kont4221042211_
                                                                _hd3693337434_
                                                                _xid3691537426_
                                                                _id3691637428_)
                                                               (___match4234542346_
                                                                _e3690037347_
                                                                _hd3690137350_
                                                                _tl3690237352_
                                                                _e3690337355_
                                                                _hd3690437358_
                                                                _tl3690537360_
                                                                ___splice4221242213_
                                                                _target3690637363_
                                                                _tl3690837365_))))
                                                       (___match4234542346_
                                                        _e3690037347_
                                                        _hd3690137350_
                                                        _tl3690237352_
                                                        _e3690337355_
                                                        _hd3690437358_
                                                        _tl3690537360_
                                                        ___splice4221242213_
                                                        _target3690637363_
                                                        _tl3690837365_)))))))
                                   (_loop3690937368_
                                    _target3690637363_
                                    '()
                                    '()))))
                              (___match4229742298_
                               (lambda (_e3687037477_
                                        _hd3687137480_
                                        _tl3687237482_
                                        _e3687337485_
                                        _hd3687437488_
                                        _tl3687537490_
                                        _e3687637493_
                                        _hd3687737496_
                                        _tl3687837498_
                                        _e3687937501_
                                        _hd3688037504_
                                        _tl3688137506_
                                        ___splice4220842209_
                                        _target3688237509_
                                        _tl3688437511_)
                                 (letrec ((_loop3688537514_
                                           (lambda (_hd3688337517_
                                                    _id3688937519_)
                                             (if (gx#stx-pair? _hd3688337517_)
                                                 (let ((_e3688637522_
                                                        (gx#stx-e
                                                         _hd3688337517_)))
                                                   (let ((_lp-tl3688837527_
                                                          (##cdr _e3688637522_))
                                                         (_lp-hd3688737525_
                                                          (##car _e3688637522_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3688737525_)
                                                         (let ((_e3689137530_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3688737525_)))
                   (let ((_tl3689337535_ (##cdr _e3689137530_))
                         (_hd3689237533_ (##car _e3689137530_)))
                     (if (gx#identifier? _hd3689237533_)
                         (if (gx#stx-eq? '%#ref _hd3689237533_)
                             (if (gx#stx-pair? _tl3689337535_)
                                 (let ((_e3689437538_
                                        (gx#stx-e _tl3689337535_)))
                                   (let ((_tl3689637543_ (##cdr _e3689437538_))
                                         (_hd3689537541_
                                          (##car _e3689437538_)))
                                     (if (gx#stx-null? _tl3689637543_)
                                         (_loop3688537514_
                                          _lp-tl3688837527_
                                          (cons _hd3689537541_ _id3688937519_))
                                         (___kont4222442225_))))
                                 (___kont4222442225_))
                             (___kont4222442225_))
                         (___kont4222442225_))))
                 (___kont4222442225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3689037546_
                                                        (reverse _id3688937519_)))
                                                   (___kont4220642207_
                                                    _id3689037546_
                                                    _hd3688037504_))))))
                                   (_loop3688537514_
                                    _target3688237509_
                                    '())))))
                         (if (gx#stx-pair? ___stx4220242203_)
                             (let ((_e3685637587_
                                    (gx#stx-e ___stx4220242203_)))
                               (let ((_tl3685837592_ (##cdr _e3685637587_))
                                     (_hd3685737590_ (##car _e3685637587_)))
                                 (if (gx#identifier? _hd3685737590_)
                                     (if (gx#stx-eq? '%#if _hd3685737590_)
                                         (if (gx#stx-pair? _tl3685837592_)
                                             (let ((_e3685937595_
                                                    (gx#stx-e _tl3685837592_)))
                                               (let ((_tl3686137600_
                                                      (##cdr _e3685937595_))
                                                     (_hd3686037598_
                                                      (##car _e3685937595_)))
                                                 (if (gx#stx-pair?
                                                      _tl3686137600_)
                                                     (let ((_e3686237603_
                                                            (gx#stx-e
                                                             _tl3686137600_)))
                                                       (let ((_tl3686437608_
                                                              (##cdr _e3686237603_))
                                                             (_hd3686337606_
                                                              (##car _e3686237603_)))
                                                         (if (gx#stx-pair?
                                                              _tl3686437608_)
                                                             (let ((_e3686537611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3686437608_)))
                       (let ((_tl3686737616_ (##cdr _e3686537611_))
                             (_hd3686637614_ (##car _e3686537611_)))
                         (if (gx#stx-null? _tl3686737616_)
                             (___kont4220442205_
                              _hd3686637614_
                              _hd3686337606_
                              _hd3686037598_)
                             (___kont4222442225_))))
                     (___kont4222442225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4222442225_))))
                                             (___kont4222442225_))
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd3685737590_)
                                             (if (gx#stx-pair? _tl3685837592_)
                                                 (let ((_e3687337485_
                                                        (gx#stx-e
                                                         _tl3685837592_)))
                                                   (let ((_tl3687537490_
                                                          (##cdr _e3687337485_))
                                                         (_hd3687437488_
                                                          (##car _e3687337485_)))
                                                     (if (gx#stx-pair?
                                                          _hd3687437488_)
                                                         (let ((_e3687637493_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3687437488_)))
                   (let ((_tl3687837498_ (##cdr _e3687637493_))
                         (_hd3687737496_ (##car _e3687637493_)))
                     (if (gx#identifier? _hd3687737496_)
                         (if (gx#stx-eq? '%#ref _hd3687737496_)
                             (if (gx#stx-pair? _tl3687837498_)
                                 (let ((_e3687937501_
                                        (gx#stx-e _tl3687837498_)))
                                   (let ((_tl3688137506_ (##cdr _e3687937501_))
                                         (_hd3688037504_
                                          (##car _e3687937501_)))
                                     (if (gx#stx-null? _tl3688137506_)
                                         (if (gx#stx-pair/null? _tl3687537490_)
                                             (let ((___splice4220842209_
                                                    (gx#syntax-split-splice
                                                     _tl3687537490_
                                                     '0)))
                                               (let ((_tl3688437511_
                                                      (##vector-ref
                                                       ___splice4220842209_
                                                       '1))
                                                     (_target3688237509_
                                                      (##vector-ref
                                                       ___splice4220842209_
                                                       '0)))
                                                 (if (gx#stx-null?
                                                      _tl3688437511_)
                                                     (___match4229742298_
                                                      _e3685637587_
                                                      _hd3685737590_
                                                      _tl3685837592_
                                                      _e3687337485_
                                                      _hd3687437488_
                                                      _tl3687537490_
                                                      _e3687637493_
                                                      _hd3687737496_
                                                      _tl3687837498_
                                                      _e3687937501_
                                                      _hd3688037504_
                                                      _tl3688137506_
                                                      ___splice4220842209_
                                                      _target3688237509_
                                                      _tl3688437511_)
                                                     (___kont4222442225_))))
                                             (___kont4222442225_))
                                         (___kont4222442225_))))
                                 (___kont4222442225_))
                             (___kont4222442225_))
                         (___kont4222442225_))))
                 (___kont4222442225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont4222442225_))
                                             (if (gx#stx-eq?
                                                  '%#let-values
                                                  _hd3685737590_)
                                                 (if (gx#stx-pair?
                                                      _tl3685837592_)
                                                     (let ((_e3690337355_
                                                            (gx#stx-e
                                                             _tl3685837592_)))
                                                       (let ((_tl3690537360_
                                                              (##cdr _e3690337355_))
                                                             (_hd3690437358_
                                                              (##car _e3690337355_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd3690437358_)
                                                             (let ((___splice4221242213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _hd3690437358_ '0)))
                       (let ((_tl3690837365_
                              (##vector-ref ___splice4221242213_ '1))
                             (_target3690637363_
                              (##vector-ref ___splice4221242213_ '0)))
                         (if (gx#stx-null? _tl3690837365_)
                             (___match4232142322_
                              _e3685637587_
                              _hd3685737590_
                              _tl3685837592_
                              _e3690337355_
                              _hd3690437358_
                              _tl3690537360_
                              ___splice4221242213_
                              _target3690637363_
                              _tl3690837365_)
                             (___kont4222442225_))))
                     (___kont4222442225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4222442225_))
                                                 (if (gx#stx-eq?
                                                      '%#letrec-values
                                                      _hd3685737590_)
                                                     (if (gx#stx-pair?
                                                          _tl3685837592_)
                                                         (let ((_e3697537044_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3685837592_)))
                   (let ((_tl3697737049_ (##cdr _e3697537044_))
                         (_hd3697637047_ (##car _e3697537044_)))
                     (if (gx#stx-pair? _hd3697637047_)
                         (let ((_e3697837052_ (gx#stx-e _hd3697637047_)))
                           (let ((_tl3698037057_ (##cdr _e3697837052_))
                                 (_hd3697937055_ (##car _e3697837052_)))
                             (if (gx#stx-pair? _hd3697937055_)
                                 (let ((_e3698137060_
                                        (gx#stx-e _hd3697937055_)))
                                   (let ((_tl3698337065_ (##cdr _e3698137060_))
                                         (_hd3698237063_
                                          (##car _e3698137060_)))
                                     (if (gx#stx-pair? _hd3698237063_)
                                         (let ((_e3698437068_
                                                (gx#stx-e _hd3698237063_)))
                                           (let ((_tl3698637073_
                                                  (##cdr _e3698437068_))
                                                 (_hd3698537071_
                                                  (##car _e3698437068_)))
                                             (if (gx#stx-null? _tl3698637073_)
                                                 (if (gx#stx-pair?
                                                      _tl3698337065_)
                                                     (let ((_e3698737076_
                                                            (gx#stx-e
                                                             _tl3698337065_)))
                                                       (let ((_tl3698937081_
                                                              (##cdr _e3698737076_))
                                                             (_hd3698837079_
                                                              (##car _e3698737076_)))
                                                         (if (gx#stx-pair?
                                                              _hd3698837079_)
                                                             (let ((_e3699037084_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3698837079_)))
                       (let ((_tl3699237089_ (##cdr _e3699037084_))
                             (_hd3699137087_ (##car _e3699037084_)))
                         (if (gx#identifier? _hd3699137087_)
                             (if (gx#stx-eq? '%#lambda _hd3699137087_)
                                 (if (gx#stx-pair? _tl3699237089_)
                                     (let ((_e3699337092_
                                            (gx#stx-e _tl3699237089_)))
                                       (let ((_tl3699537097_
                                              (##cdr _e3699337092_))
                                             (_hd3699437095_
                                              (##car _e3699337092_)))
                                         (if (gx#stx-pair/null? _hd3699437095_)
                                             (let ((___splice4222042221_
                                                    (gx#syntax-split-splice
                                                     _hd3699437095_
                                                     '0)))
                                               (let ((_tl3699837102_
                                                      (##vector-ref
                                                       ___splice4222042221_
                                                       '1))
                                                     (_target3699637100_
                                                      (##vector-ref
                                                       ___splice4222042221_
                                                       '0)))
                                                 (if (gx#stx-null?
                                                      _tl3699837102_)
                                                     (___match4241142412_
                                                      _e3685637587_
                                                      _hd3685737590_
                                                      _tl3685837592_
                                                      _e3697537044_
                                                      _hd3697637047_
                                                      _tl3697737049_
                                                      _e3697837052_
                                                      _hd3697937055_
                                                      _tl3698037057_
                                                      _e3698137060_
                                                      _hd3698237063_
                                                      _tl3698337065_
                                                      _e3698437068_
                                                      _hd3698537071_
                                                      _tl3698637073_
                                                      _e3698737076_
                                                      _hd3698837079_
                                                      _tl3698937081_
                                                      _e3699037084_
                                                      _hd3699137087_
                                                      _tl3699237089_
                                                      _e3699337092_
                                                      _hd3699437095_
                                                      _tl3699537097_
                                                      ___splice4222042221_
                                                      _target3699637100_
                                                      _tl3699837102_)
                                                     (___kont4222442225_))))
                                             (___kont4222442225_))))
                                     (___kont4222442225_))
                                 (___kont4222442225_))
                             (___kont4222442225_))))
                     (___kont4222442225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4222442225_))
                                                 (___kont4222442225_))))
                                         (___kont4222442225_))))
                                 (___kont4222442225_))))
                         (___kont4222442225_))))
                 (___kont4222442225_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4222442225_)))))
                                     (___kont4222442225_))))
                             (___kont4222442225_)))))))
                (_optimize-t__4116341164_
                 (lambda (_expr36827_ _test36828_ _continue36829_)
                   (_do-assert33831_
                    (cons (cons _test36828_ '#t) '())
                    (lambda () (_continue36829_ _expr36827_)))))
                (_optimize-t__0__4116541166_
                 (lambda (_expr36835_ _test36836_)
                   (let ((_continue36838_ _optimize-e33842_))
                     (_optimize-t__4116341164_
                      _expr36835_
                      _test36836_
                      _continue36838_))))
                (_optimize-t33843_
                 (lambda _g44266_
                   (let ((_g44265_ (length _g44266_)))
                     (cond ((##fx= _g44265_ 2)
                            (apply _optimize-t__0__4116541166_ _g44266_))
                           ((##fx= _g44265_ 3)
                            (apply _optimize-t__4116341164_ _g44266_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g44266_))))))
                (_optimize-f__4116741168_
                 (lambda (_expr35912_ _test35913_)
                   (_do-assert33831_
                    (if _test35913_ (cons (cons _test35913_ '#f) '()) '())
                    (lambda ()
                      (let* ((___stx4245242453_ _expr35912_)
                             (_g3592136094_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx4245242453_))))
                        (let ((___kont4245442455_
                               (lambda (_L36682_ _L36683_)
                                 (let ((_$e36703_
                                        (_lookup-block33850_ _L36683_)))
                                   (if _$e36703_
                                       ((lambda (_block36706_)
                                          (if (_nonlinear-block?33852_
                                               _block36706_)
                                              _expr35912_
                                              (let* ((_inline36715_
                                                      (_inline-block33851_
                                                       _block36706_
                                                       (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g3670736710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g3670836712_)
                           (cons _g3670736710_ _g3670836712_))
                         '()
                         _L36682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___stx4241442415_
                                                      _inline36715_)
                                                     (_g3671836739_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4241442415_))))
                                                (let ((___kont4241642417_
                                                       (lambda (_L36783_
                                                                _L36784_
                                                                _L36785_)
                                                         (let ((_$e36807_
                                                                (_assert-e33845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L36785_)))
                   (if (eq? '#t _$e36807_)
                       (if _in-splice?33830_
                           (_optimize-f__0__4116941170_ _L36784_)
                           (_optimize-e33842_ _L36784_))
                       (if (eq? '#f _$e36807_)
                           (_optimize-f__0__4116941170_ _L36783_)
                           _expr35912_)))))
              (___kont4241842419_
               (lambda () (_optimize-f__0__4116941170_ _inline36715_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4241442415_)
                                                      (let ((_e3672336751_
                                                             (gx#stx-e
                                                              ___stx4241442415_)))
                                                        (let ((_tl3672536756_
                                                               (##cdr _e3672336751_))
                                                              (_hd3672436754_
                                                               (##car _e3672336751_)))
                                                          (if (gx#identifier?
                                                               _hd3672436754_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#if
                           _hd3672436754_)
                          (if (gx#stx-pair? _tl3672536756_)
                              (let ((_e3672636759_ (gx#stx-e _tl3672536756_)))
                                (let ((_tl3672836764_ (##cdr _e3672636759_))
                                      (_hd3672736762_ (##car _e3672636759_)))
                                  (if (gx#stx-pair? _tl3672836764_)
                                      (let ((_e3672936767_
                                             (gx#stx-e _tl3672836764_)))
                                        (let ((_tl3673136772_
                                               (##cdr _e3672936767_))
                                              (_hd3673036770_
                                               (##car _e3672936767_)))
                                          (if (gx#stx-pair? _tl3673136772_)
                                              (let ((_e3673236775_
                                                     (gx#stx-e
                                                      _tl3673136772_)))
                                                (let ((_tl3673436780_
                                                       (##cdr _e3673236775_))
                                                      (_hd3673336778_
                                                       (##car _e3673236775_)))
                                                  (if (gx#stx-null?
                                                       _tl3673436780_)
                                                      (___kont4241642417_
                                                       _hd3673336778_
                                                       _hd3673036770_
                                                       _hd3672736762_)
                                                      (___kont4241842419_))))
                                              (___kont4241842419_))))
                                      (___kont4241842419_))))
                              (___kont4241842419_))
                          (___kont4241842419_))
                      (___kont4241842419_))))
              (___kont4241842419_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _$e36703_)
                                       _expr35912_))))
                              (___kont4245842459_
                               (lambda (_L36580_ _L36581_ _L36582_)
                                 (let ((_$e36599_ (_assert-e33845_ _L36582_)))
                                   (if (eq? '#t _$e36599_)
                                       (if _in-splice?33830_
                                           (_optimize-f__0__4116941170_
                                            _L36581_)
                                           (_optimize-e33842_ _L36581_))
                                       (if (eq? '#f _$e36599_)
                                           (_optimize-f__0__4116941170_
                                            _L36580_)
                                           (let ((_K36602_
                                                  (_optimize-t__4116341164_
                                                   _L36581_
                                                   _L36582_
                                                   _optimize-f33844_))
                                                 (_E36603_
                                                  (_optimize-f__4116741168_
                                                   _L36580_
                                                   _L36582_)))
                                             (if (equal? (gxc#apply-generate-runtime-repr
                                                          _K36602_)
                                                         (gxc#apply-generate-runtime-repr
                                                          _E36603_))
                                                 _K36602_
                                                 (cons '%#if
                                                       (cons _L36582_
                                                             (cons _K36602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _E36603_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (___kont4246042461_
                               (lambda (_L36510_ _L36511_ _L36512_)
                                 (let ((_body36531_
                                        (_optimize-f__0__4116941170_
                                         _L36510_)))
                                   (cons '%#let-values
                                         (cons (begin
                                                 (gx#syntax-check-splice-targets
                                                  _L36511_
                                                  _L36512_)
                                                 (foldr2 (lambda (_g3653236536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3653336538_
                          _g3653436540_)
                   (cons (cons (cons _g3653336538_ '())
                               (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                           (cons _g3653236536_ '()))
                                     '()))
                         _g3653436540_))
                 '()
                 _L36511_
                 _L36512_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _body36531_ '()))))))
                              (___kont4246442465_
                               (lambda (_L36378_ _L36379_ _L36380_)
                                 (_bind-e__4117141172_
                                  (map cons
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g3639836401_
                                                          _g3639936403_)
                                                   (cons _g3639836401_
                                                         _g3639936403_))
                                                 '()
                                                 _L36380_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g3640536408_
                                                          _g3640636410_)
                                                   (cons _g3640536408_
                                                         _g3640636410_))
                                                 '()
                                                 _L36379_)))
                                  _L36378_
                                  _optimize-f33844_)))
                              (___kont4246842469_
                               (lambda (_L36234_
                                        _L36235_
                                        _L36236_
                                        _L36237_
                                        _L36238_)
                                 (_do-splice!33841_
                                  (lambda ()
                                    (let ((_expr36281_
                                           (_optimize-f__0__4116941170_
                                            _L36236_)))
                                      (cons '%#letrec-values
                                            (cons (cons (cons (cons _L36238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#lambda
                                  (cons (begin
                                          '#!void
                                          (foldr1 (lambda (_g3628236285_
                                                           _g3628336287_)
                                                    (cons _g3628236285_
                                                          _g3628336287_))
                                                  '()
                                                  _L36237_))
                                        (cons _expr36281_ '())))
                            '()))
                (begin
                  '#!void
                  (foldr1 (lambda (_g3628936292_ _g3629036294_)
                            (cons _g3628936292_ _g3629036294_))
                          '()
                          _L36235_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L36234_ '()))))))))
                              (___kont4247442475_ (lambda () _expr35912_)))
                          (let* ((___match4266142662_
                                  (lambda (_e3604236106_
                                           _hd3604336109_
                                           _tl3604436111_
                                           _e3604536114_
                                           _hd3604636117_
                                           _tl3604736119_
                                           _e3604836122_
                                           _hd3604936125_
                                           _tl3605036127_
                                           _e3605136130_
                                           _hd3605236133_
                                           _tl3605336135_
                                           _e3605436138_
                                           _hd3605536141_
                                           _tl3605636143_
                                           _e3605736146_
                                           _hd3605836149_
                                           _tl3605936151_
                                           _e3606036154_
                                           _hd3606136157_
                                           _tl3606236159_
                                           _e3606336162_
                                           _hd3606436165_
                                           _tl3606536167_
                                           ___splice4247042471_
                                           _target3606636170_
                                           _tl3606836172_)
                                    (letrec ((_loop3606936175_
                                              (lambda (_hd3606736178_
                                                       _id3607336180_)
                                                (if (gx#stx-pair?
                                                     _hd3606736178_)
                                                    (let ((_e3607036183_
                                                           (gx#stx-e
                                                            _hd3606736178_)))
                                                      (let ((_lp-tl3607236188_
                                                             (##cdr _e3607036183_))
                                                            (_lp-hd3607136186_
                                                             (##car _e3607036183_)))
                                                        (_loop3606936175_
                                                         _lp-tl3607236188_
                                                         (cons _lp-hd3607136186_
                                                               _id3607336180_))))
                                                    (let ((_id3607436191_
                                                           (reverse _id3607336180_)))
                                                      (if (gx#stx-pair?
                                                           _tl3606536167_)
                                                          (let ((_e3607536194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3606536167_)))
                    (let ((_tl3607736199_ (##cdr _e3607536194_))
                          (_hd3607636197_ (##car _e3607536194_)))
                      (if (gx#stx-null? _tl3607736199_)
                          (if (gx#stx-null? _tl3605936151_)
                              (if (gx#stx-pair/null? _tl3605036127_)
                                  (let ((___splice4247242473_
                                         (gx#syntax-split-splice
                                          _tl3605036127_
                                          '0)))
                                    (let ((_tl3608036204_
                                           (##vector-ref
                                            ___splice4247242473_
                                            '1))
                                          (_target3607836202_
                                           (##vector-ref
                                            ___splice4247242473_
                                            '0)))
                                      (if (gx#stx-null? _tl3608036204_)
                                          (letrec ((_loop3608136207_
                                                    (lambda (_hd3607936210_
                                                             _bind3608536212_)
                                                      (if (gx#stx-pair?
                                                           _hd3607936210_)
                                                          (let ((_e3608236215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd3607936210_)))
                    (let ((_lp-tl3608436220_ (##cdr _e3608236215_))
                          (_lp-hd3608336218_ (##car _e3608236215_)))
                      (_loop3608136207_
                       _lp-tl3608436220_
                       (cons _lp-hd3608336218_ _bind3608536212_))))
                  (let ((_bind3608636223_ (reverse _bind3608536212_)))
                    (if (gx#stx-pair? _tl3604736119_)
                        (let ((_e3608736226_ (gx#stx-e _tl3604736119_)))
                          (let ((_tl3608936231_ (##cdr _e3608736226_))
                                (_hd3608836229_ (##car _e3608736226_)))
                            (if (gx#stx-null? _tl3608936231_)
                                (___kont4246842469_
                                 _hd3608836229_
                                 _bind3608636223_
                                 _hd3607636197_
                                 _id3607436191_
                                 _hd3605536141_)
                                (___kont4247442475_))))
                        (___kont4247442475_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop3608136207_
                                             _target3607836202_
                                             '()))
                                          (___kont4247442475_))))
                                  (___kont4247442475_))
                              (___kont4247442475_))
                          (___kont4247442475_))))
                  (___kont4247442475_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3606936175_
                                       _target3606636170_
                                       '()))))
                                 (___match4259542596_
                                  (lambda (_e3600836302_
                                           _hd3600936305_
                                           _tl3601036307_
                                           _e3601136310_
                                           _hd3601236313_
                                           _tl3601336315_
                                           ___splice4246642467_
                                           _target3601436318_
                                           _tl3601636320_)
                                    (letrec ((_loop3601736323_
                                              (lambda (_hd3601536326_
                                                       _expr3602136328_
                                                       _id3602236330_)
                                                (if (gx#stx-pair?
                                                     _hd3601536326_)
                                                    (let ((_e3601836333_
                                                           (gx#stx-e
                                                            _hd3601536326_)))
                                                      (let ((_lp-tl3602036338_
                                                             (##cdr _e3601836333_))
                                                            (_lp-hd3601936336_
                                                             (##car _e3601836333_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3601936336_)
                                                            (let ((_e3602536341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3601936336_)))
                      (let ((_tl3602736346_ (##cdr _e3602536341_))
                            (_hd3602636344_ (##car _e3602536341_)))
                        (if (gx#stx-pair? _hd3602636344_)
                            (let ((_e3602836349_ (gx#stx-e _hd3602636344_)))
                              (let ((_tl3603036354_ (##cdr _e3602836349_))
                                    (_hd3602936352_ (##car _e3602836349_)))
                                (if (gx#stx-null? _tl3603036354_)
                                    (if (gx#stx-pair? _tl3602736346_)
                                        (let ((_e3603136357_
                                               (gx#stx-e _tl3602736346_)))
                                          (let ((_tl3603336362_
                                                 (##cdr _e3603136357_))
                                                (_hd3603236360_
                                                 (##car _e3603136357_)))
                                            (if (gx#stx-null? _tl3603336362_)
                                                (_loop3601736323_
                                                 _lp-tl3602036338_
                                                 (cons _hd3603236360_
                                                       _expr3602136328_)
                                                 (cons _hd3602936352_
                                                       _id3602236330_))
                                                (___kont4247442475_))))
                                        (___kont4247442475_))
                                    (___kont4247442475_))))
                            (___kont4247442475_))))
                    (___kont4247442475_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3602436367_
                                                           (reverse _id3602236330_))
                                                          (_expr3602336365_
                                                           (reverse _expr3602136328_)))
                                                      (if (gx#stx-pair?
                                                           _tl3601336315_)
                                                          (let ((_e3603436370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3601336315_)))
                    (let ((_tl3603636375_ (##cdr _e3603436370_))
                          (_hd3603536373_ (##car _e3603436370_)))
                      (if (gx#stx-null? _tl3603636375_)
                          (___kont4246442465_
                           _hd3603536373_
                           _expr3602336365_
                           _id3602436367_)
                          (___kont4247442475_))))
                  (___kont4247442475_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3601736323_
                                       _target3601436318_
                                       '()
                                       '()))))
                                 (___match4257142572_
                                  (lambda (_e3597036418_
                                           _hd3597136421_
                                           _tl3597236423_
                                           _e3597336426_
                                           _hd3597436429_
                                           _tl3597536431_
                                           ___splice4246242463_
                                           _target3597636434_
                                           _tl3597836436_)
                                    (letrec ((_loop3597936439_
                                              (lambda (_hd3597736442_
                                                       _xid3598336444_
                                                       _id3598436446_)
                                                (if (gx#stx-pair?
                                                     _hd3597736442_)
                                                    (let ((_e3598036449_
                                                           (gx#stx-e
                                                            _hd3597736442_)))
                                                      (let ((_lp-tl3598236454_
                                                             (##cdr _e3598036449_))
                                                            (_lp-hd3598136452_
                                                             (##car _e3598036449_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3598136452_)
                                                            (let ((_e3598736457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3598136452_)))
                      (let ((_tl3598936462_ (##cdr _e3598736457_))
                            (_hd3598836460_ (##car _e3598736457_)))
                        (if (gx#stx-pair? _hd3598836460_)
                            (let ((_e3599036465_ (gx#stx-e _hd3598836460_)))
                              (let ((_tl3599236470_ (##cdr _e3599036465_))
                                    (_hd3599136468_ (##car _e3599036465_)))
                                (if (gx#stx-null? _tl3599236470_)
                                    (if (gx#stx-pair? _tl3598936462_)
                                        (let ((_e3599336473_
                                               (gx#stx-e _tl3598936462_)))
                                          (let ((_tl3599536478_
                                                 (##cdr _e3599336473_))
                                                (_hd3599436476_
                                                 (##car _e3599336473_)))
                                            (if (gx#stx-pair? _hd3599436476_)
                                                (let ((_e3599636481_
                                                       (gx#stx-e
                                                        _hd3599436476_)))
                                                  (let ((_tl3599836486_
                                                         (##cdr _e3599636481_))
                                                        (_hd3599736484_
                                                         (##car _e3599636481_)))
                                                    (if (gx#identifier?
                                                         _hd3599736484_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd3599736484_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3599836486_)
                        (let ((_e3599936489_ (gx#stx-e _tl3599836486_)))
                          (let ((_tl3600136494_ (##cdr _e3599936489_))
                                (_hd3600036492_ (##car _e3599936489_)))
                            (if (gx#stx-null? _tl3600136494_)
                                (if (gx#stx-null? _tl3599536478_)
                                    (_loop3597936439_
                                     _lp-tl3598236454_
                                     (cons _hd3600036492_ _xid3598336444_)
                                     (cons _hd3599136468_ _id3598436446_))
                                    (___match4259542596_
                                     _e3597036418_
                                     _hd3597136421_
                                     _tl3597236423_
                                     _e3597336426_
                                     _hd3597436429_
                                     _tl3597536431_
                                     ___splice4246242463_
                                     _target3597636434_
                                     _tl3597836436_))
                                (___match4259542596_
                                 _e3597036418_
                                 _hd3597136421_
                                 _tl3597236423_
                                 _e3597336426_
                                 _hd3597436429_
                                 _tl3597536431_
                                 ___splice4246242463_
                                 _target3597636434_
                                 _tl3597836436_))))
                        (___match4259542596_
                         _e3597036418_
                         _hd3597136421_
                         _tl3597236423_
                         _e3597336426_
                         _hd3597436429_
                         _tl3597536431_
                         ___splice4246242463_
                         _target3597636434_
                         _tl3597836436_))
                    (___match4259542596_
                     _e3597036418_
                     _hd3597136421_
                     _tl3597236423_
                     _e3597336426_
                     _hd3597436429_
                     _tl3597536431_
                     ___splice4246242463_
                     _target3597636434_
                     _tl3597836436_))
                (___match4259542596_
                 _e3597036418_
                 _hd3597136421_
                 _tl3597236423_
                 _e3597336426_
                 _hd3597436429_
                 _tl3597536431_
                 ___splice4246242463_
                 _target3597636434_
                 _tl3597836436_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match4259542596_
                                                 _e3597036418_
                                                 _hd3597136421_
                                                 _tl3597236423_
                                                 _e3597336426_
                                                 _hd3597436429_
                                                 _tl3597536431_
                                                 ___splice4246242463_
                                                 _target3597636434_
                                                 _tl3597836436_))))
                                        (___match4259542596_
                                         _e3597036418_
                                         _hd3597136421_
                                         _tl3597236423_
                                         _e3597336426_
                                         _hd3597436429_
                                         _tl3597536431_
                                         ___splice4246242463_
                                         _target3597636434_
                                         _tl3597836436_))
                                    (___match4259542596_
                                     _e3597036418_
                                     _hd3597136421_
                                     _tl3597236423_
                                     _e3597336426_
                                     _hd3597436429_
                                     _tl3597536431_
                                     ___splice4246242463_
                                     _target3597636434_
                                     _tl3597836436_))))
                            (___match4259542596_
                             _e3597036418_
                             _hd3597136421_
                             _tl3597236423_
                             _e3597336426_
                             _hd3597436429_
                             _tl3597536431_
                             ___splice4246242463_
                             _target3597636434_
                             _tl3597836436_))))
                    (___match4259542596_
                     _e3597036418_
                     _hd3597136421_
                     _tl3597236423_
                     _e3597336426_
                     _hd3597436429_
                     _tl3597536431_
                     ___splice4246242463_
                     _target3597636434_
                     _tl3597836436_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3598636499_
                                                           (reverse _id3598436446_))
                                                          (_xid3598536497_
                                                           (reverse _xid3598336444_)))
                                                      (if (gx#stx-pair?
                                                           _tl3597536431_)
                                                          (let ((_e3600236502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3597536431_)))
                    (let ((_tl3600436507_ (##cdr _e3600236502_))
                          (_hd3600336505_ (##car _e3600236502_)))
                      (if (gx#stx-null? _tl3600436507_)
                          (___kont4246042461_
                           _hd3600336505_
                           _xid3598536497_
                           _id3598636499_)
                          (___match4259542596_
                           _e3597036418_
                           _hd3597136421_
                           _tl3597236423_
                           _e3597336426_
                           _hd3597436429_
                           _tl3597536431_
                           ___splice4246242463_
                           _target3597636434_
                           _tl3597836436_))))
                  (___match4259542596_
                   _e3597036418_
                   _hd3597136421_
                   _tl3597236423_
                   _e3597336426_
                   _hd3597436429_
                   _tl3597536431_
                   ___splice4246242463_
                   _target3597636434_
                   _tl3597836436_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3597936439_
                                       _target3597636434_
                                       '()
                                       '()))))
                                 (___match4251742518_
                                  (lambda (_e3592536610_
                                           _hd3592636613_
                                           _tl3592736615_
                                           _e3592836618_
                                           _hd3592936621_
                                           _tl3593036623_
                                           _e3593136626_
                                           _hd3593236629_
                                           _tl3593336631_
                                           _e3593436634_
                                           _hd3593536637_
                                           _tl3593636639_
                                           ___splice4245642457_
                                           _target3593736642_
                                           _tl3593936644_)
                                    (letrec ((_loop3594036647_
                                              (lambda (_hd3593836650_
                                                       _id3594436652_)
                                                (if (gx#stx-pair?
                                                     _hd3593836650_)
                                                    (let ((_e3594136655_
                                                           (gx#stx-e
                                                            _hd3593836650_)))
                                                      (let ((_lp-tl3594336660_
                                                             (##cdr _e3594136655_))
                                                            (_lp-hd3594236658_
                                                             (##car _e3594136655_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3594236658_)
                                                            (let ((_e3594636663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3594236658_)))
                      (let ((_tl3594836668_ (##cdr _e3594636663_))
                            (_hd3594736666_ (##car _e3594636663_)))
                        (if (gx#identifier? _hd3594736666_)
                            (if (gx#stx-eq? '%#ref _hd3594736666_)
                                (if (gx#stx-pair? _tl3594836668_)
                                    (let ((_e3594936671_
                                           (gx#stx-e _tl3594836668_)))
                                      (let ((_tl3595136676_
                                             (##cdr _e3594936671_))
                                            (_hd3595036674_
                                             (##car _e3594936671_)))
                                        (if (gx#stx-null? _tl3595136676_)
                                            (_loop3594036647_
                                             _lp-tl3594336660_
                                             (cons _hd3595036674_
                                                   _id3594436652_))
                                            (___kont4247442475_))))
                                    (___kont4247442475_))
                                (___kont4247442475_))
                            (___kont4247442475_))))
                    (___kont4247442475_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3594536679_
                                                           (reverse _id3594436652_)))
                                                      (___kont4245442455_
                                                       _id3594536679_
                                                       _hd3593536637_))))))
                                      (_loop3594036647_
                                       _target3593736642_
                                       '())))))
                            (if (gx#stx-pair? ___stx4245242453_)
                                (let ((_e3592536610_
                                       (gx#stx-e ___stx4245242453_)))
                                  (let ((_tl3592736615_ (##cdr _e3592536610_))
                                        (_hd3592636613_ (##car _e3592536610_)))
                                    (if (gx#identifier? _hd3592636613_)
                                        (if (gx#stx-eq? '%#call _hd3592636613_)
                                            (if (gx#stx-pair? _tl3592736615_)
                                                (let ((_e3592836618_
                                                       (gx#stx-e
                                                        _tl3592736615_)))
                                                  (let ((_tl3593036623_
                                                         (##cdr _e3592836618_))
                                                        (_hd3592936621_
                                                         (##car _e3592836618_)))
                                                    (if (gx#stx-pair?
                                                         _hd3592936621_)
                                                        (let ((_e3593136626_
                                                               (gx#stx-e
                                                                _hd3592936621_)))
                                                          (let ((_tl3593336631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3593136626_))
                        (_hd3593236629_ (##car _e3593136626_)))
                    (if (gx#identifier? _hd3593236629_)
                        (if (gx#stx-eq? '%#ref _hd3593236629_)
                            (if (gx#stx-pair? _tl3593336631_)
                                (let ((_e3593436634_
                                       (gx#stx-e _tl3593336631_)))
                                  (let ((_tl3593636639_ (##cdr _e3593436634_))
                                        (_hd3593536637_ (##car _e3593436634_)))
                                    (if (gx#stx-null? _tl3593636639_)
                                        (if (gx#stx-pair/null? _tl3593036623_)
                                            (let ((___splice4245642457_
                                                   (gx#syntax-split-splice
                                                    _tl3593036623_
                                                    '0)))
                                              (let ((_tl3593936644_
                                                     (##vector-ref
                                                      ___splice4245642457_
                                                      '1))
                                                    (_target3593736642_
                                                     (##vector-ref
                                                      ___splice4245642457_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3593936644_)
                                                    (___match4251742518_
                                                     _e3592536610_
                                                     _hd3592636613_
                                                     _tl3592736615_
                                                     _e3592836618_
                                                     _hd3592936621_
                                                     _tl3593036623_
                                                     _e3593136626_
                                                     _hd3593236629_
                                                     _tl3593336631_
                                                     _e3593436634_
                                                     _hd3593536637_
                                                     _tl3593636639_
                                                     ___splice4245642457_
                                                     _target3593736642_
                                                     _tl3593936644_)
                                                    (___kont4247442475_))))
                                            (___kont4247442475_))
                                        (___kont4247442475_))))
                                (___kont4247442475_))
                            (___kont4247442475_))
                        (___kont4247442475_))))
                (___kont4247442475_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4247442475_))
                                            (if (gx#stx-eq?
                                                 '%#if
                                                 _hd3592636613_)
                                                (if (gx#stx-pair?
                                                     _tl3592736615_)
                                                    (let ((_e3595836556_
                                                           (gx#stx-e
                                                            _tl3592736615_)))
                                                      (let ((_tl3596036561_
                                                             (##cdr _e3595836556_))
                                                            (_hd3595936559_
                                                             (##car _e3595836556_)))
                                                        (if (gx#stx-pair?
                                                             _tl3596036561_)
                                                            (let ((_e3596136564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3596036561_)))
                      (let ((_tl3596336569_ (##cdr _e3596136564_))
                            (_hd3596236567_ (##car _e3596136564_)))
                        (if (gx#stx-pair? _tl3596336569_)
                            (let ((_e3596436572_ (gx#stx-e _tl3596336569_)))
                              (let ((_tl3596636577_ (##cdr _e3596436572_))
                                    (_hd3596536575_ (##car _e3596436572_)))
                                (if (gx#stx-null? _tl3596636577_)
                                    (___kont4245842459_
                                     _hd3596536575_
                                     _hd3596236567_
                                     _hd3595936559_)
                                    (___kont4247442475_))))
                            (___kont4247442475_))))
                    (___kont4247442475_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4247442475_))
                                                (if (gx#stx-eq?
                                                     '%#let-values
                                                     _hd3592636613_)
                                                    (if (gx#stx-pair?
                                                         _tl3592736615_)
                                                        (let ((_e3597336426_
                                                               (gx#stx-e
                                                                _tl3592736615_)))
                                                          (let ((_tl3597536431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3597336426_))
                        (_hd3597436429_ (##car _e3597336426_)))
                    (if (gx#stx-pair/null? _hd3597436429_)
                        (let ((___splice4246242463_
                               (gx#syntax-split-splice _hd3597436429_ '0)))
                          (let ((_tl3597836436_
                                 (##vector-ref ___splice4246242463_ '1))
                                (_target3597636434_
                                 (##vector-ref ___splice4246242463_ '0)))
                            (if (gx#stx-null? _tl3597836436_)
                                (___match4257142572_
                                 _e3592536610_
                                 _hd3592636613_
                                 _tl3592736615_
                                 _e3597336426_
                                 _hd3597436429_
                                 _tl3597536431_
                                 ___splice4246242463_
                                 _target3597636434_
                                 _tl3597836436_)
                                (___kont4247442475_))))
                        (___kont4247442475_))))
                (___kont4247442475_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#letrec-values
                                                         _hd3592636613_)
                                                        (if (gx#stx-pair?
                                                             _tl3592736615_)
                                                            (let ((_e3604536114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3592736615_)))
                      (let ((_tl3604736119_ (##cdr _e3604536114_))
                            (_hd3604636117_ (##car _e3604536114_)))
                        (if (gx#stx-pair? _hd3604636117_)
                            (let ((_e3604836122_ (gx#stx-e _hd3604636117_)))
                              (let ((_tl3605036127_ (##cdr _e3604836122_))
                                    (_hd3604936125_ (##car _e3604836122_)))
                                (if (gx#stx-pair? _hd3604936125_)
                                    (let ((_e3605136130_
                                           (gx#stx-e _hd3604936125_)))
                                      (let ((_tl3605336135_
                                             (##cdr _e3605136130_))
                                            (_hd3605236133_
                                             (##car _e3605136130_)))
                                        (if (gx#stx-pair? _hd3605236133_)
                                            (let ((_e3605436138_
                                                   (gx#stx-e _hd3605236133_)))
                                              (let ((_tl3605636143_
                                                     (##cdr _e3605436138_))
                                                    (_hd3605536141_
                                                     (##car _e3605436138_)))
                                                (if (gx#stx-null?
                                                     _tl3605636143_)
                                                    (if (gx#stx-pair?
                                                         _tl3605336135_)
                                                        (let ((_e3605736146_
                                                               (gx#stx-e
                                                                _tl3605336135_)))
                                                          (let ((_tl3605936151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3605736146_))
                        (_hd3605836149_ (##car _e3605736146_)))
                    (if (gx#stx-pair? _hd3605836149_)
                        (let ((_e3606036154_ (gx#stx-e _hd3605836149_)))
                          (let ((_tl3606236159_ (##cdr _e3606036154_))
                                (_hd3606136157_ (##car _e3606036154_)))
                            (if (gx#identifier? _hd3606136157_)
                                (if (gx#stx-eq? '%#lambda _hd3606136157_)
                                    (if (gx#stx-pair? _tl3606236159_)
                                        (let ((_e3606336162_
                                               (gx#stx-e _tl3606236159_)))
                                          (let ((_tl3606536167_
                                                 (##cdr _e3606336162_))
                                                (_hd3606436165_
                                                 (##car _e3606336162_)))
                                            (if (gx#stx-pair/null?
                                                 _hd3606436165_)
                                                (let ((___splice4247042471_
                                                       (gx#syntax-split-splice
                                                        _hd3606436165_
                                                        '0)))
                                                  (let ((_tl3606836172_
                                                         (##vector-ref
                                                          ___splice4247042471_
                                                          '1))
                                                        (_target3606636170_
                                                         (##vector-ref
                                                          ___splice4247042471_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3606836172_)
                                                        (___match4266142662_
                                                         _e3592536610_
                                                         _hd3592636613_
                                                         _tl3592736615_
                                                         _e3604536114_
                                                         _hd3604636117_
                                                         _tl3604736119_
                                                         _e3604836122_
                                                         _hd3604936125_
                                                         _tl3605036127_
                                                         _e3605136130_
                                                         _hd3605236133_
                                                         _tl3605336135_
                                                         _e3605436138_
                                                         _hd3605536141_
                                                         _tl3605636143_
                                                         _e3605736146_
                                                         _hd3605836149_
                                                         _tl3605936151_
                                                         _e3606036154_
                                                         _hd3606136157_
                                                         _tl3606236159_
                                                         _e3606336162_
                                                         _hd3606436165_
                                                         _tl3606536167_
                                                         ___splice4247042471_
                                                         _target3606636170_
                                                         _tl3606836172_)
                                                        (___kont4247442475_))))
                                                (___kont4247442475_))))
                                        (___kont4247442475_))
                                    (___kont4247442475_))
                                (___kont4247442475_))))
                        (___kont4247442475_))))
                (___kont4247442475_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4247442475_))))
                                            (___kont4247442475_))))
                                    (___kont4247442475_))))
                            (___kont4247442475_))))
                    (___kont4247442475_))
                (___kont4247442475_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (___kont4247442475_))))
                                (___kont4247442475_)))))))))
                (_optimize-f__0__4116941170_
                 (lambda (_expr36819_)
                   (let ((_test36821_ '#f))
                     (_optimize-f__4116741168_ _expr36819_ _test36821_))))
                (_optimize-f33844_
                 (lambda _g44268_
                   (let ((_g44267_ (length _g44268_)))
                     (cond ((##fx= _g44267_ 1)
                            (apply _optimize-f__0__4116941170_ _g44268_))
                           ((##fx= _g44267_ 2)
                            (apply _optimize-f__4116741168_ _g44268_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g44268_))))))
                (_assert-e33845_
                 (lambda (_expr34853_)
                   (let* ((_sexpr34855_
                           (gxc#apply-generate-runtime-repr _expr34853_))
                          (_$e34857_ (assoc _sexpr34855_ _env-assert33827_)))
                     (if _$e34857_
                         (cdr _$e34857_)
                         (let _assert34860_ ((_expr34862_ _expr34853_))
                           (let* ((___stx4275842759_ _expr34862_)
                                  (_g3487035049_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx4275842759_))))
                             (let ((___kont4276042761_
                                    (lambda (_L35880_ _L35881_)
                                      (let ((_$e35903_
                                             (_predicate-type33832_ _L35881_)))
                                        (if _$e35903_
                                            ((lambda (_t35906_)
                                               (_assert-type33846_
                                                _L35880_
                                                _t35906_))
                                             _$e35903_)
                                            '#!void))))
                                   (___kont4276242763_
                                    (lambda (_L35573_ _L35574_ _L35575_)
                                      (let ((_$e35600_
                                             (gxc#identifier-symbol _L35575_)))
                                        (if (let ((_$e35603_
                                                   (eq? '##fx= _$e35600_)))
                                              (if _$e35603_
                                                  _$e35603_
                                                  (eq? 'fx= _$e35600_)))
                                            (let* ((___stx4266442665_ _L35574_)
                                                   (_g3560735636_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       ___stx4266442665_))))
                                              (let ((___kont4266642667_
                                                     (lambda (_L35704_
                                                              _L35705_)
                                                       (let ((_$e35730_
                                                              (_countf-symbol33834_
                                                               _L35705_)))
                                                         (if _$e35730_
                                                             ((lambda (_sym35733_)
                                                                (_assert-count33847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L35704_
                         _sym35733_
                         (gx#stx-e _L35573_)))
                      _$e35730_)
                     '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4266842669_
                                                     (lambda () '#!void)))
                                                (if (gx#stx-pair?
                                                     ___stx4266442665_)
                                                    (let ((_e3561135648_
                                                           (gx#stx-e
                                                            ___stx4266442665_)))
                                                      (let ((_tl3561335653_
                                                             (##cdr _e3561135648_))
                                                            (_hd3561235651_
                                                             (##car _e3561135648_)))
                                                        (if (gx#identifier?
                                                             _hd3561235651_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd3561235651_)
                        (if (gx#stx-pair? _tl3561335653_)
                            (let ((_e3561435656_ (gx#stx-e _tl3561335653_)))
                              (let ((_tl3561635661_ (##cdr _e3561435656_))
                                    (_hd3561535659_ (##car _e3561435656_)))
                                (if (gx#stx-pair? _hd3561535659_)
                                    (let ((_e3561735664_
                                           (gx#stx-e _hd3561535659_)))
                                      (let ((_tl3561935669_
                                             (##cdr _e3561735664_))
                                            (_hd3561835667_
                                             (##car _e3561735664_)))
                                        (if (gx#identifier? _hd3561835667_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3561835667_)
                                                (if (gx#stx-pair?
                                                     _tl3561935669_)
                                                    (let ((_e3562035672_
                                                           (gx#stx-e
                                                            _tl3561935669_)))
                                                      (let ((_tl3562235677_
                                                             (##cdr _e3562035672_))
                                                            (_hd3562135675_
                                                             (##car _e3562035672_)))
                                                        (if (gx#stx-null?
                                                             _tl3562235677_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3561635661_)
                        (let ((_e3562335680_ (gx#stx-e _tl3561635661_)))
                          (let ((_tl3562535685_ (##cdr _e3562335680_))
                                (_hd3562435683_ (##car _e3562335680_)))
                            (if (gx#stx-pair? _hd3562435683_)
                                (let ((_e3562635688_
                                       (gx#stx-e _hd3562435683_)))
                                  (let ((_tl3562835693_ (##cdr _e3562635688_))
                                        (_hd3562735691_ (##car _e3562635688_)))
                                    (if (gx#identifier? _hd3562735691_)
                                        (if (gx#stx-eq? '%#ref _hd3562735691_)
                                            (if (gx#stx-pair? _tl3562835693_)
                                                (let ((_e3562935696_
                                                       (gx#stx-e
                                                        _tl3562835693_)))
                                                  (let ((_tl3563135701_
                                                         (##cdr _e3562935696_))
                                                        (_hd3563035699_
                                                         (##car _e3562935696_)))
                                                    (if (gx#stx-null?
                                                         _tl3563135701_)
                                                        (if (gx#stx-null?
                                                             _tl3562535685_)
                                                            (___kont4266642667_
                                                             _hd3563035699_
                                                             _hd3562135675_)
                                                            (___kont4266842669_))
                                                        (___kont4266842669_))))
                                                (___kont4266842669_))
                                            (___kont4266842669_))
                                        (___kont4266842669_))))
                                (___kont4266842669_))))
                        (___kont4266842669_))
                    (___kont4266842669_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4266842669_))
                                                (___kont4266842669_))
                                            (___kont4266842669_))))
                                    (___kont4266842669_))))
                            (___kont4266842669_))
                        (___kont4266842669_))
                    (___kont4266842669_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4266842669_))))
                                            (if (let ((_$e35738_
                                                       (eq? '##eq? _$e35600_)))
                                                  (if _$e35738_
                                                      _$e35738_
                                                      (let ((_$e35741_
                                                             (eq? 'eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _$e35600_)))
                (if _$e35741_
                    _$e35741_
                    (let ((_$e35744_ (eq? '##eqv? _$e35600_)))
                      (if _$e35744_
                          _$e35744_
                          (let ((_$e35747_ (eq? 'eqv? _$e35600_)))
                            (if _$e35747_
                                _$e35747_
                                (let ((_$e35750_ (eq? '##equal? _$e35600_)))
                                  (if _$e35750_
                                      _$e35750_
                                      (let ((_$e35753_
                                             (eq? 'equal? _$e35600_)))
                                        (if _$e35753_
                                            _$e35753_
                                            (let ((_$e35756_
                                                   (eq? 'gx#free-identifier=?
                                                        _$e35600_)))
                                              (if _$e35756_
                                                  _$e35756_
                                                  (eq? 'gx#stx-eq?
                                                       _$e35600_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                ((lambda (_sym35759_)
                                                   (let* ((___stx4273242733_
                                                           _L35574_)
                                                          (_g3576235775_
                                                           (lambda ()
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx4273242733_))))
                                                     (let ((___kont4273442735_
                                                            (lambda (_L35803_)
                                                              (_assert-eqf33848_
                                                               _L35803_
                                                               (_eqf-symbol33835_
                                                                _sym35759_)
                                                               (gx#stx-e
                                                                _L35573_))))
                                                           (___kont4273642737_
                                                            (lambda ()
                                                              '#!void)))
                                                       (if (gx#stx-pair?
                                                            ___stx4273242733_)
                                                           (let ((_e3576535787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e ___stx4273242733_)))
                     (let ((_tl3576735792_ (##cdr _e3576535787_))
                           (_hd3576635790_ (##car _e3576535787_)))
                       (if (gx#identifier? _hd3576635790_)
                           (if (gx#stx-eq? '%#ref _hd3576635790_)
                               (if (gx#stx-pair? _tl3576735792_)
                                   (let ((_e3576835795_
                                          (gx#stx-e _tl3576735792_)))
                                     (let ((_tl3577035800_
                                            (##cdr _e3576835795_))
                                           (_hd3576935798_
                                            (##car _e3576835795_)))
                                       (if (gx#stx-null? _tl3577035800_)
                                           (___kont4273442735_ _hd3576935798_)
                                           (___kont4273642737_))))
                                   (___kont4273642737_))
                               (___kont4273642737_))
                           (___kont4273642737_))))
                   (___kont4273642737_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _$e35600_)
                                                '#!void)))))
                                   (___kont4276442765_
                                    (lambda (_L35477_ _L35478_ _L35479_)
                                      (_assert34860_
                                       (cons (gx#datum->syntax__0 '#f '%#call)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)
                                                         (cons _L35479_ '()))
                                                   (cons _L35477_
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#quote)
                             (cons _L35478_ '()))
                       '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (___kont4276642767_
                                    (lambda (_L35369_ _L35370_ _L35371_)
                                      (let ((_$e35400_
                                             (gxc#identifier-symbol _L35371_)))
                                        (if (let ((_$e35403_
                                                   (eq? 'gx#free-identifier=?
                                                        _$e35400_)))
                                              (if _$e35403_
                                                  _$e35403_
                                                  (eq? 'gx#stx-eq? _$e35400_)))
                                            ((lambda (_sym35406_)
                                               (_assert-eqf33848_
                                                _L35370_
                                                (_eqf-symbol33835_ _sym35406_)
                                                _L35369_))
                                             _$e35400_)
                                            '#!void))))
                                   (___kont4276842769_
                                    (lambda (_L35253_ _L35254_ _L35255_)
                                      (_assert34860_
                                       (cons (gx#datum->syntax__0 '#f '%#call)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)
                                                         (cons _L35255_ '()))
                                                   (cons (cons (gx#datum->syntax__0
                                                                '#f
                                                                '%#ref)
                                                               (cons _L35253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#quote-syntax)
                             (cons _L35254_ '()))
                       '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (___kont4277042771_
                                    (lambda (_L35133_ _L35134_ _L35135_)
                                      (_assert34860_
                                       (gxc#apply-expression-subst
                                        _L35134_
                                        _L35135_
                                        _L35133_))))
                                   (___kont4277242773_ (lambda () '#!void)))
                               (if (gx#stx-pair? ___stx4275842759_)
                                   (let ((_e3487435824_
                                          (gx#stx-e ___stx4275842759_)))
                                     (let ((_tl3487635829_
                                            (##cdr _e3487435824_))
                                           (_hd3487535827_
                                            (##car _e3487435824_)))
                                       (if (gx#identifier? _hd3487535827_)
                                           (if (gx#stx-eq?
                                                '%#call
                                                _hd3487535827_)
                                               (if (gx#stx-pair?
                                                    _tl3487635829_)
                                                   (let ((_e3487735832_
                                                          (gx#stx-e
                                                           _tl3487635829_)))
                                                     (let ((_tl3487935837_
                                                            (##cdr _e3487735832_))
                                                           (_hd3487835835_
                                                            (##car _e3487735832_)))
                                                       (if (gx#stx-pair?
                                                            _hd3487835835_)
                                                           (let ((_e3488035840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3487835835_)))
                     (let ((_tl3488235845_ (##cdr _e3488035840_))
                           (_hd3488135843_ (##car _e3488035840_)))
                       (if (gx#identifier? _hd3488135843_)
                           (if (gx#stx-eq? '%#ref _hd3488135843_)
                               (if (gx#stx-pair? _tl3488235845_)
                                   (let ((_e3488335848_
                                          (gx#stx-e _tl3488235845_)))
                                     (let ((_tl3488535853_
                                            (##cdr _e3488335848_))
                                           (_hd3488435851_
                                            (##car _e3488335848_)))
                                       (if (gx#stx-null? _tl3488535853_)
                                           (if (gx#stx-pair? _tl3487935837_)
                                               (let ((_e3488635856_
                                                      (gx#stx-e
                                                       _tl3487935837_)))
                                                 (let ((_tl3488835861_
                                                        (##cdr _e3488635856_))
                                                       (_hd3488735859_
                                                        (##car _e3488635856_)))
                                                   (if (gx#stx-pair?
                                                        _hd3488735859_)
                                                       (let ((_e3488935864_
                                                              (gx#stx-e
                                                               _hd3488735859_)))
                                                         (let ((_tl3489135869_
                                                                (##cdr _e3488935864_))
                                                               (_hd3489035867_
                                                                (##car _e3488935864_)))
                                                           (if (gx#identifier?
                                                                _hd3489035867_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3489035867_)
                           (if (gx#stx-pair? _tl3489135869_)
                               (let ((_e3489235872_ (gx#stx-e _tl3489135869_)))
                                 (let ((_tl3489435877_ (##cdr _e3489235872_))
                                       (_hd3489335875_ (##car _e3489235872_)))
                                   (if (gx#stx-null? _tl3489435877_)
                                       (if (gx#stx-null? _tl3488835861_)
                                           (___kont4276042761_
                                            _hd3489335875_
                                            _hd3488435851_)
                                           (if (gx#stx-pair? _tl3488835861_)
                                               (let ((_e3491335549_
                                                      (gx#stx-e
                                                       _tl3488835861_)))
                                                 (let ((_tl3491535554_
                                                        (##cdr _e3491335549_))
                                                       (_hd3491435552_
                                                        (##car _e3491335549_)))
                                                   (if (gx#stx-pair?
                                                        _hd3491435552_)
                                                       (let ((_e3491635557_
                                                              (gx#stx-e
                                                               _hd3491435552_)))
                                                         (let ((_tl3491835562_
                                                                (##cdr _e3491635557_))
                                                               (_hd3491735560_
                                                                (##car _e3491635557_)))
                                                           (if (gx#identifier?
                                                                _hd3491735560_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#quote
                            _hd3491735560_)
                           (if (gx#stx-pair? _tl3491835562_)
                               (let ((_e3491935565_ (gx#stx-e _tl3491835562_)))
                                 (let ((_tl3492135570_ (##cdr _e3491935565_))
                                       (_hd3492035568_ (##car _e3491935565_)))
                                   (if (gx#stx-null? _tl3492135570_)
                                       (if (gx#stx-null? _tl3491535554_)
                                           (___kont4276242763_
                                            _hd3492035568_
                                            _hd3488735859_
                                            _hd3488435851_)
                                           (___kont4277242773_))
                                       (___kont4277242773_))))
                               (___kont4277242773_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3491735560_)
                               (if (gx#stx-pair? _tl3491835562_)
                                   (let ((_e3497935361_
                                          (gx#stx-e _tl3491835562_)))
                                     (let ((_tl3498135366_
                                            (##cdr _e3497935361_))
                                           (_hd3498035364_
                                            (##car _e3497935361_)))
                                       (if (gx#stx-null? _tl3498135366_)
                                           (if (gx#stx-null? _tl3491535554_)
                                               (___kont4276642767_
                                                _hd3498035364_
                                                _hd3489335875_
                                                _hd3488435851_)
                                               (___kont4277242773_))
                                           (___kont4277242773_))))
                                   (___kont4277242773_))
                               (___kont4277242773_)))
                       (___kont4277242773_))))
               (___kont4277242773_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4277242773_)))
                                       (if (gx#stx-pair? _tl3488835861_)
                                           (let ((_e3491335549_
                                                  (gx#stx-e _tl3488835861_)))
                                             (let ((_tl3491535554_
                                                    (##cdr _e3491335549_))
                                                   (_hd3491435552_
                                                    (##car _e3491335549_)))
                                               (if (gx#stx-pair?
                                                    _hd3491435552_)
                                                   (let ((_e3491635557_
                                                          (gx#stx-e
                                                           _hd3491435552_)))
                                                     (let ((_tl3491835562_
                                                            (##cdr _e3491635557_))
                                                           (_hd3491735560_
                                                            (##car _e3491635557_)))
                                                       (if (gx#identifier?
                                                            _hd3491735560_)
                                                           (if (gx#stx-eq?
                                                                '%#quote
                                                                _hd3491735560_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3491835562_)
                           (let ((_e3491935565_ (gx#stx-e _tl3491835562_)))
                             (let ((_tl3492135570_ (##cdr _e3491935565_))
                                   (_hd3492035568_ (##car _e3491935565_)))
                               (if (gx#stx-null? _tl3492135570_)
                                   (if (gx#stx-null? _tl3491535554_)
                                       (___kont4276242763_
                                        _hd3492035568_
                                        _hd3488735859_
                                        _hd3488435851_)
                                       (___kont4277242773_))
                                   (___kont4277242773_))))
                           (___kont4277242773_))
                       (___kont4277242773_))
                   (___kont4277242773_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4277242773_))))
                                           (___kont4277242773_)))))
                               (if (gx#stx-pair? _tl3488835861_)
                                   (let ((_e3491335549_
                                          (gx#stx-e _tl3488835861_)))
                                     (let ((_tl3491535554_
                                            (##cdr _e3491335549_))
                                           (_hd3491435552_
                                            (##car _e3491335549_)))
                                       (if (gx#stx-pair? _hd3491435552_)
                                           (let ((_e3491635557_
                                                  (gx#stx-e _hd3491435552_)))
                                             (let ((_tl3491835562_
                                                    (##cdr _e3491635557_))
                                                   (_hd3491735560_
                                                    (##car _e3491635557_)))
                                               (if (gx#identifier?
                                                    _hd3491735560_)
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3491735560_)
                                                       (if (gx#stx-pair?
                                                            _tl3491835562_)
                                                           (let ((_e3491935565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3491835562_)))
                     (let ((_tl3492135570_ (##cdr _e3491935565_))
                           (_hd3492035568_ (##car _e3491935565_)))
                       (if (gx#stx-null? _tl3492135570_)
                           (if (gx#stx-null? _tl3491535554_)
                               (___kont4276242763_
                                _hd3492035568_
                                _hd3488735859_
                                _hd3488435851_)
                               (___kont4277242773_))
                           (___kont4277242773_))))
                   (___kont4277242773_))
               (___kont4277242773_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4277242773_))))
                                           (___kont4277242773_))))
                                   (___kont4277242773_)))
                           (if (gx#stx-pair? _tl3488835861_)
                               (let ((_e3491335549_ (gx#stx-e _tl3488835861_)))
                                 (let ((_tl3491535554_ (##cdr _e3491335549_))
                                       (_hd3491435552_ (##car _e3491335549_)))
                                   (if (gx#stx-pair? _hd3491435552_)
                                       (let ((_e3491635557_
                                              (gx#stx-e _hd3491435552_)))
                                         (let ((_tl3491835562_
                                                (##cdr _e3491635557_))
                                               (_hd3491735560_
                                                (##car _e3491635557_)))
                                           (if (gx#identifier? _hd3491735560_)
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3491735560_)
                                                   (if (gx#stx-pair?
                                                        _tl3491835562_)
                                                       (let ((_e3491935565_
                                                              (gx#stx-e
                                                               _tl3491835562_)))
                                                         (let ((_tl3492135570_
                                                                (##cdr _e3491935565_))
                                                               (_hd3492035568_
                                                                (##car _e3491935565_)))
                                                           (if (gx#stx-null?
                                                                _tl3492135570_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3491535554_)
                           (___kont4276242763_
                            _hd3492035568_
                            _hd3488735859_
                            _hd3488435851_)
                           (if (gx#stx-eq? '%#quote _hd3489035867_)
                               (if (gx#stx-pair? _tl3489135869_)
                                   (let ((_e3494335461_
                                          (gx#stx-e _tl3489135869_)))
                                     (let ((_tl3494535466_
                                            (##cdr _e3494335461_))
                                           (_hd3494435464_
                                            (##car _e3494335461_)))
                                       (___kont4277242773_)))
                                   (___kont4277242773_))
                               (if (gx#stx-eq? '%#quote-syntax _hd3489035867_)
                                   (if (gx#stx-pair? _tl3489135869_)
                                       (let ((_e3500335221_
                                              (gx#stx-e _tl3489135869_)))
                                         (let ((_tl3500535226_
                                                (##cdr _e3500335221_))
                                               (_hd3500435224_
                                                (##car _e3500335221_)))
                                           (___kont4277242773_)))
                                       (___kont4277242773_))
                                   (___kont4277242773_))))
                       (if (gx#stx-eq? '%#quote _hd3489035867_)
                           (if (gx#stx-pair? _tl3489135869_)
                               (let ((_e3494335461_ (gx#stx-e _tl3489135869_)))
                                 (let ((_tl3494535466_ (##cdr _e3494335461_))
                                       (_hd3494435464_ (##car _e3494335461_)))
                                   (if (gx#stx-null? _tl3494535466_)
                                       (if (gx#stx-null? _tl3491535554_)
                                           (___kont4276442765_
                                            _hd3491435552_
                                            _hd3494435464_
                                            _hd3488435851_)
                                           (___kont4277242773_))
                                       (___kont4277242773_))))
                               (___kont4277242773_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3489035867_)
                               (if (gx#stx-pair? _tl3489135869_)
                                   (let ((_e3500335221_
                                          (gx#stx-e _tl3489135869_)))
                                     (let ((_tl3500535226_
                                            (##cdr _e3500335221_))
                                           (_hd3500435224_
                                            (##car _e3500335221_)))
                                       (___kont4277242773_)))
                                   (___kont4277242773_))
                               (___kont4277242773_))))))
               (if (gx#stx-eq? '%#quote _hd3489035867_)
                   (if (gx#stx-pair? _tl3489135869_)
                       (let ((_e3494335461_ (gx#stx-e _tl3489135869_)))
                         (let ((_tl3494535466_ (##cdr _e3494335461_))
                               (_hd3494435464_ (##car _e3494335461_)))
                           (if (gx#stx-null? _tl3494535466_)
                               (if (gx#stx-null? _tl3491535554_)
                                   (___kont4276442765_
                                    _hd3491435552_
                                    _hd3494435464_
                                    _hd3488435851_)
                                   (___kont4277242773_))
                               (___kont4277242773_))))
                       (___kont4277242773_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3489035867_)
                       (if (gx#stx-pair? _tl3489135869_)
                           (let ((_e3500335221_ (gx#stx-e _tl3489135869_)))
                             (let ((_tl3500535226_ (##cdr _e3500335221_))
                                   (_hd3500435224_ (##car _e3500335221_)))
                               (___kont4277242773_)))
                           (___kont4277242773_))
                       (___kont4277242773_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3489035867_)
                                                       (if (gx#stx-pair?
                                                            _tl3489135869_)
                                                           (let ((_e3494335461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3489135869_)))
                     (let ((_tl3494535466_ (##cdr _e3494335461_))
                           (_hd3494435464_ (##car _e3494335461_)))
                       (if (gx#stx-null? _tl3494535466_)
                           (if (gx#stx-null? _tl3491535554_)
                               (___kont4276442765_
                                _hd3491435552_
                                _hd3494435464_
                                _hd3488435851_)
                               (___kont4277242773_))
                           (___kont4277242773_))))
                   (___kont4277242773_))
               (if (gx#stx-eq? '%#quote-syntax _hd3489035867_)
                   (if (gx#stx-pair? _tl3489135869_)
                       (let ((_e3500335221_ (gx#stx-e _tl3489135869_)))
                         (let ((_tl3500535226_ (##cdr _e3500335221_))
                               (_hd3500435224_ (##car _e3500335221_)))
                           (if (gx#stx-null? _tl3500535226_)
                               (if (gx#stx-eq? '%#ref _hd3491735560_)
                                   (if (gx#stx-pair? _tl3491835562_)
                                       (let ((_e3501235245_
                                              (gx#stx-e _tl3491835562_)))
                                         (let ((_tl3501435250_
                                                (##cdr _e3501235245_))
                                               (_hd3501335248_
                                                (##car _e3501235245_)))
                                           (if (gx#stx-null? _tl3501435250_)
                                               (if (gx#stx-null?
                                                    _tl3491535554_)
                                                   (___kont4276842769_
                                                    _hd3501335248_
                                                    _hd3500435224_
                                                    _hd3488435851_)
                                                   (___kont4277242773_))
                                               (___kont4277242773_))))
                                       (___kont4277242773_))
                                   (___kont4277242773_))
                               (___kont4277242773_))))
                       (___kont4277242773_))
                   (___kont4277242773_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3489035867_)
                                                   (if (gx#stx-pair?
                                                        _tl3489135869_)
                                                       (let ((_e3494335461_
                                                              (gx#stx-e
                                                               _tl3489135869_)))
                                                         (let ((_tl3494535466_
                                                                (##cdr _e3494335461_))
                                                               (_hd3494435464_
                                                                (##car _e3494335461_)))
                                                           (if (gx#stx-null?
                                                                _tl3494535466_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3491535554_)
                           (___kont4276442765_
                            _hd3491435552_
                            _hd3494435464_
                            _hd3488435851_)
                           (___kont4277242773_))
                       (___kont4277242773_))))
               (___kont4277242773_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote-syntax
                                                        _hd3489035867_)
                                                       (if (gx#stx-pair?
                                                            _tl3489135869_)
                                                           (let ((_e3500335221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3489135869_)))
                     (let ((_tl3500535226_ (##cdr _e3500335221_))
                           (_hd3500435224_ (##car _e3500335221_)))
                       (___kont4277242773_)))
                   (___kont4277242773_))
               (___kont4277242773_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-eq? '%#quote _hd3489035867_)
                                           (if (gx#stx-pair? _tl3489135869_)
                                               (let ((_e3494335461_
                                                      (gx#stx-e
                                                       _tl3489135869_)))
                                                 (let ((_tl3494535466_
                                                        (##cdr _e3494335461_))
                                                       (_hd3494435464_
                                                        (##car _e3494335461_)))
                                                   (if (gx#stx-null?
                                                        _tl3494535466_)
                                                       (if (gx#stx-null?
                                                            _tl3491535554_)
                                                           (___kont4276442765_
                                                            _hd3491435552_
                                                            _hd3494435464_
                                                            _hd3488435851_)
                                                           (___kont4277242773_))
                                                       (___kont4277242773_))))
                                               (___kont4277242773_))
                                           (if (gx#stx-eq?
                                                '%#quote-syntax
                                                _hd3489035867_)
                                               (if (gx#stx-pair?
                                                    _tl3489135869_)
                                                   (let ((_e3500335221_
                                                          (gx#stx-e
                                                           _tl3489135869_)))
                                                     (let ((_tl3500535226_
                                                            (##cdr _e3500335221_))
                                                           (_hd3500435224_
                                                            (##car _e3500335221_)))
                                                       (___kont4277242773_)))
                                                   (___kont4277242773_))
                                               (___kont4277242773_))))))
                               (if (gx#stx-eq? '%#quote _hd3489035867_)
                                   (if (gx#stx-pair? _tl3489135869_)
                                       (let ((_e3494335461_
                                              (gx#stx-e _tl3489135869_)))
                                         (let ((_tl3494535466_
                                                (##cdr _e3494335461_))
                                               (_hd3494435464_
                                                (##car _e3494335461_)))
                                           (___kont4277242773_)))
                                       (___kont4277242773_))
                                   (if (gx#stx-eq?
                                        '%#quote-syntax
                                        _hd3489035867_)
                                       (if (gx#stx-pair? _tl3489135869_)
                                           (let ((_e3500335221_
                                                  (gx#stx-e _tl3489135869_)))
                                             (let ((_tl3500535226_
                                                    (##cdr _e3500335221_))
                                                   (_hd3500435224_
                                                    (##car _e3500335221_)))
                                               (___kont4277242773_)))
                                           (___kont4277242773_))
                                       (___kont4277242773_)))))
                       (if (gx#stx-pair? _tl3488835861_)
                           (let ((_e3491335549_ (gx#stx-e _tl3488835861_)))
                             (let ((_tl3491535554_ (##cdr _e3491335549_))
                                   (_hd3491435552_ (##car _e3491335549_)))
                               (if (gx#stx-pair? _hd3491435552_)
                                   (let ((_e3491635557_
                                          (gx#stx-e _hd3491435552_)))
                                     (let ((_tl3491835562_
                                            (##cdr _e3491635557_))
                                           (_hd3491735560_
                                            (##car _e3491635557_)))
                                       (if (gx#identifier? _hd3491735560_)
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3491735560_)
                                               (if (gx#stx-pair?
                                                    _tl3491835562_)
                                                   (let ((_e3491935565_
                                                          (gx#stx-e
                                                           _tl3491835562_)))
                                                     (let ((_tl3492135570_
                                                            (##cdr _e3491935565_))
                                                           (_hd3492035568_
                                                            (##car _e3491935565_)))
                                                       (if (gx#stx-null?
                                                            _tl3492135570_)
                                                           (if (gx#stx-null?
                                                                _tl3491535554_)
                                                               (___kont4276242763_
                                                                _hd3492035568_
                                                                _hd3488735859_
                                                                _hd3488435851_)
                                                               (___kont4277242773_))
                                                           (___kont4277242773_))))
                                                   (___kont4277242773_))
                                               (___kont4277242773_))
                                           (___kont4277242773_))))
                                   (___kont4277242773_))))
                           (___kont4277242773_)))))
               (if (gx#stx-pair? _tl3488835861_)
                   (let ((_e3491335549_ (gx#stx-e _tl3488835861_)))
                     (let ((_tl3491535554_ (##cdr _e3491335549_))
                           (_hd3491435552_ (##car _e3491335549_)))
                       (if (gx#stx-pair? _hd3491435552_)
                           (let ((_e3491635557_ (gx#stx-e _hd3491435552_)))
                             (let ((_tl3491835562_ (##cdr _e3491635557_))
                                   (_hd3491735560_ (##car _e3491635557_)))
                               (if (gx#identifier? _hd3491735560_)
                                   (if (gx#stx-eq? '%#quote _hd3491735560_)
                                       (if (gx#stx-pair? _tl3491835562_)
                                           (let ((_e3491935565_
                                                  (gx#stx-e _tl3491835562_)))
                                             (let ((_tl3492135570_
                                                    (##cdr _e3491935565_))
                                                   (_hd3492035568_
                                                    (##car _e3491935565_)))
                                               (if (gx#stx-null?
                                                    _tl3492135570_)
                                                   (if (gx#stx-null?
                                                        _tl3491535554_)
                                                       (___kont4276242763_
                                                        _hd3492035568_
                                                        _hd3488735859_
                                                        _hd3488435851_)
                                                       (___kont4277242773_))
                                                   (___kont4277242773_))))
                                           (___kont4277242773_))
                                       (___kont4277242773_))
                                   (___kont4277242773_))))
                           (___kont4277242773_))))
                   (___kont4277242773_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4277242773_))
                                           (___kont4277242773_))))
                                   (___kont4277242773_))
                               (if (gx#stx-eq? '%#lambda _hd3488135843_)
                                   (if (gx#stx-pair? _tl3488235845_)
                                       (let ((_e3502735085_
                                              (gx#stx-e _tl3488235845_)))
                                         (let ((_tl3502935090_
                                                (##cdr _e3502735085_))
                                               (_hd3502835088_
                                                (##car _e3502735085_)))
                                           (if (gx#stx-pair? _hd3502835088_)
                                               (let ((_e3503035093_
                                                      (gx#stx-e
                                                       _hd3502835088_)))
                                                 (let ((_tl3503235098_
                                                        (##cdr _e3503035093_))
                                                       (_hd3503135096_
                                                        (##car _e3503035093_)))
                                                   (if (gx#stx-null?
                                                        _tl3503235098_)
                                                       (if (gx#stx-pair?
                                                            _tl3502935090_)
                                                           (let ((_e3503335101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3502935090_)))
                     (let ((_tl3503535106_ (##cdr _e3503335101_))
                           (_hd3503435104_ (##car _e3503335101_)))
                       (if (gx#stx-null? _tl3503535106_)
                           (if (gx#stx-pair? _tl3487935837_)
                               (let ((_e3503635109_ (gx#stx-e _tl3487935837_)))
                                 (let ((_tl3503835114_ (##cdr _e3503635109_))
                                       (_hd3503735112_ (##car _e3503635109_)))
                                   (if (gx#stx-pair? _hd3503735112_)
                                       (let ((_e3503935117_
                                              (gx#stx-e _hd3503735112_)))
                                         (let ((_tl3504135122_
                                                (##cdr _e3503935117_))
                                               (_hd3504035120_
                                                (##car _e3503935117_)))
                                           (if (gx#identifier? _hd3504035120_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd3504035120_)
                                                   (if (gx#stx-pair?
                                                        _tl3504135122_)
                                                       (let ((_e3504235125_
                                                              (gx#stx-e
                                                               _tl3504135122_)))
                                                         (let ((_tl3504435130_
                                                                (##cdr _e3504235125_))
                                                               (_hd3504335128_
                                                                (##car _e3504235125_)))
                                                           (if (gx#stx-null?
                                                                _tl3504435130_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3503835114_)
                           (___kont4277042771_
                            _hd3504335128_
                            _hd3503435104_
                            _hd3503135096_)
                           (___kont4277242773_))
                       (___kont4277242773_))))
               (___kont4277242773_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4277242773_))
                                               (___kont4277242773_))))
                                       (___kont4277242773_))))
                               (___kont4277242773_))
                           (___kont4277242773_))))
                   (___kont4277242773_))
               (___kont4277242773_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4277242773_))))
                                       (___kont4277242773_))
                                   (___kont4277242773_)))
                           (___kont4277242773_))))
                   (___kont4277242773_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4277242773_))
                                               (___kont4277242773_))
                                           (___kont4277242773_))))
                                   (___kont4277242773_)))))))))
                (_assert-type33846_
                 (lambda (_id34745_ _t34746_)
                   (letrec ((_super-e34748_
                             (lambda (_t34845_)
                               (let ((_tid3484634848_
                                      (##structure-ref
                                       _t34845_
                                       '2
                                       gxc#!struct-type::t
                                       '#f)))
                                 (if _tid3484634848_
                                     (let ((_tid34851_ _tid3484634848_))
                                       (gxc#optimizer-resolve-type _tid34851_))
                                     '#f)))))
                     (let _lp34750_ ((_rest34752_ _env-type33828_))
                       (let* ((_rest3475334761_ _rest34752_)
                              (_else3475534769_ (lambda () '#!void))
                              (_K3475734833_
                               (lambda (_rest34772_ _type-info34773_)
                                 (let* ((_type-info3477434786_
                                         _type-info34773_)
                                        (_else3477634794_
                                         (lambda () (_lp34750_ _rest34772_)))
                                        (_K3477834809_
                                         (lambda (_val34797_
                                                  _xt34798_
                                                  _xid34799_)
                                           (if (gx#free-identifier=?
                                                _id34745_
                                                _xid34799_)
                                               (if (eq? _t34746_ _xt34798_)
                                                   _val34797_
                                                   (if _val34797_
                                                       (if (if (##structure-instance-of?
                                                                _t34746_
                                                                'gxc#!struct-type::t)
                                                               (##structure-instance-of?
                                                                _xt34798_
                                                                'gxc#!struct-type::t)
                                                               '#f)
                                                           (let _subtype?34801_ ((_xt34803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          (_super-e34748_ _xt34798_)))
                     (if (not _xt34803_)
                         '#f
                         (if (eq? _xt34803_ _t34746_)
                             '#t
                             (_subtype?34801_ (_super-e34748_ _xt34803_)))))
                   '#f)
               (if (if (##structure-instance-of? _t34746_ 'gxc#!struct-type::t)
                       (##structure-instance-of?
                        _xt34798_
                        'gxc#!struct-type::t)
                       '#f)
                   (let _supertype?34805_ ((_t34807_
                                            (_super-e34748_ _t34746_)))
                     (if (not _t34807_)
                         (_lp34750_ _rest34772_)
                         (if (eq? _t34807_ _xt34798_)
                             '#f
                             (_supertype?34805_ (_super-e34748_ _t34807_)))))
                   (_lp34750_ _rest34772_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp34750_ _rest34772_)))))
                                   (if (##pair? _type-info3477434786_)
                                       (let ((_hd3477934812_
                                              (##car _type-info3477434786_))
                                             (_tl3478034814_
                                              (##cdr _type-info3477434786_)))
                                         (let ((_xid34817_ _hd3477934812_))
                                           (if (##pair? _tl3478034814_)
                                               (let ((_hd3478134819_
                                                      (##car _tl3478034814_))
                                                     (_tl3478234821_
                                                      (##cdr _tl3478034814_)))
                                                 (let ((_xt34824_
                                                        _hd3478134819_))
                                                   (if (##pair? _tl3478234821_)
                                                       (let ((_hd3478334826_
                                                              (##car _tl3478234821_))
                                                             (_tl3478434828_
                                                              (##cdr _tl3478234821_)))
                                                         (let ((_val34831_
                                                                _hd3478334826_))
                                                           (if (##null? _tl3478434828_)
                                                               (_K3477834809_
                                                                _val34831_
                                                                _xt34824_
                                                                _xid34817_)
                                                               (_else3477634794_))))
                                                       (_else3477634794_))))
                                               (_else3477634794_))))
                                       (_else3477634794_))))))
                         (if (##pair? _rest3475334761_)
                             (let ((_hd3475834836_ (##car _rest3475334761_))
                                   (_tl3475934838_ (##cdr _rest3475334761_)))
                               (let* ((_type-info34841_ _hd3475834836_)
                                      (_rest34843_ _tl3475934838_))
                                 (_K3475734833_ _rest34843_ _type-info34841_)))
                             (_else3475534769_)))))))
                (_assert-count33847_
                 (lambda (_id34644_ _sym34645_ _count34646_)
                   (let _lp34648_ ((_rest34650_ _env-type33828_))
                     (let* ((_rest3465134659_ _rest34650_)
                            (_else3465334667_ (lambda () '#!void))
                            (_K3465534733_
                             (lambda (_rest34670_ _type-info34671_)
                               (let* ((_type-info3467234686_ _type-info34671_)
                                      (_else3467434694_
                                       (lambda () (_lp34648_ _rest34670_)))
                                      (_K3467634702_
                                       (lambda (_val34697_
                                                _xcount34698_
                                                _xsym34699_
                                                _xid34700_)
                                         (if (if (eq? _sym34645_ _xsym34699_)
                                                 (gx#free-identifier=?
                                                  _id34644_
                                                  _xid34700_)
                                                 '#f)
                                             (if _val34697_
                                                 (fx= _count34646_
                                                      _xcount34698_)
                                                 (if (fx= _count34646_
                                                          _xcount34698_)
                                                     '#f
                                                     (_lp34648_ _rest34670_)))
                                             (_lp34648_ _rest34670_)))))
                                 (if (##pair? _type-info3467234686_)
                                     (let ((_hd3467734705_
                                            (##car _type-info3467234686_))
                                           (_tl3467834707_
                                            (##cdr _type-info3467234686_)))
                                       (let ((_xid34710_ _hd3467734705_))
                                         (if (##pair? _tl3467834707_)
                                             (let ((_hd3467934712_
                                                    (##car _tl3467834707_))
                                                   (_tl3468034714_
                                                    (##cdr _tl3467834707_)))
                                               (let ((_xsym34717_
                                                      _hd3467934712_))
                                                 (if (##pair? _tl3468034714_)
                                                     (let ((_hd3468134719_
                                                            (##car _tl3468034714_))
                                                           (_tl3468234721_
                                                            (##cdr _tl3468034714_)))
                                                       (let ((_xcount34724_
                                                              _hd3468134719_))
                                                         (if (##pair? _tl3468234721_)
                                                             (let ((_hd3468334726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl3468234721_))
                           (_tl3468434728_ (##cdr _tl3468234721_)))
                       (let ((_val34731_ _hd3468334726_))
                         (if (##null? _tl3468434728_)
                             (_K3467634702_
                              _val34731_
                              _xcount34724_
                              _xsym34717_
                              _xid34710_)
                             (_else3467434694_))))
                     (_else3467434694_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else3467434694_))))
                                             (_else3467434694_))))
                                     (_else3467434694_))))))
                       (if (##pair? _rest3465134659_)
                           (let ((_hd3465634736_ (##car _rest3465134659_))
                                 (_tl3465734738_ (##cdr _rest3465134659_)))
                             (let* ((_type-info34741_ _hd3465634736_)
                                    (_rest34743_ _tl3465734738_))
                               (_K3465534733_ _rest34743_ _type-info34741_)))
                           (_else3465334667_))))))
                (_assert-eqf33848_
                 (lambda (_id34534_ _sym34535_ _datum34536_)
                   (letrec ((_eqf34538_
                             (lambda (_sym34639_)
                               (let ((_$e34641_ _sym34639_))
                                 (if (eq? 'eq? _$e34641_)
                                     eq?
                                     (if (eq? 'eqv? _$e34641_)
                                         eqv?
                                         (if (eq? 'equal? _$e34641_)
                                             equal?
                                             (if (eq? 'free-identifier=?
                                                      _$e34641_)
                                                 gx#free-identifier=?
                                                 (if (eq? 'stx-eq? _$e34641_)
                                                     gx#stx-eq?
                                                     (gxc#raise-compile-error
                                                      '"Unexpected eqf symbol"
                                                      _body33589_
                                                      _sym34639_))))))))))
                     (let _lp34540_ ((_rest34542_ _env-type33828_))
                       (let* ((_rest3454334551_ _rest34542_)
                              (_else3454534559_ (lambda () '#!void))
                              (_K3454734627_
                               (lambda (_rest34562_ _type-info34563_)
                                 (let* ((_type-info3456434578_
                                         _type-info34563_)
                                        (_else3456634586_
                                         (lambda () (_lp34540_ _rest34562_)))
                                        (_K3456834596_
                                         (lambda (_val34589_
                                                  _xdatum34590_
                                                  _xsym34591_
                                                  _xid34592_)
                                           (if (if (eq? _sym34535_ _xsym34591_)
                                                   (gx#free-identifier=?
                                                    _id34534_
                                                    _xid34592_)
                                                   '#f)
                                               (let ((_=?34594_
                                                      (_eqf34538_ _sym34535_)))
                                                 (if _val34589_
                                                     (_=?34594_
                                                      _datum34536_
                                                      _xdatum34590_)
                                                     (if (_=?34594_
                                                          _datum34536_
                                                          _xdatum34590_)
                                                         '#f
                                                         (_lp34540_
                                                          _rest34562_))))
                                               (_lp34540_ _rest34562_)))))
                                   (if (##pair? _type-info3456434578_)
                                       (let ((_hd3456934599_
                                              (##car _type-info3456434578_))
                                             (_tl3457034601_
                                              (##cdr _type-info3456434578_)))
                                         (let ((_xid34604_ _hd3456934599_))
                                           (if (##pair? _tl3457034601_)
                                               (let ((_hd3457134606_
                                                      (##car _tl3457034601_))
                                                     (_tl3457234608_
                                                      (##cdr _tl3457034601_)))
                                                 (let ((_xsym34611_
                                                        _hd3457134606_))
                                                   (if (##pair? _tl3457234608_)
                                                       (let ((_hd3457334613_
                                                              (##car _tl3457234608_))
                                                             (_tl3457434615_
                                                              (##cdr _tl3457234608_)))
                                                         (let ((_xdatum34618_
                                                                _hd3457334613_))
                                                           (if (##pair? _tl3457434615_)
                                                               (let ((_hd3457534620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##car _tl3457434615_))
                             (_tl3457634622_ (##cdr _tl3457434615_)))
                         (let ((_val34625_ _hd3457534620_))
                           (if (##null? _tl3457634622_)
                               (_K3456834596_
                                _val34625_
                                _xdatum34618_
                                _xsym34611_
                                _xid34604_)
                               (_else3456634586_))))
                       (_else3456634586_))))
               (_else3456634586_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_else3456634586_))))
                                       (_else3456634586_))))))
                         (if (##pair? _rest3454334551_)
                             (let ((_hd3454834630_ (##car _rest3454334551_))
                                   (_tl3454934632_ (##cdr _rest3454334551_)))
                               (let* ((_type-info34635_ _hd3454834630_)
                                      (_rest34637_ _tl3454934632_))
                                 (_K3454734627_ _rest34637_ _type-info34635_)))
                             (_else3454534559_)))))))
                (_bind-e__4117141172_
                 (lambda (_bind34437_ _body34438_ _continue34439_)
                   (let _lp34441_ ((_rest34443_ _bind34437_)
                                   (_subst34444_ '())
                                   (_locals34445_ '())
                                   (_env34446_ _env-bind33829_))
                     (let* ((_rest3444734455_ _rest34443_)
                            (_else3444934469_
                             (lambda ()
                               (let* ((_body34463_
                                       (if (null? _subst34444_)
                                           _body34438_
                                           (gxc#apply-expression-subst*
                                            _body34438_
                                            _subst34444_)))
                                      (_body34466_
                                       (_do-bind!33840_
                                        _env34446_
                                        (lambda ()
                                          (_continue34439_ _body34463_)))))
                                 (if (null? _locals34445_)
                                     _body34466_
                                     (cons '%#let-values
                                           (cons _locals34445_
                                                 (cons _body34466_ '())))))))
                            (_K3445134510_
                             (lambda (_rest34472_ _bind34473_)
                               (let* ((_bind3447434481_ _bind34473_)
                                      (_E3447634485_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _bind3447434481_)))
                                      (_K3447734498_
                                       (lambda (_expr34488_ _id34489_)
                                         (let* ((_sexpr34491_
                                                 (gxc#apply-generate-runtime-repr
                                                  _expr34488_))
                                                (_$e34493_
                                                 (assget _sexpr34491_
                                                         _env-bind33829_)))
                                           (if _$e34493_
                                               ((lambda (_xid34496_)
                                                  (_lp34441_
                                                   _rest34472_
                                                   (cons (cons _id34489_
                                                               _xid34496_)
                                                         _subst34444_)
                                                   _locals34445_
                                                   _env34446_))
                                                _$e34493_)
                                               (_lp34441_
                                                _rest34472_
                                                _subst34444_
                                                (cons (cons (cons _id34489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _expr34488_ '()))
              _locals34445_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _sexpr34491_
                                                            _id34489_)
                                                      _env34446_)))))))
                                 (if (##pair? _bind3447434481_)
                                     (let ((_hd3447834501_
                                            (##car _bind3447434481_))
                                           (_tl3447934503_
                                            (##cdr _bind3447434481_)))
                                       (let* ((_id34506_ _hd3447834501_)
                                              (_expr34508_ _tl3447934503_))
                                         (_K3447734498_
                                          _expr34508_
                                          _id34506_)))
                                     (_E3447634485_))))))
                       (if (##pair? _rest3444734455_)
                           (let ((_hd3445234513_ (##car _rest3444734455_))
                                 (_tl3445334515_ (##cdr _rest3444734455_)))
                             (let* ((_bind34518_ _hd3445234513_)
                                    (_rest34520_ _tl3445334515_))
                               (_K3445134510_ _rest34520_ _bind34518_)))
                           (_else3444934469_))))))
                (_bind-e__0__4117341174_
                 (lambda (_bind34525_ _body34526_)
                   (let ((_continue34528_ _optimize-e33842_))
                     (_bind-e__4117141172_
                      _bind34525_
                      _body34526_
                      _continue34528_))))
                (_bind-e33849_
                 (lambda _g44270_
                   (let ((_g44269_ (length _g44270_)))
                     (cond ((##fx= _g44269_ 2)
                            (apply _bind-e__0__4117341174_ _g44270_))
                           ((##fx= _g44269_ 3)
                            (apply _bind-e__4117141172_ _g44270_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g44270_))))))
                (_lookup-block33850_
                 (lambda (_id34432_)
                   (find (lambda (_block34434_)
                           (gx#free-identifier=? (car _block34434_) _id34432_))
                         _blocks33592_)))
                (_inline-block33851_
                 (lambda (_block34308_ _args34309_)
                   (let* ((_kont34311_ (caddr _block34308_))
                          (_g3431334339_
                           (lambda (_g3431434336_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3431434336_)))
                          (_g3431234429_
                           (lambda (_g3431434342_)
                             (if (gx#stx-pair? _g3431434342_)
                                 (let ((_e3431734344_
                                        (gx#stx-e _g3431434342_)))
                                   (let ((_hd3431834347_ (##car _e3431734344_))
                                         (_tl3431934349_
                                          (##cdr _e3431734344_)))
                                     (if (gx#identifier? _hd3431834347_)
                                         (if (gx#stx-eq?
                                              '%#lambda
                                              _hd3431834347_)
                                             (if (gx#stx-pair? _tl3431934349_)
                                                 (let ((_e3432034352_
                                                        (gx#stx-e
                                                         _tl3431934349_)))
                                                   (let ((_hd3432134355_
                                                          (##car _e3432034352_))
                                                         (_tl3432234357_
                                                          (##cdr _e3432034352_)))
                                                     (if (gx#stx-pair/null?
                                                          _hd3432134355_)
                                                         (let ((_g44271_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3432134355_
                         '0)))
                   (begin
                     (let ((_g44272_
                            (if (##values? _g44271_)
                                (##vector-length _g44271_)
                                1)))
                       (if (not (##fx= _g44272_ 2))
                           (error "Context expects 2 values" _g44272_)))
                     (let ((_target3432334360_ (##vector-ref _g44271_ 0))
                           (_tl3432534362_ (##vector-ref _g44271_ 1)))
                       (if (gx#stx-null? _tl3432534362_)
                           (letrec ((_loop3432634365_
                                     (lambda (_hd3432434368_ _id3433034370_)
                                       (if (gx#stx-pair? _hd3432434368_)
                                           (let ((_e3432734373_
                                                  (gx#stx-e _hd3432434368_)))
                                             (let ((_lp-hd3432834376_
                                                    (##car _e3432734373_))
                                                   (_lp-tl3432934378_
                                                    (##cdr _e3432734373_)))
                                               (_loop3432634365_
                                                _lp-tl3432934378_
                                                (cons _lp-hd3432834376_
                                                      _id3433034370_))))
                                           (let ((_id3433134381_
                                                  (reverse _id3433034370_)))
                                             (if (gx#stx-pair? _tl3432234357_)
                                                 (let ((_e3433234384_
                                                        (gx#stx-e
                                                         _tl3432234357_)))
                                                   (let ((_hd3433334387_
                                                          (##car _e3433234384_))
                                                         (_tl3433434389_
                                                          (##cdr _e3433234384_)))
                                                     (if (gx#stx-null?
                                                          _tl3433434389_)
                                                         ((lambda (_L34392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L34393_)
                    (if (null? (begin
                                 '#!void
                                 (foldr1 (lambda (_g3441234415_ _g3441334417_)
                                           (cons _g3441234415_ _g3441334417_))
                                         '()
                                         _L34393_)))
                        _L34392_
                        (let ((_subst34427_
                               (map cons
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3441934422_
                                                       _g3442034424_)
                                                (cons _g3441934422_
                                                      _g3442034424_))
                                              '()
                                              _L34393_))
                                    _args34309_)))
                          (gxc#apply-expression-subst*
                           _L34392_
                           _subst34427_))))
                  _hd3433334387_
                  _id3433134381_)
                 (_g3431334339_ _g3431434342_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3431334339_
                                                  _g3431434342_)))))))
                             (_loop3432634365_ _target3432334360_ '()))
                           (_g3431334339_ _g3431434342_)))))
                 (_g3431334339_ _g3431434342_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3431334339_ _g3431434342_))
                                             (_g3431334339_ _g3431434342_))
                                         (_g3431334339_ _g3431434342_))))
                                 (_g3431334339_ _g3431434342_)))))
                     (_g3431234429_ _kont34311_))))
                (_nonlinear-block?33852_
                 (lambda (_block33857_)
                   (letrec ((_nonlinear-expr?33859_
                             (lambda (_expr33967_)
                               (let* ((___stx4322843229_ _expr33967_)
                                      (_g3397334039_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4322843229_))))
                                 (let ((___kont4323043231_ (lambda () '#t))
                                       (___kont4323243233_
                                        (lambda (_L34238_)
                                          (let* ((___stx4321043211_ _L34238_)
                                                 (_g3425634265_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx4321043211_))))
                                            (let ((___kont4321243213_
                                                   (lambda () '#f))
                                                  (___kont4321443215_
                                                   (lambda () '#t)))
                                              (if (gx#stx-pair?
                                                   ___stx4321043211_)
                                                  (let ((_e3425834277_
                                                         (gx#stx-e
                                                          ___stx4321043211_)))
                                                    (let ((_tl3426034282_
                                                           (##cdr _e3425834277_))
                                                          (_hd3425934280_
                                                           (##car _e3425834277_)))
                                                      (if (gx#identifier?
                                                           _hd3425934280_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd3425934280_)
                                                              (___kont4321243213_)
                                                              (___kont4321443215_))
                                                          (___kont4321443215_))))
                                                  (___kont4321443215_))))))
                                       (___kont4323643237_
                                        (lambda (_L34136_)
                                          (_nonlinear-expr?33859_ _L34136_)))
                                       (___kont4323843239_
                                        (lambda (_L34083_ _L34084_ _L34085_)
                                          (let ((_$e34104_
                                                 (_nonlinear-expr?33859_
                                                  _L34084_)))
                                            (if _$e34104_
                                                _$e34104_
                                                (_nonlinear-expr?33859_
                                                 _L34083_)))))
                                       (___kont4324043241_ (lambda () '#f)))
                                   (let* ((___match4329143292_
                                           (lambda (_e3401134112_
                                                    _hd3401234115_
                                                    _tl3401334117_
                                                    _e3401434120_
                                                    _hd3401534123_
                                                    _tl3401634125_)
                                             (if (gx#stx-pair? _tl3401634125_)
                                                 (let ((_e3401734128_
                                                        (gx#stx-e
                                                         _tl3401634125_)))
                                                   (let ((_tl3401934133_
                                                          (##cdr _e3401734128_))
                                                         (_hd3401834131_
                                                          (##car _e3401734128_)))
                                                     (if (gx#stx-null?
                                                          _tl3401934133_)
                                                         (___kont4323643237_
                                                          _hd3401834131_)
                                                         (___kont4324043241_))))
                                                 (___kont4324043241_))))
                                          (___match4327543276_
                                           (lambda (_e3397934154_
                                                    _hd3398034157_
                                                    _tl3398134159_
                                                    _e3398234162_
                                                    _hd3398334165_
                                                    _tl3398434167_
                                                    ___splice4323443235_
                                                    _target3398534170_
                                                    _tl3398734172_)
                                             (letrec ((_loop3398834175_
                                                       (lambda (_hd3398634178_)
                                                         (if (gx#stx-pair?
                                                              _hd3398634178_)
                                                             (let ((_e3398934181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3398634178_)))
                       (let ((_lp-tl3399134186_ (##cdr _e3398934181_))
                             (_lp-hd3399034184_ (##car _e3398934181_)))
                         (if (gx#stx-pair? _lp-hd3399034184_)
                             (let ((_e3399234189_
                                    (gx#stx-e _lp-hd3399034184_)))
                               (let ((_tl3399434194_ (##cdr _e3399234189_))
                                     (_hd3399334192_ (##car _e3399234189_)))
                                 (if (gx#stx-pair? _hd3399334192_)
                                     (let ((_e3399534197_
                                            (gx#stx-e _hd3399334192_)))
                                       (let ((_tl3399734202_
                                              (##cdr _e3399534197_))
                                             (_hd3399634200_
                                              (##car _e3399534197_)))
                                         (if (gx#stx-null? _tl3399734202_)
                                             (if (gx#stx-pair? _tl3399434194_)
                                                 (let ((_e3399834205_
                                                        (gx#stx-e
                                                         _tl3399434194_)))
                                                   (let ((_tl3400034210_
                                                          (##cdr _e3399834205_))
                                                         (_hd3399934208_
                                                          (##car _e3399834205_)))
                                                     (if (gx#stx-pair?
                                                          _hd3399934208_)
                                                         (let ((_e3400134213_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3399934208_)))
                   (let ((_tl3400334218_ (##cdr _e3400134213_))
                         (_hd3400234216_ (##car _e3400134213_)))
                     (if (gx#identifier? _hd3400234216_)
                         (if (gx#stx-eq? '%#ref _hd3400234216_)
                             (if (gx#stx-pair? _tl3400334218_)
                                 (let ((_e3400434221_
                                        (gx#stx-e _tl3400334218_)))
                                   (let ((_tl3400634226_ (##cdr _e3400434221_))
                                         (_hd3400534224_
                                          (##car _e3400434221_)))
                                     (if (gx#stx-null? _tl3400634226_)
                                         (if (gx#stx-null? _tl3400034210_)
                                             (_loop3398834175_
                                              _lp-tl3399134186_)
                                             (___match4329143292_
                                              _e3397934154_
                                              _hd3398034157_
                                              _tl3398134159_
                                              _e3398234162_
                                              _hd3398334165_
                                              _tl3398434167_))
                                         (___match4329143292_
                                          _e3397934154_
                                          _hd3398034157_
                                          _tl3398134159_
                                          _e3398234162_
                                          _hd3398334165_
                                          _tl3398434167_))))
                                 (___match4329143292_
                                  _e3397934154_
                                  _hd3398034157_
                                  _tl3398134159_
                                  _e3398234162_
                                  _hd3398334165_
                                  _tl3398434167_))
                             (___match4329143292_
                              _e3397934154_
                              _hd3398034157_
                              _tl3398134159_
                              _e3398234162_
                              _hd3398334165_
                              _tl3398434167_))
                         (___match4329143292_
                          _e3397934154_
                          _hd3398034157_
                          _tl3398134159_
                          _e3398234162_
                          _hd3398334165_
                          _tl3398434167_))))
                 (___match4329143292_
                  _e3397934154_
                  _hd3398034157_
                  _tl3398134159_
                  _e3398234162_
                  _hd3398334165_
                  _tl3398434167_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___match4329143292_
                                                  _e3397934154_
                                                  _hd3398034157_
                                                  _tl3398134159_
                                                  _e3398234162_
                                                  _hd3398334165_
                                                  _tl3398434167_))
                                             (___match4329143292_
                                              _e3397934154_
                                              _hd3398034157_
                                              _tl3398134159_
                                              _e3398234162_
                                              _hd3398334165_
                                              _tl3398434167_))))
                                     (___match4329143292_
                                      _e3397934154_
                                      _hd3398034157_
                                      _tl3398134159_
                                      _e3398234162_
                                      _hd3398334165_
                                      _tl3398434167_))))
                             (___match4329143292_
                              _e3397934154_
                              _hd3398034157_
                              _tl3398134159_
                              _e3398234162_
                              _hd3398334165_
                              _tl3398434167_))))
                     (let ()
                       (if (gx#stx-pair? _tl3398434167_)
                           (let ((_e3400734230_ (gx#stx-e _tl3398434167_)))
                             (let ((_tl3400934235_ (##cdr _e3400734230_))
                                   (_hd3400834233_ (##car _e3400734230_)))
                               (if (gx#stx-null? _tl3400934235_)
                                   (___kont4323243233_ _hd3400834233_)
                                   (___kont4324043241_))))
                           (___kont4324043241_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop3398834175_
                                                _target3398534170_)))))
                                     (if (gx#stx-pair? ___stx4322843229_)
                                         (let ((_e3397534295_
                                                (gx#stx-e ___stx4322843229_)))
                                           (let ((_tl3397734300_
                                                  (##cdr _e3397534295_))
                                                 (_hd3397634298_
                                                  (##car _e3397534295_)))
                                             (if (gx#identifier?
                                                  _hd3397634298_)
                                                 (if (gx#stx-eq?
                                                      '%#letrec-values
                                                      _hd3397634298_)
                                                     (___kont4323043231_)
                                                     (if (gx#stx-eq?
                                                          '%#let-values
                                                          _hd3397634298_)
                                                         (if (gx#stx-pair?
                                                              _tl3397734300_)
                                                             (let ((_e3398234162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3397734300_)))
                       (let ((_tl3398434167_ (##cdr _e3398234162_))
                             (_hd3398334165_ (##car _e3398234162_)))
                         (if (gx#stx-pair/null? _hd3398334165_)
                             (let ((___splice4323443235_
                                    (gx#syntax-split-splice
                                     _hd3398334165_
                                     '0)))
                               (let ((_tl3398734172_
                                      (##vector-ref ___splice4323443235_ '1))
                                     (_target3398534170_
                                      (##vector-ref ___splice4323443235_ '0)))
                                 (if (gx#stx-null? _tl3398734172_)
                                     (___match4327543276_
                                      _e3397534295_
                                      _hd3397634298_
                                      _tl3397734300_
                                      _e3398234162_
                                      _hd3398334165_
                                      _tl3398434167_
                                      ___splice4323443235_
                                      _target3398534170_
                                      _tl3398734172_)
                                     (if (gx#stx-pair? _tl3398434167_)
                                         (let ((_e3401734128_
                                                (gx#stx-e _tl3398434167_)))
                                           (let ((_tl3401934133_
                                                  (##cdr _e3401734128_))
                                                 (_hd3401834131_
                                                  (##car _e3401734128_)))
                                             (if (gx#stx-null? _tl3401934133_)
                                                 (___kont4323643237_
                                                  _hd3401834131_)
                                                 (___kont4324043241_))))
                                         (___kont4324043241_)))))
                             (if (gx#stx-pair? _tl3398434167_)
                                 (let ((_e3401734128_
                                        (gx#stx-e _tl3398434167_)))
                                   (let ((_tl3401934133_ (##cdr _e3401734128_))
                                         (_hd3401834131_
                                          (##car _e3401734128_)))
                                     (if (gx#stx-null? _tl3401934133_)
                                         (___kont4323643237_ _hd3401834131_)
                                         (___kont4324043241_))))
                                 (___kont4324043241_)))))
                     (___kont4324043241_))
                 (if (gx#stx-eq? '%#if _hd3397634298_)
                     (if (gx#stx-pair? _tl3397734300_)
                         (let ((_e3402634059_ (gx#stx-e _tl3397734300_)))
                           (let ((_tl3402834064_ (##cdr _e3402634059_))
                                 (_hd3402734062_ (##car _e3402634059_)))
                             (if (gx#stx-pair? _tl3402834064_)
                                 (let ((_e3402934067_
                                        (gx#stx-e _tl3402834064_)))
                                   (let ((_tl3403134072_ (##cdr _e3402934067_))
                                         (_hd3403034070_
                                          (##car _e3402934067_)))
                                     (if (gx#stx-pair? _tl3403134072_)
                                         (let ((_e3403234075_
                                                (gx#stx-e _tl3403134072_)))
                                           (let ((_tl3403434080_
                                                  (##cdr _e3403234075_))
                                                 (_hd3403334078_
                                                  (##car _e3403234075_)))
                                             (if (gx#stx-null? _tl3403434080_)
                                                 (___kont4323843239_
                                                  _hd3403334078_
                                                  _hd3403034070_
                                                  _hd3402734062_)
                                                 (___kont4324043241_))))
                                         (___kont4324043241_))))
                                 (___kont4324043241_))))
                         (___kont4324043241_))
                     (___kont4324043241_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont4324043241_))))
                                         (___kont4324043241_))))))))
                     (let* ((_kont33861_ (caddr _block33857_))
                            (_g3386333889_
                             (lambda (_g3386433886_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g3386433886_)))
                            (_g3386233964_
                             (lambda (_g3386433892_)
                               (if (gx#stx-pair? _g3386433892_)
                                   (let ((_e3386733894_
                                          (gx#stx-e _g3386433892_)))
                                     (let ((_hd3386833897_
                                            (##car _e3386733894_))
                                           (_tl3386933899_
                                            (##cdr _e3386733894_)))
                                       (if (gx#identifier? _hd3386833897_)
                                           (if (gx#stx-eq?
                                                '%#lambda
                                                _hd3386833897_)
                                               (if (gx#stx-pair?
                                                    _tl3386933899_)
                                                   (let ((_e3387033902_
                                                          (gx#stx-e
                                                           _tl3386933899_)))
                                                     (let ((_hd3387133905_
                                                            (##car _e3387033902_))
                                                           (_tl3387233907_
                                                            (##cdr _e3387033902_)))
                                                       (if (gx#stx-pair/null?
                                                            _hd3387133905_)
                                                           (let ((_g44273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _hd3387133905_ '0)))
                     (begin
                       (let ((_g44274_
                              (if (##values? _g44273_)
                                  (##vector-length _g44273_)
                                  1)))
                         (if (not (##fx= _g44274_ 2))
                             (error "Context expects 2 values" _g44274_)))
                       (let ((_target3387333910_ (##vector-ref _g44273_ 0))
                             (_tl3387533912_ (##vector-ref _g44273_ 1)))
                         (if (gx#stx-null? _tl3387533912_)
                             (letrec ((_loop3387633915_
                                       (lambda (_hd3387433918_ _id3388033920_)
                                         (if (gx#stx-pair? _hd3387433918_)
                                             (let ((_e3387733923_
                                                    (gx#stx-e _hd3387433918_)))
                                               (let ((_lp-hd3387833926_
                                                      (##car _e3387733923_))
                                                     (_lp-tl3387933928_
                                                      (##cdr _e3387733923_)))
                                                 (_loop3387633915_
                                                  _lp-tl3387933928_
                                                  (cons _lp-hd3387833926_
                                                        _id3388033920_))))
                                             (let ((_id3388133931_
                                                    (reverse _id3388033920_)))
                                               (if (gx#stx-pair?
                                                    _tl3387233907_)
                                                   (let ((_e3388233934_
                                                          (gx#stx-e
                                                           _tl3387233907_)))
                                                     (let ((_hd3388333937_
                                                            (##car _e3388233934_))
                                                           (_tl3388433939_
                                                            (##cdr _e3388233934_)))
                                                       (if (gx#stx-null?
                                                            _tl3388433939_)
                                                           ((lambda (_L33942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L33943_)
                      (_nonlinear-expr?33859_ _L33942_))
                    _hd3388333937_
                    _id3388133931_)
                   (_g3386333889_ _g3386433892_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3386333889_
                                                    _g3386433892_)))))))
                               (_loop3387633915_ _target3387333910_ '()))
                             (_g3386333889_ _g3386433892_)))))
                   (_g3386333889_ _g3386433892_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3386333889_
                                                    _g3386433892_))
                                               (_g3386333889_ _g3386433892_))
                                           (_g3386333889_ _g3386433892_))))
                                   (_g3386333889_ _g3386433892_)))))
                       (_g3386233964_ _kont33861_))))))
        (_do-assert33831_
         _assert33590_
         (lambda ()
           (_do-bind33838_
            _bind33591_
            (lambda ()
              (if (memq '@match:prefix (gxc#current-annotation-optimizer))
                  (_do-splice!33841_
                   (lambda () (_optimize-e33842_ _body33589_)))
                  (_optimize-e33842_ _body33589_)))))))))
  (define gxc#optimize-match-prune-blocks
    (lambda (_blocks33501_ _konts33502_)
      (letrec* ((_rtab33504_ (make-table 'test: eq?)))
        (begin
          (for-each
           (lambda (_block33506_)
             (gxc#apply-collect-runtime-refs (caddr _block33506_) _rtab33504_))
           _konts33502_)
          (let _lp33508_ ((_rest33510_ _blocks33501_) (_r33511_ '()))
            (let* ((_rest3351233520_ _rest33510_)
                   (_else3351433528_ (lambda () (reverse _r33511_)))
                   (_K3351633577_
                    (lambda (_rest33531_ _block33532_)
                      (let* ((_block3353333544_ _block33532_)
                             (_E3353533548_
                              (lambda ()
                                (error '"No clause matching"
                                       _block3353333544_)))
                             (_K3353633555_
                              (lambda (_kont33551_ _type33552_ _name33553_)
                                (if (table-ref
                                     _rtab33504_
                                     (gxc#identifier-symbol _name33553_)
                                     '#f)
                                    (begin
                                      (gxc#apply-collect-runtime-refs
                                       _kont33551_
                                       _rtab33504_)
                                      (_lp33508_
                                       _rest33531_
                                       (cons _block33532_ _r33511_)))
                                    (_lp33508_ _rest33531_ _r33511_)))))
                        (if (##pair? _block3353333544_)
                            (let ((_hd3353733558_ (##car _block3353333544_))
                                  (_tl3353833560_ (##cdr _block3353333544_)))
                              (let ((_name33563_ _hd3353733558_))
                                (if (##pair? _tl3353833560_)
                                    (let ((_hd3353933565_
                                           (##car _tl3353833560_))
                                          (_tl3354033567_
                                           (##cdr _tl3353833560_)))
                                      (let ((_type33570_ _hd3353933565_))
                                        (if (##pair? _tl3354033567_)
                                            (let* ((_hd3354133572_
                                                    (##car _tl3354033567_))
                                                   (_kont33575_
                                                    _hd3354133572_))
                                              (_K3353633555_
                                               _kont33575_
                                               _type33570_
                                               _name33563_))
                                            (_E3353533548_))))
                                    (_E3353533548_))))
                            (_E3353533548_))))))
              (if (##pair? _rest3351233520_)
                  (let ((_hd3351733580_ (##car _rest3351233520_))
                        (_tl3351833582_ (##cdr _rest3351233520_)))
                    (let* ((_block33585_ _hd3351733580_)
                           (_rest33587_ _tl3351833582_))
                      (_K3351633577_ _rest33587_ _block33585_)))
                  (_else3351433528_))))))))
  (define gxc#optimize-match-fuse-restart-blocks
    (lambda (_blocks33425_ _konts33426_)
      (let* ((_blocks3342733443_ _blocks33425_)
             (_else3342933451_ (lambda () _blocks33425_))
             (_K3343133469_
              (lambda (_rest33454_ _kont33455_ _name33456_)
                (letrec* ((_rtab33458_ (make-table 'test: eq?)))
                  (begin
                    (for-each
                     (lambda (_block33460_)
                       (gxc#apply-collect-runtime-refs
                        (caddr _block33460_)
                        _rtab33458_))
                     _konts33426_)
                    (if (fx= (table-ref
                              _rtab33458_
                              (gxc#identifier-symbol _name33456_))
                             '1)
                        (let* ((_rblock33464_
                                (find (lambda (_block33462_)
                                        (gxc#apply-find-var-refs
                                         (caddr _block33462_)
                                         (cons _name33456_ '())))
                                      _konts33426_))
                               (_assert33466_
                                (gxc#optimize-match-assert-restart
                                 _rblock33464_
                                 _name33456_)))
                          (cons (cons _name33456_
                                      (cons 'restart:
                                            (cons _kont33455_
                                                  (cons _assert33466_ '()))))
                                _rest33454_))
                        _blocks33425_))))))
        (if (##pair? _blocks3342733443_)
            (let ((_hd3343233472_ (##car _blocks3342733443_))
                  (_tl3343333474_ (##cdr _blocks3342733443_)))
              (if (##pair? _hd3343233472_)
                  (let ((_hd3343433477_ (##car _hd3343233472_))
                        (_tl3343533479_ (##cdr _hd3343233472_)))
                    (let ((_name33482_ _hd3343433477_))
                      (if (##pair? _tl3343533479_)
                          (let ((_hd3343633484_ (##car _tl3343533479_))
                                (_tl3343733486_ (##cdr _tl3343533479_)))
                            (if (##eq? _hd3343633484_ 'restart:)
                                (if (##pair? _tl3343733486_)
                                    (let ((_hd3343833489_
                                           (##car _tl3343733486_))
                                          (_tl3343933491_
                                           (##cdr _tl3343733486_)))
                                      (let ((_kont33494_ _hd3343833489_))
                                        (if (##pair? _tl3343933491_)
                                            (let ((_tl3344133496_
                                                   (##cdr _tl3343933491_)))
                                              (if (##null? _tl3344133496_)
                                                  (let ((_rest33499_
                                                         _tl3343333474_))
                                                    (_K3343133469_
                                                     _rest33499_
                                                     _kont33494_
                                                     _name33482_))
                                                  (_else3342933451_)))
                                            (_else3342933451_))))
                                    (_else3342933451_))
                                (_else3342933451_)))
                          (_else3342933451_))))
                  (_else3342933451_)))
            (_else3342933451_)))))
  (define gxc#optimize-match-assert-restart
    (lambda (_block32821_ _name32822_)
      (letrec ((_assert-restart32824_
                (lambda (_expr32980_ _assert32981_)
                  (let* ((___stx4333243333_ _expr32980_)
                         (_g3298733084_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4333243333_))))
                    (let ((___kont4333443335_
                           (lambda (_L33400_ _L33401_ _L33402_)
                             (let ((_$e33419_
                                    (_assert-restart32824_
                                     _L33401_
                                     (cons (cons _L33402_ '#t)
                                           _assert32981_))))
                               (if _$e33419_
                                   _$e33419_
                                   (_assert-restart32824_
                                    _L33400_
                                    (cons (cons _L33402_ '#f)
                                          _assert32981_))))))
                          (___kont4333643337_
                           (lambda (_L33348_)
                             (if (gx#free-identifier=? _L33348_ _name32822_)
                                 _assert32981_
                                 '#f)))
                          (___kont4333843339_
                           (lambda (_L33298_)
                             (_assert-restart32824_ _L33298_ _assert32981_)))
                          (___kont4334043341_
                           (lambda (_L33224_
                                    _L33225_
                                    _L33226_
                                    _L33227_
                                    _L33228_)
                             (_assert-restart32824_ _L33226_ _assert32981_)))
                          (___kont4334643347_ (lambda () '#f)))
                      (let ((___match4350143502_
                             (lambda (_e3303233096_
                                      _hd3303333099_
                                      _tl3303433101_
                                      _e3303533104_
                                      _hd3303633107_
                                      _tl3303733109_
                                      _e3303833112_
                                      _hd3303933115_
                                      _tl3304033117_
                                      _e3304133120_
                                      _hd3304233123_
                                      _tl3304333125_
                                      _e3304433128_
                                      _hd3304533131_
                                      _tl3304633133_
                                      _e3304733136_
                                      _hd3304833139_
                                      _tl3304933141_
                                      _e3305033144_
                                      _hd3305133147_
                                      _tl3305233149_
                                      _e3305333152_
                                      _hd3305433155_
                                      _tl3305533157_
                                      ___splice4334243343_
                                      _target3305633160_
                                      _tl3305833162_)
                               (letrec ((_loop3305933165_
                                         (lambda (_hd3305733168_
                                                  _id3306333170_)
                                           (if (gx#stx-pair? _hd3305733168_)
                                               (let ((_e3306033173_
                                                      (gx#stx-e
                                                       _hd3305733168_)))
                                                 (let ((_lp-tl3306233178_
                                                        (##cdr _e3306033173_))
                                                       (_lp-hd3306133176_
                                                        (##car _e3306033173_)))
                                                   (_loop3305933165_
                                                    _lp-tl3306233178_
                                                    (cons _lp-hd3306133176_
                                                          _id3306333170_))))
                                               (let ((_id3306433181_
                                                      (reverse _id3306333170_)))
                                                 (if (gx#stx-pair?
                                                      _tl3305533157_)
                                                     (let ((_e3306533184_
                                                            (gx#stx-e
                                                             _tl3305533157_)))
                                                       (let ((_tl3306733189_
                                                              (##cdr _e3306533184_))
                                                             (_hd3306633187_
                                                              (##car _e3306533184_)))
                                                         (if (gx#stx-null?
                                                              _tl3306733189_)
                                                             (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl3304933141_)
                         (if (gx#stx-pair/null? _tl3304033117_)
                             (let ((___splice4334443345_
                                    (gx#syntax-split-splice
                                     _tl3304033117_
                                     '0)))
                               (let ((_tl3307033194_
                                      (##vector-ref ___splice4334443345_ '1))
                                     (_target3306833192_
                                      (##vector-ref ___splice4334443345_ '0)))
                                 (if (gx#stx-null? _tl3307033194_)
                                     (letrec ((_loop3307133197_
                                               (lambda (_hd3306933200_
                                                        _bind3307533202_)
                                                 (if (gx#stx-pair?
                                                      _hd3306933200_)
                                                     (let ((_e3307233205_
                                                            (gx#stx-e
                                                             _hd3306933200_)))
                                                       (let ((_lp-tl3307433210_
                                                              (##cdr _e3307233205_))
                                                             (_lp-hd3307333208_
                                                              (##car _e3307233205_)))
                                                         (_loop3307133197_
                                                          _lp-tl3307433210_
                                                          (cons _lp-hd3307333208_
                                                                _bind3307533202_))))
                                                     (let ((_bind3307633213_
                                                            (reverse _bind3307533202_)))
                                                       (if (gx#stx-pair?
                                                            _tl3303733109_)
                                                           (let ((_e3307733216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3303733109_)))
                     (let ((_tl3307933221_ (##cdr _e3307733216_))
                           (_hd3307833219_ (##car _e3307733216_)))
                       (if (gx#stx-null? _tl3307933221_)
                           (___kont4334043341_
                            _hd3307833219_
                            _bind3307633213_
                            _hd3306633187_
                            _id3306433181_
                            _hd3304533131_)
                           (___kont4334643347_))))
                   (___kont4334643347_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop3307133197_
                                        _target3306833192_
                                        '()))
                                     (___kont4334643347_))))
                             (___kont4334643347_))
                         (___kont4334643347_))
                     (___kont4334643347_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4334643347_)))))))
                                 (_loop3305933165_ _target3305633160_ '())))))
                        (if (gx#stx-pair? ___stx4333243333_)
                            (let ((_e3299233368_ (gx#stx-e ___stx4333243333_)))
                              (let ((_tl3299433373_ (##cdr _e3299233368_))
                                    (_hd3299333371_ (##car _e3299233368_)))
                                (if (gx#identifier? _hd3299333371_)
                                    (if (gx#stx-eq? '%#if _hd3299333371_)
                                        (if (gx#stx-pair? _tl3299433373_)
                                            (let ((_e3299533376_
                                                   (gx#stx-e _tl3299433373_)))
                                              (let ((_tl3299733381_
                                                     (##cdr _e3299533376_))
                                                    (_hd3299633379_
                                                     (##car _e3299533376_)))
                                                (if (gx#stx-pair?
                                                     _tl3299733381_)
                                                    (let ((_e3299833384_
                                                           (gx#stx-e
                                                            _tl3299733381_)))
                                                      (let ((_tl3300033389_
                                                             (##cdr _e3299833384_))
                                                            (_hd3299933387_
                                                             (##car _e3299833384_)))
                                                        (if (gx#stx-pair?
                                                             _tl3300033389_)
                                                            (let ((_e3300133392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3300033389_)))
                      (let ((_tl3300333397_ (##cdr _e3300133392_))
                            (_hd3300233395_ (##car _e3300133392_)))
                        (if (gx#stx-null? _tl3300333397_)
                            (___kont4333443335_
                             _hd3300233395_
                             _hd3299933387_
                             _hd3299633379_)
                            (___kont4334643347_))))
                    (___kont4334643347_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4334643347_))))
                                            (___kont4334643347_))
                                        (if (gx#stx-eq? '%#call _hd3299333371_)
                                            (if (gx#stx-pair? _tl3299433373_)
                                                (let ((_e3300833324_
                                                       (gx#stx-e
                                                        _tl3299433373_)))
                                                  (let ((_tl3301033329_
                                                         (##cdr _e3300833324_))
                                                        (_hd3300933327_
                                                         (##car _e3300833324_)))
                                                    (if (gx#stx-pair?
                                                         _hd3300933327_)
                                                        (let ((_e3301133332_
                                                               (gx#stx-e
                                                                _hd3300933327_)))
                                                          (let ((_tl3301333337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3301133332_))
                        (_hd3301233335_ (##car _e3301133332_)))
                    (if (gx#identifier? _hd3301233335_)
                        (if (gx#stx-eq? '%#ref _hd3301233335_)
                            (if (gx#stx-pair? _tl3301333337_)
                                (let ((_e3301433340_
                                       (gx#stx-e _tl3301333337_)))
                                  (let ((_tl3301633345_ (##cdr _e3301433340_))
                                        (_hd3301533343_ (##car _e3301433340_)))
                                    (if (gx#stx-null? _tl3301633345_)
                                        (___kont4333643337_ _hd3301533343_)
                                        (___kont4334643347_))))
                                (___kont4334643347_))
                            (___kont4334643347_))
                        (___kont4334643347_))))
                (___kont4334643347_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4334643347_))
                                            (if (gx#stx-eq?
                                                 '%#let-values
                                                 _hd3299333371_)
                                                (if (gx#stx-pair?
                                                     _tl3299433373_)
                                                    (let ((_e3302133282_
                                                           (gx#stx-e
                                                            _tl3299433373_)))
                                                      (let ((_tl3302333287_
                                                             (##cdr _e3302133282_))
                                                            (_hd3302233285_
                                                             (##car _e3302133282_)))
                                                        (if (gx#stx-pair?
                                                             _tl3302333287_)
                                                            (let ((_e3302433290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3302333287_)))
                      (let ((_tl3302633295_ (##cdr _e3302433290_))
                            (_hd3302533293_ (##car _e3302433290_)))
                        (if (gx#stx-null? _tl3302633295_)
                            (___kont4333843339_ _hd3302533293_)
                            (___kont4334643347_))))
                    (___kont4334643347_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4334643347_))
                                                (if (gx#stx-eq?
                                                     '%#letrec-values
                                                     _hd3299333371_)
                                                    (if (gx#stx-pair?
                                                         _tl3299433373_)
                                                        (let ((_e3303533104_
                                                               (gx#stx-e
                                                                _tl3299433373_)))
                                                          (let ((_tl3303733109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3303533104_))
                        (_hd3303633107_ (##car _e3303533104_)))
                    (if (gx#stx-pair? _hd3303633107_)
                        (let ((_e3303833112_ (gx#stx-e _hd3303633107_)))
                          (let ((_tl3304033117_ (##cdr _e3303833112_))
                                (_hd3303933115_ (##car _e3303833112_)))
                            (if (gx#stx-pair? _hd3303933115_)
                                (let ((_e3304133120_
                                       (gx#stx-e _hd3303933115_)))
                                  (let ((_tl3304333125_ (##cdr _e3304133120_))
                                        (_hd3304233123_ (##car _e3304133120_)))
                                    (if (gx#stx-pair? _hd3304233123_)
                                        (let ((_e3304433128_
                                               (gx#stx-e _hd3304233123_)))
                                          (let ((_tl3304633133_
                                                 (##cdr _e3304433128_))
                                                (_hd3304533131_
                                                 (##car _e3304433128_)))
                                            (if (gx#stx-null? _tl3304633133_)
                                                (if (gx#stx-pair?
                                                     _tl3304333125_)
                                                    (let ((_e3304733136_
                                                           (gx#stx-e
                                                            _tl3304333125_)))
                                                      (let ((_tl3304933141_
                                                             (##cdr _e3304733136_))
                                                            (_hd3304833139_
                                                             (##car _e3304733136_)))
                                                        (if (gx#stx-pair?
                                                             _hd3304833139_)
                                                            (let ((_e3305033144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3304833139_)))
                      (let ((_tl3305233149_ (##cdr _e3305033144_))
                            (_hd3305133147_ (##car _e3305033144_)))
                        (if (gx#identifier? _hd3305133147_)
                            (if (gx#stx-eq? '%#lambda _hd3305133147_)
                                (if (gx#stx-pair? _tl3305233149_)
                                    (let ((_e3305333152_
                                           (gx#stx-e _tl3305233149_)))
                                      (let ((_tl3305533157_
                                             (##cdr _e3305333152_))
                                            (_hd3305433155_
                                             (##car _e3305333152_)))
                                        (if (gx#stx-pair/null? _hd3305433155_)
                                            (let ((___splice4334243343_
                                                   (gx#syntax-split-splice
                                                    _hd3305433155_
                                                    '0)))
                                              (let ((_tl3305833162_
                                                     (##vector-ref
                                                      ___splice4334243343_
                                                      '1))
                                                    (_target3305633160_
                                                     (##vector-ref
                                                      ___splice4334243343_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3305833162_)
                                                    (___match4350143502_
                                                     _e3299233368_
                                                     _hd3299333371_
                                                     _tl3299433373_
                                                     _e3303533104_
                                                     _hd3303633107_
                                                     _tl3303733109_
                                                     _e3303833112_
                                                     _hd3303933115_
                                                     _tl3304033117_
                                                     _e3304133120_
                                                     _hd3304233123_
                                                     _tl3304333125_
                                                     _e3304433128_
                                                     _hd3304533131_
                                                     _tl3304633133_
                                                     _e3304733136_
                                                     _hd3304833139_
                                                     _tl3304933141_
                                                     _e3305033144_
                                                     _hd3305133147_
                                                     _tl3305233149_
                                                     _e3305333152_
                                                     _hd3305433155_
                                                     _tl3305533157_
                                                     ___splice4334243343_
                                                     _target3305633160_
                                                     _tl3305833162_)
                                                    (___kont4334643347_))))
                                            (___kont4334643347_))))
                                    (___kont4334643347_))
                                (___kont4334643347_))
                            (___kont4334643347_))))
                    (___kont4334643347_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4334643347_))
                                                (___kont4334643347_))))
                                        (___kont4334643347_))))
                                (___kont4334643347_))))
                        (___kont4334643347_))))
                (___kont4334643347_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4334643347_)))))
                                    (___kont4334643347_))))
                            (___kont4334643347_))))))))
        (let* ((_block3282532838_ _block32821_)
               (_E3282732842_
                (lambda () (error '"No clause matching" _block3282532838_)))
               (_K3282832955_
                (lambda (_maybe-bind32845_ _assert32846_ _kont32847_)
                  (let* ((_g3284932875_
                          (lambda (_g3285032872_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3285032872_)))
                         (_g3284832952_
                          (lambda (_g3285032878_)
                            (if (gx#stx-pair? _g3285032878_)
                                (let ((_e3285332880_ (gx#stx-e _g3285032878_)))
                                  (let ((_hd3285432883_ (##car _e3285332880_))
                                        (_tl3285532885_ (##cdr _e3285332880_)))
                                    (if (gx#identifier? _hd3285432883_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3285432883_)
                                            (if (gx#stx-pair? _tl3285532885_)
                                                (let ((_e3285632888_
                                                       (gx#stx-e
                                                        _tl3285532885_)))
                                                  (let ((_hd3285732891_
                                                         (##car _e3285632888_))
                                                        (_tl3285832893_
                                                         (##cdr _e3285632888_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3285732891_)
                                                        (let ((_g44275_
                                                               (gx#syntax-split-splice
                                                                _hd3285732891_
                                                                '0)))
                                                          (begin
                                                            (let ((_g44276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g44275_)
                               (##vector-length _g44275_)
                               1)))
                      (if (not (##fx= _g44276_ 2))
                          (error "Context expects 2 values" _g44276_)))
                    (let ((_target3285932896_ (##vector-ref _g44275_ 0))
                          (_tl3286132898_ (##vector-ref _g44275_ 1)))
                      (if (gx#stx-null? _tl3286132898_)
                          (letrec ((_loop3286232901_
                                    (lambda (_hd3286032904_ _id3286632906_)
                                      (if (gx#stx-pair? _hd3286032904_)
                                          (let ((_e3286332909_
                                                 (gx#stx-e _hd3286032904_)))
                                            (let ((_lp-hd3286432912_
                                                   (##car _e3286332909_))
                                                  (_lp-tl3286532914_
                                                   (##cdr _e3286332909_)))
                                              (_loop3286232901_
                                               _lp-tl3286532914_
                                               (cons _lp-hd3286432912_
                                                     _id3286632906_))))
                                          (let ((_id3286732917_
                                                 (reverse _id3286632906_)))
                                            (if (gx#stx-pair? _tl3285832893_)
                                                (let ((_e3286832920_
                                                       (gx#stx-e
                                                        _tl3285832893_)))
                                                  (let ((_hd3286932923_
                                                         (##car _e3286832920_))
                                                        (_tl3287032925_
                                                         (##cdr _e3286832920_)))
                                                    (if (gx#stx-null?
                                                         _tl3287032925_)
                                                        ((lambda (_L32928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L32929_)
                   (_assert-restart32824_ _L32928_ _assert32846_))
                 _hd3286932923_
                 _id3286732917_)
                (_g3284932875_ _g3285032878_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3284932875_
                                                 _g3285032878_)))))))
                            (_loop3286232901_ _target3285932896_ '()))
                          (_g3284932875_ _g3285032878_)))))
                (_g3284932875_ _g3285032878_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3284932875_ _g3285032878_))
                                            (_g3284932875_ _g3285032878_))
                                        (_g3284932875_ _g3285032878_))))
                                (_g3284932875_ _g3285032878_)))))
                    (_g3284832952_ _kont32847_)))))
          (if (##pair? _block3282532838_)
              (let ((_tl3283032958_ (##cdr _block3282532838_)))
                (if (##pair? _tl3283032958_)
                    (let ((_tl3283232961_ (##cdr _tl3283032958_)))
                      (if (##pair? _tl3283232961_)
                          (let ((_hd3283332964_ (##car _tl3283232961_))
                                (_tl3283432966_ (##cdr _tl3283232961_)))
                            (let ((_kont32969_ _hd3283332964_))
                              (if (##pair? _tl3283432966_)
                                  (let ((_hd3283532971_ (##car _tl3283432966_))
                                        (_tl3283632973_
                                         (##cdr _tl3283432966_)))
                                    (let* ((_assert32976_ _hd3283532971_)
                                           (_maybe-bind32978_ _tl3283632973_))
                                      (_K3282832955_
                                       _maybe-bind32978_
                                       _assert32976_
                                       _kont32969_)))
                                  (_E3282732842_))))
                          (_E3282732842_)))
                    (_E3282732842_)))
              (_E3282732842_))))))
  (define gxc#optimize-syntax-case
    (lambda (_stx32452_)
      (let* ((_g3245432484_
              (lambda (_g3245532481_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3245532481_)))
             (_g3245332818_
              (lambda (_g3245532487_)
                (if (gx#stx-pair? _g3245532487_)
                    (let ((_e3245932489_ (gx#stx-e _g3245532487_)))
                      (let ((_hd3246032492_ (##car _e3245932489_))
                            (_tl3246132494_ (##cdr _e3245932489_)))
                        (if (gx#identifier? _hd3246032492_)
                            (if (gx#stx-eq? '%#let-values _hd3246032492_)
                                (if (gx#stx-pair? _tl3246132494_)
                                    (let ((_e3246232497_
                                           (gx#stx-e _tl3246132494_)))
                                      (let ((_hd3246332500_
                                             (##car _e3246232497_))
                                            (_tl3246432502_
                                             (##cdr _e3246232497_)))
                                        (if (gx#stx-pair? _hd3246332500_)
                                            (let ((_e3246532505_
                                                   (gx#stx-e _hd3246332500_)))
                                              (let ((_hd3246632508_
                                                     (##car _e3246532505_))
                                                    (_tl3246732510_
                                                     (##cdr _e3246532505_)))
                                                (if (gx#stx-pair?
                                                     _hd3246632508_)
                                                    (let ((_e3246832513_
                                                           (gx#stx-e
                                                            _hd3246632508_)))
                                                      (let ((_hd3246932516_
                                                             (##car _e3246832513_))
                                                            (_tl3247032518_
                                                             (##cdr _e3246832513_)))
                                                        (if (gx#stx-pair?
                                                             _hd3246932516_)
                                                            (let ((_e3247132521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3246932516_)))
                      (let ((_hd3247232524_ (##car _e3247132521_))
                            (_tl3247332526_ (##cdr _e3247132521_)))
                        (if (gx#stx-null? _tl3247332526_)
                            (if (gx#stx-pair? _tl3247032518_)
                                (let ((_e3247432529_
                                       (gx#stx-e _tl3247032518_)))
                                  (let ((_hd3247532532_ (##car _e3247432529_))
                                        (_tl3247632534_ (##cdr _e3247432529_)))
                                    (if (gx#stx-null? _tl3247632534_)
                                        (if (gx#stx-null? _tl3246732510_)
                                            (if (gx#stx-pair? _tl3246432502_)
                                                (let ((_e3247732537_
                                                       (gx#stx-e
                                                        _tl3246432502_)))
                                                  (let ((_hd3247832540_
                                                         (##car _e3247732537_))
                                                        (_tl3247932542_
                                                         (##cdr _e3247732537_)))
                                                    (if (gx#stx-null?
                                                         _tl3247932542_)
                                                        ((lambda (_L32545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L32546_
                          _L32547_)
                   (let _lp32571_ ((_body32573_ _L32545_) (_clauses32574_ '()))
                     (let* ((___stx4350443505_ _body32573_)
                            (_g3257732624_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx4350443505_))))
                       (let ((___kont4350643507_
                              (lambda (_L32790_ _L32791_ _L32792_)
                                (_lp32571_
                                 _L32790_
                                 (cons (cons _L32792_ (gxc#compile-e _L32791_))
                                       _clauses32574_))))
                             (___kont4350843509_
                              (lambda (_L32669_ _L32670_)
                                (let ((_$e32691_ (length _clauses32574_)))
                                  (if (eq? '0 _$e32691_)
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _L32547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _L32546_ '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (gxc#compile-e
                                                          _body32573_)
                                                         '())))
                                       _stx32452_)
                                      (if (eq? '1 _$e32691_)
                                          (let* ((_clauses3269332702_
                                                  _clauses32574_)
                                                 (_E3269532706_
                                                  (lambda ()
                                                    (error '"No clause matching"
                                                           _clauses3269332702_)))
                                                 (_K3269632712_
                                                  (lambda (_clause-lambda32709_
                                                           _clause32710_)
                                                    (gxc#xform-wrap-source
                                                     (cons '%#let-values
                                                           (cons (cons (cons (cons _L32547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           '())
                                     (cons _L32546_ '()))
                               '())
                         (cons (cons '%#let-values
                                     (cons (cons (cons (cons _clause32710_ '())
                                                       (cons _clause-lambda32709_
                                                             '()))
                                                 '())
                                           (cons (gxc#compile-e _body32573_)
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _stx32452_))))
                                            (if (##pair? _clauses3269332702_)
                                                (let ((_hd3269732715_
                                                       (##car _clauses3269332702_))
                                                      (_tl3269832717_
                                                       (##cdr _clauses3269332702_)))
                                                  (if (##pair? _hd3269732715_)
                                                      (let ((_hd3269932720_
                                                             (##car _hd3269732715_))
                                                            (_tl3270032722_
                                                             (##cdr _hd3269732715_)))
                                                        (let* ((_clause32725_
                                                                _hd3269932720_)
                                                               (_clause-lambda32727_
                                                                _tl3270032722_))
                                                          (if (##null? _tl3269832717_)
                                                              (_K3269632712_
                                                               _clause-lambda32727_
                                                               _clause32725_)
                                                              (_E3269532706_))))
                                                      (_E3269532706_)))
                                                (_E3269532706_)))
                                          (gxc#optimize-syntax-case-body
                                           _stx32452_
                                           (gxc#compile-e _L32669_)
                                           (cons _L32547_ _L32546_)
                                           _clauses32574_)))))))
                         (if (gx#stx-pair? ___stx4350443505_)
                             (let ((_e3258232734_
                                    (gx#stx-e ___stx4350443505_)))
                               (let ((_tl3258432739_ (##cdr _e3258232734_))
                                     (_hd3258332737_ (##car _e3258232734_)))
                                 (if (gx#identifier? _hd3258332737_)
                                     (if (gx#stx-eq?
                                          '%#let-values
                                          _hd3258332737_)
                                         (if (gx#stx-pair? _tl3258432739_)
                                             (let ((_e3258532742_
                                                    (gx#stx-e _tl3258432739_)))
                                               (let ((_tl3258732747_
                                                      (##cdr _e3258532742_))
                                                     (_hd3258632745_
                                                      (##car _e3258532742_)))
                                                 (if (gx#stx-pair?
                                                      _hd3258632745_)
                                                     (let ((_e3258832750_
                                                            (gx#stx-e
                                                             _hd3258632745_)))
                                                       (let ((_tl3259032755_
                                                              (##cdr _e3258832750_))
                                                             (_hd3258932753_
                                                              (##car _e3258832750_)))
                                                         (if (gx#stx-pair?
                                                              _hd3258932753_)
                                                             (let ((_e3259132758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3258932753_)))
                       (let ((_tl3259332763_ (##cdr _e3259132758_))
                             (_hd3259232761_ (##car _e3259132758_)))
                         (if (gx#stx-pair? _hd3259232761_)
                             (let ((_e3259432766_ (gx#stx-e _hd3259232761_)))
                               (let ((_tl3259632771_ (##cdr _e3259432766_))
                                     (_hd3259532769_ (##car _e3259432766_)))
                                 (if (gx#stx-null? _tl3259632771_)
                                     (if (gx#stx-pair? _tl3259332763_)
                                         (let ((_e3259732774_
                                                (gx#stx-e _tl3259332763_)))
                                           (let ((_tl3259932779_
                                                  (##cdr _e3259732774_))
                                                 (_hd3259832777_
                                                  (##car _e3259732774_)))
                                             (if (gx#stx-null? _tl3259932779_)
                                                 (if (gx#stx-null?
                                                      _tl3259032755_)
                                                     (if (gx#stx-pair?
                                                          _tl3258732747_)
                                                         (let ((_e3260032782_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3258732747_)))
                   (let ((_tl3260232787_ (##cdr _e3260032782_))
                         (_hd3260132785_ (##car _e3260032782_)))
                     (if (gx#stx-null? _tl3260232787_)
                         (___kont4350643507_
                          _hd3260132785_
                          _hd3259832777_
                          _hd3259532769_)
                         (_g3257732624_))))
                 (_g3257732624_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3257732624_))
                                                 (_g3257732624_))))
                                         (_g3257732624_))
                                     (_g3257732624_))))
                             (_g3257732624_))))
                     (_g3257732624_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3257732624_))))
                                             (_g3257732624_))
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd3258332737_)
                                             (if (gx#stx-pair? _tl3258432739_)
                                                 (let ((_e3260832637_
                                                        (gx#stx-e
                                                         _tl3258432739_)))
                                                   (let ((_tl3261032642_
                                                          (##cdr _e3260832637_))
                                                         (_hd3260932640_
                                                          (##car _e3260832637_)))
                                                     (if (gx#stx-pair?
                                                          _hd3260932640_)
                                                         (let ((_e3261132645_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3260932640_)))
                   (let ((_tl3261332650_ (##cdr _e3261132645_))
                         (_hd3261232648_ (##car _e3261132645_)))
                     (if (gx#identifier? _hd3261232648_)
                         (if (gx#stx-eq? '%#ref _hd3261232648_)
                             (if (gx#stx-pair? _tl3261332650_)
                                 (let ((_e3261432653_
                                        (gx#stx-e _tl3261332650_)))
                                   (let ((_tl3261632658_ (##cdr _e3261432653_))
                                         (_hd3261532656_
                                          (##car _e3261432653_)))
                                     (if (gx#stx-null? _tl3261632658_)
                                         (if (gx#stx-pair? _tl3261032642_)
                                             (let ((_e3261732661_
                                                    (gx#stx-e _tl3261032642_)))
                                               (let ((_tl3261932666_
                                                      (##cdr _e3261732661_))
                                                     (_hd3261832664_
                                                      (##car _e3261732661_)))
                                                 (if (gx#stx-null?
                                                      _tl3261932666_)
                                                     (___kont4350843509_
                                                      _hd3261832664_
                                                      _hd3261532656_)
                                                     (_g3257732624_))))
                                             (_g3257732624_))
                                         (_g3257732624_))))
                                 (_g3257732624_))
                             (_g3257732624_))
                         (_g3257732624_))))
                 (_g3257732624_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3257732624_))
                                             (_g3257732624_)))
                                     (_g3257732624_))))
                             (_g3257732624_))))))
                 _hd3247832540_
                 _hd3247532532_
                 _hd3247232524_)
                (_g3245432484_ _g3245532487_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3245432484_ _g3245532487_))
                                            (_g3245432484_ _g3245532487_))
                                        (_g3245432484_ _g3245532487_))))
                                (_g3245432484_ _g3245532487_))
                            (_g3245432484_ _g3245532487_))))
                    (_g3245432484_ _g3245532487_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3245432484_
                                                     _g3245532487_))))
                                            (_g3245432484_ _g3245532487_))))
                                    (_g3245432484_ _g3245532487_))
                                (_g3245432484_ _g3245532487_))
                            (_g3245432484_ _g3245532487_))))
                    (_g3245432484_ _g3245532487_)))))
        (_g3245332818_ _stx32452_))))
  (define gxc#optimize-syntax-case-body
    (lambda (_stx32380_ _expr32381_ _negation32382_ _clauses32383_)
      (letrec ((_normalize32385_
                (lambda (_clauses32412_)
                  (let* ((_clauses3241332422_ _clauses32412_)
                         (_E3241532426_
                          (lambda ()
                            (error '"No clause matching" _clauses3241332422_)))
                         (_K3241632433_
                          (lambda (_rest32429_ _kont32430_ _id32431_)
                            (cons (cons '#f _kont32430_) _rest32429_))))
                    (if (##pair? _clauses3241332422_)
                        (let ((_hd3241732436_ (##car _clauses3241332422_))
                              (_tl3241832438_ (##cdr _clauses3241332422_)))
                          (if (##pair? _hd3241732436_)
                              (let ((_hd3241932441_ (##car _hd3241732436_))
                                    (_tl3242032443_ (##cdr _hd3241732436_)))
                                (let* ((_id32446_ _hd3241932441_)
                                       (_kont32448_ _tl3242032443_)
                                       (_rest32450_ _tl3241832438_))
                                  (_K3241632433_
                                   _rest32450_
                                   _kont32448_
                                   _id32446_)))
                              (_E3241532426_)))
                        (_E3241532426_))))))
        (call-with-parameters
         (lambda ()
           (let* ((_id32388_ (make-symbol (gensym '__stx)))
                  (_id32390_ (gx#core-quote-syntax__0 _id32388_))
                  (_g44277_ (gx#core-bind-runtime!__0 _id32390_))
                  (_g44278_
                   (gxc#optimize-syntax-case-clauses
                    _clauses32383_
                    (car _negation32382_))))
             (begin
               (let ((_g44279_
                      (if (##values? _g44278_) (##vector-length _g44278_) 1)))
                 (if (not (##fx= _g44279_ 2))
                     (error "Context expects 2 values" _g44279_)))
               (let ((_clauses32393_ (##vector-ref _g44278_ 0))
                     (_konts32394_ (##vector-ref _g44278_ 1)))
                 (let* ((_clauses32403_
                         (map (lambda (_g3239532398_ _g3239632400_)
                                (gxc#optimize-syntax-case-closure
                                 _g3239532398_
                                 _g3239632400_
                                 _id32390_))
                              _clauses32393_
                              (foldr1 cons
                                      (cons (car _negation32382_) '())
                                      (map car (cdr _clauses32393_)))))
                        (_clauses32405_ (_normalize32385_ _clauses32403_))
                        (_negation32407_
                         (gxc#optimize-syntax-case-closure
                          _negation32382_
                          '#f
                          _id32390_))
                        (_body32409_
                         (gxc#optimize-match-body
                          _stx32380_
                          _negation32407_
                          _clauses32405_
                          _konts32394_)))
                   (gxc#xform-wrap-source
                    (cons '%#let-values
                          (cons (cons (cons (cons _id32390_ '())
                                            (cons _expr32381_ '()))
                                      '())
                                (cons _body32409_ '())))
                    _stx32380_))))))
         gx#current-expander-context
         (let ((__obj44250 (make-object gx#local-context::t '5)))
           (begin (gx#local-context:::init!__0 __obj44250) __obj44250))))))
  (define gxc#optimize-syntax-case-clauses
    (lambda (_clauses31138_ _negation-id31139_)
      (letrec ((_xform-e31141_
                (lambda (_expr31525_
                         _kont-id31526_
                         _kont-box31527_
                         _negation-id31528_)
                  (let* ((___stx4370643707_ _expr31525_)
                         (_g3153431667_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4370643707_))))
                    (let ((___kont4370843709_
                           (lambda (_L32356_ _L32357_ _L32358_)
                             (let ((_K32375_
                                    (_xform-e31141_
                                     _L32357_
                                     _kont-id31526_
                                     _kont-box31527_
                                     _negation-id31528_)))
                               (cons '%#if
                                     (cons _L32358_
                                           (cons _K32375_
                                                 (cons _L32356_ '())))))))
                          (___kont4371043711_
                           (lambda (_L32272_
                                    _L32273_
                                    _L32274_
                                    _L32275_
                                    _L32276_)
                             (let* ((_id32311_
                                     (make-symbol (gensym '__splice)))
                                    (_id32313_
                                     (gx#core-quote-syntax__0 _id32311_))
                                    (_g44280_
                                     (gx#core-bind-runtime!__0 _id32313_))
                                    (_body32316_
                                     (_xform-e31141_
                                      _L32272_
                                      _kont-id31526_
                                      _kont-box31527_
                                      _negation-id31528_)))
                               (cons '%#let-values
                                     (cons (cons (cons (cons _id32313_ '())
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '%#call)
                           (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                       (cons _L32274_ '()))
                                 _L32273_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons '%#let-values
                                                       (cons (cons (cons (cons _L32276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (cons '%#call
                                             (cons '(%#ref ##vector-ref)
                                                   (cons (cons '%#ref
                                                               (cons _id32313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '(%#quote 0) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (cons _L32275_ '())
                                       (cons (cons '%#call
                                                   (cons '(%#ref ##vector-ref)
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _id32313_ '()))
                       (cons '(%#quote 1) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 '()))
                     (cons _body32316_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))))
                          (___kont4371243713_
                           (lambda (_L32154_ _L32155_)
                             (let ((_body32169_
                                    (_xform-e31141_
                                     _L32154_
                                     _kont-id31526_
                                     _kont-box31527_
                                     _negation-id31528_)))
                               (cons '%#let-values
                                     (cons _L32155_ (cons _body32169_ '()))))))
                          (___kont4371443715_
                           (lambda (_L32098_ _L32099_ _L32100_)
                             (let ((_lambda-expr32123_
                                    (_xform-loop-e31142_
                                     _L32099_
                                     _kont-id31526_
                                     _kont-box31527_
                                     _negation-id31528_)))
                               (cons '%#letrec-values
                                     (cons (cons (cons (cons _L32100_ '())
                                                       (cons _lambda-expr32123_
                                                             '()))
                                                 '())
                                           (cons _L32098_ '()))))))
                          (___kont4371643717_
                           (lambda (_L31760_ _L31761_ _L31762_)
                             (let* ((___stx4360843609_ _L31761_)
                                    (_g3179131834_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        ___stx4360843609_))))
                               (let ((___kont4361043611_
                                      (lambda (_L31950_
                                               _L31951_
                                               _L31952_
                                               _L31953_)
                                        (let ((_kont31994_
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      '%#lambda)
                                                     (cons (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g3198631989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g3198731991_)
                               (cons _g3198631989_ _g3198731991_))
                             '()
                             _L31762_))
                   (cons _L31952_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (begin
                                            (set-box!
                                             _kont-box31527_
                                             _kont31994_)
                                            (let* ((_kont-args32005_
                                                    (map (lambda (_id31996_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _id31996_ '())))
                 (begin
                   '#!void
                   (foldr1 (lambda (_g3199732000_ _g3199832002_)
                             (cons _g3199732000_ _g3199832002_))
                           '()
                           _L31762_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_body32007_
                                                    (cons '%#if
                                                          (cons _L31953_
                                                                (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons '%#ref
                                                (cons _kont-id31526_ '()))
                                          _kont-args32005_))
                              (cons (cons (gx#datum->syntax__0 '#f '%#call)
                                          (cons (cons (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref)
                                                      (cons _L31951_ '()))
                                                (cons (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref)
                                                            (cons _L31950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g3200932012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g3201032014_)
                             (cons _g3200932012_ _g3201032014_))
                           '()
                           _L31762_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _body32007_
                                                  (cons '%#let-values
                                                        (cons (map (lambda (_id32017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _arg32018_)
                             (cons (cons _id32017_ '()) (cons _arg32018_ '())))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g3201932022_ _g3202032024_)
                                       (cons _g3201932022_ _g3202032024_))
                                     '()
                                     _L31762_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g3202632029_ _g3202732031_)
                                       (cons _g3202632029_ _g3202732031_))
                                     '()
                                     _L31760_)))
                      (cons _body32007_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (___kont4361243613_
                                      (lambda ()
                                        (let ((_kont31848_
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      '%#lambda)
                                                     (cons (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g3184031843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g3184131845_)
                               (cons _g3184031843_ _g3184131845_))
                             '()
                             _L31762_))
                   (cons _L31761_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (begin
                                            (set-box!
                                             _kont-box31527_
                                             _kont31848_)
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kont-id31526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (begin
                  '#!void
                  (foldr1 (lambda (_g3184931852_ _g3185031854_)
                            (cons _g3184931852_ _g3185031854_))
                          '()
                          _L31760_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((___match4370343704_
                                        (lambda (_e3179731862_
                                                 _hd3179831865_
                                                 _tl3179931867_
                                                 _e3180031870_
                                                 _hd3180131873_
                                                 _tl3180231875_
                                                 _e3180331878_
                                                 _hd3180431881_
                                                 _tl3180531883_
                                                 _e3180631886_
                                                 _hd3180731889_
                                                 _tl3180831891_
                                                 _e3180931894_
                                                 _hd3181031897_
                                                 _tl3181131899_
                                                 _e3181231902_
                                                 _hd3181331905_
                                                 _tl3181431907_
                                                 _e3181531910_
                                                 _hd3181631913_
                                                 _tl3181731915_
                                                 _e3181831918_
                                                 _hd3181931921_
                                                 _tl3182031923_
                                                 _e3182131926_
                                                 _hd3182231929_
                                                 _tl3182331931_
                                                 _e3182431934_
                                                 _hd3182531937_
                                                 _tl3182631939_
                                                 _e3182731942_
                                                 _hd3182831945_
                                                 _tl3182931947_)
                                          (let ((_L31950_ _hd3182831945_)
                                                (_L31951_ _hd3181931921_)
                                                (_L31952_ _hd3180431881_)
                                                (_L31953_ _hd3180131873_))
                                            (if (gx#free-identifier=?
                                                 _L31951_
                                                 _negation-id31528_)
                                                (___kont4361043611_
                                                 _L31950_
                                                 _L31951_
                                                 _L31952_
                                                 _L31953_)
                                                (___kont4361243613_))))))
                                   (if (gx#stx-pair? ___stx4360843609_)
                                       (let ((_e3179731862_
                                              (gx#stx-e ___stx4360843609_)))
                                         (let ((_tl3179931867_
                                                (##cdr _e3179731862_))
                                               (_hd3179831865_
                                                (##car _e3179731862_)))
                                           (if (gx#identifier? _hd3179831865_)
                                               (if (gx#stx-eq?
                                                    '%#if
                                                    _hd3179831865_)
                                                   (if (gx#stx-pair?
                                                        _tl3179931867_)
                                                       (let ((_e3180031870_
                                                              (gx#stx-e
                                                               _tl3179931867_)))
                                                         (let ((_tl3180231875_
                                                                (##cdr _e3180031870_))
                                                               (_hd3180131873_
                                                                (##car _e3180031870_)))
                                                           (if (gx#stx-pair?
                                                                _tl3180231875_)
                                                               (let ((_e3180331878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3180231875_)))
                         (let ((_tl3180531883_ (##cdr _e3180331878_))
                               (_hd3180431881_ (##car _e3180331878_)))
                           (if (gx#stx-pair? _tl3180531883_)
                               (let ((_e3180631886_ (gx#stx-e _tl3180531883_)))
                                 (let ((_tl3180831891_ (##cdr _e3180631886_))
                                       (_hd3180731889_ (##car _e3180631886_)))
                                   (if (gx#stx-pair? _hd3180731889_)
                                       (let ((_e3180931894_
                                              (gx#stx-e _hd3180731889_)))
                                         (let ((_tl3181131899_
                                                (##cdr _e3180931894_))
                                               (_hd3181031897_
                                                (##car _e3180931894_)))
                                           (if (gx#identifier? _hd3181031897_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd3181031897_)
                                                   (if (gx#stx-pair?
                                                        _tl3181131899_)
                                                       (let ((_e3181231902_
                                                              (gx#stx-e
                                                               _tl3181131899_)))
                                                         (let ((_tl3181431907_
                                                                (##cdr _e3181231902_))
                                                               (_hd3181331905_
                                                                (##car _e3181231902_)))
                                                           (if (gx#stx-pair?
                                                                _hd3181331905_)
                                                               (let ((_e3181531910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd3181331905_)))
                         (let ((_tl3181731915_ (##cdr _e3181531910_))
                               (_hd3181631913_ (##car _e3181531910_)))
                           (if (gx#identifier? _hd3181631913_)
                               (if (gx#stx-eq? '%#ref _hd3181631913_)
                                   (if (gx#stx-pair? _tl3181731915_)
                                       (let ((_e3181831918_
                                              (gx#stx-e _tl3181731915_)))
                                         (let ((_tl3182031923_
                                                (##cdr _e3181831918_))
                                               (_hd3181931921_
                                                (##car _e3181831918_)))
                                           (if (gx#stx-null? _tl3182031923_)
                                               (if (gx#stx-pair?
                                                    _tl3181431907_)
                                                   (let ((_e3182131926_
                                                          (gx#stx-e
                                                           _tl3181431907_)))
                                                     (let ((_tl3182331931_
                                                            (##cdr _e3182131926_))
                                                           (_hd3182231929_
                                                            (##car _e3182131926_)))
                                                       (if (gx#stx-pair?
                                                            _hd3182231929_)
                                                           (let ((_e3182431934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3182231929_)))
                     (let ((_tl3182631939_ (##cdr _e3182431934_))
                           (_hd3182531937_ (##car _e3182431934_)))
                       (if (gx#identifier? _hd3182531937_)
                           (if (gx#stx-eq? '%#ref _hd3182531937_)
                               (if (gx#stx-pair? _tl3182631939_)
                                   (let ((_e3182731942_
                                          (gx#stx-e _tl3182631939_)))
                                     (let ((_tl3182931947_
                                            (##cdr _e3182731942_))
                                           (_hd3182831945_
                                            (##car _e3182731942_)))
                                       (if (gx#stx-null? _tl3182931947_)
                                           (if (gx#stx-null? _tl3182331931_)
                                               (if (gx#stx-null?
                                                    _tl3180831891_)
                                                   (___match4370343704_
                                                    _e3179731862_
                                                    _hd3179831865_
                                                    _tl3179931867_
                                                    _e3180031870_
                                                    _hd3180131873_
                                                    _tl3180231875_
                                                    _e3180331878_
                                                    _hd3180431881_
                                                    _tl3180531883_
                                                    _e3180631886_
                                                    _hd3180731889_
                                                    _tl3180831891_
                                                    _e3180931894_
                                                    _hd3181031897_
                                                    _tl3181131899_
                                                    _e3181231902_
                                                    _hd3181331905_
                                                    _tl3181431907_
                                                    _e3181531910_
                                                    _hd3181631913_
                                                    _tl3181731915_
                                                    _e3181831918_
                                                    _hd3181931921_
                                                    _tl3182031923_
                                                    _e3182131926_
                                                    _hd3182231929_
                                                    _tl3182331931_
                                                    _e3182431934_
                                                    _hd3182531937_
                                                    _tl3182631939_
                                                    _e3182731942_
                                                    _hd3182831945_
                                                    _tl3182931947_)
                                                   (___kont4361243613_))
                                               (___kont4361243613_))
                                           (___kont4361243613_))))
                                   (___kont4361243613_))
                               (___kont4361243613_))
                           (___kont4361243613_))))
                   (___kont4361243613_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4361243613_))
                                               (___kont4361243613_))))
                                       (___kont4361243613_))
                                   (___kont4361243613_))
                               (___kont4361243613_))))
                       (___kont4361243613_))))
               (___kont4361243613_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4361243613_))
                                               (___kont4361243613_))))
                                       (___kont4361243613_))))
                               (___kont4361243613_))))
                       (___kont4361243613_))))
               (___kont4361243613_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4361243613_))
                                               (___kont4361243613_))))
                                       (___kont4361243613_))))))))
                      (let* ((___match4396343964_
                              (lambda (_e3163031672_
                                       _hd3163131675_
                                       _tl3163231677_
                                       _e3163331680_
                                       _hd3163431683_
                                       _tl3163531685_
                                       _e3163631688_
                                       _hd3163731691_
                                       _tl3163831693_
                                       _e3163931696_
                                       _hd3164031699_
                                       _tl3164131701_
                                       ___splice4371843719_
                                       _target3164231704_
                                       _tl3164431706_)
                                (letrec ((_loop3164531709_
                                          (lambda (_hd3164331712_
                                                   _id3164931714_)
                                            (if (gx#stx-pair? _hd3164331712_)
                                                (let ((_e3164631717_
                                                       (gx#stx-e
                                                        _hd3164331712_)))
                                                  (let ((_lp-tl3164831722_
                                                         (##cdr _e3164631717_))
                                                        (_lp-hd3164731720_
                                                         (##car _e3164631717_)))
                                                    (_loop3164531709_
                                                     _lp-tl3164831722_
                                                     (cons _lp-hd3164731720_
                                                           _id3164931714_))))
                                                (let ((_id3165031725_
                                                       (reverse _id3164931714_)))
                                                  (if (gx#stx-pair?
                                                       _tl3164131701_)
                                                      (let ((_e3165131728_
                                                             (gx#stx-e
                                                              _tl3164131701_)))
                                                        (let ((_tl3165331733_
                                                               (##cdr _e3165131728_))
                                                              (_hd3165231731_
                                                               (##car _e3165131728_)))
                                                          (if (gx#stx-null?
                                                               _tl3165331733_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3163531685_)
                          (let ((___splice4372043721_
                                 (gx#syntax-split-splice _tl3163531685_ '0)))
                            (let ((_tl3165631738_
                                   (##vector-ref ___splice4372043721_ '1))
                                  (_target3165431736_
                                   (##vector-ref ___splice4372043721_ '0)))
                              (if (gx#stx-null? _tl3165631738_)
                                  (letrec ((_loop3165731741_
                                            (lambda (_hd3165531744_
                                                     _arg3166131746_)
                                              (if (gx#stx-pair? _hd3165531744_)
                                                  (let ((_e3165831749_
                                                         (gx#stx-e
                                                          _hd3165531744_)))
                                                    (let ((_lp-tl3166031754_
                                                           (##cdr _e3165831749_))
                                                          (_lp-hd3165931752_
                                                           (##car _e3165831749_)))
                                                      (_loop3165731741_
                                                       _lp-tl3166031754_
                                                       (cons _lp-hd3165931752_
                                                             _arg3166131746_))))
                                                  (let ((_arg3166231757_
                                                         (reverse _arg3166131746_)))
                                                    (___kont4371643717_
                                                     _arg3166231757_
                                                     _hd3165231731_
                                                     _id3165031725_))))))
                                    (_loop3165731741_ _target3165431736_ '()))
                                  (_g3153431667_))))
                          (_g3153431667_))
                      (_g3153431667_))))
              (_g3153431667_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop3164531709_ _target3164231704_ '()))))
                             (___match4384543846_
                              (lambda (_e3155632176_
                                       _hd3155732179_
                                       _tl3155832181_
                                       _e3155932184_
                                       _hd3156032187_
                                       _tl3156132189_
                                       _e3156232192_
                                       _hd3156332195_
                                       _tl3156432197_
                                       _e3156532200_
                                       _hd3156632203_
                                       _tl3156732205_
                                       _e3156832208_
                                       _hd3156932211_
                                       _tl3157032213_
                                       _e3157132216_
                                       _hd3157232219_
                                       _tl3157332221_
                                       _e3157432224_
                                       _hd3157532227_
                                       _tl3157632229_
                                       _e3157732232_
                                       _hd3157832235_
                                       _tl3157932237_
                                       _e3158032240_
                                       _hd3158132243_
                                       _tl3158232245_
                                       _e3158332248_
                                       _hd3158432251_
                                       _tl3158532253_
                                       _e3158632256_
                                       _hd3158732259_
                                       _tl3158832261_
                                       _e3158932264_
                                       _hd3159032267_
                                       _tl3159132269_)
                                (let ((_L32272_ _hd3159032267_)
                                      (_L32273_ _tl3158232245_)
                                      (_L32274_ _hd3158732259_)
                                      (_L32275_ _hd3157232219_)
                                      (_L32276_ _hd3156932211_))
                                  (if (gxc#runtime-identifier=?
                                       _L32274_
                                       'gx#syntax-split-splice)
                                      (___kont4371043711_
                                       _L32272_
                                       _L32273_
                                       _L32274_
                                       _L32275_
                                       _L32276_)
                                      (___kont4371243713_
                                       _hd3159032267_
                                       _hd3156032187_))))))
                        (if (gx#stx-pair? ___stx4370643707_)
                            (let ((_e3153932324_ (gx#stx-e ___stx4370643707_)))
                              (let ((_tl3154132329_ (##cdr _e3153932324_))
                                    (_hd3154032327_ (##car _e3153932324_)))
                                (if (gx#identifier? _hd3154032327_)
                                    (if (gx#stx-eq? '%#if _hd3154032327_)
                                        (if (gx#stx-pair? _tl3154132329_)
                                            (let ((_e3154232332_
                                                   (gx#stx-e _tl3154132329_)))
                                              (let ((_tl3154432337_
                                                     (##cdr _e3154232332_))
                                                    (_hd3154332335_
                                                     (##car _e3154232332_)))
                                                (if (gx#stx-pair?
                                                     _tl3154432337_)
                                                    (let ((_e3154532340_
                                                           (gx#stx-e
                                                            _tl3154432337_)))
                                                      (let ((_tl3154732345_
                                                             (##cdr _e3154532340_))
                                                            (_hd3154632343_
                                                             (##car _e3154532340_)))
                                                        (if (gx#stx-pair?
                                                             _tl3154732345_)
                                                            (let ((_e3154832348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3154732345_)))
                      (let ((_tl3155032353_ (##cdr _e3154832348_))
                            (_hd3154932351_ (##car _e3154832348_)))
                        (if (gx#stx-null? _tl3155032353_)
                            (___kont4370843709_
                             _hd3154932351_
                             _hd3154632343_
                             _hd3154332335_)
                            (_g3153431667_))))
                    (_g3153431667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3153431667_))))
                                            (_g3153431667_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd3154032327_)
                                            (if (gx#stx-pair? _tl3154132329_)
                                                (let ((_e3155932184_
                                                       (gx#stx-e
                                                        _tl3154132329_)))
                                                  (let ((_tl3156132189_
                                                         (##cdr _e3155932184_))
                                                        (_hd3156032187_
                                                         (##car _e3155932184_)))
                                                    (if (gx#stx-pair?
                                                         _hd3156032187_)
                                                        (let ((_e3156232192_
                                                               (gx#stx-e
                                                                _hd3156032187_)))
                                                          (let ((_tl3156432197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3156232192_))
                        (_hd3156332195_ (##car _e3156232192_)))
                    (if (gx#stx-pair? _hd3156332195_)
                        (let ((_e3156532200_ (gx#stx-e _hd3156332195_)))
                          (let ((_tl3156732205_ (##cdr _e3156532200_))
                                (_hd3156632203_ (##car _e3156532200_)))
                            (if (gx#stx-pair? _hd3156632203_)
                                (let ((_e3156832208_
                                       (gx#stx-e _hd3156632203_)))
                                  (let ((_tl3157032213_ (##cdr _e3156832208_))
                                        (_hd3156932211_ (##car _e3156832208_)))
                                    (if (gx#stx-pair? _tl3157032213_)
                                        (let ((_e3157132216_
                                               (gx#stx-e _tl3157032213_)))
                                          (let ((_tl3157332221_
                                                 (##cdr _e3157132216_))
                                                (_hd3157232219_
                                                 (##car _e3157132216_)))
                                            (if (gx#stx-null? _tl3157332221_)
                                                (if (gx#stx-pair?
                                                     _tl3156732205_)
                                                    (let ((_e3157432224_
                                                           (gx#stx-e
                                                            _tl3156732205_)))
                                                      (let ((_tl3157632229_
                                                             (##cdr _e3157432224_))
                                                            (_hd3157532227_
                                                             (##car _e3157432224_)))
                                                        (if (gx#stx-pair?
                                                             _hd3157532227_)
                                                            (let ((_e3157732232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3157532227_)))
                      (let ((_tl3157932237_ (##cdr _e3157732232_))
                            (_hd3157832235_ (##car _e3157732232_)))
                        (if (gx#identifier? _hd3157832235_)
                            (if (gx#stx-eq? '%#call _hd3157832235_)
                                (if (gx#stx-pair? _tl3157932237_)
                                    (let ((_e3158032240_
                                           (gx#stx-e _tl3157932237_)))
                                      (let ((_tl3158232245_
                                             (##cdr _e3158032240_))
                                            (_hd3158132243_
                                             (##car _e3158032240_)))
                                        (if (gx#stx-pair? _hd3158132243_)
                                            (let ((_e3158332248_
                                                   (gx#stx-e _hd3158132243_)))
                                              (let ((_tl3158532253_
                                                     (##cdr _e3158332248_))
                                                    (_hd3158432251_
                                                     (##car _e3158332248_)))
                                                (if (gx#identifier?
                                                     _hd3158432251_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd3158432251_)
                                                        (if (gx#stx-pair?
                                                             _tl3158532253_)
                                                            (let ((_e3158632256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3158532253_)))
                      (let ((_tl3158832261_ (##cdr _e3158632256_))
                            (_hd3158732259_ (##car _e3158632256_)))
                        (if (gx#stx-null? _tl3158832261_)
                            (if (gx#stx-null? _tl3157632229_)
                                (if (gx#stx-null? _tl3156432197_)
                                    (if (gx#stx-pair? _tl3156132189_)
                                        (let ((_e3158932264_
                                               (gx#stx-e _tl3156132189_)))
                                          (let ((_tl3159132269_
                                                 (##cdr _e3158932264_))
                                                (_hd3159032267_
                                                 (##car _e3158932264_)))
                                            (if (gx#stx-null? _tl3159132269_)
                                                (___match4384543846_
                                                 _e3153932324_
                                                 _hd3154032327_
                                                 _tl3154132329_
                                                 _e3155932184_
                                                 _hd3156032187_
                                                 _tl3156132189_
                                                 _e3156232192_
                                                 _hd3156332195_
                                                 _tl3156432197_
                                                 _e3156532200_
                                                 _hd3156632203_
                                                 _tl3156732205_
                                                 _e3156832208_
                                                 _hd3156932211_
                                                 _tl3157032213_
                                                 _e3157132216_
                                                 _hd3157232219_
                                                 _tl3157332221_
                                                 _e3157432224_
                                                 _hd3157532227_
                                                 _tl3157632229_
                                                 _e3157732232_
                                                 _hd3157832235_
                                                 _tl3157932237_
                                                 _e3158032240_
                                                 _hd3158132243_
                                                 _tl3158232245_
                                                 _e3158332248_
                                                 _hd3158432251_
                                                 _tl3158532253_
                                                 _e3158632256_
                                                 _hd3158732259_
                                                 _tl3158832261_
                                                 _e3158932264_
                                                 _hd3159032267_
                                                 _tl3159132269_)
                                                (_g3153431667_))))
                                        (_g3153431667_))
                                    (if (gx#stx-pair? _tl3156132189_)
                                        (let ((_e3160032146_
                                               (gx#stx-e _tl3156132189_)))
                                          (let ((_tl3160232151_
                                                 (##cdr _e3160032146_))
                                                (_hd3160132149_
                                                 (##car _e3160032146_)))
                                            (if (gx#stx-null? _tl3160232151_)
                                                (___kont4371243713_
                                                 _hd3160132149_
                                                 _hd3156032187_)
                                                (_g3153431667_))))
                                        (_g3153431667_)))
                                (if (gx#stx-pair? _tl3156132189_)
                                    (let ((_e3160032146_
                                           (gx#stx-e _tl3156132189_)))
                                      (let ((_tl3160232151_
                                             (##cdr _e3160032146_))
                                            (_hd3160132149_
                                             (##car _e3160032146_)))
                                        (if (gx#stx-null? _tl3160232151_)
                                            (___kont4371243713_
                                             _hd3160132149_
                                             _hd3156032187_)
                                            (_g3153431667_))))
                                    (_g3153431667_)))
                            (if (gx#stx-pair? _tl3156132189_)
                                (let ((_e3160032146_
                                       (gx#stx-e _tl3156132189_)))
                                  (let ((_tl3160232151_ (##cdr _e3160032146_))
                                        (_hd3160132149_ (##car _e3160032146_)))
                                    (if (gx#stx-null? _tl3160232151_)
                                        (___kont4371243713_
                                         _hd3160132149_
                                         _hd3156032187_)
                                        (_g3153431667_))))
                                (_g3153431667_)))))
                    (if (gx#stx-pair? _tl3156132189_)
                        (let ((_e3160032146_ (gx#stx-e _tl3156132189_)))
                          (let ((_tl3160232151_ (##cdr _e3160032146_))
                                (_hd3160132149_ (##car _e3160032146_)))
                            (if (gx#stx-null? _tl3160232151_)
                                (___kont4371243713_
                                 _hd3160132149_
                                 _hd3156032187_)
                                (_g3153431667_))))
                        (_g3153431667_)))
                (if (gx#stx-pair? _tl3156132189_)
                    (let ((_e3160032146_ (gx#stx-e _tl3156132189_)))
                      (let ((_tl3160232151_ (##cdr _e3160032146_))
                            (_hd3160132149_ (##car _e3160032146_)))
                        (if (gx#stx-null? _tl3160232151_)
                            (___kont4371243713_ _hd3160132149_ _hd3156032187_)
                            (_g3153431667_))))
                    (_g3153431667_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         _tl3156132189_)
                                                        (let ((_e3160032146_
                                                               (gx#stx-e
                                                                _tl3156132189_)))
                                                          (let ((_tl3160232151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3160032146_))
                        (_hd3160132149_ (##car _e3160032146_)))
                    (if (gx#stx-null? _tl3160232151_)
                        (___kont4371243713_ _hd3160132149_ _hd3156032187_)
                        (_g3153431667_))))
                (_g3153431667_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl3156132189_)
                                                (let ((_e3160032146_
                                                       (gx#stx-e
                                                        _tl3156132189_)))
                                                  (let ((_tl3160232151_
                                                         (##cdr _e3160032146_))
                                                        (_hd3160132149_
                                                         (##car _e3160032146_)))
                                                    (if (gx#stx-null?
                                                         _tl3160232151_)
                                                        (___kont4371243713_
                                                         _hd3160132149_
                                                         _hd3156032187_)
                                                        (_g3153431667_))))
                                                (_g3153431667_)))))
                                    (if (gx#stx-pair? _tl3156132189_)
                                        (let ((_e3160032146_
                                               (gx#stx-e _tl3156132189_)))
                                          (let ((_tl3160232151_
                                                 (##cdr _e3160032146_))
                                                (_hd3160132149_
                                                 (##car _e3160032146_)))
                                            (if (gx#stx-null? _tl3160232151_)
                                                (___kont4371243713_
                                                 _hd3160132149_
                                                 _hd3156032187_)
                                                (_g3153431667_))))
                                        (_g3153431667_)))
                                (if (gx#stx-pair? _tl3156132189_)
                                    (let ((_e3160032146_
                                           (gx#stx-e _tl3156132189_)))
                                      (let ((_tl3160232151_
                                             (##cdr _e3160032146_))
                                            (_hd3160132149_
                                             (##car _e3160032146_)))
                                        (if (gx#stx-null? _tl3160232151_)
                                            (___kont4371243713_
                                             _hd3160132149_
                                             _hd3156032187_)
                                            (_g3153431667_))))
                                    (_g3153431667_)))
                            (if (gx#stx-pair? _tl3156132189_)
                                (let ((_e3160032146_
                                       (gx#stx-e _tl3156132189_)))
                                  (let ((_tl3160232151_ (##cdr _e3160032146_))
                                        (_hd3160132149_ (##car _e3160032146_)))
                                    (if (gx#stx-null? _tl3160232151_)
                                        (___kont4371243713_
                                         _hd3160132149_
                                         _hd3156032187_)
                                        (_g3153431667_))))
                                (_g3153431667_)))))
                    (if (gx#stx-pair? _tl3156132189_)
                        (let ((_e3160032146_ (gx#stx-e _tl3156132189_)))
                          (let ((_tl3160232151_ (##cdr _e3160032146_))
                                (_hd3160132149_ (##car _e3160032146_)))
                            (if (gx#stx-null? _tl3160232151_)
                                (___kont4371243713_
                                 _hd3160132149_
                                 _hd3156032187_)
                                (_g3153431667_))))
                        (_g3153431667_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         _tl3156132189_)
                                                        (let ((_e3160032146_
                                                               (gx#stx-e
                                                                _tl3156132189_)))
                                                          (let ((_tl3160232151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3160032146_))
                        (_hd3160132149_ (##car _e3160032146_)))
                    (if (gx#stx-null? _tl3160232151_)
                        (___kont4371243713_ _hd3160132149_ _hd3156032187_)
                        (_g3153431667_))))
                (_g3153431667_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _tl3156132189_)
                                                    (let ((_e3160032146_
                                                           (gx#stx-e
                                                            _tl3156132189_)))
                                                      (let ((_tl3160232151_
                                                             (##cdr _e3160032146_))
                                                            (_hd3160132149_
                                                             (##car _e3160032146_)))
                                                        (if (gx#stx-null?
                                                             _tl3160232151_)
                                                            (___kont4371243713_
                                                             _hd3160132149_
                                                             _hd3156032187_)
                                                            (_g3153431667_))))
                                                    (_g3153431667_)))))
                                        (if (gx#stx-pair? _tl3156132189_)
                                            (let ((_e3160032146_
                                                   (gx#stx-e _tl3156132189_)))
                                              (let ((_tl3160232151_
                                                     (##cdr _e3160032146_))
                                                    (_hd3160132149_
                                                     (##car _e3160032146_)))
                                                (if (gx#stx-null?
                                                     _tl3160232151_)
                                                    (___kont4371243713_
                                                     _hd3160132149_
                                                     _hd3156032187_)
                                                    (_g3153431667_))))
                                            (_g3153431667_)))))
                                (if (gx#stx-pair? _tl3156132189_)
                                    (let ((_e3160032146_
                                           (gx#stx-e _tl3156132189_)))
                                      (let ((_tl3160232151_
                                             (##cdr _e3160032146_))
                                            (_hd3160132149_
                                             (##car _e3160032146_)))
                                        (if (gx#stx-null? _tl3160232151_)
                                            (___kont4371243713_
                                             _hd3160132149_
                                             _hd3156032187_)
                                            (_g3153431667_))))
                                    (_g3153431667_)))))
                        (if (gx#stx-pair? _tl3156132189_)
                            (let ((_e3160032146_ (gx#stx-e _tl3156132189_)))
                              (let ((_tl3160232151_ (##cdr _e3160032146_))
                                    (_hd3160132149_ (##car _e3160032146_)))
                                (if (gx#stx-null? _tl3160232151_)
                                    (___kont4371243713_
                                     _hd3160132149_
                                     _hd3156032187_)
                                    (_g3153431667_))))
                            (_g3153431667_)))))
                (if (gx#stx-pair? _tl3156132189_)
                    (let ((_e3160032146_ (gx#stx-e _tl3156132189_)))
                      (let ((_tl3160232151_ (##cdr _e3160032146_))
                            (_hd3160132149_ (##car _e3160032146_)))
                        (if (gx#stx-null? _tl3160232151_)
                            (___kont4371243713_ _hd3160132149_ _hd3156032187_)
                            (_g3153431667_))))
                    (_g3153431667_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3153431667_))
                                            (if (gx#stx-eq?
                                                 '%#letrec-values
                                                 _hd3154032327_)
                                                (if (gx#stx-pair?
                                                     _tl3154132329_)
                                                    (let ((_e3160932050_
                                                           (gx#stx-e
                                                            _tl3154132329_)))
                                                      (let ((_tl3161132055_
                                                             (##cdr _e3160932050_))
                                                            (_hd3161032053_
                                                             (##car _e3160932050_)))
                                                        (if (gx#stx-pair?
                                                             _hd3161032053_)
                                                            (let ((_e3161232058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3161032053_)))
                      (let ((_tl3161432063_ (##cdr _e3161232058_))
                            (_hd3161332061_ (##car _e3161232058_)))
                        (if (gx#stx-pair? _hd3161332061_)
                            (let ((_e3161532066_ (gx#stx-e _hd3161332061_)))
                              (let ((_tl3161732071_ (##cdr _e3161532066_))
                                    (_hd3161632069_ (##car _e3161532066_)))
                                (if (gx#stx-pair? _hd3161632069_)
                                    (let ((_e3161832074_
                                           (gx#stx-e _hd3161632069_)))
                                      (let ((_tl3162032079_
                                             (##cdr _e3161832074_))
                                            (_hd3161932077_
                                             (##car _e3161832074_)))
                                        (if (gx#stx-null? _tl3162032079_)
                                            (if (gx#stx-pair? _tl3161732071_)
                                                (let ((_e3162132082_
                                                       (gx#stx-e
                                                        _tl3161732071_)))
                                                  (let ((_tl3162332087_
                                                         (##cdr _e3162132082_))
                                                        (_hd3162232085_
                                                         (##car _e3162132082_)))
                                                    (if (gx#stx-null?
                                                         _tl3162332087_)
                                                        (if (gx#stx-null?
                                                             _tl3161432063_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3161132055_)
                        (let ((_e3162432090_ (gx#stx-e _tl3161132055_)))
                          (let ((_tl3162632095_ (##cdr _e3162432090_))
                                (_hd3162532093_ (##car _e3162432090_)))
                            (if (gx#stx-null? _tl3162632095_)
                                (___kont4371443715_
                                 _hd3162532093_
                                 _hd3162232085_
                                 _hd3161932077_)
                                (_g3153431667_))))
                        (_g3153431667_))
                    (_g3153431667_))
                (_g3153431667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3153431667_))
                                            (_g3153431667_))))
                                    (_g3153431667_))))
                            (_g3153431667_))))
                    (_g3153431667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3153431667_))
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd3154032327_)
                                                    (if (gx#stx-pair?
                                                         _tl3154132329_)
                                                        (let ((_e3163331680_
                                                               (gx#stx-e
                                                                _tl3154132329_)))
                                                          (let ((_tl3163531685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3163331680_))
                        (_hd3163431683_ (##car _e3163331680_)))
                    (if (gx#stx-pair? _hd3163431683_)
                        (let ((_e3163631688_ (gx#stx-e _hd3163431683_)))
                          (let ((_tl3163831693_ (##cdr _e3163631688_))
                                (_hd3163731691_ (##car _e3163631688_)))
                            (if (gx#identifier? _hd3163731691_)
                                (if (gx#stx-eq? '%#lambda _hd3163731691_)
                                    (if (gx#stx-pair? _tl3163831693_)
                                        (let ((_e3163931696_
                                               (gx#stx-e _tl3163831693_)))
                                          (let ((_tl3164131701_
                                                 (##cdr _e3163931696_))
                                                (_hd3164031699_
                                                 (##car _e3163931696_)))
                                            (if (gx#stx-pair/null?
                                                 _hd3164031699_)
                                                (let ((___splice4371843719_
                                                       (gx#syntax-split-splice
                                                        _hd3164031699_
                                                        '0)))
                                                  (let ((_tl3164431706_
                                                         (##vector-ref
                                                          ___splice4371843719_
                                                          '1))
                                                        (_target3164231704_
                                                         (##vector-ref
                                                          ___splice4371843719_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3164431706_)
                                                        (___match4396343964_
                                                         _e3153932324_
                                                         _hd3154032327_
                                                         _tl3154132329_
                                                         _e3163331680_
                                                         _hd3163431683_
                                                         _tl3163531685_
                                                         _e3163631688_
                                                         _hd3163731691_
                                                         _tl3163831693_
                                                         _e3163931696_
                                                         _hd3164031699_
                                                         _tl3164131701_
                                                         ___splice4371843719_
                                                         _target3164231704_
                                                         _tl3164431706_)
                                                        (_g3153431667_))))
                                                (_g3153431667_))))
                                        (_g3153431667_))
                                    (_g3153431667_))
                                (_g3153431667_))))
                        (_g3153431667_))))
                (_g3153431667_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3153431667_)))))
                                    (_g3153431667_))))
                            (_g3153431667_)))))))
               (_xform-loop-e31142_
                (lambda (_expr31351_
                         _kont-id31352_
                         _kont-box31353_
                         _negation-id31354_)
                  (let* ((_g3135631396_
                          (lambda (_g3135731393_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3135731393_)))
                         (_g3135531522_
                          (lambda (_g3135731399_)
                            (if (gx#stx-pair? _g3135731399_)
                                (let ((_e3136231401_ (gx#stx-e _g3135731399_)))
                                  (let ((_hd3136331404_ (##car _e3136231401_))
                                        (_tl3136431406_ (##cdr _e3136231401_)))
                                    (if (gx#identifier? _hd3136331404_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3136331404_)
                                            (if (gx#stx-pair? _tl3136431406_)
                                                (let ((_e3136531409_
                                                       (gx#stx-e
                                                        _tl3136431406_)))
                                                  (let ((_hd3136631412_
                                                         (##car _e3136531409_))
                                                        (_tl3136731414_
                                                         (##cdr _e3136531409_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3136631412_)
                                                        (let ((_g44281_
                                                               (gx#syntax-split-splice
                                                                _hd3136631412_
                                                                '0)))
                                                          (begin
                                                            (let ((_g44282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g44281_)
                               (##vector-length _g44281_)
                               1)))
                      (if (not (##fx= _g44282_ 2))
                          (error "Context expects 2 values" _g44282_)))
                    (let ((_target3136831417_ (##vector-ref _g44281_ 0))
                          (_tl3137031419_ (##vector-ref _g44281_ 1)))
                      (if (gx#stx-null? _tl3137031419_)
                          (letrec ((_loop3137131422_
                                    (lambda (_hd3136931425_ _id3137531427_)
                                      (if (gx#stx-pair? _hd3136931425_)
                                          (let ((_e3137231430_
                                                 (gx#stx-e _hd3136931425_)))
                                            (let ((_lp-hd3137331433_
                                                   (##car _e3137231430_))
                                                  (_lp-tl3137431435_
                                                   (##cdr _e3137231430_)))
                                              (_loop3137131422_
                                               _lp-tl3137431435_
                                               (cons _lp-hd3137331433_
                                                     _id3137531427_))))
                                          (let ((_id3137631438_
                                                 (reverse _id3137531427_)))
                                            (if (gx#stx-pair? _tl3136731414_)
                                                (let ((_e3137731441_
                                                       (gx#stx-e
                                                        _tl3136731414_)))
                                                  (let ((_hd3137831444_
                                                         (##car _e3137731441_))
                                                        (_tl3137931446_
                                                         (##cdr _e3137731441_)))
                                                    (if (gx#stx-pair?
                                                         _hd3137831444_)
                                                        (let ((_e3138031449_
                                                               (gx#stx-e
                                                                _hd3137831444_)))
                                                          (let ((_hd3138131452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3138031449_))
                        (_tl3138231454_ (##cdr _e3138031449_)))
                    (if (gx#identifier? _hd3138131452_)
                        (if (gx#stx-eq? '%#if _hd3138131452_)
                            (if (gx#stx-pair? _tl3138231454_)
                                (let ((_e3138331457_
                                       (gx#stx-e _tl3138231454_)))
                                  (let ((_hd3138431460_ (##car _e3138331457_))
                                        (_tl3138531462_ (##cdr _e3138331457_)))
                                    (if (gx#stx-pair? _tl3138531462_)
                                        (let ((_e3138631465_
                                               (gx#stx-e _tl3138531462_)))
                                          (let ((_hd3138731468_
                                                 (##car _e3138631465_))
                                                (_tl3138831470_
                                                 (##cdr _e3138631465_)))
                                            (if (gx#stx-pair? _tl3138831470_)
                                                (let ((_e3138931473_
                                                       (gx#stx-e
                                                        _tl3138831470_)))
                                                  (let ((_hd3139031476_
                                                         (##car _e3138931473_))
                                                        (_tl3139131478_
                                                         (##cdr _e3138931473_)))
                                                    (if (gx#stx-null?
                                                         _tl3139131478_)
                                                        (if (gx#stx-null?
                                                             _tl3137931446_)
                                                            ((lambda (_L31481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L31482_
                              _L31483_
                              _L31484_)
                       (let ((_E31513_
                              (_xform-e31141_
                               _L31481_
                               _kont-id31352_
                               _kont-box31353_
                               _negation-id31354_)))
                         (cons '%#lambda
                               (cons (begin
                                       '#!void
                                       (foldr1 (lambda (_g3151431517_
                                                        _g3151531519_)
                                                 (cons _g3151431517_
                                                       _g3151531519_))
                                               '()
                                               _L31484_))
                                     (cons (cons '%#if
                                                 (cons _L31483_
                                                       (cons _L31482_
                                                             (cons _E31513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _hd3139031476_
                     _hd3138731468_
                     _hd3138431460_
                     _id3137631438_)
                    (_g3135631396_ _g3135731399_))
                (_g3135631396_ _g3135731399_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3135631396_
                                                 _g3135731399_))))
                                        (_g3135631396_ _g3135731399_))))
                                (_g3135631396_ _g3135731399_))
                            (_g3135631396_ _g3135731399_))
                        (_g3135631396_ _g3135731399_))))
                (_g3135631396_ _g3135731399_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3135631396_
                                                 _g3135731399_)))))))
                            (_loop3137131422_ _target3136831417_ '()))
                          (_g3135631396_ _g3135731399_)))))
                (_g3135631396_ _g3135731399_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3135631396_ _g3135731399_))
                                            (_g3135631396_ _g3135731399_))
                                        (_g3135631396_ _g3135731399_))))
                                (_g3135631396_ _g3135731399_)))))
                    (_g3135531522_ _expr31351_))))
               (_clause-e31143_
                (lambda (_clause-lambda31221_ _kont-id31222_ _rest31223_)
                  (letrec* ((_kont-box31225_ (box '#f)))
                    (let* ((_negation-id31265_
                            (let* ((_rest3122631236_ _rest31223_)
                                   (_else3122831244_
                                    (lambda () _negation-id31139_))
                                   (_K3123031250_
                                    (lambda (_clause31247_ _clause-id31248_)
                                      _clause-id31248_)))
                              (if (##pair? _rest3122631236_)
                                  (let ((_hd3123131253_
                                         (##car _rest3122631236_)))
                                    (if (##pair? _hd3123131253_)
                                        (let ((_hd3123331256_
                                               (##car _hd3123131253_))
                                              (_tl3123431258_
                                               (##cdr _hd3123131253_)))
                                          (let* ((_clause-id31261_
                                                  _hd3123331256_)
                                                 (_clause31263_
                                                  _tl3123431258_))
                                            (_K3123031250_
                                             _clause31263_
                                             _clause-id31261_)))
                                        (_else3122831244_)))
                                  (_else3122831244_))))
                           (_g3126731287_
                            (lambda (_g3126831284_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g3126831284_)))
                           (_g3126631348_
                            (lambda (_g3126831290_)
                              (if (gx#stx-pair? _g3126831290_)
                                  (let ((_e3127131292_
                                         (gx#stx-e _g3126831290_)))
                                    (let ((_hd3127231295_
                                           (##car _e3127131292_))
                                          (_tl3127331297_
                                           (##cdr _e3127131292_)))
                                      (if (gx#identifier? _hd3127231295_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _hd3127231295_)
                                              (if (gx#stx-pair? _tl3127331297_)
                                                  (let ((_e3127431300_
                                                         (gx#stx-e
                                                          _tl3127331297_)))
                                                    (let ((_hd3127531303_
                                                           (##car _e3127431300_))
                                                          (_tl3127631305_
                                                           (##cdr _e3127431300_)))
                                                      (if (gx#stx-pair?
                                                           _hd3127531303_)
                                                          (let ((_e3127731308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd3127531303_)))
                    (let ((_hd3127831311_ (##car _e3127731308_))
                          (_tl3127931313_ (##cdr _e3127731308_)))
                      (if (gx#stx-null? _tl3127931313_)
                          (if (gx#stx-pair? _tl3127631305_)
                              (let ((_e3128031316_ (gx#stx-e _tl3127631305_)))
                                (let ((_hd3128131319_ (##car _e3128031316_))
                                      (_tl3128231321_ (##cdr _e3128031316_)))
                                  (if (gx#stx-null? _tl3128231321_)
                                      ((lambda (_L31324_ _L31325_)
                                         (let ((_body31346_
                                                (_xform-e31141_
                                                 _L31324_
                                                 _kont-id31222_
                                                 _kont-box31225_
                                                 _negation-id31265_)))
                                           (values (cons '%#lambda
                                                         (cons (cons _L31325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _body31346_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (unbox _kont-box31225_))))
                                       _hd3128131319_
                                       _hd3127831311_)
                                      (_g3126731287_ _g3126831290_))))
                              (_g3126731287_ _g3126831290_))
                          (_g3126731287_ _g3126831290_))))
                  (_g3126731287_ _g3126831290_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3126731287_
                                                   _g3126831290_))
                                              (_g3126731287_ _g3126831290_))
                                          (_g3126731287_ _g3126831290_))))
                                  (_g3126731287_ _g3126831290_)))))
                      (_g3126631348_ _clause-lambda31221_))))))
        (let _lp31145_ ((_rest31147_ _clauses31138_)
                        (_clauses31148_ '())
                        (_konts31149_ '()))
          (let* ((_rest3115031158_ _rest31147_)
                 (_else3115231166_
                  (lambda ()
                    (values (reverse _clauses31148_) (reverse _konts31149_))))
                 (_K3115431209_
                  (lambda (_rest31169_ _clause31170_)
                    (let* ((_clause3117131178_ _clause31170_)
                           (_E3117331182_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause3117131178_)))
                           (_K3117431197_
                            (lambda (_clause-lambda31185_ _clause-id31186_)
                              (let* ((_id31188_ (make-symbol (gensym '__kont)))
                                     (_id31190_
                                      (gx#core-quote-syntax__0 _id31188_))
                                     (_g44283_
                                      (gx#core-bind-runtime!__0 _id31190_))
                                     (_g44284_
                                      (_clause-e31143_
                                       _clause-lambda31185_
                                       _id31190_
                                       _rest31169_)))
                                (begin
                                  (let ((_g44285_
                                         (if (##values? _g44284_)
                                             (##vector-length _g44284_)
                                             1)))
                                    (if (not (##fx= _g44285_ 2))
                                        (error "Context expects 2 values"
                                               _g44285_)))
                                  (let ((_clause-lambda31193_
                                         (##vector-ref _g44284_ 0))
                                        (_kont31194_
                                         (##vector-ref _g44284_ 1)))
                                    (let ()
                                      (_lp31145_
                                       _rest31169_
                                       (cons (cons _clause-id31186_
                                                   _clause-lambda31193_)
                                             _clauses31148_)
                                       (cons (cons _id31190_ _kont31194_)
                                             _konts31149_)))))))))
                      (if (##pair? _clause3117131178_)
                          (let ((_hd3117531200_ (##car _clause3117131178_))
                                (_tl3117631202_ (##cdr _clause3117131178_)))
                            (let* ((_clause-id31205_ _hd3117531200_)
                                   (_clause-lambda31207_ _tl3117631202_))
                              (_K3117431197_
                               _clause-lambda31207_
                               _clause-id31205_)))
                          (_E3117331182_))))))
            (if (##pair? _rest3115031158_)
                (let ((_hd3115531212_ (##car _rest3115031158_))
                      (_tl3115631214_ (##cdr _rest3115031158_)))
                  (let* ((_clause31217_ _hd3115531212_)
                         (_rest31219_ _tl3115631214_))
                    (_K3115431209_ _rest31219_ _clause31217_)))
                (_else3115231166_)))))))
  (define gxc#optimize-syntax-case-closure
    (lambda (_clause30482_ _negation30483_ _target30484_)
      (letrec ((_closure-e30486_
                (lambda (_expr30603_)
                  (let* ((___stx4396643967_ _expr30603_)
                         (_g3061030725_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4396643967_))))
                    (let ((___kont4396843969_
                           (lambda (_L31116_ _L31117_ _L31118_)
                             (cons '%#if
                                   (cons _L31118_
                                         (cons (_closure-e30486_ _L31117_)
                                               (cons (_closure-e30486_
                                                      _L31116_)
                                                     '()))))))
                          (___kont4397043971_
                           (lambda (_L31064_ _L31065_)
                             (cons '%#let-values
                                   (cons _L31065_
                                         (cons (_closure-e30486_ _L31064_)
                                               '())))))
                          (___kont4397243973_
                           (lambda (_L31010_ _L31011_ _L31012_)
                             (cons '%#letrec-values
                                   (cons (cons (cons (cons _L31012_ '())
                                                     (cons (_closure-e30486_
                                                            _L31011_)
                                                           '()))
                                               '())
                                         (cons _L31010_ '())))))
                          (___kont4397443975_
                           (lambda (_L30923_ _L30924_)
                             (cons '%#lambda
                                   (cons (begin
                                           '#!void
                                           (foldr1 (lambda (_g3094130944_
                                                            _g3094230946_)
                                                     (cons _g3094130944_
                                                           _g3094230946_))
                                                   '()
                                                   _L30924_))
                                         (cons (_closure-e30486_ _L30923_)
                                               '())))))
                          (___kont4397843979_
                           (lambda (_L30853_)
                             (cons '%#call
                                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                               (cons _L30853_ '()))
                                         '()))))
                          (___kont4398043981_
                           (lambda (_L30786_ _L30787_) _expr30603_)))
                      (let* ((___match4419944200_
                              (lambda (_e3070030730_
                                       _hd3070130733_
                                       _tl3070230735_
                                       _e3070330738_
                                       _hd3070430741_
                                       _tl3070530743_
                                       _e3070630746_
                                       _hd3070730749_
                                       _tl3070830751_
                                       _e3070930754_
                                       _hd3071030757_
                                       _tl3071130759_
                                       ___splice4398243983_
                                       _target3071230762_
                                       _tl3071430764_)
                                (letrec ((_loop3071530767_
                                          (lambda (_hd3071330770_
                                                   _arg3071930772_)
                                            (if (gx#stx-pair? _hd3071330770_)
                                                (let ((_e3071630775_
                                                       (gx#stx-e
                                                        _hd3071330770_)))
                                                  (let ((_lp-tl3071830780_
                                                         (##cdr _e3071630775_))
                                                        (_lp-hd3071730778_
                                                         (##car _e3071630775_)))
                                                    (_loop3071530767_
                                                     _lp-tl3071830780_
                                                     (cons _lp-hd3071730778_
                                                           _arg3071930772_))))
                                                (let ((_arg3072030783_
                                                       (reverse _arg3071930772_)))
                                                  (___kont4398043981_
                                                   _arg3072030783_
                                                   _hd3071030757_))))))
                                  (_loop3071530767_ _target3071230762_ '()))))
                             (___match4415744158_
                              (lambda (_e3068330813_
                                       _hd3068430816_
                                       _tl3068530818_
                                       _e3068630821_
                                       _hd3068730824_
                                       _tl3068830826_
                                       _e3068930829_
                                       _hd3069030832_
                                       _tl3069130834_
                                       _e3069230837_
                                       _hd3069330840_
                                       _tl3069430842_
                                       _e3069530845_
                                       _hd3069630848_
                                       _tl3069730850_)
                                (let ((_L30853_ _hd3069330840_))
                                  (if (gx#free-identifier=?
                                       _L30853_
                                       _negation30483_)
                                      (___kont4397843979_ _L30853_)
                                      (if (gx#stx-pair/null? _tl3068830826_)
                                          (let ((___splice4398243983_
                                                 (gx#syntax-split-splice
                                                  _tl3068830826_
                                                  '0)))
                                            (let ((_tl3071430764_
                                                   (##vector-ref
                                                    ___splice4398243983_
                                                    '1))
                                                  (_target3071230762_
                                                   (##vector-ref
                                                    ___splice4398243983_
                                                    '0)))
                                              (if (gx#stx-null? _tl3071430764_)
                                                  (___match4419944200_
                                                   _e3068330813_
                                                   _hd3068430816_
                                                   _tl3068530818_
                                                   _e3068630821_
                                                   _hd3068730824_
                                                   _tl3068830826_
                                                   _e3068930829_
                                                   _hd3069030832_
                                                   _tl3069130834_
                                                   _e3069230837_
                                                   _hd3069330840_
                                                   _tl3069430842_
                                                   ___splice4398243983_
                                                   _target3071230762_
                                                   _tl3071430764_)
                                                  (_g3061030725_))))
                                          (_g3061030725_))))))
                             (___match4411544116_
                              (lambda (_e3066430875_
                                       _hd3066530878_
                                       _tl3066630880_
                                       _e3066730883_
                                       _hd3066830886_
                                       _tl3066930888_
                                       ___splice4397643977_
                                       _target3067030891_
                                       _tl3067230893_)
                                (letrec ((_loop3067330896_
                                          (lambda (_hd3067130899_
                                                   _id3067730901_)
                                            (if (gx#stx-pair? _hd3067130899_)
                                                (let ((_e3067430904_
                                                       (gx#stx-e
                                                        _hd3067130899_)))
                                                  (let ((_lp-tl3067630909_
                                                         (##cdr _e3067430904_))
                                                        (_lp-hd3067530907_
                                                         (##car _e3067430904_)))
                                                    (_loop3067330896_
                                                     _lp-tl3067630909_
                                                     (cons _lp-hd3067530907_
                                                           _id3067730901_))))
                                                (let ((_id3067830912_
                                                       (reverse _id3067730901_)))
                                                  (if (gx#stx-pair?
                                                       _tl3066930888_)
                                                      (let ((_e3067930915_
                                                             (gx#stx-e
                                                              _tl3066930888_)))
                                                        (let ((_tl3068130920_
                                                               (##cdr _e3067930915_))
                                                              (_hd3068030918_
                                                               (##car _e3067930915_)))
                                                          (if (gx#stx-null?
                                                               _tl3068130920_)
                                                              (___kont4397443975_
                                                               _hd3068030918_
                                                               _id3067830912_)
                                                              (_g3061030725_))))
                                                      (_g3061030725_)))))))
                                  (_loop3067330896_ _target3067030891_ '())))))
                        (if (gx#stx-pair? ___stx4396643967_)
                            (let ((_e3061531084_ (gx#stx-e ___stx4396643967_)))
                              (let ((_tl3061731089_ (##cdr _e3061531084_))
                                    (_hd3061631087_ (##car _e3061531084_)))
                                (if (gx#identifier? _hd3061631087_)
                                    (if (gx#stx-eq? '%#if _hd3061631087_)
                                        (if (gx#stx-pair? _tl3061731089_)
                                            (let ((_e3061831092_
                                                   (gx#stx-e _tl3061731089_)))
                                              (let ((_tl3062031097_
                                                     (##cdr _e3061831092_))
                                                    (_hd3061931095_
                                                     (##car _e3061831092_)))
                                                (if (gx#stx-pair?
                                                     _tl3062031097_)
                                                    (let ((_e3062131100_
                                                           (gx#stx-e
                                                            _tl3062031097_)))
                                                      (let ((_tl3062331105_
                                                             (##cdr _e3062131100_))
                                                            (_hd3062231103_
                                                             (##car _e3062131100_)))
                                                        (if (gx#stx-pair?
                                                             _tl3062331105_)
                                                            (let ((_e3062431108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3062331105_)))
                      (let ((_tl3062631113_ (##cdr _e3062431108_))
                            (_hd3062531111_ (##car _e3062431108_)))
                        (if (gx#stx-null? _tl3062631113_)
                            (___kont4396843969_
                             _hd3062531111_
                             _hd3062231103_
                             _hd3061931095_)
                            (_g3061030725_))))
                    (_g3061030725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3061030725_))))
                                            (_g3061030725_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd3061631087_)
                                            (if (gx#stx-pair? _tl3061731089_)
                                                (let ((_e3063231048_
                                                       (gx#stx-e
                                                        _tl3061731089_)))
                                                  (let ((_tl3063431053_
                                                         (##cdr _e3063231048_))
                                                        (_hd3063331051_
                                                         (##car _e3063231048_)))
                                                    (if (gx#stx-pair?
                                                         _tl3063431053_)
                                                        (let ((_e3063531056_
                                                               (gx#stx-e
                                                                _tl3063431053_)))
                                                          (let ((_tl3063731061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3063531056_))
                        (_hd3063631059_ (##car _e3063531056_)))
                    (if (gx#stx-null? _tl3063731061_)
                        (___kont4397043971_ _hd3063631059_ _hd3063331051_)
                        (_g3061030725_))))
                (_g3061030725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3061030725_))
                                            (if (gx#stx-eq?
                                                 '%#letrec-values
                                                 _hd3061631087_)
                                                (if (gx#stx-pair?
                                                     _tl3061731089_)
                                                    (let ((_e3064430962_
                                                           (gx#stx-e
                                                            _tl3061731089_)))
                                                      (let ((_tl3064630967_
                                                             (##cdr _e3064430962_))
                                                            (_hd3064530965_
                                                             (##car _e3064430962_)))
                                                        (if (gx#stx-pair?
                                                             _hd3064530965_)
                                                            (let ((_e3064730970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3064530965_)))
                      (let ((_tl3064930975_ (##cdr _e3064730970_))
                            (_hd3064830973_ (##car _e3064730970_)))
                        (if (gx#stx-pair? _hd3064830973_)
                            (let ((_e3065030978_ (gx#stx-e _hd3064830973_)))
                              (let ((_tl3065230983_ (##cdr _e3065030978_))
                                    (_hd3065130981_ (##car _e3065030978_)))
                                (if (gx#stx-pair? _hd3065130981_)
                                    (let ((_e3065330986_
                                           (gx#stx-e _hd3065130981_)))
                                      (let ((_tl3065530991_
                                             (##cdr _e3065330986_))
                                            (_hd3065430989_
                                             (##car _e3065330986_)))
                                        (if (gx#stx-null? _tl3065530991_)
                                            (if (gx#stx-pair? _tl3065230983_)
                                                (let ((_e3065630994_
                                                       (gx#stx-e
                                                        _tl3065230983_)))
                                                  (let ((_tl3065830999_
                                                         (##cdr _e3065630994_))
                                                        (_hd3065730997_
                                                         (##car _e3065630994_)))
                                                    (if (gx#stx-null?
                                                         _tl3065830999_)
                                                        (if (gx#stx-null?
                                                             _tl3064930975_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3064630967_)
                        (let ((_e3065931002_ (gx#stx-e _tl3064630967_)))
                          (let ((_tl3066131007_ (##cdr _e3065931002_))
                                (_hd3066031005_ (##car _e3065931002_)))
                            (if (gx#stx-null? _tl3066131007_)
                                (___kont4397243973_
                                 _hd3066031005_
                                 _hd3065730997_
                                 _hd3065430989_)
                                (_g3061030725_))))
                        (_g3061030725_))
                    (_g3061030725_))
                (_g3061030725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3061030725_))
                                            (_g3061030725_))))
                                    (_g3061030725_))))
                            (_g3061030725_))))
                    (_g3061030725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3061030725_))
                                                (if (gx#stx-eq?
                                                     '%#lambda
                                                     _hd3061631087_)
                                                    (if (gx#stx-pair?
                                                         _tl3061731089_)
                                                        (let ((_e3066730883_
                                                               (gx#stx-e
                                                                _tl3061731089_)))
                                                          (let ((_tl3066930888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3066730883_))
                        (_hd3066830886_ (##car _e3066730883_)))
                    (if (gx#stx-pair/null? _hd3066830886_)
                        (let ((___splice4397643977_
                               (gx#syntax-split-splice _hd3066830886_ '0)))
                          (let ((_tl3067230893_
                                 (##vector-ref ___splice4397643977_ '1))
                                (_target3067030891_
                                 (##vector-ref ___splice4397643977_ '0)))
                            (if (gx#stx-null? _tl3067230893_)
                                (___match4411544116_
                                 _e3061531084_
                                 _hd3061631087_
                                 _tl3061731089_
                                 _e3066730883_
                                 _hd3066830886_
                                 _tl3066930888_
                                 ___splice4397643977_
                                 _target3067030891_
                                 _tl3067230893_)
                                (_g3061030725_))))
                        (_g3061030725_))))
                (_g3061030725_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd3061631087_)
                                                        (if (gx#stx-pair?
                                                             _tl3061731089_)
                                                            (let ((_e3068630821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3061731089_)))
                      (let ((_tl3068830826_ (##cdr _e3068630821_))
                            (_hd3068730824_ (##car _e3068630821_)))
                        (if (gx#stx-pair? _hd3068730824_)
                            (let ((_e3068930829_ (gx#stx-e _hd3068730824_)))
                              (let ((_tl3069130834_ (##cdr _e3068930829_))
                                    (_hd3069030832_ (##car _e3068930829_)))
                                (if (gx#identifier? _hd3069030832_)
                                    (if (gx#stx-eq? '%#ref _hd3069030832_)
                                        (if (gx#stx-pair? _tl3069130834_)
                                            (let ((_e3069230837_
                                                   (gx#stx-e _tl3069130834_)))
                                              (let ((_tl3069430842_
                                                     (##cdr _e3069230837_))
                                                    (_hd3069330840_
                                                     (##car _e3069230837_)))
                                                (if (gx#stx-null?
                                                     _tl3069430842_)
                                                    (if (gx#stx-pair?
                                                         _tl3068830826_)
                                                        (let ((_e3069530845_
                                                               (gx#stx-e
                                                                _tl3068830826_)))
                                                          (let ((_tl3069730850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3069530845_))
                        (_hd3069630848_ (##car _e3069530845_)))
                    (if (gx#stx-null? _tl3069730850_)
                        (___match4415744158_
                         _e3061531084_
                         _hd3061631087_
                         _tl3061731089_
                         _e3068630821_
                         _hd3068730824_
                         _tl3068830826_
                         _e3068930829_
                         _hd3069030832_
                         _tl3069130834_
                         _e3069230837_
                         _hd3069330840_
                         _tl3069430842_
                         _e3069530845_
                         _hd3069630848_
                         _tl3069730850_)
                        (if (gx#stx-pair/null? _tl3068830826_)
                            (let ((___splice4398243983_
                                   (gx#syntax-split-splice _tl3068830826_ '0)))
                              (let ((_tl3071430764_
                                     (##vector-ref ___splice4398243983_ '1))
                                    (_target3071230762_
                                     (##vector-ref ___splice4398243983_ '0)))
                                (if (gx#stx-null? _tl3071430764_)
                                    (___match4419944200_
                                     _e3061531084_
                                     _hd3061631087_
                                     _tl3061731089_
                                     _e3068630821_
                                     _hd3068730824_
                                     _tl3068830826_
                                     _e3068930829_
                                     _hd3069030832_
                                     _tl3069130834_
                                     _e3069230837_
                                     _hd3069330840_
                                     _tl3069430842_
                                     ___splice4398243983_
                                     _target3071230762_
                                     _tl3071430764_)
                                    (_g3061030725_))))
                            (_g3061030725_)))))
                (if (gx#stx-pair/null? _tl3068830826_)
                    (let ((___splice4398243983_
                           (gx#syntax-split-splice _tl3068830826_ '0)))
                      (let ((_tl3071430764_
                             (##vector-ref ___splice4398243983_ '1))
                            (_target3071230762_
                             (##vector-ref ___splice4398243983_ '0)))
                        (if (gx#stx-null? _tl3071430764_)
                            (___match4419944200_
                             _e3061531084_
                             _hd3061631087_
                             _tl3061731089_
                             _e3068630821_
                             _hd3068730824_
                             _tl3068830826_
                             _e3068930829_
                             _hd3069030832_
                             _tl3069130834_
                             _e3069230837_
                             _hd3069330840_
                             _tl3069430842_
                             ___splice4398243983_
                             _target3071230762_
                             _tl3071430764_)
                            (_g3061030725_))))
                    (_g3061030725_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3061030725_))))
                                            (_g3061030725_))
                                        (_g3061030725_))
                                    (_g3061030725_))))
                            (_g3061030725_))))
                    (_g3061030725_))
                (_g3061030725_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_g3061030725_))))
                            (_g3061030725_))))))))
        (let* ((_clause3048730494_ _clause30482_)
               (_E3048930498_
                (lambda () (error '"No clause matching" _clause3048730494_)))
               (_K3049030591_
                (lambda (_kont30501_ _id30502_)
                  (let* ((_g3050430524_
                          (lambda (_g3050530521_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3050530521_)))
                         (_g3050330588_
                          (lambda (_g3050530527_)
                            (if (gx#stx-pair? _g3050530527_)
                                (let ((_e3050830529_ (gx#stx-e _g3050530527_)))
                                  (let ((_hd3050930532_ (##car _e3050830529_))
                                        (_tl3051030534_ (##cdr _e3050830529_)))
                                    (if (gx#identifier? _hd3050930532_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3050930532_)
                                            (if (gx#stx-pair? _tl3051030534_)
                                                (let ((_e3051130537_
                                                       (gx#stx-e
                                                        _tl3051030534_)))
                                                  (let ((_hd3051230540_
                                                         (##car _e3051130537_))
                                                        (_tl3051330542_
                                                         (##cdr _e3051130537_)))
                                                    (if (gx#stx-pair?
                                                         _hd3051230540_)
                                                        (let ((_e3051430545_
                                                               (gx#stx-e
                                                                _hd3051230540_)))
                                                          (let ((_hd3051530548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3051430545_))
                        (_tl3051630550_ (##cdr _e3051430545_)))
                    (if (gx#stx-null? _tl3051630550_)
                        (if (gx#stx-pair? _tl3051330542_)
                            (let ((_e3051730553_ (gx#stx-e _tl3051330542_)))
                              (let ((_hd3051830556_ (##car _e3051730553_))
                                    (_tl3051930558_ (##cdr _e3051730553_)))
                                (if (gx#stx-null? _tl3051930558_)
                                    ((lambda (_L30561_ _L30562_)
                                       (let* ((_body30583_
                                               (gxc#apply-expression-subst
                                                _L30561_
                                                _L30562_
                                                _target30484_))
                                              (_body30585_
                                               (if _negation30483_
                                                   (_closure-e30486_
                                                    _body30583_)
                                                   _body30583_)))
                                         (begin
                                           (gxc#optimizer-declare-type!__%
                                            (gxc#identifier-symbol _id30502_)
                                            (let ((__obj44251
                                                   (make-object
                                                    gxc#!lambda::t
                                                    '5)))
                                              (begin
                                                (gxc#!lambda:::init!__0
                                                 __obj44251
                                                 'lambda
                                                 '0
                                                 '#f)
                                                __obj44251))
                                            '#t)
                                           (cons _id30502_
                                                 (cons '%#lambda
                                                       (cons '()
                                                             (cons _body30585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _hd3051830556_
                                     _hd3051530548_)
                                    (_g3050430524_ _g3050530527_))))
                            (_g3050430524_ _g3050530527_))
                        (_g3050430524_ _g3050530527_))))
                (_g3050430524_ _g3050530527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3050430524_ _g3050530527_))
                                            (_g3050430524_ _g3050530527_))
                                        (_g3050430524_ _g3050530527_))))
                                (_g3050430524_ _g3050530527_)))))
                    (_g3050330588_ _kont30501_)))))
          (if (##pair? _clause3048730494_)
              (let ((_hd3049130594_ (##car _clause3048730494_))
                    (_tl3049230596_ (##cdr _clause3048730494_)))
                (let* ((_id30599_ _hd3049130594_) (_kont30601_ _tl3049230596_))
                  (_K3049030591_ _kont30601_ _id30599_)))
              (_E3048930498_))))))
  (define gxc#push-match-vars-let-values%
    (lambda (_stx30268_ _vars30269_ _K30270_)
      (let* ((_g3027230289_
              (lambda (_g3027330286_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3027330286_)))
             (_g3027130479_
              (lambda (_g3027330292_)
                (if (gx#stx-pair? _g3027330292_)
                    (let ((_e3027630294_ (gx#stx-e _g3027330292_)))
                      (let ((_hd3027730297_ (##car _e3027630294_))
                            (_tl3027830299_ (##cdr _e3027630294_)))
                        (if (gx#stx-pair? _tl3027830299_)
                            (let ((_e3027930302_ (gx#stx-e _tl3027830299_)))
                              (let ((_hd3028030305_ (##car _e3027930302_))
                                    (_tl3028130307_ (##cdr _e3027930302_)))
                                (if (gx#stx-pair? _tl3028130307_)
                                    (let ((_e3028230310_
                                           (gx#stx-e _tl3028130307_)))
                                      (let ((_hd3028330313_
                                             (##car _e3028230310_))
                                            (_tl3028430315_
                                             (##cdr _e3028230310_)))
                                        (if (gx#stx-null? _tl3028430315_)
                                            ((lambda (_L30318_ _L30319_)
                                               (let _lp30334_ ((_rest30336_
                                                                _L30319_)
                                                               (_rebind30337_
                                                                '())
                                                               (_vars30338_
                                                                _vars30269_))
                                                 (let* ((_rest3033930347_
                                                         _rest30336_)
                                                        (_else3034130355_
                                                         (lambda ()
                                                           (if (null? _rebind30337_)
                                                               (gxc#compile-e
                                                                _L30318_
                                                                _vars30338_
                                                                _K30270_)
                                                               (gxc#xform-wrap-source
                                                                (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (reverse _rebind30337_)
                                    (cons (gxc#compile-e
                                           _L30318_
                                           _vars30338_
                                           _K30270_)
                                          '())))
                        _stx30268_))))
                (_K3034330467_
                 (lambda (_rest30358_ _bind30359_)
                   (let* ((___stx4420244203_ _bind30359_)
                          (_g3036230385_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4420244203_))))
                     (let ((___kont4420444205_
                            (lambda (_L30437_ _L30438_)
                              (_lp30334_
                               _rest30358_
                               _rebind30337_
                               (cons _bind30359_ _vars30338_))))
                           (___kont4420644207_
                            (lambda ()
                              (_lp30334_
                               _rest30358_
                               (cons _bind30359_ _rebind30337_)
                               _vars30338_))))
                       (if (gx#stx-pair? ___stx4420244203_)
                           (let ((_e3036630397_ (gx#stx-e ___stx4420244203_)))
                             (let ((_tl3036830402_ (##cdr _e3036630397_))
                                   (_hd3036730400_ (##car _e3036630397_)))
                               (if (gx#stx-pair? _hd3036730400_)
                                   (let ((_e3036930405_
                                          (gx#stx-e _hd3036730400_)))
                                     (let ((_tl3037130410_
                                            (##cdr _e3036930405_))
                                           (_hd3037030408_
                                            (##car _e3036930405_)))
                                       (if (gx#stx-null? _tl3037130410_)
                                           (if (gx#stx-pair? _tl3036830402_)
                                               (let ((_e3037230413_
                                                      (gx#stx-e
                                                       _tl3036830402_)))
                                                 (let ((_tl3037430418_
                                                        (##cdr _e3037230413_))
                                                       (_hd3037330416_
                                                        (##car _e3037230413_)))
                                                   (if (gx#stx-pair?
                                                        _hd3037330416_)
                                                       (let ((_e3037530421_
                                                              (gx#stx-e
                                                               _hd3037330416_)))
                                                         (let ((_tl3037730426_
                                                                (##cdr _e3037530421_))
                                                               (_hd3037630424_
                                                                (##car _e3037530421_)))
                                                           (if (gx#identifier?
                                                                _hd3037630424_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3037630424_)
                           (if (gx#stx-pair? _tl3037730426_)
                               (let ((_e3037830429_ (gx#stx-e _tl3037730426_)))
                                 (let ((_tl3038030434_ (##cdr _e3037830429_))
                                       (_hd3037930432_ (##car _e3037830429_)))
                                   (if (gx#stx-null? _tl3038030434_)
                                       (if (gx#stx-null? _tl3037430418_)
                                           (___kont4420444205_
                                            _hd3037930432_
                                            _hd3037030408_)
                                           (___kont4420644207_))
                                       (___kont4420644207_))))
                               (___kont4420644207_))
                           (___kont4420644207_))
                       (___kont4420644207_))))
               (___kont4420644207_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4420644207_))
                                           (___kont4420644207_))))
                                   (___kont4420644207_))))
                           (___kont4420644207_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _rest3033930347_)
                                                       (let ((_hd3034430470_
                                                              (##car _rest3033930347_))
                                                             (_tl3034530472_
                                                              (##cdr _rest3033930347_)))
                                                         (let* ((_bind30475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3034430470_)
                        (_rest30477_ _tl3034530472_))
                   (_K3034330467_ _rest30477_ _bind30475_)))
               (_else3034130355_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd3028330313_
                                             _hd3028030305_)
                                            (_g3027230289_ _g3027330292_))))
                                    (_g3027230289_ _g3027330292_))))
                            (_g3027230289_ _g3027330292_))))
                    (_g3027230289_ _g3027330292_)))))
        (_g3027130479_ _stx30268_))))
  (define gxc#push-match-vars-if%
    (lambda (_stx30183_ _vars30184_ _K30185_)
      (let* ((_g3018730208_
              (lambda (_g3018830205_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3018830205_)))
             (_g3018630265_
              (lambda (_g3018830211_)
                (if (gx#stx-pair? _g3018830211_)
                    (let ((_e3019230213_ (gx#stx-e _g3018830211_)))
                      (let ((_hd3019330216_ (##car _e3019230213_))
                            (_tl3019430218_ (##cdr _e3019230213_)))
                        (if (gx#stx-pair? _tl3019430218_)
                            (let ((_e3019530221_ (gx#stx-e _tl3019430218_)))
                              (let ((_hd3019630224_ (##car _e3019530221_))
                                    (_tl3019730226_ (##cdr _e3019530221_)))
                                (if (gx#stx-pair? _tl3019730226_)
                                    (let ((_e3019830229_
                                           (gx#stx-e _tl3019730226_)))
                                      (let ((_hd3019930232_
                                             (##car _e3019830229_))
                                            (_tl3020030234_
                                             (##cdr _e3019830229_)))
                                        (if (gx#stx-pair? _tl3020030234_)
                                            (let ((_e3020130237_
                                                   (gx#stx-e _tl3020030234_)))
                                              (let ((_hd3020230240_
                                                     (##car _e3020130237_))
                                                    (_tl3020330242_
                                                     (##cdr _e3020130237_)))
                                                (if (gx#stx-null?
                                                     _tl3020330242_)
                                                    ((lambda (_L30245_
                                                              _L30246_
                                                              _L30247_)
                                                       (if (gxc#apply-find-var-refs
                                                            _L30247_
                                                            (map caar
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _vars30184_))
                   (gxc#push-match-vars-stop _stx30183_ _vars30184_ _K30185_)
                   (gxc#xform-wrap-source
                    (cons '%#if
                          (cons _L30247_
                                (cons (gxc#compile-e
                                       _L30246_
                                       _vars30184_
                                       _K30185_)
                                      (cons (gxc#compile-e
                                             _L30245_
                                             _vars30184_
                                             _K30185_)
                                            '()))))
                    _stx30183_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd3020230240_
                                                     _hd3019930232_
                                                     _hd3019630224_)
                                                    (_g3018730208_
                                                     _g3018830211_))))
                                            (_g3018730208_ _g3018830211_))))
                                    (_g3018730208_ _g3018830211_))))
                            (_g3018730208_ _g3018830211_))))
                    (_g3018730208_ _g3018830211_)))))
        (_g3018630265_ _stx30183_))))
  (define gxc#push-match-vars-call%
    (lambda (_stx30103_ _vars30104_ _K30105_)
      (let* ((_g3010730126_
              (lambda (_g3010830123_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3010830123_)))
             (_g3010630180_
              (lambda (_g3010830129_)
                (if (gx#stx-pair? _g3010830129_)
                    (let ((_e3011030131_ (gx#stx-e _g3010830129_)))
                      (let ((_hd3011130134_ (##car _e3011030131_))
                            (_tl3011230136_ (##cdr _e3011030131_)))
                        (if (gx#stx-pair? _tl3011230136_)
                            (let ((_e3011330139_ (gx#stx-e _tl3011230136_)))
                              (let ((_hd3011430142_ (##car _e3011330139_))
                                    (_tl3011530144_ (##cdr _e3011330139_)))
                                (if (gx#stx-pair? _hd3011430142_)
                                    (let ((_e3011630147_
                                           (gx#stx-e _hd3011430142_)))
                                      (let ((_hd3011730150_
                                             (##car _e3011630147_))
                                            (_tl3011830152_
                                             (##cdr _e3011630147_)))
                                        (if (gx#identifier? _hd3011730150_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3011730150_)
                                                (if (gx#stx-pair?
                                                     _tl3011830152_)
                                                    (let ((_e3011930155_
                                                           (gx#stx-e
                                                            _tl3011830152_)))
                                                      (let ((_hd3012030158_
                                                             (##car _e3011930155_))
                                                            (_tl3012130160_
                                                             (##cdr _e3011930155_)))
                                                        (if (gx#stx-null?
                                                             _tl3012130160_)
                                                            ((lambda (_L30163_)
                                                               (if (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L30163_
                                _K30105_)
                               (pair? _vars30104_)
                               '#f)
                           (gxc#xform-wrap-source
                            (cons '%#let-values
                                  (cons (reverse _vars30104_)
                                        (cons _stx30103_ '())))
                            _stx30103_)
                           _stx30103_))
                     _hd3012030158_)
                    (_g3010730126_ _g3010830129_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3010730126_
                                                     _g3010830129_))
                                                (_g3010730126_ _g3010830129_))
                                            (_g3010730126_ _g3010830129_))))
                                    (_g3010730126_ _g3010830129_))))
                            (_g3010730126_ _g3010830129_))))
                    (_g3010730126_ _g3010830129_)))))
        (_g3010630180_ _stx30103_))))
  (define gxc#push-match-vars-stop
    (lambda (_stx30099_ _vars30100_ _K30101_)
      (if (null? _vars30100_)
          _stx30099_
          (gxc#xform-wrap-source
           (cons '%#let-values
                 (cons (reverse _vars30100_) (cons _stx30099_ '())))
           _stx30099_)))))
